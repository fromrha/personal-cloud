# Use a lightweight Linux image
FROM alpine:latest

# Install required tools
RUN apk add --no-cache bash curl

# Copy the FileBrowser executable and batch script
COPY filebrowser /usr/local/bin/filebrowser
COPY start_filebrowser.bat /usr/local/bin/start_filebrowser.bat

# Make FileBrowser executable
RUN chmod +x /usr/local/bin/filebrowser /usr/local/bin/start_filebrowser.bat

# Expose the FileBrowser port
EXPOSE 8080

# Set the default command to run FileBrowser
CMD ["/usr/local/bin/filebrowser", "-r", "/path/to/mountpoint", "-p", "8080"]
