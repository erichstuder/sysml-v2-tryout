#/bin/bash

set -e

if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]; then
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  -v          Show verbose build output"
    echo "  -h, --help  Show this help message"
    exit 0
fi

if [[ "$1" == "-v" ]]; then
    gradle compileJava
    echo ""
else
    gradle compileJava > /dev/null 2>&1
fi

INTERACTIVE="/SysML-v2-Pilot-Implementation/org.omg.sysml.interactive/target/org.omg.sysml.interactive-0.54.0-SNAPSHOT-all.jar"

echo running the program...
echo ""
java -cp "build/classes/java/main:$INTERACTIVE" Parser
echo ""
echo ...done
