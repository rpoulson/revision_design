class Logo < ActiveRecord::Base
  attr_accessible :color, :font, :size, :weight

	def self.getAllLogos
		logos = Array.new
		Logo.find_each do |logo|
			Logos.push(logo)
		end
		return logos
	end

# use parameters from query
# => same form and submit setup as on create page
# need function to take in parameters and only return desired logos

end
