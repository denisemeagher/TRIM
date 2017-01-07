class NotifierMailer < ApplicationMailer
  default :from => 'no-reply@example.com',
          :subject => 'Apprentice Evaluation Questionnaire Results'

  def results_email(apprentice_evaluation)
    @apprentice_evaluation = apprentice_evaluation
    category 'SendGridRocks'
    mail to: "tim@trimagency.com"
  end
end
