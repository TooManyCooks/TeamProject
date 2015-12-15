class PatientMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.patient_mailer.QuizMailer.subject
  #
  default from: "pmpquizlink@gmail.com"

    def welcome_email(patient)
        @patient = patient
        @url  = 'https://patientplatform.herokuapp.com/rapidfire/question_groups/14/answer_groups/new'

        mail(to: 'jakemc77@yahoo.co.uk', subject: 'New PMP Quiz')

    end
end
