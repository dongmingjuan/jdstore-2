module OrdersHelper
  def render_order_paid_state(order)
    if order.is_paid?
      "已支付"
    else
     "没有支付"
   end
 end
end
