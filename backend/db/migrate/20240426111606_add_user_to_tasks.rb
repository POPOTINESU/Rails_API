class AddUserToTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.boolean :completed, default: false, null: false

      t.timestamps
    end
    add_reference :tasks, :user, null: false, foreign_key: true
  end
end
