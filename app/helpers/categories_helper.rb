module CategoriesHelper
    def category_params
       params.require(:category).permit(:name, :category_type_id) 
    end
    
        
    def type_of_array
        @category_types = CategoryType.all
        @type_array = [["", nil]]
        @category_types.each do |ct|
            @type_array << [ct.name, ct.id]
        end 
        @type_array
    end
end
