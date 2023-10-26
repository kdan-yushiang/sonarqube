FROM sonarqube:9.9.1-community

COPY ./sonar-cnes-report-4.2.0.jar /opt/sonarqube/extensions/plugins/sonar-cnes-report-4.2.0.jar

COPY ./sonarqube-community-branch-plugin-1.14.0.jar /opt/sonarqube/extensions/plugins/sonarqube-community-branch-plugin-1.14.0.jar

ENV SONAR_WEB_JAVAADDITIONALOPTS=-javaagent:/opt/sonarqube/extensions/plugins/sonarqube-community-branch-plugin-1.14.0.jar=web
ENV SONAR_CE_JAVAADDITIONALOPTS=-javaagent:/opt/sonarqube/extensions/plugins/sonarqube-community-branch-plugin-1.14.0.jar=ce

EXPOSE 9000 9092