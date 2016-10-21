# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  name           :string
#  category_id    :integer
#  description    :text
#  product_model  :string
#  maker_name     :string
#  product_serial :string
#  quentity       :string
#  stock_location :string
#  unit_value     :string
#  unit_size      :string
#  image          :string
#  approved       :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Product < ActiveRecord::Base
  belongs_to :category
end