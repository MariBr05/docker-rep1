Dockerfile:
# Layer1: Use P
FROM Node.js
# Layer2: Set working directory
WORKDIR /app
# Layer3: Copy files
COPY package.json .
COPY server.js .
# Layer4: Run the app
RUN -r requirements.txt
# copy all files to the current directory
COPY . .
# define the environment variable: Expose port
EXPOSE 5000
# Command to run app
CMD ["node”.""server.js"]
