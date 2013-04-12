EmployeesApp::Application.routes.draw do
  root to: "employees#index"

  resources :employees
  resources :teams
end
