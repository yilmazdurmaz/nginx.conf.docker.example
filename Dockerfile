FROM nginx:1.21-alpine

RUN mkdir /frontend
COPY ./frontend /frontend

RUN mkdir /backend
COPY ./backend /backend

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d