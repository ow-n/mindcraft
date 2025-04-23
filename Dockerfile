FROM node:22

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code (rest of the application)_
COPY . .

# Expose the ports used by your application
# 8080 for MineServer
# 3000-3003 for Bot View
EXPOSE 8080
EXPOSE 3000-3003

# Run the application
CMD ["node", "main.js"]
