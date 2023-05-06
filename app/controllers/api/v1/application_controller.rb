# frozen_string_literal: true

class Api::V1::ApplicationController < ActionController::Base
    # base error message default
    rescue_from ArgumentError do |_e|
      render_bad_request
    end
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_error
    rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid
    rescue_from ActiveRecord::StatementInvalid, with: :render_bad_request
  protected
   # custom error messages
    def render_not_found_error
      render 'api/v1/error_not_found', status: :not_found
    end

    def render_record_invalid(exception)
      render json: {
        status: :error,
        message: exception.record.errors.full_messages.join(', ')
      }, status: :unprocessable_entity
    end

    def render_bad_request
      render 'api/v1/error_bad_request', status: :bad_request
    end

    def render_success
      render json: { status: :success }, status: :ok
    end

    def render_bad_request_with_errors(errors)
      @errors = errors
      render 'api/v1/error_bad_request_with_messages', status: :bad_request
    end
end
