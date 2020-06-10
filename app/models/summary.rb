class Summary < ApplicationRecord
  establish_connection "prod".to_sym
  self.table_name = "vw_homedelivery_summary"
end
