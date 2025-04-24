#!/bin/bash
docker exec -it $(docker ps -q -f "ancestor=hellen-momoh-hw3") /bin/bash
