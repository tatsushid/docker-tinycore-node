FROM tatsushid/tinycore:6.3-x86_64

# Instructions are run with 'tc' user

RUN tce-load -wic gnupg curl \
    && rm -rf /tmp/tce/optional/*

# verify gpg and sha256: http://nodejs.org/dist/v0.10.30/SHASUMS256.txt.asc
# gpg: aka "Timothy J Fontaine (Work) <tj.fontaine@joyent.com>"
# gpg: aka "Julien Gilli <jgilli@fastmail.fm>"
RUN gpg2 --keyserver pool.sks-keyservers.net --recv-keys 7937DFD2AB06298B2293C3187D33FF9D0246406D 114F43EE0176B71C7BC219DD50A3051F888C628D

ENV NODE_VERSION 0.12.7
ENV NPM_VERSION 2.11.3

RUN tce-load -wic coreutils \
        binutils \
        file \
    && cd /tmp \
    && curl -SLO "http://nodejs.org/dist/v$NODE_VERSION/node-v${NODE_VERSION}-linux-x64.tar.gz" \
    && curl -SLO "http://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc" \
    && gpg2 --verify SHASUMS256.txt.asc \
    && grep " node-v${NODE_VERSION}-linux-x64.tar.gz" SHASUMS256.txt.asc | sha256sum -c - \
    && tar -xzf "node-v${NODE_VERSION}-linux-x64.tar.gz" \
    && rm -f "node-v${NODE_VERSION}-linux-x64.tar.gz" SHASUMS256.txt.asc \
    && cd "/tmp/node-v${NODE_VERSION}-linux-x64" \
    && for F in `find . | xargs file | grep "executable" | grep ELF | grep "not stripped" | cut -f 1 -d :`; do \
            [ -f $F ] && strip --strip-unneeded $F; \
        done \
    && sudo cp -R . /usr/local \
    && cd / \
    && sudo ln -s /lib /lib64 \
    && rm -rf "/tmp/node-v${NODE_VERSION}-linux-x64" \
    && cd /tmp/tce/optional \
    && for PKG in acl.tcz \
                libcap.tcz \
                coreutils.tcz \
                binutils.tcz \
                file.tcz; do \
            echo "Removing $PKG files"; \
            for F in `unsquashfs -l $PKG | grep squashfs-root | sed -e 's/squashfs-root//'`; do \
                [ -f $F -o -L $F ] && sudo rm -f $F; \
            done; \
            INSTALLED=$(echo -n $PKG | sed -e s/.tcz//); \
            sudo rm -f /usr/local/tce.installed/$INSTALLED; \
        done \
    && rm -rf /tmp/tce/optional/* \
    && sudo npm install -g npm@"$NPM_VERSION" \
    && sudo npm cache clear

# Instructions after here are run with 'root' user
USER root

CMD ["node"]
