# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view:  new_vs_repeat_customers {
    derived_table: {
      explore_source: order_line {
        column: new_vs_repeat { field: customer.new_vs_repeat }
        column: count { field: order.count }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger: default_data_group
    }
    dimension: new_vs_repeat {
      description: ""
    }
    dimension: count {
      description: ""
      type: number

    }
  }
