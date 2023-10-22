Rails.application.routes.draw do
  get 'hotwire/index'
  get 'jquery_ui/index'
  get 'tabulator/index'
  get 'datatables/index'
  root to: 'home#index'
end
