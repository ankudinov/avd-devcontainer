# FROM ghcr.io/ankudinov/avd-devcontainer/base:v4.1.0

ARG VARIANT=3.11-slim-bullseye
FROM python:${VARIANT}

# install essential tools
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    make \
    git \
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

# add entrypoint script
COPY ./entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh
# use ENTRYPOINT instead of CMD to ensure that entryscript is always executed
ENTRYPOINT [ "/bin/entrypoint.sh" ]
