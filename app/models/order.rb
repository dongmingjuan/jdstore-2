class Order < ApplicationRecord
  belongs_to :user
  has_many :product_lists
  def pay!
    self.update_columns(is_paid: true)
  end
  def make_payment!(method)
    self.update_columns(make_method: method)
  end
end
