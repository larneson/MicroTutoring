class SubjectsController < ApplicationController

    def show
        @subject = Subject.find(params[:id])
    end

    def new
      @subject = Subject.new
    end

    def create
      if @subject.valid?
        @subject = Subject.new(:name => params[:subject][:name])
        @subject.save
        redirect_to root_path
      end
    end
end
