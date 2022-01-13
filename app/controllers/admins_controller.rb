class AdminsController < ApplicationController
  def admin
    @messages = Message.all
  end
end
