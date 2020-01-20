class CreateTodoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_items do |t|
      t.date :due_date
      t.string :title
      t.string :description
      t.boolean :completed, default: false
      t.references :todo_list, foreign_key: true

      t.timestamps
    end
  end
end
