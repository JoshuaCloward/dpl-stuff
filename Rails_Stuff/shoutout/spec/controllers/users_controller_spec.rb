require 'rails_helper'

RSpec.describe UsersController, :type => :controller do


  describe '#index' do
    before do
      @users = create_list(:user, 3)
    end
    it 'Displays all the users' do
      get :index
      expect(response).to be_success
      expect(assigns(:users).count).to eq 3
      expect(response).to render_template('index')
    end
  end

  describe '#show' do
    before do
      @user = create(:user, first_name: 'joshua', last_name: 'cloward', mood: 'Happy')
      @user1 = create(:user, first_name: 'brynn', last_name: 'player', mood: 'Happy')
    end
    it 'Displays the first user joshua' do
      get :show, id: @user.id
      expect(response).to be_success
      expect(assigns(:user).first_name).to eq 'joshua'
      expect(response).to render_template('show')
    end
  end

  describe '#new' do
    it 'sets up a new instance' do
      get :new
      expect(response).to be_success
      expect(assigns(:user)).to be_new_record
      expect(response).to render_template('new')
    end
  end

  describe '#create' do
    context 'when record successfully saves' do
      it 'creates the new user in the database' do
        expect{
          post :create, user: { first_name: 'josh', last_name: 'clowd', mood: 'Happy' }
        }.to change(User, :count).by(1)
      end
    end
  end

  describe '#edit' do
    before do
      @user = create(:user)
    end
    it 'displays the note i want to edit' do
      get :edit, id: @user.id
      expect(response).to be_success
      expect(assigns(:user).id).to eq @user.id
      expect(response).to render_template('edit')
    end
  end

  describe '#update' do
    before do
      @user = create(:user, first_name: 'joshua')
    end
    context 'when updating a proper record' do
      it 'replaces joshua with josh' do
          patch :update, id: @user.id, user: { first_name: 'josh', last_name: 'cloward', mood: 'Angry'}
          expect(@user.reload.first_name).to eq 'josh'
          expect(response).to be_redirect
          expect(response).to redirect_to users_path
      end
    end
    context 'when the update failed' do
      it 'fails to update and renders edit template' do
        patch :update, id: @user.id, user: {first_name: nil}
        expect(@user.reload.first_name).to_not be_nil
        expect(response).to render_template('edit')
      end
    end
  end

  describe '#destroy' do
    before do
      @user = create(:user)
    end
    it 'deletes the first user from the db' do
        expect{
        delete :destroy, id: @user.id
      }.to change(User, :count).by(-1)
      expect(response).to be_redirect
      expect(response).to redirect_to users_path
    end
  end
end
