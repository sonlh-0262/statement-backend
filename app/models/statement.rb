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
  PARAMS_ATTRIBUTES = [:title, :description, :place, :lat, :lng,
    category_statements_attributes: [:category_id, category_attributes: [:id, :name]]].freeze

  has_many :category_statements
  has_many :categories, through: :category_statements
  has_many :comments
  has_many :agrees

  belongs_to :user

  scope :sort_desc, ->{order created_at: "desc" }

  accepts_nested_attributes_for :category_statements
end
