class User < ApplicationRecord
  has_many :todo_lists, dependent: :destroy
  has_many :todo_items, through: :todo_lists, source: :todo_items, dependent: :destroy
  
  has_secure_password

  validates :username, presence: true

end
