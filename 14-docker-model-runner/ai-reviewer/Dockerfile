# syntax=docker/dockerfile:1

ARG NODE_VERSION=22.13.1
FROM node:${NODE_VERSION}-slim AS base
WORKDIR /app

# Install dependencies in a separate layer for better caching
COPY --link package.json package-lock.json ./
RUN --mount=type=cache,target=/root/.npm \
    npm ci --production

# Copy application source code
COPY . .

# Create a non-root user and set permissions
RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser \
    && chown -R appuser:appgroup /app

USER appuser

ENV NODE_ENV=production
ENV NODE_OPTIONS="--max-old-space-size=4096"

# Expose port if your app listens on a specific port (not strictly needed for CLI apps)
# EXPOSE 3000

CMD ["npm", "start"]
