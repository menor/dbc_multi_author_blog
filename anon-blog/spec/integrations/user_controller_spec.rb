require 'spec_helper'
require 'pp'

describe 'User Controller' do

  before(:each) do
    @user = FactoryGirl.build(:user)
  end

  context 'Login prompt' do
    it 'displays a login page for not logged in user' do
      get '/users/login'

      expect(last_response).to be_ok
      expect(last_response.body).to include('Login here:')
    end
  end

  context 'Login' do
    it 'submits existing user credentials' do
      test = {
        email: @user.email,
        hashed_password: @user.hashed_password
      }
      post '/users/login', test

      expect(last_response.status).to equal(302)
      expect(last_response.location).to include "/users/#{@user.id}"
    end
  end

  context 'New User' do
    it 'submits a user creation request' do
      post '/users'

      expect(last_response.status).to equal(302)
    end
  end

  context 'Logout' do
    it 'logs a user out' do
    test = {
      email: @user.email,
    }
    post '/users/logout', test

    expect(last_response.status).to equal(302)
    expect(last_response.location).to eq('http://example.org/')
    end
  end

  context 'Sign Up' do
    it 'displays a page to create an account' do
      get '/users/new'

      expect(last_response).to be_ok
      expect(last_response.body).to include('Sign Up:')
    end
  end









end