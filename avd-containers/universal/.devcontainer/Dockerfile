ARG FROM_IMAGE
ARG FROM_VARIANT

FROM ${FROM_IMAGE}:${FROM_VARIANT}

ARG AVD_VERSION
ARG AVD_PIP_INSTALL
ARG USERNAME

# switch user to vscode otherwise Ansible will be installed as root
USER ${USERNAME}
ENV PATH=$PATH:/home/${USERNAME}/.local/bin
# install Ansible AVD collection
RUN pip3 install "${AVD_PIP_INSTALL}" \
    && ansible-galaxy collection install arista.avd:==${AVD_VERSION} \
    && pip3 install -r /home/${USERNAME}/.ansible/collections/ansible_collections/arista/avd/requirements.txt
