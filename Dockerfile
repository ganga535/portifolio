FROM nginx:latest
LABEL "owner"="gangadhar""email"="gvganga9@gmail.com"
RUN apt update && apt install -y curl wget
RUN cd /usr/share/nginx/html && mkdir js css webfonts images
COPY index.html /usr/share/nginx/html
COPY privacy.html /usr/share/nginx/html
COPY terms.html /usr/share/nginx/html
COPY project.html /usr/share/nginx/html
ADD css /usr/share/nginx/html/css
ADD js /usr/share/nginx/html/js
ADD images /usr/share/nginx/html/images
ADD webfonts /usr/share/nginx/html/webfonts
CMD ["nginx","-g","daemon off;"]