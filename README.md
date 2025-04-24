# Containerized FastAPI Endpoint - DevOps + AI

This project demonstrates creating a containerized Python API using FastAPI and Docker.

## Features
- **/q1**: GET endpoint to calculate `sqrt(x^2 + y^2)`
- **/q2**: POST endpoint to repeat text

## How to Run
```bash
docker build -t hellen-momoh-devops .
docker run -d -p 9000:9000 hellen-momoh-devops
