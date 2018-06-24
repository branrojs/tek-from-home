class Notifier < ApplicationMailer
  default from: 'no-reply@example.com'
  
  def manager_notification_s(m_email_address, e_name, hour)
    #@account = recipient
    puts "WE ARE SENDING THE STARTING MAIL FUCKER!"
    mail(to: "branrojs@gmail.com",
         subject: "The Engineer #{e_name} has started the work at #{hour}")
  end
  
  def manager_notification_f(m_email_address, e_name, hour)
    #@account = recipient
    puts "WE ARE SENDING THE STARTING MAIL FUCKER!"
    mail(to: "branrojs@gmail.com",
         subject: "The Engineer #{e_name} has finished the work at #{hour}")
  end
  
end
