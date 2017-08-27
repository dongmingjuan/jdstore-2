class AddMakePaymentToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :make_method, :string
  end
end
