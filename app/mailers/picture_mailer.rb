class PictureMailer < ApplicationMailer

  def picture_mail(picture)
    @picture = picture
    mail to: @picture.user_email,
    subject: "投稿確認メール"
  end
end
