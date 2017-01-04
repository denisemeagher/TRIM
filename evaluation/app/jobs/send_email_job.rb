class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(apprentice_evaluation)
    NotifierMailer.results_email(apprentice_evaluation).deliver
  end
end
