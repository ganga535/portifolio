FROM nginx:latest
LABEL "owner"="gangadhar""email"="gvganga9@gmail.com"
RUN apt update && apt install -y curl wget
COPY index.html /usr/share/nginx/html
COPY privacy.html /usr/share/nginx/html
COPY terms.html /usr/share/nginx/html
COPY project.html /usr/share/nginx/html
COPY css /usr/share/nginx/html
COPY js /usr/share/nginx/html
COPY images /usr/share/nginx/html
COPY webfonts /usr/share/nginx/html
RUN cd /usr/share/nginx/html && mkdir js css images webfonts
RUN mv *.css css && mv *.js js && mv *.png *.jpg images && mv *.woff *.woff2 *.ttf *.eot *.svg webfonts
CMD ["nginx","-g","daemon off;"]




RUN mv *.css css && mv *.js js && mv *.png *.jpg images && mv *.woff *.woff2 *.ttf *.eot *.svg webfonts