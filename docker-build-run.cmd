powershell docker rmi docker-tutorial-build -f
powershell docker build -f dockerfile.build -t docker-tutorial-build .
powershell docker rm docker-tutorial -f
powershell docker create --name docker-tutorial docker-tutorial-build
powershell docker cp docker-tutorial:/publish ./
powershell docker build -t docker-tutorial .
powershell docker run -it --rm -d -p 5001:80 docker-tutorial -name docker-tutorial