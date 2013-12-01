require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { email: @contact.email, facebook_url: @contact.facebook_url, linkedn_url: @contact.linkedn_url, mobile: @contact.mobile, name: @contact.name, phone_no: @contact.phone_no, twitter_url: @contact.twitter_url }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    put :update, id: @contact, contact: { email: @contact.email, facebook_url: @contact.facebook_url, linkedn_url: @contact.linkedn_url, mobile: @contact.mobile, name: @contact.name, phone_no: @contact.phone_no, twitter_url: @contact.twitter_url }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
