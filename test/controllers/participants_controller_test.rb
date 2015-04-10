require 'test_helper'

class ParticipantsControllerTest < ActionController::TestCase
  def mock_current_edition
    Edition.class_eval do
      def self.current
        Edition.last
      end
    end
  end

  setup do
    mock_current_edition

    @edition = editions(:one)
    @participant = participants(:one)
    @participant.email = "p#{rand(100)}@example.org"

    basic = ActionController::HttpAuthentication::Basic
    credentials = basic.encode_credentials(ENV['ADMIN_USER'], ENV['ADMIN_PASS'])
    request.headers['Authorization'] = credentials
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:participants)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create participant' do
    assert_difference('Participant.count') do
      post :create, participant: { attended_meetups: @participant.attended_meetups, email: @participant.email, have_ruby_configured_laptop: @participant.have_ruby_configured_laptop, name: @participant.name, profession: @participant.profession, remarks: @participant.remarks }
    end

    assert_redirected_to participant_path(assigns(:participant))
  end

  test 'should show participant' do
    get :show, id: @participant
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @participant
    assert_response :success
  end

  test 'should update participant' do
    patch :update, id: @participant, participant: { attended_meetups: @participant.attended_meetups, email: @participant.email, have_ruby_configured_laptop: @participant.have_ruby_configured_laptop, name: @participant.name, profession: @participant.profession, remarks: @participant.remarks }
    assert_redirected_to participant_path(assigns(:participant))
  end

  test 'should destroy participant' do
    assert_difference('Participant.count', -1) do
      delete :destroy, id: @participant
    end

    assert_redirected_to participants_path
  end
end
