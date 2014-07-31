require 'rails_helper'

RSpec.describe ShoutsController, :type => :controller do

    describe '#index', :focus do
      before do
        @shouts = create_list(:shout, 3)
      end
      it 'print out all shouts' do
        get :index
        expect(response).to be_success
        expect(assigns(:shouts).count).to eq 3
        expect(response).to render_template('index')
      end
    end

    describe '#show', :focus do
      before do
        @shout = create(:shout, message: 'asdf')
        @shout2 = create(:shout, message: 'fdsa')
      end
      it 'print out asdf' do
        get :show, id: @shout.id
        expect(response).to be_success
        expect(assigns(:shout).message).to eq 'asdf'
        expect(response).to render_template('show')
      end
    end

    describe '#new' do
      it 'render new' do
        get :new
        expect(response).to be_success
        expect(assigns(:shout)).to be_new_record
        expect(response).to render_template('new')
      end
    end

    describe '#create' do
      context 'successfully created' do
        it 'should create a new shout' do
          
        end
      end
    end


    describe '#edit' do

    end

    describe '#update' do

    end

    describe '#destroy' do

    end

end
