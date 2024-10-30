# We are using node's image as base for this one
FROM node:16

# We have to install nodemon globally before moving into the working directory
# RUN npm install -g nodemon

# Create the app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

# Copy everything else on the project
COPY . .

# Expose the port we want to use
EXPOSE 8080

# Tell Docker to run server.js on spin up
CMD [ "node", "server.js" ]
