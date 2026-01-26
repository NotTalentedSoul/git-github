# Stage 1: Build React
FROM node:16-alpine AS builder

WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve with NGINX
FROM nginx:latest

# Remove default html
RUN rm -rf /usr/share/nginx/html/*

# Copy custom NGINX config
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Copy React build
COPY --from=builder /app/build /usr/share/nginx/html/

# Copy your static site INTO nginx/html
COPY nginx/html/ /usr/share/nginx/html/static/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
