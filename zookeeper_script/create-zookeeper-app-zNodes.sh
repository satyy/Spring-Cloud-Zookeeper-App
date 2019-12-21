#These command should be run inside zookeeper-shell (zkCLi).
#if running these command directly from bin folder of zookeeper, add prefix `./zkCli.sh -cmd` to all the commands.
#below commands will create the znodes in the zookeeper, required to bring up and run the application

create /config/spring-apps "application configs"
create /config/spring-apps/zookeeper-app " zookeeper-app configs"
create /config/spring-apps/common " common path for configs"
create /config/spring-apps/common/appliaction " common application configs"

create /config/spring-apps/zookeeper-app/greeting.message "Hello"
create /config/spring-apps/zookeeper-app/greeting.name "Satyam"

