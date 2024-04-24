Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'  # 注意: 本番環境では '*' を使用することはセキュリティ上推奨されません。
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
