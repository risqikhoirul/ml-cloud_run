# Menggunakan Node.js 18
FROM node:18

# Set direktori kerja
WORKDIR /usr/src/app

# Copy package.json dan package-lock.json
COPY package*.json ./

# Install dependensi hanya untuk production
RUN npm install --only=production

# Set variabel lingkungan
ENV NODE_ENV production
ENV PORT 5000

# Copy semua file sumber
COPY . .

# Ekspose port yang digunakan
EXPOSE 5000

# Jalankan aplikasi
CMD [ "npm", "run", "start-prod" ]
