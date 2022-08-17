# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: total_customers_this_month {
    derived_table: {
      explore_source: order_line {
        column: created_at_month { field: order.created_at_month }
        column: count { field: customer.count }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger:default_data_group
    }
    dimension: created_at_month {
      description: ""
      type: date_month
    }
    dimension: count {
      description: ""
      type: number
    }
  }
