# Step 1: Use official Nginx image
FROM nginx:alpine

# Step 2: Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your build files into the nginx directory
COPY build /usr/share/nginx/html

# Step 4: Copy custom nginx config (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
