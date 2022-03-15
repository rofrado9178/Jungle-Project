require 'rails_helper'


RSpec.describe User, type: :model do
 
  describe "User Validation" do

    it "should have password " do
      @user = User.create(first_name: "Fransiskus", last_name: "Aldo", email: "fransiskusaldo@gmail.com", password: "password" , password_confirmation: "password")
      expect(@user.password).to be_truthy
    end

    it "should have error message if password is nil " do
      @user = User.create(first_name: "Fransiskus", last_name: "Aldo", email: "fransiskusaldo@gmail.com", password: nil , password_confirmation: "password")
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it "should have password confirmation " do
      @user = User.create(first_name: "Fransiskus", last_name: "Aldo", email: "fransiskusaldo@gmail.com", password: "password" , password_confirmation: "password")
      expect(@user.password).to be_truthy
    end

    it "should have error message if password confirmation is nil " do
      @user = User.create(first_name: "Fransiskus", last_name: "Aldo", email: "fransiskusaldo@gmail.com", password: "password" , password_confirmation: nil)
      expect(@user.errors.full_messages).to include("Password confirmation can't be blank")
    end

    it "password and password confirmation should match " do
      @user = User.create(first_name: "Fransiskus", last_name: "Aldo", email: "fransiskusaldo@gmail.com", password: "password" , password_confirmation: "password")
      expect(@user.password_confirmation).to match(@user.password)
    end

    it "password and password confirmation should match " do
      @user = User.create(first_name: "Fransiskus", last_name: "Aldo", email: "fransiskusaldo@gmail.com", password: "password" , password_confirmation: "wordpass")
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "password should have minimum 8 character " do
      @user = User.create(first_name: "Fransiskus", last_name: "Aldo", email: "fransiskusaldo@gmail.com", password: "abc123" , password_confirmation: "abc123")
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 8 characters)")
    end

    it "email must be present " do
      @user = User.create(first_name: "Fransiskus", last_name: "Aldo", email: "fransiskusaldo@gmail.com", password: "password" , password_confirmation: "password")
      expect(@user.email).to be_truthy
    end

    it "email must be unique in email format " do
      @user = User.create(first_name: "Fransiskus", last_name: "Aldo", email: "fransiskusaldo", password: "password" , password_confirmation: "password")
      expect(@user.errors.full_messages).to include("Email is invalid")
    end
    
  end

  describe "Autheticate with credentials" do
    it "it should return nil if credential is not valid" do
      @user = User.create(first_name: "Fransiskus", last_name: "Aldo", email: "fransiskusaldo@gmail.com", password: "password" , password_confirmation: "password")
      user = User.authenticate_with_credentials("albi@gmail.com", "password")
      expect(user).to eq(nil)
    end

    it "user id should present if credential is valid" do
      @user = User.create(first_name: "Fransiskus", last_name: "Aldo", email: "fransiskusaldo@gmail.com", password: "password" , password_confirmation: "password")
      user = User.authenticate_with_credentials("fransiskusaldo@gmail.com", "password")
      expect(user.id).to be_present
    end

    it "user id should present if email have a white space and incase sensitive" do
      @user = User.create(first_name: "Fransiskus", last_name: "Aldo", email: "fransiskusaldo@gmail.com", password: "password" , password_confirmation: "password")
      user = User.authenticate_with_credentials(" fransiskuSaldO@GMail.com ", "password")
      expect(user.id).to be_present
    end
  end
  
end
