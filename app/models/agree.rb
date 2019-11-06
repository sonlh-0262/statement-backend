# == Schema Information
#
# Table name: agrees
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  statement_id :integer
#  like         :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Agree < ApplicationRecord
  belongs_to :user
  belongs_to :statement
end
