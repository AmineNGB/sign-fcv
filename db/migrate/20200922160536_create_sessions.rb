class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :group
      t.datetime :date
      t.time :time

      t.timestamps
    end
  end
end
