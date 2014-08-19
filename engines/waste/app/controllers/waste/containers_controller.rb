require_dependency "waste/application_controller"

module Waste
  class ContainersController < ApplicationController
    before_action :set_container, only: [:show, :edit, :update, :destroy]

    resource_description do
      name 'WasteContainer'
      short "A container is a physical thing that holds a waste type."
      formats ['json', 'xml']
      api_base_url '/waste'
    end

    # GET /containers
    api :GET, '/containers'
    description 'Find all available containers'
    def index
      @containers = Container.all
    end

    # GET /containers/1
    api :GET, '/containers/:id'
    param :id, :number
    description 'Find a container by its id'
    def show
    end

    # GET /containers/new
    def new
      @container = Container.new
    end

    # GET /containers/1/edit
    def edit
    end

    # POST /containers
    api :POST, '/containers'
    description 'Create a new container type'
    def create
      @container = Container.new(container_params)

      if @container.save
        redirect_to @container, notice: 'Container was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /containers/1
    api :PUT, '/containers/:id'
    param :id, :number
    description 'Update an existing container type by its id'
    def update
      if @container.update(container_params)
        redirect_to @container, notice: 'Container was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /containers/1
    api :DELETE, '/containers/:id'
    param :id, :number
    description 'Delete a container by its id'
    def destroy
      @container.destroy
      redirect_to containers_url, notice: 'Container was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_container
        @container = Container.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def container_params
        params.require(:container).permit(:size, :color, :type)
      end
  end
end
