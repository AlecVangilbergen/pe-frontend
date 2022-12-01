 # pull official base image
        FROM node:16.12.0-alpine
        
        # set working directory
        WORKDIR /app
        
        # add `/app/node_modules/.bin` to $PATH
        ENV PATH /app/node_modules/.bin:$PATH
        
        # install app dependencies
        RUN npm install        
        # add app
        COPY . ./
        
        # start app
        CMD ["npm", "start"]