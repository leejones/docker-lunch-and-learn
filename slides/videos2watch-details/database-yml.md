## config/database.yml

```ruby
development: &development
  adapter: postgresql
  database: videos2watch_development
  username: postgres
  password:
  host: db

test: &test
  <<: *development
  database: videos2watch_test
```
