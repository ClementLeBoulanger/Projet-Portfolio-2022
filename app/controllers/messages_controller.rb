class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create ]
  def create
    @message = Message.new(message_params)
    @message.save!
    redirect_to root_path
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to admin_path
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :objet, :message)
  end
end
