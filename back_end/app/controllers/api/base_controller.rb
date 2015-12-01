class Api::BaseController < ActionController::API

  protected

    def success_response data, status=200
      base_response data, "success", status
    end

    def bad_response data, status=500
      base_response data, "error", status
    end

  private

    def base_response data, result, status
      render json: { result: result, data: data }, status: status
    end

end