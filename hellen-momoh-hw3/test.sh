#!/bin/bash
BASE_URL="http://localhost:9000"

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

test_get() {
  echo "Testing GET /q1..."
  x=3
  y=4
  response=$(curl -s -w "\n%{http_code}" "${BASE_URL}/q1?x=${x}&y=${y}")
  status_code=$(echo "$response" | tail -n1)
  if [ $status_code -eq 200 ]; then
    echo -e "${GREEN}GET /q1 passed${NC}"
  else
    echo -e "${RED}GET /q1 failed${NC}"
    exit 1
  fi
}

test_post() {
  echo "Testing POST /q2..."
  json_data='{"text":"Hello","repeat":5}'
  response=$(curl -s -w "\n%{http_code}" -X POST -H "Content-Type: application/json" -d "$json_data" ${BASE_URL}/q2)
  status_code=$(echo "$response" | tail -n1)
  if [ $status_code -eq 200 ]; then
    echo -e "${GREEN}POST /q2 passed${NC}"
  else
    echo -e "${RED}POST /q2 failed${NC}"
    exit 1
  fi
}

echo "Starting API tests..."
test_get
echo "-------------------"
test_post
echo "-------------------"
echo -e "${GREEN}All tests completed successfully!${NC}"
