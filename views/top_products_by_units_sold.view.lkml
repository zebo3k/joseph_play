# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: top_products_by_units_sold {
    derived_table: {
      explore_source: order_line {
        column: count_items {}
        column: title { field: product.title }
        filters: {
          field: order_line.product_id
          value: "NOT NULL"
        }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger:default_data_group
    }
    dimension: count_items {
      description: ""
      type: number
    }
    dimension: title {
      description: ""
    }
  }
