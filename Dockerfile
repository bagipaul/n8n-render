FROM n8nio/n8n:latest

ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
EXPOSE 5678

# Debug: see what's available
RUN which n8n || echo "n8n not in PATH"
RUN ls -la /usr/local/bin/ || echo "no /usr/local/bin"
RUN find / -name "n8n" 2>/dev/null || echo "n8n not found"
