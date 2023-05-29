@echo off

REM Check if a container with the same name is already running
docker ps -q -f name=my-container > nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    REM Stop and remove the existing container
    docker stop my-container
    docker rm my-container
)

REM Check if an image with the same name already exists
docker images -q node > nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    REM Remove the existing image
    docker rmi node
)

REM Build the Docker image
docker build -t node .

REM Run the container from the new image
docker run -d -p 3000:80 --name my-container node

