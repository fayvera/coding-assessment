class ApplicationController < ActionController::Base

    private
    
    def current_user
        # provided validation, would use session to 
        # determine current user

        # hard coding user to be 1st created user
        User.find_by_id(id: 1)
    end
end
