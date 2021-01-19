require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "welcome" do
    email = UserMailer.with(to: "piyopiyo@example.com", name: "piyopiyo").welcome
    assert_emails(1){ email.deliver_now }
    assert_equal ["perfect_rails@example.com"], email.from
    assert_equal ["piyopiyo@example.com"], email.to
    assert_equal "登録完了", email.subject
    assert_includes email.text_part.decoded, "piyopiyo"
    assert_includes email.html_part.decoded, "piyopiyo"
  end
end
