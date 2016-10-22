class Megaphone::Category < ActiveRecord::Base
  # == Associations ==
  has_many :messages

  # == Validations ==
  validates :name, presence: true, uniqueness: true
end
