require_relative 'spec_helper'
require_relative 'fizz_buzz'



  describe FizzBuzz, "The new Awesomness" do

    describe '.run' do

      it 'Should take in a 1 and print out 1' do
        expect(FizzBuzz.run(1)).to eq 1
      end

      it 'Should take in a 2 and print out a 2' do
        expect(FizzBuzz.run(2)).to eq 2
      end

      it 'Should take in a 5 and print out a 5' do
        expect(FizzBuzz.run(5)).to eq 5
      end

      it 'Should take in a 4 and print out a Buzz' do
        expect(FizzBuzz.run(4)).to eq 'Buzz'
      end

      it 'Should take in a 3 and print oout a Fizz' do
        expect(FizzBuzz.run(3)).to eq "Fizz"
      end

      it 'Should take in 6 and print out a Fizz' do
        expect(FizzBuzz.run(6)).to eq "Fizz"
      end

      it 'Should take in a 7 and print out a 7' do
        expect(FizzBuzz.run(7)).to eq 7
      end

      it 'Should take in a 8 and print out a Buzz' do
        expect(FizzBuzz.run(8)).to eq "Buzz"
      end

      it 'Should take in a 9 and print out a Fizz' do
        expect(FizzBuzz.run(9)).to eq "Fizz"
      end

      it 'Should take in a 10 and print out a 10' do
        expect(FizzBuzz.run(10)).to eq 10
      end

      it 'Should take in a 12 and print out a FizzBuzz' do
        expect(FizzBuzz.run(12)).to eq 'FizzBuzz'
      end

      it 'Should take in a 24 and print out a FizzBuzz' do
        expect(FizzBuzz.run(24)).to eq 'FizzBuzz'
      end
    end

    describe '.by_three?' do

      it 'Should take in a 3 and return true' do
        expect(FizzBuzz.by_three?(3)).to eq true
      end

      it 'Should take in a 4 and return false' do
        expect(FizzBuzz.by_three?(4)).to eq false
      end

      it 'Should take in a 6 and return true' do
        expect(FizzBuzz.by_three?(6)).to eq true
      end

    describe '.by_four?' do
      it 'Should take in a 4 and return true' do
        expect(FizzBuzz.by_four?(4)).to eq true
      end

      it 'Should take in a 5 and return false' do
        expect(FizzBuzz.by_four?(5)).to eq false
      end
      it 'Should take in a 8 and return a true' do
        expect(FizzBuzz.by_four?(8)).to eq true
      end
      it 'Should take in a 9 and return false' do
        expect(FizzBuzz.by_four?(9)).to eq false
      end
    end

    describe '.by_three_and_four?' do

      it 'Should take in a 12 and return true'
        expect(FizzBuzz.by_three_and_four?(12)).to eq true
      end
    end
  end
