class WorkspaceVendorsController < ApplicationController
    before_action -> { require_login(params[:workspace_id]) }

    def index
        @workspace_vendors = WorkspaceVendor.all
    end

    def show
        puts params[:id]
        @workspace_vendor = WorkspaceVendor.find(params[:id])
    end
end
