# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string
#  category_id        :integer
#  description        :text
#  product_model      :string
#  maker_name         :string
#  product_serial     :string
#  quentity           :string
#  stock_location     :string
#  unit_value         :string
#  unit_size          :string
#  image              :string
#  approved           :boolean          default(FALSE)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  warranty_start     :string
#  warranty_end       :string
#

class Product < ActiveRecord::Base
  has_attached_file :image, styles: {medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :category
end
