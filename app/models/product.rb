class Product < ApplicationRecord
  IMAGE_FORMAT = %r{\.(gif|jpg|png)\Z}i

  validates :title, presence: true,
            length: { maximum: 50 },
            uniqueness: true

  validates :description, presence: true,
            length: { maximum: 300 }

  validates :image_url, presence: true,
            format: { allow_blank: true,
              with: IMAGE_FORMAT,
              message: 'изображения должно быть в формате GIF, JPG или PNG.'
            }

  validates :price, presence: true,
            numericality: {greater_than_or_equal_to: 0.01}

  def self.latest
    Product.order(:updated_at).last
  end

end
