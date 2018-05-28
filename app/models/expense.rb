class Expense < ApplicationRecord
  belongs_to :user_event
  belongs_to :category
  serialize :member_name

end
