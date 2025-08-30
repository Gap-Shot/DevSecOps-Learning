# Use official nginx image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files to nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# nginx runs by default, no CMD needed
