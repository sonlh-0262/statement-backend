# == Schema Information
#
# Table name: statements
#
#  id            :integer          not null, primary key
#  title         :string
#  description   :text
#  place         :string
#  lat           :text
#  lng           :text
#  agree_count   :integer
#  comment_count :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Statement < ApplicationRecord
  has_many :category_statements
  has_many :categories, through: :category_statements
  has_many :comments
  has_many :agrees

  belongs_to :user
end
