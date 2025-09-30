FROM debian:stable-slim

# Install SQLite
RUN apt-get update && apt-get install -y sqlite3 && rm -rf /var/lib/apt/lists/*

# Working directory for DB
WORKDIR /data

# Copy init SQL
COPY init.sql /docker-entrypoint-init.sql

# Copy settings
COPY .sqliterc /root/.sqliterc

# Build the database at image build time
RUN sqlite3 /data/wihydra-db.db < /docker-entrypoint-init.sql

# Default command: open SQLite shell on the prebuilt DB
CMD ["sqlite3", "/data/wihydra-db.db"]
