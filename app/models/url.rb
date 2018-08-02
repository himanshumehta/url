class Url < ApplicationRecord
	self.table_name = "urls"
	validates :url, :http_status, :presence => true
end
