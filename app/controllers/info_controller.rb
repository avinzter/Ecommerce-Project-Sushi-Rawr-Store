class InfoController < ApplicationController

	def index
		@categories = Category.all
	end
	#Loads the app/view/info/index.html.erb

	def menu
		@product = Product.all 

		respond_to do |format|
			format.html
			format.json { render json: @products }
		end
	end
	#Loads the app/view/info/menu.html.erb

	def search
	end

	def search_results
		@product = Product.where(:name => params[:keywords])
	end

	def about
	end
	#Loads the app/view/info/about.html.erb

	def contact_us
	end
	#Loads the app/view/info/contact.html.erb

	def reviews

	@customer = Customer.new(params[:id])

	end
	#Loads the app/view/info/review.html.erb

end
