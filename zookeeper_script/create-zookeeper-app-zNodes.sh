./zkCli.sh -cmd create /config/spring-apps "application configs"
./zkCli.sh -cmd create /config/spring-apps/zookeeper-app " zookeeper-app configs"
./zkCli.sh -cmd create /config/spring-apps/common " common path for configs"
./zkCli.sh -cmd create /config/spring-apps/common/appliaction " common application configs"

./zkCli.sh -cmd create /config/spring-apps/zookeeper-app/greeting.message "Hello"
./zkCli.sh -cmd create /config/spring-apps/zookeeper-app/greeting.name "Satyam"

