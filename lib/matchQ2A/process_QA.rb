module MatchQ2A

  class ProcessQA
    include MatchQ2A::Helper

    attr_accessor :content, :sentences, :questions, :answers, :sentence_of_answer

    def initialize(content, sentences, questions, answers)
      @content = content
      @sentences = sentences
      @questions = questions
      @answers = answers
      @sentence_of_answer=[]
    end

    def processQA()
      check_index_for_answers()
      sent_words_of_answer=convert_sentence_to_group_of_words()
      process_QA_data(sent_words_of_answer)
    end

    def check_index_for_answers()
      answers.each do |a|
        glob_i = content =~ /#{Regexp.escape(a)}/
        sent_offset = 0
        sent_i = 0
        sentences.each_with_index do |s, i|
          if ( (sent_offset + s.size) > glob_i )
            sent_i = i
            break
          end
          sent_offset += s.size
        end
        sentence_of_answer.push(sent_i)
      end
    end

    def convert_sentence_to_group_of_words()
      sent_words_of_answer = sentence_of_answer.map { |sent_i|
        words(sentences[sent_i])
      }
    end

    def process_QA_data(sent_words_of_answer)
      quest_answers = Array.new(questions.size)
      questions.size.times {
        q_matches = questions.map { |q|
          q_words = words(q)
          best_ans = best_common = 0
          sent_words_of_answer.each_with_index do |words, ans_i|
            common = (q_words & words).size
            if common > best_common
              best_ans = ans_i
              best_common = common
            end
          end
          [best_ans, best_common]
        }

        (ans_i, com), quest_i = q_matches.each_with_index.max_by { |(i,c),| c }

        sent_words_of_answer[ans_i] = []
        questions[quest_i] = ""
        quest_answers[quest_i] = answers[ans_i]
      }
      print_output(quest_answers)
    end

    def print_output(quest_answers)
      puts "Matched answers as per question order:\n"
      puts quest_answers.join("\n")
    end

  end
end
