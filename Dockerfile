# -------------------------------
# Stage 1: Build
# -------------------------------
FROM node:18-alpine AS build
WORKDIR /app
COPY app/package.json ./
RUN npm ci --production || true
COPY app/ .

# -------------------------------
# Stage 2: Runtime
# -------------------------------
FROM node:18-alpine AS runtime
WORKDIR /app
COPY --from=build /app .
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser
EXPOSE 8080
ENV PORT=8080
CMD ["node", "server.js"]
