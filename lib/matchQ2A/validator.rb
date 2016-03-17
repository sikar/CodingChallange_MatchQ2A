module MatchQ2A
	module Validator

			extend self

      def isInputContent(contentPara)
          if ( contentPara.length() > 5000 || contentPara.length() == 0 )
            return false
          else
            return true
          end
      end

      def isAllInputClear(array_str)
        if ( array_str.length() !=7 )
          return false
        else
          if ( array_str.nil? || array_str.empty? )
            return false
					end
        end
				return true;
      end

			def isAnswerAvailableForAllQues(ans_arr_str)
				if (ans_arr_str.length() !=5)
					return false
				else
					if ( ans_arr_str.nil? || ans_arr_str.empty? )
						return false
					end
				end
				return true;
			end

  end
end
