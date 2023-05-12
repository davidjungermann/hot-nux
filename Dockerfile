# Base image
FROM node:19

# Set working directory
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy source files
COPY . .

# Expose port
EXPOSE 3000

# Running the app
CMD [ "yarn", "dev" ]
