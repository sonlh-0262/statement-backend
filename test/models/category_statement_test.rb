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

require 'test_helper'

class CategoryStatementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
