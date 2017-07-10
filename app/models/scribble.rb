class Scribble < ApplicationRecord
  belongs_to :user
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
