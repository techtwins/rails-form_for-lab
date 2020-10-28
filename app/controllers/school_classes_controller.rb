class SchoolClassesController < ApplicationController

    def index
        @schools = SchoolClass.all
    end

    def show
        @school = SchoolClass.find(params[:id])
    end

    def new
        @school = SchoolClass.new
    end

    def create
        @school = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
        redirect_to school_class_path(@school)
    end

    def edit
        @school = SchoolClass.find(params[:id])
    end

    def update
        @school = SchoolClass.find(params[:id])
        @school.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@school)
    end
end
