require 'test_helper'

class CoachesControllerTest < ActionController::TestCase
  setup do
    @coach = coaches(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:coaches)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create coach' do
    assert_difference('Coach.count') do
      post :create, coach: { attended_meetups: @coach.attended_meetups, email: @coach.email, living_in_chennai: @coach.living_in_chennai, name: @coach.name, twitter_handle: @coach.twitter_handle }
    end

    assert_redirected_to coach_path(assigns(:coach))
  end

  test 'should show coach' do
    get :show, id: @coach
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @coach
    assert_response :success
  end

  test 'should update coach' do
    patch :update, id: @coach, coach: { attended_meetups: @coach.attended_meetups, email: @coach.email, living_in_chennai: @coach.living_in_chennai, name: @coach.name, twitter_handle: @coach.twitter_handle }
    assert_redirected_to coach_path(assigns(:coach))
  end

  test 'should destroy coach' do
    assert_difference('Coach.count', -1) do
      delete :destroy, id: @coach
    end

    assert_redirected_to coaches_path
  end
end
