# Laravel Simple App – Dockerized (Inertia.js + MySQL + Nginx)

This project demonstrates a fully Dockerized Laravel application using Inertia.js as frontend framework, MySQL as the database, and Nginx as the web server. The application is optimized for development and can be extended for production deployment.

---

## Docker Image

- **Docker Hub**:https://hub.docker.com/r/skhossain/laravel-simple-app
- **Tags**: `latest`

---

## Tech Stack

- **Backend**: Laravel 12 (PHP 8.3)
- **Frontend**: Inertia.js with Vite
- **Database**: MySQL 8
- **Web Server**: Nginx (alpine)
- **Containerization**: Docker, Docker Compose

---

## Project Structure

laravel-simple-app/
├── app/
├── bootstrap/
├── config/
├── database/
├── docker/
│ ├── nginx/
│ │ └── default.conf
│ └── php/
│ └── Dockerfile
| |__ entrypoint.sh
├── public/
├── routes/
├── storage/
├── .env
├── artisan
├── composer.json
├── docker-compose.yml
├── package.json
└── vite.config.ts
|__ README.md

## Docker Commands Used
docker buildx build \
  --cache-to=type=inline \
  --cache-from=type=registry,ref=your-registry/app:buildcache \
  --platform linux/arm64,linux/amd64 \
  --file docker/php/Dockerfile \
  --tag skhossain/laravel-simple-app:latest \
  --push .

 Command                                                   Purpose                    
`docker-compose up --build -d`                             | Start containers
`docker-compose down`                                      | Stop and remove containers
`docker exec -it laravel_app bash`                         | Access app container
`docker image inspect skhossain/laravel-simple-app:latest` | Analyze image layers    
