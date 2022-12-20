class WorkspacesController < ApplicationController
    before_action -> { require_login(params[:id]) }

    def index
    end

    def show
        @workspace = Workspace.friendly.find(params[:id])
    end
end
