# Use an official Nginx image to serve the static files
FROM nginx:alpine

# Copy the game files into the containers
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Nginx will automatically start and serve files on port 80
CMD ["nginx", "-g", "daemon off;"]
