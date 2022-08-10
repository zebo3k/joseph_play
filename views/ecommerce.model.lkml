connection: "fivetran_shopify"
include: "/views/*.view.lkml"
include: "/**/*.view.lkml"

explore: order {
  join: products {
    relationship: one_to_many
    sql: ${order.id}=${products.id} ;;
  }
  join: customers {
    relationship: many_to_one
    sql: ${order.customer_id}=${customers.id} ;;
  }
}
