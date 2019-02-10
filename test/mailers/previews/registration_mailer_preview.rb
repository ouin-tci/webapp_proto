# Preview all emails at http://localhost:3000/rails/mailers/registration_mailer
class RegistrationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/registration_mailer/deliver_indiviaual
  def deliver_indiviaual
    RegistrationMailer.deliver_indiviaual
  end

  # Preview this email at http://localhost:3000/rails/mailers/registration_mailer/deliver_corporate
  def deliver_corporate
    RegistrationMailer.deliver_corporate
  end

end
