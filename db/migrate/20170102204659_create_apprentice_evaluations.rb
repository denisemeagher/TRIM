class CreateApprenticeEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :apprentice_evaluations do |t|
      t.string :fullname
      t.string :email
      t.string :projectrepo
      t.string :projecturl

      t.timestamps
    end
  end
end
