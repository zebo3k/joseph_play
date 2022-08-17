# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: total_orders {
    derived_table: {
      explore_source: order_line {
        column: count { field: order.count }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger:default_data_group
    }
    dimension: count {
      description: ""
      type: number
    }
  }
