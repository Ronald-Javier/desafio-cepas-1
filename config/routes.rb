Rails.application.routes.draw do
  get 'projects_workers/destroy'
  resources :projects
  resources :workers
  post 'projects/:project_id/workers', to: 'projects_workers#create', as: 'projects_workers'
  root 'projects#index'
end
