require 'rails_helper'

RSpec.describe User, :type => :model do

     describe 'assoctiations' do
       it { should have_many :shouts }
     end

    describe 'validations' do
      it { should validate_presence_of :first_name}
      it { should validate_presence_of :last_name}
      it { should validate_presence_of :mood}
    end

    describe '.find_by_mood' do
      before do
        create(:user, first_name: 'Joshua', last_name: 'Cloward', mood: 'Happy')
        create(:user, first_name: 'John', last_name: 'Jackson', mood: 'Happy')
        create(:user, first_name: 'Jack', last_name: 'Johnson', mood: 'Sad')
        create(:user, first_name: 'Mike', last_name: 'Michul', mood: 'Angry')
        create(:user, first_name: 'Earnest', last_name: 'Man', mood: 'Angry')
        create(:user, first_name: 'Samson', last_name: 'Manson', mood: 'Angry')
      end
      # checks to make sure it only pulls up moods that equal Happy
      it 'Should find Users that are Happy' do
        expect(User.find_by_mood('Happy').count).to eq 2
      end
      it 'Should not include sad' do
        expect(User.find_by_mood('Happy').collect(&:mood)).to_not include 'Sad'
      end
      it 'Should not include angry' do
        expect(User.find_by_mood('Happy').collect(&:mood)).to_not include 'Angry'
      end

      # checks to make sure it only pulls up moods that equal sad
      it 'Should find Users that are Sad' do
        expect(User.find_by_mood('Sad').count).to eq 1
      end
      it 'Should not include happy' do
        expect(User.find_by_mood('Sad').collect(&:mood)).to_not include 'Happy'
      end
      it 'Should not include angry' do
        expect(User.find_by_mood('Sad').collect(&:mood)).to_not include 'Angry'
      end

      # checks to make sure it only pulls up moods that equal Angry
      it 'Should find Users that are Angry' do
        expect(User.find_by_mood('Angry').count).to eq 3
      end
      it 'Should not include happy' do
        expect(User.find_by_mood('Angry').collect(&:mood)).to_not include 'Happy'
      end
      it 'Should not include sad' do
        expect(User.find_by_mood('Angry').collect(&:mood)).to_not include 'Sad'
      end

    end
  end
