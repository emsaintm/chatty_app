class Scribble < ApplicationRecord
  belongs_to :user
  has_many :likes

  # Validations
  # * no blank tweets
  # * less than 140 characters
  validates :message, presence: true, length: { maximum: 140, too_long: 'A scribble can only be 140 characters max.' }
  # * no blank user_id
  validates :user_id, presence: true
  # * has to be a real user
  validates :user, presence: true

end

# == Schema Information
#
# Table name: scribbles
#
#  id         :integer          not null, primary key
#  message    :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_scribbles_on_user_id  (user_id)
#
