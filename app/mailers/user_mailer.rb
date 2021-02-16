class UserMailer < ApplicationMailer
	default form: 'hello@yopmail.com'

	layout "mailer"

	def welcome_email(user)
		@user = user

		@url = 'http://soft-eventbrite.herokuapp.com/login'

		mail(to: @user.email, subject: 'Bienvenue chez soft-eventbrite !')
	end
end
