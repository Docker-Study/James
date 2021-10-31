# Base image size minimized
# from node:10 -> 1.38GB to node:lts-alpine3.13 -> 400MB
FROM node:lts-alpine3.13

# set up where the container works
WORKDIR /app

# copy all from local to the Container's /app directory
COPY . .

RUN npm install # install node_modules based on what dependencies are in package.json
RUN npm run build

# caution : CMD ["npm run start"] is not allowed
CMD ["npm", "run", "start"]
