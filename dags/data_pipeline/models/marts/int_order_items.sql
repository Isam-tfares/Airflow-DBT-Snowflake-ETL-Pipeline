select
    line_item.order_item_key,
    orders.order_key,
    orders.customer_key,
    orders.order_date,
    orders.status_code as order_status_code,
    line_item.part_key,
    line_item.supplier_key,
    line_item.return_flag,
    line_item.line_number,
    line_item.status_code as order_item_status_code,
    line_item.ship_date,
    line_item.commit_date,
    line_item.receipt_date,
    line_item.ship_mode,
    line_item.extended_price,
    line_item.quantity,
    {{ discounted_amount('line_item.extended_price', 'line_item.discount_percentage') }} as item_discount_amount,
    (line_item.extended_price * (1 - line_item.discount_percentage))::decimal(16,2) as discounted_price
from
    {{ ref('stg_tpch_orders') }} as orders
join
    {{ ref('stg_tpch_line_items') }} as line_item
        on orders.order_key = line_item.order_key
order by
    orders.order_date
