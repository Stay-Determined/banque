FROM node:13.6.0-alpine

EXPOSE 8085
USER node 
CMD npm run start
