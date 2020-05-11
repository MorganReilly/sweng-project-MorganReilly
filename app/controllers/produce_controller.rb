class ProduceController < ApplicationController

    def produce_params
        params.require(:produce).permit(:product_name, :quantity, :next_delivery)
    end

    def show
        id = params[:id] # produce retreival based on id from URI route
        @produce = Produce.find(id) # Produce look up based on id
    end

    def index
        sort = params[:sort] || session[:sort]
        case sort
        when 'product_name'
            ordering,@product_name_header = {:title => :asc}, 'bg-warning hilite'
        when 'next_delivery'
            ordering,@date_header = {:next_delivery => :asc}, 'bg-warning hilite'
        end

        # More to add here, want to do some sort by delivery date or sort by quantity stuff...
    end

    def new
        # default: render 'new' template
    end

    def create
        @produce = Produce.create!(produce_params)
        flash[:notice] = "#{@produce.product_name} was successfully created."
        redirect_to produce_path
    end

    def edit
        @produce = Produce.find params[:id]
    end

    def update
        @produce = Produce.find params[:id]
        @produce.update_attributes!(produce_params)
        flash[:notice] = "#{@produce.product_name} was sucessfully updated."
        redirect_to produce_path(@produce)
    end

    def destroy
        @produce = Produce.find(params[:id])
        @produce.destroy
        flash[:notice] = "Item '#{@produce.product_name}' sucessfully deleted."
        redirect_to produce_path
    end
end