FROM nginx:stable-alpine

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# environment
ENV PORT 8080
