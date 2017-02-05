require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'valid user signup' do
    @user  = User.new
    @user.name = 'Sal Tardibuono'
    @user.email = 'saltad347@gmail.com'
    @user.password = 'meatloaf21@'
    @user.password_confirmation = 'meatloaf21@'
    assert @user.valid?
  end

  test 'invalid user creation' do
    @user  = User.new
    @user.name = ''
    @user.email = ''
    @user.password = ''
    @user.password_confirmation = ''
    assert_not @user.valid?
  end

  test 'passwords dont match upon signup' do
    @user  = User.new
    @user.name = 'Sal Tardibuono'
    @user.email = 'saltad347@gmail.com'
    @user.password = 'meatloaf21@@@@'
    @user.password_confirmation = 'meatloaf21@'
    assert_not @user.valid?
  end


end
