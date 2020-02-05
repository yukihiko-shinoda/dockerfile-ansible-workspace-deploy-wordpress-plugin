FROM futureys/ansible-workspace:20191127050300
# grep: to check deploy version, stable version, and latest version from working directory
RUN apk add --no-cache git subversion rsync grep
RUN mkdir --parents --mode=755 /var/opt/svn
RUN mv /usr/bin/entrypoint /usr/bin/entrypoint-ansible-workspace
COPY ./init-svn-repository.sh /usr/bin/init-svn-repository
COPY ./entrypoint.sh /usr/bin/entrypoint
RUN chmod +x /usr/bin/init-svn-repository /usr/bin/entrypoint
