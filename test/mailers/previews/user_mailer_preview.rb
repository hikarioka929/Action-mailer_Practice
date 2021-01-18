# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

    def welcome
        UserMailer.with(to: "piyopiyo@example.com", name: "pikapika").welcome
    end
end
