class HomeController < ApplicationController
  def index
  end

  def landing
    if current_user
      redirect_to workspace_url(id: current_user.workspace.code)
    end
  end
end
