class InfoController < ApplicationController

	def index
		@product = Product.all 
	end
	#Loads the app/view/info/index.html.erb

	def menu
	end
	#Loads the app/view/info/menu.html.erb

	def about
	end
	#Loads the app/view/info/about.html.erb

	def contact_us
	end
	#Loads the app/view/info/contact.html.erb

	def reviews
	end
	#Loads the app/view/info/review.html.erb

end
