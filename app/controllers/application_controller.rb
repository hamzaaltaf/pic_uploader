class ApplicationController < ActionController::API
    def render_success(data = {})
        render :json => {
        success: true,
        data: data,
        status: 200
        }
    end

    def render_failure(errors)
        render :json => {
            success: false,
            errors: errors,
            status: 200
        }
    end
end
