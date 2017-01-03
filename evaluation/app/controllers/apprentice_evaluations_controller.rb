class ApprenticeEvaluationsController < ApplicationController

  def index
      @apprentice_evaluation = ApprenticeEvaluation.new
  end

  def create
    @apprentice_evaluation = ApprenticeEvaluation.create!(apprentice_evaluation_params)
    skill = @apprentice_evaluation.skills.build
    skill.attributes = params[:apprentice_evaluation][:skill]
    # skill.save!
    respond_to do |format|
      format.html {}
    end
  end

private
  def apprentice_evaluation_params
    params.require(:apprentice_evaluation).permit(:fullname, :email, :projectrepo, :projecturl)
    #   :skill => [:oop_practices, :modular_dev, :fullstack_understanding, :testing, :db_knowledge, :debugging, :problem_solving, :javascript, :html, :css, :teamwork, :self_motivation, :communication_skills, :energy, :aptitude]
    # )
  end

end
