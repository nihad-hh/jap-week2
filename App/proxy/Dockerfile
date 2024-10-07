# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx config into the container
COPY default.conf /etc/nginx/conf.d/

# Copy SSL certificates into the container
# COPY certs/server-cert.crt /etc/ssl/certs/server-cert.crt
# COPY certs/server-cert.key /etc/ssl/certs/server-cert.key

# Expose only the HTTPS port 443
EXPOSE 443

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
