#Part I: Running csvserver with Docker

1. Pull the Docker Image in machine 
   
   docker pull infracloudio/csvserver:latest

2. Run the Container in the Background
    docker run -d --name csvserver infracloudio/csvserver:latest

3. Check if the Container is Running
   docker ps

4. If it fails, check logs:
   docker logs csvserver

ERROR Message: error while reading the file "/csvserver/inputdata": no such file or directory

5. Create gencsv.sh Script

6. Run gencsv.sh to Generate inputFile
   ./gencsv.sh 2 8

7. Run the Container with inputFile
   docker run -d --name csvserver -v "$(pwd)/inputFile:/csvserver/inputFile" infracloudio/csvserver:latest

8. Get Shell Access and Check Application Port
   docker exec -it csvserver /bin/sh

   container port : 9300

9. Run the Container with Environment Variable
   docker run -d --name csvserver -p 9393:9300 -v "$(pwd)/inputFile:/csvserver/inputFile" -e CSVSERVER_BORDER=Orange infracloudio/csvserver:latest

10. Access Application
   Access the application at http://localhost:9393
                             http://13.60.238.109:9393/ --- url for Application
                             http://13.60.238.109:9090/ --- url for Prometheus

