# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: order_count_by_customer_age {
    derived_table: {
      explore_source: order_line {
        column: created_at_month { field: order.created_at_month }
        column: customer_age { field: order.customer_age }
        column: count { field: order.count }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
        filters: {
          field: order.customer_age
          value: "NOT NULL"
        }
      }
      datagroup_trigger: default_data_group
    }
    dimension: created_at_month {
      description: ""
      type: date_month
    }
    dimension: customer_age {
      description: ""
      type: number
    }
    dimension: count {
      description: ""
      type: number
    }
  }
