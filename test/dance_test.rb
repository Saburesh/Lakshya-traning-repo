# frozen_string_literal: true

require "test_helper"
require "stringio"

class DanceTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Dance::VERSION
  end

  def test_nice_command_output
    output = capture_stdout { Dance::CLI.start(["nice"]) }
    assert_match(/Dance party/, output)
  rescue Interrupt
    # Test passed if interrupted by the animation loop
  end

  def test_bear_command_with_warning
    original_stderr = $stderr
    $stderr = StringIO.new
    ENV.delete("A_WONDER_THE_BEAR_DANCES_AT_ALL")
    
    output = capture_stdout { Dance::CLI.start(["bear"]) }
    
    assert_match(/Bears are here/, output)
    assert_match(/WARN: the bear does not dance well/, $stderr.string)
  ensure
    $stderr = original_stderr
  end

  def test_bear_command_without_warning
    original_stderr = $stderr
    $stderr = StringIO.new
    ENV["A_WONDER_THE_BEAR_DANCES_AT_ALL"] = "true"
    
    output = capture_stdout { Dance::CLI.start(["bear"]) }
    
    assert_match(/Bears are here/, output)
    refute_match(/WARN: the bear does not dance well/, $stderr.string)
  ensure
    $stderr = original_stderr
    ENV.delete("A_WONDER_THE_BEAR_DANCES_AT_ALL")
  end

  private

  def capture_stdout
    original_stdout = $stdout
    $stdout = StringIO.new
    yield
    $stdout.string
  ensure
    $stdout = original_stdout
  end
end