# SERVER
An experimental custom Minecraft Server using AWS and CI/CD

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

We assert that you test locally before deploying.

# PYTHON

We use Python for AWS Lambda and Server Management scripts

To begin with Python, `cd` into the `python` subdirectory.
This is where we keep our Python scripts

Create your python virtual enviornment by running:
`python3 -m venv venv`

Use the virtual environent by running `source venv/bin/actiate`

Then install the required dependencies, by running `pip install -r requirements.txt`