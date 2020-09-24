class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.string :group
      t.datetime :date
      t.timestamps
    end
  end
end
