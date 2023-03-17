class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    private

    def render_not_found_response
        # @model_name = self.class.name.sub("Controller", "").singularize
        @model_name = controller_name.classify
        render json: { error: "#{@model_name} not found" }, status: :not_found
    end
end
