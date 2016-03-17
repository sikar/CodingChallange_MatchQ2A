$LOAD_PATH << File.dirname(__FILE__) unless $LOAD_PATH.include?(File.dirname(__FILE__))

require 'matchQ2A/version'
require "matchQ2A/data_receiver"

module MatchQ2A
	MatchQ2A::DataReceiver.execute(STDOUT, STDIN, STDERR);
end
