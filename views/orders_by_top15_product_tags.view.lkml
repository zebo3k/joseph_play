# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: orders_by_top15_product_tags {
    derived_table: {
      explore_source: order_line {
        column: created_at_date { field: order.created_at_date }
        column: count {}
        column: value { field: product_tag.value }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger:default_data_group
    }
    dimension: created_at_date {
      description: ""
      type: date
    }
    dimension: count {
      description: ""
      type: number
    }
    dimension: value {
      description: ""
    }
  }
