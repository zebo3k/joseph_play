# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: avg_items_per_order_per_time {
    derived_table: {
      explore_source: order_line {
        column: avg_items_per_order {}
        column: created_at_month { field: order.created_at_month }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger:default_data_group
    }
    dimension: avg_items_per_order {
      description: ""
      type: number
    }
    dimension: created_at_month {
      description: ""
      type: date_month
    }
  }
