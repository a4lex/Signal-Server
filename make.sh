#! /usr/bin/bash

  mvn clean install -DskipTests
  mv /root/src/Signal-Server/service/target/TextSecureServer-3.21.jar /usr/local/sbin/TextSecureServer-3.21.jar
  chmod +x /usr/local/sbin/TextSecureServer-3.21.jar
  systemctl restart signal
  sleep 5
  tail -n 10 /var/log/signal/signal.log
