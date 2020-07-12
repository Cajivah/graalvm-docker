#!/usr/bin/env bash
 
echo "[-->] Detect artifactId from pom.xml"
ARTIFACT=$(mvn -q \
-Dexec.executable=echo \
-Dexec.args='${project.artifactId}' \
--non-recursive \
exec:exec);
echo "artifactId is '$ARTIFACT'"
 
echo "[-->] Detect artifact version from pom.xml"
VERSION=$(mvn -q \
  -Dexec.executable=echo \
  -Dexec.args='${project.version}' \
  --non-recursive \
  exec:exec);
echo "artifact version is $VERSION"
 
echo "[-->] Detect Spring Boot Main class ('start-class') from pom.xml"
MAINCLASS=$(mvn -q \
-Dexec.executable=echo \
-Dexec.args='${start-class}' \
--non-recursive \
exec:exec);
echo "Spring Boot Main class ('start-class') is 'MAINCLASS'"
