# Base image
FROM node:10

# set up where the container works
WORKDIR /app

# copy all from local to the Container's /app directory
COPY . .

RUN npm install
RUN npm run build

# caution : CMD ["npm run start"] is not allowed
CMD ["npm", "run", "start"]
