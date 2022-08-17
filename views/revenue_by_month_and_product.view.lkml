# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: revenue_by_month_and_product {
    derived_table: {
      explore_source: order_line {
        column: created_at_month { field: order.created_at_month }
        column: total_revenue { field: order.total_revenue }
        column: title { field: product.title }
        filters: {
          field: product_tag.value
          value: "-NULL"
        }
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
    dimension: title {
      description: ""
    }
  }
