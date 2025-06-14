FROM n8nio/n8n:latest

# Set the working directory
WORKDIR /home/node

# Create necessary directories and set permissions
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node

# Set environment variables
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
ENV N8N_USER_FOLDER=/home/node/.n8n

# Expose the port
EXPOSE 5678

# Start n8n
CMD ["npx", "n8n", "start"]
