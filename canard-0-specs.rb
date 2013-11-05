require_relative 'canard-0'
require 'minitest/autorun'

describe Duck do
  it "must answer" do
    Duck.new.speaks.must_equal "Coin-coin"
  end
end
