# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins ''  # Replace '*' with specific domain for production (e.g., 'http://yourfrontend.com')
  
      resource 'http://localhost:3000',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options],
        credentials: true
    end
  end
  