class SearchController < ApplicationController
    def search
        @range = params[:range] 
        method = params[:search_method] 
        word = params[:search_word] 
        if @range == "1" 
            @user = User.search(method,word) 
        else 
            @books = Book.search(method,word)
        end 
    end 
end
