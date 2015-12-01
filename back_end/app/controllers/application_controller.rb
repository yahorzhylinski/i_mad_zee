class ApplicationController < ActionController::API

  protected

    def render_success data, status
      render_common data, true, status
    end

  private

    def render_common data, is_success, status
      render json: { result: is_success ? "success" : "error" }, status: status
    end
end
