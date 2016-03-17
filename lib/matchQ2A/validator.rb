module MatchQ2A
	module Validator

			extend self
			# Cross check Input content based on condition of Para Length
      def isInputContent(contentPara)
          if ( contentPara.length() > 5000 || contentPara.length() == 0 )
            return false
          else
            return true
          end
      end

			# Check to handled the no. of input based on \n and whethere any data is empty or nil
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

			# cross check answers , so that all the data are provided for the question or not.
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
