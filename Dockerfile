FROM nginx:alpine
COPY . /usr/share/nginx/html
RUN printf 'server {\n  listen 80;\n  root /usr/share/nginx/html;\n  index admin.html;\n  location / { try_files $uri $uri/ /admin.html =404; }\n}' > /etc/nginx/conf.d/default.conf
EXPOSE 80
