FROM n8nio/n8n:latest

# Set environment variables
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Expose the port
EXPOSE 5678

# Use the default entrypoint and command from the base image
