FROM node:20-slim AS base 

RUN apt-get update && apt-get install -y --no-install-recommends dumb-init && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN groupadd -r appuser && useradd -r -g appuser appuser
WORKDIR /app

FROM base AS development



COPY package*.json ./
RUN npm install

COPY --chown=appuser:appuser . .

USER appuser
EXPOSE 4000

CMD ["dumb-init", "node", "server.js"]