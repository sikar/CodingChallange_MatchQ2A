require "minitest/autorun"

require "matchQ2A"

class VersionTest < Minitest::Test
  def test_version
    assert_equal "0.1.0", MatchQ2A::VERSION
  end
end
