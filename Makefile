printclass: libprintclassagent.so Hello.class
	${JAVA_HOME}/bin/java -agentpath:./libprintclassagent.so Hello

hello: libhelloagent.so Hello.class
	${JAVA_HOME}/bin/java -agentpath:./libhelloagent.so Hello

libprintclassagent.so: printclassagent.cpp
	g++ printclassagent.cpp -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux -shared -fPIC -o ./libprintclassagent.so

libhelloagent.so: helloagent.cpp
	g++ helloagent.cpp -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux -shared -fPIC -o ./libhelloagent.so

Hello.class: Hello.java
	${JAVA_HOME}/bin/javac Hello.java

clean:
	rm -rf *.so *.class
