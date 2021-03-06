$LOAD_PATH << File.dirname(__FILE__) unless $LOAD_PATH.include?(File.dirname(__FILE__))

require 'matchQ2A/errors'
require 'matchQ2A/validator'
require 'matchQ2A/helper'
require 'matchQ2A/process_QA'

#Data Receiver is a class with which you are fetching the data for the Match cases and Validate and proceed it for processing
module MatchQ2A
  class DataReceiver
    include MatchQ2A::Helper
    include MatchQ2A::Validator
    attr_reader :stdout, :stdin

    def self.execute(stdout, stdin, stderr)
      self.new.execute(stdout, stdin, stderr)
    end

    def initialize
      # don't dump a backtrace on a ^C
      trap(:INT) {
        exit
      }
    end

    def execute(stdout, stdin, stderr)
      @stdout = stdout
      @stdin  = stdin
      @stderr = stderr

      #Intial Definition on how to provide the input to get a proper data
      contentInUse = Array.new(7);
      stdout.puts "Please Input your data to be matched in the below format";
      stdout.puts "Conditions: < Line Split with \\n > < Mandatory 5 questions to be provided > "
      stdout.puts " Line1: Content of data (not more than 5000 char) "
      stdout.puts " Line2 to Line 6: Each of the questions based on the factual data with the content provided."
      stdout.puts " Line 7: Answers in jumbled format for all the questions as a single string joined with semi-colan(;) "
      stdout.puts " Start inputing your data as defined: \n"

      (0..6).each do |i|
        contentInUse[i]= enc(gets.chomp);
      end
      validateAndprocess(contentInUse)
    end

    #validate the data provided by user and if it is perfect start processing the same
    def validateAndprocess( contentInUse )
      sentences = contentInUse[0].split(/\.(?!\s[a-z])/) # do not clash shorthand with punctum
      questions = contentInUse[1..5]; # Questions in no.s should be 5
      answers = contentInUse[6].chomp.split(';') # Answers inserted with ";" as joiner gets handled here

      #cross check invalid data
      if ( !isAllInputClear(contentInUse) ) || ( !isInputContent(contentInUse[0]) ) || ( !isAnswerAvailableForAllQues(answers))
        puts "Invalid Input data. Please cross check your input details as per the conditions provided."
      end

      #puts contentInUse;
      #puts sentences;
      #puts questions;
      #puts answers;
      #spacing needed...
      puts "\n\n"
      #Start processing the data for further handling
      ProcessQA.new(contentInUse[0],sentences,questions,answers).processQA()
    end

  end
end
