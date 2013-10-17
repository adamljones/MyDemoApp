class User < ActiveRecord::Base
  belongs_to :account
  validates :FirstName, length:  { maximum: 100, minimum: 1 }
  validates :LastName, length: { maximum: 100, minimum: 1 }
end
