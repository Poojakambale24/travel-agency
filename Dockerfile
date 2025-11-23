# 1. Use official nginx image as base
FROM nginx:alpine

# 2. Remove default nginx website files
RUN rm -rf /usr/share/nginx/html/*

# 3. Copy our HTML/CSS files into nginx web root
COPY . /usr/share/nginx/html

# 4. Nginx automatically serves files from /usr/share/nginx/html on port 80
