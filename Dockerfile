FROM alpine:3.19

RUN apk add --no-cache nginx

# nginx 기본 웹 루트 생성
RUN mkdir -p /run/nginx /var/www/html

# 우리 HTML 복사
COPY index.html /var/www/html/index.html
RUN chmod 644 /var/www/html/index.html

# 아주 단순한 nginx 설정
RUN printf 'server {\n\
    listen 80 default_server;\n\
    listen [::]:80 default_server;\n\
    root /var/www/html;\n\
    index index.html;\n\
    server_name _;\n\
    location / {\n\
        try_files $uri $uri/ =404;\n\
    }\n\
}\n' > /etc/nginx/http.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
