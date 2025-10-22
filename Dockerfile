# 1. Start from a lightweight Node.js image
FROM node:20-alpine

# 2. Create working directory
WORKDIR /app

# 3. Copy package.json and optionally package-lock.json
COPY package*.json ./

# 4. Install dependencies
RUN npm config set registry https://registry.npmjs.org/ && npm install --production

# 5. Copy rest of app
COPY . .

# 6. Expose port
EXPOSE 3000

# 7. Run app
CMD ["node", "server.js"]
