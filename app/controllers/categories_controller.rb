class CategoriesController < ApplicationController
    
    before_action :require_login
    
    include CategoriesHelper
    
    def new
        type_of_array
        @path = categories_path
        @verb = :post
    end
    
    def index
        @categories = Category.all
    end
    
    def edit
       @category = Category.find(params[:id])
       type_of_array
       @path = category_path
       @verb = :patch
    end
    
    def create
       @category = Category.new(category_params)
       
       @category.save
       redirect_to categories_path
    end
    
    def update
        @category = Category.find(params[:id])
        
        @category.update(category_params)
        redirect_to categories_path
    end
    
    def destroy
       @category = Category.find(params[:id])
       
       @category.destroy
       redirect_to categories_path
    end
    


end
