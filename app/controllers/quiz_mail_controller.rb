class QuizMailController < ApplicationController

  def send_quiz_mail

    PatientMailer.welcome_email('jakemc77@yahoo.co.uk').deliver_now
    redirect_to :controller => 'doctors', :action => 'show', :id => 1
  end
end
