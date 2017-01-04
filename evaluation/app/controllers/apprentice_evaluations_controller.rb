class ApprenticeEvaluationsController < ApplicationController

  def index
      @apprentice_evaluation = ApprenticeEvaluation.new
      @apprentice_evaluations = ApprenticeEvaluation.includes(:skills)
  end

  def create
    aep = apprentice_evaluation_params
    apprentice_evaluation = ApprenticeEvaluation.new
    apprentice_evaluation
                        .update_attributes!(
                          fullname: aep[:fullname],
                          email: aep[:email],
                          projectrepo: aep[:projectrepo],
                          projecturl: aep[:projecturl]
                        )

    skill = apprentice_evaluation.skills.build
    skill.attributes = apprentice_evaluation_params[:skills_attributes]

    if skill.save! && apprentice_evaluation.save!
      SendEmailJob.perform_later(apprentice_evaluation)
      respond_to do |format|
        format.html { redirect_to root_path }
      end
    end
  end

private
  def apprentice_evaluation_params
    params.require(:apprentice_evaluation).permit(:fullname, :email, :projectrepo, :projecturl, skills_attributes: [:oop_practices, :modular_dev, :fullstack_understanding, :testing, :db_knowledge, :debugging, :problem_solving, :javascript, :html, :css, :teamwork, :self_motivation, :communication_skills, :energy, :aptitude]
    )
  end
end
