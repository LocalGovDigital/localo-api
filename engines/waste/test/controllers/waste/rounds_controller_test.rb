require 'test_helper'

module Waste
  class RoundsControllerTest < ActionController::TestCase
    setup do
      @round = rounds(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:rounds)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create round" do
      assert_difference('Round.count') do
        post :create, round: { property: @round.property, round_manifest_id: @round.round_manifest_id, schedule_id: @round.schedule_id }
      end

      assert_redirected_to round_path(assigns(:round))
    end

    test "should show round" do
      get :show, id: @round
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @round
      assert_response :success
    end

    test "should update round" do
      patch :update, id: @round, round: { property: @round.property, round_manifest_id: @round.round_manifest_id, schedule_id: @round.schedule_id }
      assert_redirected_to round_path(assigns(:round))
    end

    test "should destroy round" do
      assert_difference('Round.count', -1) do
        delete :destroy, id: @round
      end

      assert_redirected_to rounds_path
    end
  end
end
