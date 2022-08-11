connection: "fivetran_shopify"
include: "/views/*.view.lkml"
include: "/**/*.view.lkml"

explore: order_line {
  join: order {
    sql_on: ${order_line.order_id}=${order.id} ;;
    relationship: many_to_one
  }
  join: product {
    sql_on: ${order_line.product_id}=${product.id} ;;
    relationship: one_to_one
  }
  join: customer {
    sql_on: ${order.customer_id}=${customer.id} ;;
    relationship: many_to_one
  }
}
