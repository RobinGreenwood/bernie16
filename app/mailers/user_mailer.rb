class UserMailer < ActionMailer::Base
  puts "in mailer"

  def send_note(note)
    @receiver = note.receiver_email
    @sender = note.sender_email
    @text = note.text
    result = mail(to: @receiver, from: @sender, subject: "This is our chance").deliver
  end

end
