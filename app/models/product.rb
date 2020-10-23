class Product < ApplicationRecord
  IMAGE_FORMAT = %r{\.(gif|jpg|png)\Z}i

  has_many :line_items

  before_destroy :ensure_not_refereced_by_any_line_item

  validates :title, presence: true,
            length: {maximum: 50},
            uniqueness: true

  validates :description, presence: true,
            length: {maximum: 300}

  validates :image_url, presence: true,
            format: {allow_blank: true,
                     with: IMAGE_FORMAT,
                     message: 'изображения должно быть в формате GIF, JPG или PNG.'
            }

  validates :price, presence: true,
            numericality: {greater_than_or_equal_to: 0.01}

  def self.latest
    Product.order(:updated_at).last
  end

  private

  # убеждаемся в отсутствии товарных позиций, ссылающихся на данный товар
  def ensure_not_refereced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'существуют товарные позиции')
      return false
    end
  end

end
