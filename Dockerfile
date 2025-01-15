FROM nginx:alpine

# Change directory to /aws-pipeline inside the container
WORKDIR /aws-pipeline

# Copy the files from the repository's aws-pipeline directory
COPY . .

# Move contact.html to Nginx html directory
RUN cp contact.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
