require 'test_helper'

class RegistrationMailerTest < ActionMailer::TestCase
  test "deliver_indiviaual" do
    mail = RegistrationMailer.deliver_indiviaual
    assert_equal "Deliver indiviaual", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "deliver_corporate" do
    mail = RegistrationMailer.deliver_corporate
    assert_equal "Deliver corporate", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
