## docker-compose.yml

```ruby
version: '2'
services:
  db:
    image: postgres:9.1
  web:
    build: .
    command: bundle exec unicorn -p 3000 -o '0.0.0.0'
    volumes:
      - .:/videos2watch
    ports:
      - "3000:3000"
    depends_on:
      - db
```
