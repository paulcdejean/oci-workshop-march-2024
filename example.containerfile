FROM registry.fedoraproject.org/fedora-minimal:39
RUN dnf5 install -y nodejs \
  	&& dnf5 clean all \
  	&& rm -rf /var/cache/yum
COPY package-lock.json package-lock.json
RUN npm install
