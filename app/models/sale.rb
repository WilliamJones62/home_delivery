class Sale < ApplicationRecord
  establish_connection "prod".to_sym
  self.table_name = "vw_homedelivery"
end
