class WorkspaceMembersController < ApplicationController
    before_action -> { require_login(params[:workspace_id]) }

    def index
        @workspace_members = WorkspaceMember.all
    end

    def show
        @workspace_member = WorkspaceMember.find(params[:id])
    end
end
