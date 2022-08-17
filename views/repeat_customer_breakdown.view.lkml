# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: repeat_customer_breakdown {
    derived_table: {
      explore_source: order_line {
        column: orders_count { field: customer.orders_count }
        column: count { field: customer.count }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
        filters: {
          field: customer.orders_count
          value: "NOT NULL"
        }
      }
      datagroup_trigger:default_data_group
    }
    dimension: orders_count {
      description: ""
      type: number
    }
    dimension: count {
      description: ""
      type: number
    }
  }
