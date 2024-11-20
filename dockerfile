# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx website files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files to the Nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground when the container launches
CMD ["nginx", "-g", "daemon off;"]

# -------------------------