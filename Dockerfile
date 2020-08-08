FROM node:12
WORKDIR /app
COPY package-lock.json /app/
COPY package.json /app/
RUN npm ci

COPY . /app
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/bin/bash", "/app/entrypoint.sh"]
