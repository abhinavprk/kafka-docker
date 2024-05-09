docker-compose exec kafka kafka-topics --create --topic test-topic --partitions 1 --replication-factor 1 --if-not-exists --zookeeper zookeeper:2181

docker-compose exec kafka kafka-topics --create --topic next-topic --partitions 1 --replication-factor 1 --if-not-exists --bootstrap-server localhost:9092

docker-compose exec kafka kafka-console-producer --topic test-topic --bootstrap-server localhost:9092

docker-compose exec kafka kafka-console-consumer --topic test-topic --from-beginning --bootstrap-server localhost:9092

docker-compose exec kafka kafka-topics --list --bootstrap-server localhost:9092