class MessagesController < ApplicationController

  def create
    @message = Message.new(messages_params)
    if @message.save
      redirect_to @message, success: 'Message is sended'
    else
      redirect_to @message, danger: 'Opps we have problems'
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  private

  def messages_params
    params.require(:message).permit(:msg_body, :name, :last_name, :email)
  end
end
