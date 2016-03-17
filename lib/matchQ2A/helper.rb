module MatchQ2A
  module Helper
    extend self

    #Encode the data to UTF-8 format
    def enc(str)
      str.encode('utf-8', invalid: :replace)
    end

    #Switch data text in to word group by spliting it. ( \w metacharacter is used to find a word character.)
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
