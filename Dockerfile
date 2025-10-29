# Use the official n8n image
FROM n8nio/n8n:latest

# Expose the port that n8n will listen on
EXPOSE 10000

# Set default environment variables
ENV N8N_PORT=10000
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Start n8n with tunnel mode (so Render detects open port automatically)
CMD ["n8n", "start", "--tunnel"]
