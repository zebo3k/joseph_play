# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: total_revenue {
    derived_table: {
      explore_source: order_line {
        column: total_revenue { field: order.total_revenue }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger:default_data_group
    }
    dimension: total_revenue {
      description: ""
      value_format_name: gbp
      type: number
    }
  }
