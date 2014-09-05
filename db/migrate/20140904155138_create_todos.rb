class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :user
      t.string :task
      t.boolean :done
      t.date :due

      t.timestamps null: false
    end
  end
end
