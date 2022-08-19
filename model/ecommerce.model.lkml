connection: "fivetran_shopify"
include: "/**/*.view.lkml"
include:  "//fivetran_facebook/**/*.view.lkml"
include: "/refinement.view.lkml"

datagroup: default_data_group {
  interval_trigger: "1 hours"
  max_cache_age: "1 hours"
  label: "1 hour "
  description: "Triggered at 1 hour interval"
}
persist_with: default_data_group

explore: order_line {
  join: order {
    type: left_outer
    sql_on: ${order_line.order_id}=${order.id} ;;
    relationship: many_to_one
  }
  join: product {
    type: left_outer
    sql_on: ${order_line.product_id}=${product.id} ;;
    relationship: one_to_one
  }
  join: customer {
    type: left_outer
    sql_on: ${order.customer_id}=${customer.id} ;;
    relationship: many_to_one
  }
  join: product_tag {
    type: left_outer
    sql_on: ${product.id}=${product_tag.product_id} ;;
    relationship: one_to_many
  }
  join: customer_address {
    type: left_outer
    sql_on: ${customer.id}=${customer_address.customer_id} ;;
    relationship: one_to_one
  }
  join: vendor {
    type: left_outer
    sql_on: ${order_line.vendor}=${product.vendor} ;;
    relationship: many_to_one
  }
  join: sales_and_orders_over_time {
    type: left_outer
    sql_on: ${order.created_at_month}=${sales_and_orders_over_time.created_at_month} ;;
    relationship: many_to_one
  }
  join: average_customer_value {
    type: left_outer
    sql_on: ${order.created_at_month}=${average_customer_value.created_at_month} ;;
    relationship: many_to_one
  }
  join: avg_items_per_order_per_time {
    type: left_outer
    sql_on: ${order.created_at_month}=${avg_items_per_order_per_time.created_at_month} ;;
    relationship: many_to_one
  }
    join: new_vs_repeat_customers {
    type: left_outer
    sql_on: ${customer.new_vs_repeat}=${new_vs_repeat customers.new_vs_repeat} ;;
    relationship: many_to_one
  }
  join: new_vs_repeat_customer_count_over_time {
    type: left_outer
    sql_on: ${customer.new_vs_repeat}=${new_vs_repeat_customer_count_over_time.new_vs_repeat} ;;
    relationship: many_to_one
  }
  join: order_count_by_customer_age {
    type: left_outer
    sql_on: ${order.created_at_month}=${order_count_by_customer_age.created_at_month} ;;
    relationship: many_to_one
  }
  join: orders_by_top15_product_tags{
    type: left_outer
    sql_on: ${order.created_at_date}=${orders_by_top15_product_tags.created_at_date} ;;
    relationship: many_to_one
  }
  join: paid_and_fufilled_orders{
    type: left_outer
    sql_on: ${order.fulfillment_status}=${paid_and_fufilled_orders.fulfillment_status} ;;
    relationship: many_to_one
  }
  join: product_breakdown{
    type: left_outer
    sql_on: ${product.title}=${product_breakdown.title} ;;
    relationship: many_to_one
  }
  join: product_type_breakdown{
    type: left_outer
    sql_on: ${product_tag.value}=${product_type_breakdown.value} ;;
    relationship: many_to_one
  }
  join: revenue_by_month_and_product{
    type: left_outer
    sql_on: ${product.title}=${revenue_by_month_and_product.title} ;;
    relationship: many_to_one
  }
  join: revenue_by_customer_cohort{
    type: left_outer
    sql_on: ${customer.created_at_month}=${revenue_by_customer_cohort.created_at_month} ;;
    relationship: many_to_one
  }
  join: top_10_countries_by_revenue{
    type: left_outer
    sql_on: ${customer_address.country}=${top_10_countries_by_revenue.country} ;;
    relationship: many_to_one
  }
  join: top_products_by_revenue{
    type: left_outer
    sql_on: ${product.title}=${top_products_by_revenue.title} ;;
    relationship: many_to_one
  }
  join: top_products_by_units_sold{
    type: left_outer
    sql_on: ${product.title}=${top_products_by_units_sold.title} ;;
    relationship: many_to_one
  }
  join: total_customers_this_month{
    type: left_outer
    sql_on: ${order.created_at_month}=${total_customers_this_month.created_at_month} ;;
    relationship: many_to_one
  }
  join: avg_order_value_over_time {
    type: left_outer
    sql_on: ${order.created_at_month}=${avg_order_value_over_time.created_at_month} ;;
    relationship: many_to_one
  }
  join: repeat_customer_breakdown {
    type: left_outer
    sql_on: ${order.order_number}=${repeat_customer_breakdown.order_number}} ;;
    relationship: many_to_one
  }
}

explore: account_history {

}
