class Url < ApplicationRecord
	self.table_name = "urls"
	validates :url, :http_status, :presence => true
	validates :slug, uniqueness: true

	def sanitize
		self.url.strip!
    	self.sanitize_url = self.url.downcase.gsub(/(https?:\/\/)|(www\.)/, "")
    	self.sanitize_url.slice!(-1) if self.sanitize_url[-1] == "/"
    	self.sanitize_url = "http://#{self.sanitize_url}"
	end

	def url_exist
	   if Url.find_by_sanitize_url(self.sanitize_url) 
	   	then true 
	   	else false 
	   end
	end

	def generate_slug
		chars = ['0'..'9','A'..'Z','a'..'z'].map{|range| range.to_a}.flatten
    	self.slug = 6.times.map{chars.sample}.join until Url.find_by_slug(self.slug).nil?	
    end
end