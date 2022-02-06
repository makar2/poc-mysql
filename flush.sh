docker compose down -v
docker compose up -d

echo ">>> Restoring bestbuy DB in 20 seconds..."
sleep 20

. ./run.sh -r create/restore.sql
