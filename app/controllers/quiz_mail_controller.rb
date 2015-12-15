class QuizMailController < ApplicationController

  def index
      PatientMailer.welcome_email('jakemc77@yahoo.co.uk').deliver_now
  end

end
