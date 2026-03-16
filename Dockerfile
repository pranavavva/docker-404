FROM nginx:alpine

LABEL org.opencontainers.image.source="https://github.com/pranavavva/docker-404"
LABEL org.opencontainers.image.description="Nginx server that returns 404 for all routes"
LABEL org.opencontainers.image.licenses="MIT"

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
