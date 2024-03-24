FROM registry.fedoraproject.org/fedora-minimal:39
RUN dnf5 install -y nodejs tar \
  	&& dnf5 clean all \
  	&& rm -rf /var/cache/yum
WORKDIR /ociworkshop
COPY package.json /ociworkshop/package.json
COPY package-lock.json /ociworkshop/package-lock.json
RUN npm install
