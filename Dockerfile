FROM nginx:alpine

# Copy all files from the repository into the container
COPY aws-pipeline/contact.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
