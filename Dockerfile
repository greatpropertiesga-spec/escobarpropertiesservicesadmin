FROM nginx:alpine
COPY . /usr/share/nginx/html
RUN printf 'server {\n\
    listen 80;\n\
    server_name localhost;\n\
    root /usr/share/nginx/html;\n\
    index admin.html;\n\
    location / {\n\
        try_files $uri $uri/ $uri.html /admin.html =404;\n\
    }\n\
}' > /etc/nginx/conf.d/default.conf
EXPOSE 80
