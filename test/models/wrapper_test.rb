require 'test_helper'

class WrapperTest < ActiveSupport::TestCase

  test "should insert correct line breaks with 10 columns" do
    @wrapped = Wrapper.wrap("This is the text that I want to shorten.", 10)
    assert_equal(@wrapped, "This is<br/>the text<br/>that I<br/>want to<br/>shorten.")
  end

  test "should insert correct line breaks with 5 columns" do
    @wrapped = Wrapper.wrap("This is the text that I want to shorten.", 5)
    assert_equal(@wrapped, "This<br/>is<br/>the<br/>text<br/>that<br/>I<br/>want<br/>to<br/>shorten.")
  end

  test "should insert correct line breaks with 25 columns" do
    @wrapped = Wrapper.wrap("This is the text that I want to shorten.", 25)
    assert_equal(@wrapped, "This is the text that I<br/>want to shorten.")
  end

end
