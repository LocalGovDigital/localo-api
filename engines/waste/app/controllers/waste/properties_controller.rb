require_dependency "waste/application_controller"

module Waste
  class PropertiesController < ApplicationController
    before_action :set_property, only: [:show, :edit, :update, :destroy]

    resource_description do
      name 'Property'
      short "A collection location identifiable by UPRN"
      formats ['json']
      api_base_url '/waste'
    end

    # GET /properties
    api :GET, "/properties"
    description "Show all available properties"
    def index
      @properties = Property.all
    end

    # GET /properties/1
    api :GET, "/properties/:id"
    description "Show all available properties"
    param :id, :number
    def show
    end

    # GET /properties/new
    def new
      @property = Property.new
    end

    # GET /properties/1/edit
    def edit
    end

    # POST /properties
    api :POST, "/properties"
    description "Create a new property"
    def create
      @property = Property.new(property_params)

      if @property.save
        redirect_to @property, notice: 'Property was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /properties/1
    api :PUT, "/properties/:id"
    param :id, :number
    description "Update an existing property"
    def update
      if @property.update(property_params)
        redirect_to @property, notice: 'Property was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /properties/1
    api :DELETE, "/properties/:id"
    param :id, :number
    description "Delete an existing property by its id"
    def destroy
      @property.destroy
      redirect_to properties_url, notice: 'Property was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_property
        @property = Property.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def property_params
        params.require(:property).permit(:uprn, :paon, :saon, :postcode, :post_town)
      end
  end
end
