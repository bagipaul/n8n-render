FROM n8nio/n8n:latest

# Set environment variables to handle permissions
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
ENV N8N_USER_FOLDER=/home/node/.n8n

# Expose the port
EXPOSE 5678

# Start n8n using the direct path
CMD ["/usr/local/bin/n8n", "start"]
