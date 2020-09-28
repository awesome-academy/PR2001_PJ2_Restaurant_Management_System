# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many :dishes, dependent: :destroy
  mount_uploader :image_dish, ImageUploader
  has_many :images, dependent: :destroy
end
