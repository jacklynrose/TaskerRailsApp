class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :note
      t.datetime :due_at

      t.timestamps
    end
  end
end
