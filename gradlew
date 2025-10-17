#!/usr/bin/env sh

# ---------------------------------------------------------------------------
# gradlew
#
# Gradle wrapper shell script
# ---------------------------------------------------------------------------

APP_NAME=$(basename "$0")

PRG="$0"

# Resolve symlinks
while [ -h "$PRG" ]; do
  ls=$(ls -ld "$PRG")
  link=$(expr "$ls" : '.*-> \(.*\)$')
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=$(dirname "$PRG")/"$link"
  fi
done

PRG_DIR=$(dirname "$PRG")
APP_HOME=$(cd "$PRG_DIR" >/dev/null && pwd)

DEFAULT_JVM_OPTS="-Xmx64m -Xms64m"

if [ -n "$JAVA_HOME" ] ; then
  JAVA="$JAVA_HOME/bin/java"
else
  JAVA=java
fi

exec "$JAVA" $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS -classpath "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"
