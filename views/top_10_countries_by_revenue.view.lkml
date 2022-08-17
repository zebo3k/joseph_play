# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: top_10_countries_by_revenue {
    derived_table: {
      explore_source: order_line {
        column: country { field: customer_address.country }
        column: total_lifetime_revenue {}
        filters: {
          field: customer_address.country
          value: "-NULL"
        }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger:default_data_group
    }
    dimension: country {
      description: ""
    }
    dimension: total_lifetime_revenue {
      description: ""
      value_format_name: gbp
      type: number
    }
  }
