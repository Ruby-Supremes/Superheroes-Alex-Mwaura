class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    

    def index 
        heros = Hero.all
        render json: heros
    end

    def show
        hero = find_hero
        render json: hero
    end
    
    private
    def find_hero
        Hero.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Hero not found" }, status: :not_found
      end
    
      def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
      end
end
