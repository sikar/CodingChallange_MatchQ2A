require 'matchQ2A/errors'
require 'matchQ2A/validator'

module MatchQ2A
  class DataReceiver
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

      contentInUse = Array.new(7);
      stdout.puts "Please Input your data to be matched in the below format";
      stdout.puts "Conditions: < Line Split with \\n > < Mandatory 5 questions to be provided > "
      stdout.puts " Line1: Content of data (not more than 5000 char) "
      stdout.puts " Line2 to Line 6: Each of the questions based on the factual data with the content provided."
      stdout.puts " Line 7: Answers in jumbled format for all the questions as a single string joined with semi-colan(;) "
      stdout.puts " Start inputing your data as defined: \n"

      (0..6).each do |i|
        contentInUse[i]= stdin.gets.chomp;
      end

      puts contentInUse;
    end

  end
end
