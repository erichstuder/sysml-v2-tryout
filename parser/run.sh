#/bin/bash

mkdir -p bin
javac -d bin Parser.java
java -cp bin Parser
