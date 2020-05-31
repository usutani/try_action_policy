class User < ApplicationRecord
  validates :name, presence: true
  enum role: { general: 0, admin: 1 }
end
