class ApplicationMailer < ActionMailer::Base
  default from: "notification@cheknow.com"
  layout 'mailer'
  #http://api.rubyonrails.org/classes/ActionMailer/Base.html
end
