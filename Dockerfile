FROM angstwad/ansibleable:base

# 
# This Dockerfile depends on a file, "authorized_keys", being present
# in the same directory
# 

MAINTAINER Paul Durivage <paul.durivage+docker@gmail.com>

ADD authorized_keys /root/.ssh/authorized_keys
RUN chown -R root: /root/.ssh
RUN chmod 0700 /root/.ssh
RUN chmod 0600 /root/.ssh/authorized_keys

EXPOSE 22
CMD /usr/sbin/sshd -D
