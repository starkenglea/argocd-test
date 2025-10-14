# Use a lightweight Nginx base image
FROM nginx:alpine

# Copy the static website files into the Nginx web root directory
# Assuming your HTML, CSS, JS, etc., files are in a 'public' directory
COPY public/ /usr/share/nginx/html/

# Expose port 80, which is the default for Nginx
EXPOSE 80

# The default command for Nginx will start the web server
CMD ["nginx", "-g", "daemon off;"]
