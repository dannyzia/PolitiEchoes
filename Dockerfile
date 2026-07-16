# Remove old one if exists
Remove-Item -Path "Dockerfile" -Force -ErrorAction SilentlyContinue

# Create new Dockerfile
@"
FROM archivebox/archivebox:latest

ENV PUBLIC_INDEX=True
ENV PUBLIC_ADD_VIEW=True
ENV PUBLIC_SNAPSHOTS=True
ENV FOOTER_INFO=PolitiEchoes - Political Facebook Post Archiver
"@ | Out-File -FilePath "Dockerfile" -Encoding utf8