class ApplicationController < ActionController::Base
    protected

    def current_user
        return unless session[:user_id]
        current_user ||= WorkspaceMember.find(session[:user_id])
    end

    def require_login(workspace_id)

        unless current_user
            redirect_to root_path, :notice => "Must be logged in to view workspace"
        end

        unless current_user.workspace.slug.to_s == workspace_id.to_s
            redirect_to root_path, :notice => "Unauthorized request"
        end
    end
end
