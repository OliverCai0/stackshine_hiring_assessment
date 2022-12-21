class WorkspaceVendorsController < ApplicationController
    before_action -> { require_login(params[:workspace_id]) }

    def index
        @workspace_vendors = Workspace.friendly.find(params[:workspace_id]).workspace_vendors
    end

    def show
        @workspace_vendor = Workspace.friendly.find(params[:workspace_id]).workspace_vendors.find(params[:id])
    end
end
