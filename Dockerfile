# Use the official Nginx image as base
FROM nginx:alpine

# Remove the default Nginx static files (optional but clean)
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files (from public/) into Nginx default web directory
COPY public/ /usr/share/nginx/html

# Expose port 80 (the default HTTP port)
EXPOSE 80

# Start Nginx (default command)
CMD ["nginx", "-g", "daemon off;"]


