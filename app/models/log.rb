# == Schema Information
#
# Table name: logs
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  product_id  :integer
#  quentity    :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Log < ActiveRecord::Base
end
