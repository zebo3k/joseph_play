# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: customer_spend_by_location {
    derived_table: {
      explore_source: order_line {
        column: shipping_address_location { field: order.shipping_address_location }
        column: total_revenue { field: order.total_revenue }
        filters: {
          field: order.closed_at_date
          value: "30 days"
        }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger: default_data_group
    }
    dimension: shipping_address_location {
      description: ""
      type: location
    }
    dimension: total_revenue {
      description: ""
      value_format_name: gbp
      type: number
    }
  }
