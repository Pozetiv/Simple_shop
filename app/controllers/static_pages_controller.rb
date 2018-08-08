class StaticPagesController < ApplicationController
  def support_page
    @message = Message.new
  end
end
