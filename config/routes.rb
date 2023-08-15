Rails.application.routes.draw do
  root "weeks#index"

  resources :weeks do
    resources :days do
      resources :time_ranges
    end
  end
end
