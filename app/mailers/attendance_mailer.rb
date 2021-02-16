class AttendanceMailer < ApplicationMailer
	default form: 'hello@yopmail.com'

	layout "mailer"

	def guest_email(attendance)
		
		@attendance = attendance
		@user = User.find(@attendance.user_id)

		@url = 'http://soft-eventbrite/login'

		mail(to: @user.email, subject: 'Patricipation confirmée !')
	end
end
