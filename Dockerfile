FROM sonarqube:lts

LABEL maintainer="John Weldon <johnweldon4@gmail.com>" \
      company="MustWin, LLC"

ADD run.sh ${SONARQUBE_HOME}/bin/run.sh

RUN chown -R sonarqube:sonarqube ${SONARQUBE_HOME}

USER sonarqube

ENTRYPOINT ["./bin/run.sh"]
