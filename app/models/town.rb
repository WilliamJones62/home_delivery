class Town < ApplicationRecord
  establish_connection "prod".to_sym
  self.table_name = "darthdtowns"
end
