# SERVER
An experimental custom Minecraft Server using CI/CD

# BUILDING

Paper is an upstream repository, and so we need to also clone that in order to work on it.

Downloading the upstream repositories (REQUIRED):
- Change your directory into the server folder `cd SERVER`
- Pull the latest changes `git pull origin master`
- Clone upstream repositories `git submodule update --init --recursive`

Setting up a paper development environment:
- Run `make setup-paper-dev`

Build the server JAR file:
- Run `make build-paper`

After following these steps, there should be in your build folder, a `paper.jar` (the server executable) and a `eula.txt`.