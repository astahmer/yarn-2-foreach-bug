# Set the base image.
FROM node:15-alpine

WORKDIR /app
ADD . /app
RUN yarn set version berry
RUN yarn install --immutable
RUN yarn print
