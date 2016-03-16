module MatchQ2A
	class Validator

      def isInputContent(contentPara)
          if ( contentPara.length() > 5000 ) then
            #throw error;
          else
            #throw error;
          end
					return true;
      end

      def isAllInputClear(array_str)
        if ( array_str.length() !=7 ) then
          #throw error;
        else
          if ( array_str.nil? || array_str.empty? )
            #throw error;
        end
				return true;
      end

			def isAnswerAvailableForAllQues(ans_arr_str)
				if (ans_arr_str.length() !=5) then
					#throw error
				end
				return true;
			end

  end
end
