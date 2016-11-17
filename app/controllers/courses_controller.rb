class CoursesController < ApplicationController
    def show
        @course = Course.find(params[:id])
    end

    def new
      @course = Course.new
    end

    def create
        subject = Subject.find_by(name: params[:course][:subject])
        if !subject
          redirect_to root_path, :flash => { :error => "Subject does not exist" }
        end
        course = Course.new(
          :number => params[:course][:number],
          :subject_id => subject.id,
          :description => params[:course][:description])
        if course.valid?
          course.save
          redirect_to root_path
        else
          #flash isn't working rn but at least it doesn't error
          redirect_to root_path, :flash => { :error => "Subject already exists" }
        end

    end

    def delete
      course = Course.find(params[:id])
      course.destroy
      #TODO: also destroy all posts!
      redirect_to root_path
    end

    def edit
      course = Course.find(params[:id])
      #TODO: method for updating, might need to add params method to make easier
    end
end
