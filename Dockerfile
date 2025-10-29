# Use official n8n Docker image
FROM n8nio/n8n:latest

# Expose n8n port
EXPOSE 10000

# Environment variables
ENV N8N_PORT=10000
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Start n8n (Render auto-detects open port)
CMD ["n8n", "start", "--tunnel"]
