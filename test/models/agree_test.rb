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

require 'test_helper'

class AgreeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
