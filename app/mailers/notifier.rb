class Notifier < ApplicationMailer
  default from: 'no-reply@CheKNow.com'
  
  def manager_notification_s(m_email_address, e_name, hour_s)
    @username = e_name
    @workhour = hour_s
    
    puts "WE ARE SENDING THE STARTING MAIL FUCKER!"
    
    mail(to: "branrojs@gmail.com",
         subject: "An Engineer has started to work today")
  end
  
  def manager_notification_f(m_email_address, e_name, hour_f)
    @username = e_name
    @workhour = hour_f
    
    puts "WE ARE SENDING THE STARTING MAIL FUCKER!"
    mail(to: "branrojs@gmail.com",
         subject: "An Engineer has finished to work for today")
  end
  
end
