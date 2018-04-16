FROM sonarqube:lts

LABEL maintainer="John Weldon <johnweldon4@gmail.com>" \
      company="MustWin, LLC"

USER sonarqube

ADD run.sh /opt/sonarqube/bin/run.sh

ENTRYPOINT ["./bin/run.sh"]
