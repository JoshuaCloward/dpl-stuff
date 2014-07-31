require 'rails_helper'

RSpec.describe Shout, :type => :model do


  describe "Associations" do
    it { should belong_to :user }
  end

  describe "Validations" do
    it { should validate_presence_of :message}
  end

  describe "#mood_adjuster" do
     before do
       @user = create(:shout, message: 'Hello')
     end

    it 'Should print out HELLO!! message' do
      expect(@user.mood_adjuster('Angry')).to eq 'HELLO!!'
    end

    it 'shoud print out Hello message' do
      expect(@user.mood_adjuster('Sad')).to eq 'hello...'
    end

    it 'shoud print out Hello message' do
      expect(@user.mood_adjuster('Happy')).to eq 'Hello :D'
    end

    it 'shoud print out Hello message' do
      expect(@user.mood_adjuster('')).to eq 'Hello'
    end
  end

  describe '.by_time' do

    before do
      Timecop.freeze
      create(:shout, message: 'Hello', created_at: DateTime.new(2013,2,1))
      create(:shout, message: 'Op', created_at: DateTime.new(2013,2,1))
      create(:shout, message: 'omnomnom', created_at: DateTime.new(2014,9,20))
    end
    it 'Should print out all the Messages before June 25th' do
      expect(Shout.by_time(DateTime.new(2014,2,2)).count).to eq 2
    end
    after do
      Timecop.return
    end

  end

end
