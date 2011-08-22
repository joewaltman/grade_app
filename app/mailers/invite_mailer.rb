class InviteMailer < ActionMailer::Base
  default :from => "from@example.com"
  
  def send_invite(email)
    recipients  email
    from        "joewaltman@gmail.com"
    subject     "This is a test"
    body        "how are you doing....this is the test email from the grade app"  
  end
end
