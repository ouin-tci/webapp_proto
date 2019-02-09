# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/reset_password_email
  def reset_password_email
    
    UserMailer.reset_password_email(User.new({email: "test.com", reset_password_token: "tokenXXXX"}))
  end

end
