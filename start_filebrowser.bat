@echo off
rem Start rclone mount
start rclone mount mydrive:path/to/files D:\new-mountpoint --vfs-cache-mode full

rem Start Filebrowser
start filebrowser -r D:\new-mountpoint -p 8080
pause
