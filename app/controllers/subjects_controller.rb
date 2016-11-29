class SubjectsController < ApplicationController

    def show
        @subject = Subject.find(params[:id])
    end

    def new
      @subject = Subject.new
    end

    def create
        subject = Subject.new(:name => params[:subject][:name])
      if subject.valid?
        subject.save
        redirect_to root_path
      else
        #flash isn't working rn but at least it doesn't error
        redirect_to root_path, :flash => { :error => "Subject already exists" }
      end
    end

    def delete
      subject = Subject.find(params[:id])
      subject.destroy
      #TODO: also destroy all posts!
      redirect_to root_path
    end
end
