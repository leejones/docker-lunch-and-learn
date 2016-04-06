## bin/setup

```bash
echo "## Starting Postgresql..."
docker-compose up -d db
sleep 5 # wait for database to start

echo "## Setting up databases..."
docker-compose run --rm web rake db:setup
docker-compose run --rm -e RAILS_ENV=test web rake db:setup

echo "## Starting the application..."
docker-compose up
```
