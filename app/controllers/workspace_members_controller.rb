class WorkspaceMembersController < ApplicationController
    before_action -> { require_login(params[:workspace_id]) }

    def index
        @workspace_members = Workspace.friendly.find(params[:workspace_id]).workspace_members
    end

    def show
        @workspace_member =  Workspace.friendly.find(params[:workspace_id]).workspace_members.find(params[:id])
    end
end
