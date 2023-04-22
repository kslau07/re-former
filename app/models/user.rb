class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true                # reenable
  validates :password, presence: true             # reenable
end
