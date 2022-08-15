connection: "fivetran_shopify"
include: "/**/*.view.lkml"

explore: order_line {
  label: "Joseph_play_2_ecommerce"
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
  join: product_tag {
    sql_on: ${product.id}=${product_tag.product_id} ;;
    relationship: one_to_many
  }
  join: customer_address {
    sql_on: ${customer.id}=${customer_address.customer_id} ;;
    relationship: one_to_many
  }
}
