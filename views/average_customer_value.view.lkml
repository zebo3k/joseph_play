# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: average_customer_value {
    derived_table: {
      explore_source: order_line {
        column: created_at_month { field: order.created_at_month }
        column: total_revenue { field: order.total_revenue }
        column: count { field: customer.count }
        column: total_price {field:order.total_price}
        column: order_number {field:order.order_number}
        column: price {field:order_line.price}
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger: default_data_group

    }
    dimension: created_at_month {
      description: ""
      type: date_month
    }
    dimension: order_number {
      description: ""
      type: number
    }
    dimension: total_price{
      description: ""
      type: number
    }
    dimension: price {
      description: ""
      type: number
    }
    measure: total_revenue {
      description: ""
      value_format_name: gbp
      type: sum
    }
    measure: count {
      description: ""
      type: count
    }
  }
