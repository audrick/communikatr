class ServerController < ApplicationController
protect_from_forgery :except => :

    def create

    @server = params[:radio]
    case
    when @server == sbutton

      from_phone = "+19177467336"
      to_phone = params[:text_field]
      txt = params[:text_area]


      client = Twilio::REST::Client.new(TW_SID, TW_TOK)
      @message = client.account.sms.messages.create({:from => from_phone, :to => to_phone, :body => txt})
      redirect_to twilio_path




  end
  end
end
