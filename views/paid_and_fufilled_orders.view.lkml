# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view:  paid_and_fufilled_orders {
    derived_table: {
      explore_source: order_line {
        column: count { field: order.count }
        column: financial_status { field: order.financial_status }
        column: fulfillment_status { field: order.fulfillment_status }
        column: created_at_date { field: order.created_at_date }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
        filters: {
          field: order.financial_status
          value: "-NULL"
        }
      }
      datagroup_trigger:default_data_group
    }
    dimension: count {
      description: ""
      type: number
    }
    dimension: financial_status {
      description: ""
    }
    dimension: fulfillment_status {
      description: ""
    }
    dimension: created_at_date {
      description: ""
      type: date
    }
  }
