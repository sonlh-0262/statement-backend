# == Schema Information
#
# Table name: category_statements
#
#  id           :integer          not null, primary key
#  statement_id :integer
#  category_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class CategoryStatement < ApplicationRecord
  belongs_to :statement
  belongs_to :category
end
