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
		@categories = Category.all
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

	def checkout
		session[:line_item_ids] ||= []

		if request.post?
			products = Product.find(params[:product_id])
			line_item = Line_item.new
			line_item.product_id = product.id
			line_item.quantity = params[:quantity]
			line_item.price = product.price
			line_item.save
			session[:line_item_ids] << line_item.id
		end
		@line_items = Line_item.find(session[:line_item_ids])

	end

end
