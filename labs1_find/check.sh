#!/bin/bash

task=$1

if [ -z "$task" ]; then
    echo "Usage: ./check.sh <task_number>"
    exit 1
fi

case "$task" in
    1)
        echo "Task 1: Find all .log files"
        expected=$(find ./workspace -name "*.log" | sort)
        ;;

    2)
        echo "Task 2: Find all regular files"
        expected=$(find ./workspace -type f | sort)
        ;;

    3)
        echo "Task 3: Find empty files"
        expected=$(find ./workspace -empty | sort)
        ;;

    4)
        echo "Task 4: Find files older than 7 days"
        expected=$(find ./workspace -type f -mtime +7 | sort)
        ;;

    5)
        echo "Task 5: Find symbolic links"
        expected=$(find ./workspace -type l | sort)
        ;;

    6)
        echo "Task 6: Find all txt files"
        expected=$(find ./workspace -name "*.txt" | sort)
        ;;

    7)
        echo "Task 7: Find everything except png"
        expected=$(find ./workspace ! -name "*.png" | sort)
        ;;

    *)
        echo "Unknown task number"
        exit 1
        ;;
esac

result=$(bash answer.sh | sort)

if [ "$expected" = "$result" ]; then
    echo "✅ OK"
else
    echo "❌ FAIL"
    echo
    echo "Expected:"
    echo "$expected"
    echo
    echo "Got:"
    echo "$result"
fi
