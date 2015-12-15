class PatientMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.patient_mailer.QuizMailer.subject
  #
  default from: "pmpquizlink@gmail.com"

    def welcome_email(patient)
@patient = patient
@url  = 'http://example.com/login'

mail(to: 'jakemc77@yahoo.co.uk', subject: 'your quiz link.')
end


end
