class Skill < ApplicationRecord
  belongs_to :apprentice_evaluation

  # validates :oop_practices, :modular_dev, :fullstack_understanding, :testing, :db_knowledge, :debugging, :problem_solving, :javascript, :html, :css, :teamwork, :self_motivation, :communication_skills, :energy, :aptitude, :numericality => true
end
