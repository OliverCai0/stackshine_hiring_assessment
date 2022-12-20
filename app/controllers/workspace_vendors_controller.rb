class WorkspaceVendorsController < ApplicationController
    before_action -> { require_login(params[:workspace_id]) }

    def index
        @workspace_vendors = WorkspaceVendor.all
    end

    def show
        @workspace_vendor = WorkspaceVendor.find_by(params[:id])
    end
end
