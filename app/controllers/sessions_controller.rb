class SessionsController < ApplicationController
  def create
    member = WorkspaceMember.find_by(email: member_params[:email])
    if member&.authenticate(member_params[:password])
      session[:user_id] = member.id
      redirect_to workspace_url(id: member.workspace.code)
    else
      redirect_to root_path, :notice => "Invalid email or incorrect password"
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  def member_params
    params.permit(:password, :email)
  end
end
