FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y

RUN apt-get install apt-utils git-core subversion sudo wget -y

RUN apt-get install -y firefox python-pip

RUN pip install --upgrade pip

RUN pip install xlrd xlwt xlutils gdata unittest2 oauth2client==1.5.2 gspread

RUN wget http://www.hoboes.com/library/downloads/makeHTML.py.gz

RUN gunzip makeHTML.py.gz

RUN cp makeHTML.py /usr/lib/python2.7/

# Replace 1000 with your user / group id

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer

CMD /usr/bin/firefox

