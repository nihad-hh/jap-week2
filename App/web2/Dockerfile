# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

RUN mkdir /usr/share/nginx/html/web2

# Copy your custom default.conf to the Nginx configuration directory
COPY default.conf /etc/nginx/conf.d/

# Copy your index.html to the default web root
COPY index.html /usr/share/nginx/html/

COPY index.html /usr/share/nginx/html/web2

# Expose port 8080
EXPOSE 9090

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]