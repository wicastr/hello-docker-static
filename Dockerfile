FROM wicastr/nginx:latest

COPY dist/* /usr/share/nginx/html

# EXPOSE 443
