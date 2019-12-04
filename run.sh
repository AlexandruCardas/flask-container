docker build -t webapp .
docker run --name httpserver -p 80:5000 -d webapp
docker ps