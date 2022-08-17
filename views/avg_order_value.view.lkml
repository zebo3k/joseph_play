# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: avg_order_value {
    derived_table: {
      explore_source: order_line {
        column: average_revenue { field: order.average_revenue }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger:default_data_group
    }
    dimension: average_revenue {
      description: ""
      value_format_name: :gbp
      type: number
    }
  }
