FROM registry.fedoraproject.org/fedora-minimal:39
RUN dnf install -y nodejs \
  	&& dnf clean all \
  	&& rm -rf /var/cache/yum
