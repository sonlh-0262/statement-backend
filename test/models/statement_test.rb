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

require 'test_helper'

class StatementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
