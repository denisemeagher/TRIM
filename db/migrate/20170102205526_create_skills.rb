class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.integer :oop_practices
      t.integer :modular_dev
      t.integer :fullstack_understanding
      t.integer :testing
      t.integer :db_knowledge
      t.integer :debugging
      t.integer :problem_solving
      t.integer :javascript
      t.integer :html
      t.integer :css
      t.integer :teamwork
      t.integer :self_motivation
      t.integer :communication_skills
      t.integer :energy
      t.integer :aptitude
      t.references :apprentice_evaluation, foreign_key: true

      t.timestamps
    end
  end
end
