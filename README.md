"# docker-demo-ts" 

TypeScript project for a Docker demo 


**Step 1: Set Up Development Environment**

ติดตั้ง Node.JS
ติดตั้ง Docker

**Step 2: สร้าง TypeScript Project**


```bash
mkdir docker-demo
cd docker-demo
npm init -y
```

จะได้ไฟล์ `package.json` มา 

**Step 3: ติดตั้ง TypeScript**

```bash
npm install typescript --save-dev
```

**Step 4: TypeScript Configuration**

สร้างไฟล์ `tsconfig.json` ด้วยคำสั่ง

```bash
npx tsc --init
```

**Step 5: Write TypeScript Code**

สร้างโฟลเดอร์ `src` เขียนโค้ดการทำงานของโปรแกรมอย่างง่ายในไฟล์ `app.ts` ที่อยู่ใน `src` 

```typescript
// src/app.ts
function sayHello(name: string) {
  console.log(`Hello, ${name}!`);
}

sayHello("Docker");
```

**Step 6: Compile TypeScript**

ทำการ Compile จาก TypeScript ไปเป็น JavaScript 

```bash
npx tsc
```

**Step 7: เชียน Dockerfile**

สร้าง `Dockerfile`

```Dockerfile
# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your application code to the working directory
COPY . .

# Build TypeScript code to JavaScript
RUN npx tsc

# Expose a port for your application (if needed)
EXPOSE 8080

# Define the command to run your application
CMD ["node", "app.js"]
```

**Step 8: Build Docker Image**

Build โค้ดให้กลายเป็น Docker Image ด้วยคำสั่ง 

```bash
docker build -t your-image-name .
```

แก้ your-image-name เป็นชื่อ Image ที่ต้องการ 

**Step 9: รัน Docker Container**

ทำการรัน Docker Container ด้วยคำสั่ง:

```bash
docker run your-image-name
```

