# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: product_breakdown {
    derived_table: {
      explore_source: order_line {
        column: title { field: product.title }
        column: total_lifetime_revenue {}
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger:default_data_group
    }
    dimension: title {
      description: ""
    }
    dimension: total_lifetime_revenue {
      description: ""
      value_format_name: gbp
      type: number
    }
  }
