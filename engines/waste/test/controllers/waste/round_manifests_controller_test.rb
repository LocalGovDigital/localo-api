require 'test_helper'

module Waste
  class RoundManifestsControllerTest < ActionController::TestCase
    setup do
      @round_manifest = round_manifests(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:round_manifests)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create round_manifest" do
      assert_difference('RoundManifest.count') do
        post :create, round_manifest: { container_id: @round_manifest.container_id, round_id: @round_manifest.round_id }
      end

      assert_redirected_to round_manifest_path(assigns(:round_manifest))
    end

    test "should show round_manifest" do
      get :show, id: @round_manifest
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @round_manifest
      assert_response :success
    end

    test "should update round_manifest" do
      patch :update, id: @round_manifest, round_manifest: { container_id: @round_manifest.container_id, round_id: @round_manifest.round_id }
      assert_redirected_to round_manifest_path(assigns(:round_manifest))
    end

    test "should destroy round_manifest" do
      assert_difference('RoundManifest.count', -1) do
        delete :destroy, id: @round_manifest
      end

      assert_redirected_to round_manifests_path
    end
  end
end
