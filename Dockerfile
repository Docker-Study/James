# Base image size minimized
# from node:10 -> 1.38GB to node:lts-alpine3.13 -> 400MB
FROM node:lts-alpine3.13

# set up where the container works.
WORKDIR /app

# copy package.json from local to the Container's ./ directory
COPY ./ ./

# install node_modules based on what dependencies are in package.json
RUN npm install 
RUN npm run build

# caution : CMD ["npm run start"] is not allowed
CMD ["npm", "run", "start"]
