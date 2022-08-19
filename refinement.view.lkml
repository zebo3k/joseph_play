include:  "//fivetran_facebook/**/*.view.lkml"

view: +account_history {
  dimension: agency_client_declaration_agency_representing_client {
    type: number
    sql: ${TABLE}.agency_client_declaration_agency_representing_client ;;
    hidden: yes
  }

  dimension: agency_client_declaration_client_based_in_france {
    type: number
    sql: ${TABLE}.agency_client_declaration_client_based_in_france ;;
    link: {
      label: "this is the link to search for my favorite show of all time"
      url: "https://www.google.com/search?q=hawaii+five+o+1968&sxsrf=ALiCzsZJ4UjDcK-Ce-6erG-Vev3v83UWZA%3A1660885413538&ei=pRn_Yuu1II_8a4yjtugL&gs_ssp=eJzj4tDP1TewLK8sN2D0EspILE_MzFRIyyxLVchXMLQ0swAAjpYI_w&oq=hawaii+five+o+19&gs_lcp=Cgdnd3Mtd2l6EAEYADIKCC4QgAQQhwIQFDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDoHCAAQRxCwAzoKCAAQ5AIQsAMYAToMCC4QyAMQsAMQQxgCOgQIIxAnOgUILhCABDoKCAAQgAQQhwIQFDoFCAAQkQJKBAhBGABKBAhGGAFQ9ShYlzlgjkZoAnABeACAAdgEiAG_F5IBBTQtMy4zmAEAoAEByAEPuAEDwAEB2gEGCAEQARgJ2gEGCAIQARgI&sclient=gws-wiz"

    }
  }

  dimension: agency_client_declaration_client_city {
    type: string
    sql: ${TABLE}.agency_client_declaration_client_city ;;
    hidden: yes
  }

  dimension: agency_client_declaration_client_country_code {
    type: string
    sql: ${TABLE}.agency_client_declaration_client_country_code ;;
    hidden:yes
  }

  dimension: agency_client_declaration_client_email_address {
    type: string
    sql: ${TABLE}.agency_client_declaration_client_email_address ;;
    hidden: yes
  }

  dimension: agency_client_declaration_client_name {
    type: string
    sql: ${TABLE}.agency_client_declaration_client_name ;;
    hidden: yes
  }

  dimension: agency_client_declaration_client_postal_code {
    type: string
    sql: ${TABLE}.agency_client_declaration_client_postal_code ;;
    hidden: yes
  }

  dimension: agency_client_declaration_client_province {
    type: string
    sql: ${TABLE}.agency_client_declaration_client_province ;;
    hidden: yes
  }

  dimension: agency_client_declaration_client_street {
    type: string
    sql: ${TABLE}.agency_client_declaration_client_street ;;
    hidden: yes
  }

  measure: joseph_play_count {
    type: count_distinct
  }
}
