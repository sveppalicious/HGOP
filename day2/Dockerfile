# import the carbon package
FROM node:carbon

# Set the working directory to /code
WORKDIR /code

# copies package.json to /code/package.json
COPY package.json package.json

# copies app.js to /code/app.js
COPY app.js app.js

# reads the package.json file and installs dependencies
RUN npm install

# instructs Docker to use node.js to run the software contained by the image
CMD node app.js
