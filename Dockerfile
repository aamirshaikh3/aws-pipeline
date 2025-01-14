# Use an official Nginx image as a parent image
FROM nginx:alpine

# Copy the current directory contents into the Nginx html directory
COPY . /usr/share/nginx/html

# Expose port 3000
EXPOSE 3000
