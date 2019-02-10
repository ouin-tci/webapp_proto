class ApplicationController < ActionController::Base
    before_action :require_login
    before_action :set_operator

    def set_operator
        RecordWithOperator.operator = current_user
    end
end
