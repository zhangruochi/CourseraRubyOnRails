class TodoItem < ApplicationRecord
  belongs_to :todo_list, optional: true
end
