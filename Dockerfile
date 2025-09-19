# Stage 1: Build the application
FROM node:22-slim AS builder

WORKDIR /app

# Copy package manifests
COPY package*.json ./

# Install all dependencies (including dev)
RUN npm ci

# Copy rest of the source code
COPY . .

# Generate Prisma client
RUN apt-get update -y && apt-get install -y openssl libssl-dev
#RUN npx prisma generate --schema=./prisma/schema.prisma
#CMD npx prisma migrate deploy && npx prisma db seed

# Build Nuxt app
RUN npm run build


# Stage 2: Production image
FROM node:22-slim AS runner

WORKDIR /app

#install OpenSSL in runtime
RUN apt-get update -y && apt-get install -y openssl libssl-dev

# Copy only package.json and lockfile
COPY package*.json ./

# Install only production dependencies
RUN npm ci --omit=dev

# Copy built output and prisma files from builder
COPY --from=builder /app/.output ./.output
#COPY --from=builder /app/prisma ./prisma

ENV NODE_ENV=production
ENV PORT=8080
EXPOSE 8080

CMD ["node", ".output/server/index.mjs"]
