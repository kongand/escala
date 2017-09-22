# Use official nginx image as parent image
FROM nginx:1.13.5

# Expose port 80 to host machine
EXPOSE 80

# Copy configuration file into container
COPY ./server/nginx.conf /etc/nginx/conf.d/default.conf
