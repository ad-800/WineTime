module Users
  class SessionsController < Devise::SessionsController
    def destroy
      super do
        # Turbo requires redirects be :see_other (303); so override Devise default (302)
        return redirect_to root_path, status: :see_other
      end
    end
  end
end
