FROM nginx:alpine

WORKDIR /app

COPY . .

RUN chown -R nginx:nginx /app/site

COPY ./nginx.conf /etc/nginx/nginx.conf 

# Containers run nginx with global directives and daemon off
ENTRYPOINT ["nginx", "-g", "daemon off;"]
