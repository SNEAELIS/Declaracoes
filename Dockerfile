FROM node:26.12.1-slim
WORKDIR /app
ENV NODE_ENV=production
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
CMD ["node", "src/app.js"]