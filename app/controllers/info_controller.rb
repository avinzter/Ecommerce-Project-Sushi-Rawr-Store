class InfoController < ApplicationController

	def index
		@categories = Category.all

		respond_to do |format|
			format.html
			format.json { render json: @products }
		end
	end
	#Loads the app/view/info/index.html.erb

	def menu
		@products = Product.all 

		respond_to do |format|
			format.html
			format.json { render json: @products }
		end
	end
	#Loads the app/view/info/menu.html.erb

	def search
	end

	def search_results
		@products = Product.where("product_name  LIKE '%#{params[:keywords]}%' AND category_id = #{params[:search_category]}")
	end

	def about
	end
	#Loads the app/view/info/about.html.erb

	def contact_us
	end
	#Loads the app/view/info/contact.html.erb

	def reviews

		@customer = Customer.new

	end
	#Loads the app/view/info/review.html.erb

end
