# BASE
FROM amazonlinux:2.0.20211201.0 AS base

RUN yum -y install gzip tar zip
RUN touch ~/.bashrc
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
RUN source ~/.bashrc && nvm install 14.18.2

# BUILD
FROM base AS build

WORKDIR /app

# Install dependenciess.
COPY package*.json ./
RUN source ~/.bashrc && npm install

# Build artifacts.
COPY . .
RUN source ~/.bashrc && npm run build

# APPLICATION
FROM base AS applicaion

WORKDIR /app

# Install runtime dependencies only.
COPY --from=build /app/package*.json ./
RUN source ~/.bashrc && npm install --only=production

# Copy build artifacts only.
COPY --from=build /app/dist ./

# Package artifacts with dependencies.
RUN zip -r function.zip .
