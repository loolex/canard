require_relative 'canard-1'
require 'minitest/autorun'

describe "The Law of the Jungle" do
  before do
    @donald = Duck.new
    @picsou = Duck.new
    @python = Snake.new
    @jaffar = Snake.new
  end

  describe "It's summer, I'm hungry!" do
    describe Snake do
      it "is delicious" do
        @python.eat(@donald).must_equal "Eating a duck..."
      end

      it "is delicious" do
        @python.eat(@picsou).must_equal "Eating a duck..."
      end

      it "is delicious" do
        @python.eat(@jaffar).must_equal "Eating a snake..."
      end
    end

    describe Duck do
      it "is so bad, impossible to eat this" do
        @donald.eat(@python).must_equal "Oops, I'm eating a SNAKE? I think it's too much for me!"
      end

      it "is bad, but I'm eating" do
        @donald.eat(@picsou).must_equal "Eating a duck..."
      end
    end
  end
end
