#!/bin/bash

nvidia-smi --query-gpu=utilization.gpu,temperature.gpu --format=csv,noheader,nounits | while IFS=',' read -r util temp; do
  echo "GPU: ${util}% - TEMP:${temp}°C"
done
