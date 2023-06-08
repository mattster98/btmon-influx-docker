FROM python:3-slim

LABEL maintainer="Robert Wojciechowski <robert@wojo.net>"

RUN pip install --no-cache-dir influxdb-client mqtt.publish

WORKDIR /opt/btmon
ADD . /opt/btmon

CMD ["./btmon3.py", "-c", "/btmon3.cfg"]
