# Production Dockerfile
# Use the file to build the application

FROM node:current

LABEL org.opencontainers.image.title="Docker Volumen Example Backend" \
      org.opencontainers.image.description="Backend with simple API to store files on the server" \
      org.opencontainers.image.authors="@laurino108"

#Setting up work dir
WORKDIR /application

# Copying files inot application folder
COPY . .

# Install dependencies 
RUN npm install

# Backend Port
EXPOSE 3001

CMD ["node", "index.js"]