#part1
to run a docker container  
docker run -d --name csvserver infracloudio/csvserver:latest


Check if it is running
docker ps 

To check the docker logs
docker logs csvserver


error message:
 error while reading the file "/csvserver/inputdata": no such file or directory



create gencsv.sh file

chmod +x gencsv.sh

./gencsv.sh 2 8



Check port on which docker continer is listing

Port : 9300

docker stop csvserver
docker rm csvserver



final step:

docker run -d --name csvserver -v "$(pwd)/inputFile:/csvserver/inputdata" -p 9393:9300 -e CSVSERVER_BORDER=Orange infracloudio/csvserver:latest


