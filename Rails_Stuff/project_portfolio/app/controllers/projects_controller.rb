class ProjectsController < ApplicationController
    before_action :find_project, only: [:show, :edit, :update, :destroy]

    def index
      @projects = Project.all
    end

    def show
    end

    def new
      @project = Project.new
    end

    def create
      @project = Project.new(project_params)
      if @project.save
        flash[:plus] = "Project Succesfuly Created"
          redirect_to projects_path
      else
        flash[:alert] = "Project Creation Failed"
        render :new
      end
    end

    def edit
    end

    def update
      if @project.update_attributes(project_params)
        redirect_to projects_path
        flash[:plus] = "Update Successful"
      else
        flash[:alert] = "Update Failed"
        render:edit
      end
    end

    def destroy
      @project.destroy
      redirect_to projects_path
    end

    private

    def project_params
      params[:project]
      params.require(:project).permit(:name, :client)
    end

    def find_project
      @project = Project.find(params[:id])
    end

end
