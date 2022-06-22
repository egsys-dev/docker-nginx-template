# production stage
FROM nginx:alpine as production-stage
RUN unset VUE_APP_STANDALONE
RUN unset VUE_APP_STANDALONE_TOKEN
#RUN rm -rf /usr/share/nginx/html/*
#COPY ./dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]