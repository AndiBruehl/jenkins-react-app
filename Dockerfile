# Use the official nginx image as a parent image
FROM nginx:latest

# Copy build output to the default nginx HTML directory
COPY ./build /usr/share/nginx/html

# Expose port 80 for nginx to serve on
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]