class NotifierMailer < ApplicationMailer
  default :from => 'no-reply@example.com',
          :subject => 'Apprentice Evaluation questionnaire results'

  def results_email(apprentice_evaluation)
    @apprentice_evaluation = apprentice_evaluation
    category 'SendGridRocks'
    mail to: "meagher.denise@gmail.com"
  end
end
