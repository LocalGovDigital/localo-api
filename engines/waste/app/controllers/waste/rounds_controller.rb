require_dependency "waste/application_controller"

module Waste
  class RoundsController < ApplicationController
    before_action :set_round, only: [:show, :edit, :update, :destroy]

    # GET /rounds
    def index
      @rounds = Round.all
    end

    # GET /rounds/1
    def show
      @round = Round.find(params[:id])
      puts 'round'
      puts @round
      puts @round.to_yaml
      @schedule = IceCube::Rule.from_yaml(@round.schedule)
      # puts @schedule.recurrence_rules.to_s
      puts @schedule.to_s
    end

    # GET /rounds/new
    def new
      @round = Round.new
    end

    # GET /rounds/1/edit
    def edit
    end

    # POST /rounds
    def create
      @round = Round.new(round_params)

      if @round.save
        redirect_to @round, notice: 'Round was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /rounds/1
    def update
      if @round.update(round_params)
        redirect_to @round, notice: 'Round was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /rounds/1
    def destroy
      @round.destroy
      redirect_to rounds_url, notice: 'Round was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_round
        @round = Round.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def round_params
        params.require(:round).permit( {property_ids: []}, {container_ids: []}, :schedule )
      end
  end
end
