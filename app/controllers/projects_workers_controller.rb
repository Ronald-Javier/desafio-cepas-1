class ProjectsWorkersController < ApplicationController
    before_action :set_workers, only: [:show, :edit, :update, :destroy]

  def create
    project = Project.find(params[:project_id])
    worker = Worker.find_or_create_by(name: params[:worker][:name].downcase)
    if  project.workers.include?(worker)
        notice = { notice: 'Relacion ya existe' }
    else    
        project.workers << worker
        notice = { notice: 'Relacion Agregada' }
    end
    project.save
    redirect_to root_path, notice
end

def destroy
    project = Project.find(params[:project_id])
    worker = Worker.find(params[:worker_id])
    project.workers.delete(worker)
    redirect_to root_path, { notice: 'Trabajador Eliminado' }
end

private

def set_workers
    @project = Project.find(params[:project_id])
    @worker = Worker.find(params[:worker_id])
end

end
