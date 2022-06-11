if Rails.env.development?
  MeiliSearch::Rails.configuration = {
    meilisearch_host: 'http://localhost:7700',
     meilisearch_api_key: 'YourMeilisearchAPIKey',
    timeout: 2,
    max_retries: 1,
  }
else
  MeiliSearch::Rails.configuration = {
    meilisearch_host: 'https://sesmarketplace.herokuapp.com',
     meilisearch_api_key: 'YourMeilisearchAPIKey',
    timeout: 2,
    max_retries: 1,
  }
end
