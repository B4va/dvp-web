class ContactMailer < ApplicationMailer
  def contact_email(params)
    puts '=======', params
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @tel = params[:tel]
    @cie = params[:cie]
    @date = params[:date]
    @message = params[:message]
    mail(to: ENV['PERSO_MAIL'], subject: "Contact : #{@last_name} #{@first_name}", from: @email) 
  end
end
