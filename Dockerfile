# Simple static site served via Nginx
FROM nginx:stable-alpine

# Use a non-root build stage if extending; here we copy directly
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./about.html /usr/share/nginx/html/about.html
COPY ./style.css /usr/share/nginx/html/style.css

# Default Nginx exposes port 80
EXPOSE 80

# Health metadata (optional)
HEALTHCHECK --interval=30s --timeout=3s --start-period=10s CMD wget -qO- http://localhost:80/index.html || exit 1

# Nginx runs as default user; no CMD override needed
