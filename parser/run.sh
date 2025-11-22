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

java -cp build/classes/java/main Parser
