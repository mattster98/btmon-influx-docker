# Pull base image.
FROM python:3

LABEL maintainer="Robert Wojciechowski <robert@wojo.net>"

# Set environment.
ENV DEBIAN_FRONTEND noninteractive

# Install packages.
RUN pip install --no-cache-dir influxdb-client

# Define working directory.
WORKDIR /opt/btmon

# Add files to the container.
ADD . /opt/btmon

# Define volumes.
VOLUME ["/etc/bind", "/var/lib/bind", "/var/run/named"]

# Define the command script.
CMD ["./btmon3.py", "-c", "/btmon3.cfg"]
