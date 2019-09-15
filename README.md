Btmon Docker Image w/ Influxdb
==============================

Docker image for running the btmon.py Brultech monitor script.

Auto built from https://github.com/psarossy/btmon-influx-docker

Sample docker yml:

```yaml
version: '3.3'

services:
  btmon:
    image: psarossy/btmon-influx:latest
    volumes:
      - /REPLACEME/WITH/YOUR/PATH/btmon.cfg:/btmon.cfg:ro
    depends_on:
      - influxdb #if deployed inthe same stack this will prevent startup on purpose, comment out otherwise 
    ports:
      - 5000:5000
    networks:
      - internal
    deploy:
      mode: replicated
      replicas: 1
```
