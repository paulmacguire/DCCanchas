class ConversationsController < ApplicationController
  def index
    @conversations = current_usuario.mailbox.conversations
  end

  def show
    @conversation = current_usuario.mailbox.conversations.find(params[:id])
  end

  def new
    @usuario = Usuario.find_by(id: params[:recipient_id])
    @recipients = [@usuario]
  end

  def create
    recipient = Usuario.find(params[:usuario_id])
    receipt = current_usuario.send_message(recipient, params[:body], params[:subject])
    redirect_to conversation_path(receipt.conversation)
  end

end
