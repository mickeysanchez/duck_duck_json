DuckDuckJson::Application.routes.draw do
  root to: "search#new"
  get "search", to: "search#search"
end
