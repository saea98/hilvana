FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html robots.txt sitemap.xml favicon-32.png apple-touch-icon.png og-imagen.png /usr/share/nginx/html/
RUN chmod -R a+rX /usr/share/nginx/html /etc/nginx/conf.d/default.conf

EXPOSE 80
