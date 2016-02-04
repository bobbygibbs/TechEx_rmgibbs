class BooksController < ApplicationController
	def index
		@books = Booklist.all
	end

	def show
		@books = Booklist.find(params[:id])
	end

	def new
	end
	
	def create
		@books = Booklist.new(book_params)

		@books.save
		redirect_to '/'
	end

	def destroy
		@books = Booklist.find(params[:id])
		@books.destroy

		redirect_to '/'
	end

	private
		def book_params
			params.require(:book).permit(:title, :author, :year, :pages)
		end
end
