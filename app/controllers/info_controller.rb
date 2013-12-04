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
		@products = Product.order('id') 
		@categories = Category.all

		respond_to do |format|
			format.html
			format.json { render json: @products }
		end
	end
	#Loads the app/view/info/menu.html.erb

	def search
		@products = Product.where(category_id = params[:category_id])
	end

	def search_results
		@categories = Category.all
		@products = Product.where("product_name  LIKE '%#{params[:keywords]}%' AND category_id = #{params[:search_category]}")
	end

	def about
	end
	#Loads the app/view/info/about.html.erb

	def contact_us
		@customer = Customer.new

	end

	def contact 
		if request.post?
			@customer = Customer.create(
				first_name: params[:customer][:first_name],
				last_name: params[:customer][:last_name],
				address: params[:customer][:address],
				city: params[:customer][:city],
				province_id: params[:customer][:province_id])
		end
	end
	#Loads the app/view/info/contact.html.erb

	def reviews

		@customer = Customer.new

	end
	#Loads the app/view/info/review.html.erb

	def checkout
		session[:line_item_ids] ||= []

		if request.post?

			product = Product.find(params[:product_id])
			line_item = LineItem.new
			line_item.product_id = params[:product_id]
			line_item.quantity = params[:quantity]
			line_item.price = product.product_price
			line_item.save
			session[:line_item_ids] << line_item.id
		end
		@line_items = LineItem.find(session[:line_item_ids])

	end

end
