# Creating MySQL empty database
podman-compose up -d

# Creating petclinic image
podman run -d \
    --name petclinic-web \
    -p 8080:8080 \
    -e "MYSQL_URL=jdbc:mysql://spring-petclinic_mysql_1/petclinic" \
    --network spring-petclinic_default petclinic

# remove containers
podman-compose down
podman rm --all --force

# Check if the port is open 
timeout 1 bash -c 'cat /dev/null > /dev/tcp/spring-petclinic_mysql_1/3306'