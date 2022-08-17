# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: revenue_by_customer_cohort {
    derived_table: {
      explore_source: order_line {
        column: created_at_month { field: customer.created_at_month }
        column: total_revenue { field: order.total_revenue }
        column: created_at_month { field: order.created_at_month }
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
    dimension: total_revenue {
      description: ""
      value_format_name: gbp
      type: number
    }

  }
