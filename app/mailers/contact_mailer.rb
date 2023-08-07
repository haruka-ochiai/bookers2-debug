class ContactMailer < ApplicationMailer
    
    def send_mail(group_name, mail_title, mail_content, group_users)
        @group_name = group_name
        @mail_title = mail_title
        @mail_content = mail_content
        mail bcc: group_users.pluck(:email), subject: mail_title
    end
end
