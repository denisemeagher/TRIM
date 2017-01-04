class ApprenticeEvaluation < ApplicationRecord
  has_many :skills, dependent: :destroy

  accepts_nested_attributes_for :skills, allow_destroy: true

  def skill_total
    total_skills = self.skills.map do |skill|
      (skill.oop_practices + skill.modular_dev + skill.fullstack_understanding + skill.testing + skill.db_knowledge + skill.debugging + skill.problem_solving + skill.javascript + skill.html + skill.css + skill.teamwork + skill.self_motivation + skill.communication_skills + skill.energy + skill.aptitude)
    end
    return total_skills.first
  end
end
