# Base image size minimized
# from node:10 -> 1.38GB to node:lts-alpine3.13 -> 400MB
FROM node:lts-alpine3.13

# set up where the container works as default
# and where to keep source codes in the image
WORKDIR /usr/src/app

COPY package.json ./

# install node_modules based on what dependencies are in package.json
RUN npm install

# copy package.json from local to the Container's /usr/src/app/ directory
COPY ./ ./

RUN npm run build

# caution : CMD ["npm run start"] is not allowed
CMD ["npm", "run", "start"]
