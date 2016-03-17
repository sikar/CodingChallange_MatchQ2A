module MatchQ2A
  module Helper
    extend self

    def enc(str)
      str.encode('utf-8', invalid: :replace)
    end

    def words(text)
      words = text.split(/[^\w]/)
      word_groups = []
      (0...words.size).each { |start|
        (start...words.size).each { |finish|
          word_groups.push(words[start..finish])
        }
      }
      word_groups
    end

  end
end
