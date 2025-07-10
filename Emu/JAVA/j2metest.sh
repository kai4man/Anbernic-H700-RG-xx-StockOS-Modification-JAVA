#!/bin/bash




JAVA_HOME='./jdk'
export JAVA_HOME
PATH="$JAVA_HOME/bin:$PATH"
export PATH

CLASSPATH="$JAVA_HOME/lib:$CLASSPATH"
export CLASSPATH
LD_LIBRARY_PATH="$JAVA_HOME/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH

mkdir -p ./.java/.systemPrefs
mkdir ./.java/.userPrefs
chmod -R 755 ./.java

JAVA_TOOL_OPTIONS='-Xverify:none -Djava.util.prefs.systemRoot=./.java -Djava.util.prefs.userRoot=./.java/.userPrefs -Djava.awt.headless=true -Dsun.jnu.encoding=UTF-8 -Dfile.encoding=UTF-8 -Djava.library.path=./jdk/lib'
export JAVA_TOOL_OPTIONS

export TIMIDITY_CFG="./jdk/bin/timidity/timidity.cfg"


./jdk/bin/java -jar ./jdk/bin/freej2me-sdl.jar $PWD/edge.jar 240 320 30 >err.txt 2>&1

