require_dependency "waste/application_controller"

module Waste
  class RoundManifestsController < ApplicationController
    before_action :set_round_manifest, only: [:show, :edit, :update, :destroy]

    # GET /round_manifests
    def index
      @round_manifests = RoundManifest.all
    end

    # GET /round_manifests/1
    def show
    end

    # GET /round_manifests/new
    def new
      @round_manifest = RoundManifest.new
    end

    # GET /round_manifests/1/edit
    def edit
    end

    # POST /round_manifests
    def create
      @round_manifest = RoundManifest.new(round_manifest_params)

      if @round_manifest.save
        redirect_to @round_manifest, notice: 'Round manifest was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /round_manifests/1
    def update
      if @round_manifest.update(round_manifest_params)
        redirect_to @round_manifest, notice: 'Round manifest was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /round_manifests/1
    def destroy
      @round_manifest.destroy
      redirect_to round_manifests_url, notice: 'Round manifest was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_round_manifest
        @round_manifest = RoundManifest.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def round_manifest_params
        params.require(:round_manifest).permit(:round_id, :container_id)
      end
  end
end
