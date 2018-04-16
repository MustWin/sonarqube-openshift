FROM sonarqube:lts

LABEL maintainer="John Weldon <johnweldon4@gmail.com>" \
      company="MustWin, LLC"

ADD run.sh ${SONARQUBE_HOME}/bin/run.sh

RUN chown -R sonarqube:sonarqube ${SONARQUBE_HOME} && \
    chmod -R g=u ${SONARQUBE_HOME}

USER sonarqube:sonarqube

ENTRYPOINT ["./bin/run.sh"]
