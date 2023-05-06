# frozen_string_literal: true

class Api::V1::ApplicationController < ActionController::Base
  protected
    def render_success
      render json: { status: :success }, status: :ok
    end

    def render_bad_request_with_errors(errors)
      @errors = errors
      render 'api/v1/error_bad_request_with_messages', status: :bad_request
    end
end
