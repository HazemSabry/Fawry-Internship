#!/bin/bash
show_usage() {
    echo "Usage: $0 [options] <pattern> <file>"
    echo "Options:"
    echo "  -n, --line-number  Show line numbers with output lines."
    echo "  -v, --invert-match  Invert the sense of matching."
    echo "  -h, --help          Display this help message."
}

# Check if at least 2 arguments are provided
if [ "$#" -lt 2 ]; then
    echo "Error: At least 2 arguments are required." >&2
    show_usage
    exit 1
fi

# Initialize variables
line_number=false
invert_match=false

# Check for long options
for arg in "$@"; do
    case $arg in
        --line-number)
            line_number=true
            shift
            ;;
        --invert-match)
            invert_match=true
            shift
            ;;
        --help)
            show_usage
            exit 0
            ;;
        --*)
            echo "Invalid argument: $arg" >&2
            show_usage
            exit 1
            ;;
    esac
done

# Parse options
while getopts ":nvh" opt; do
    case $opt in
        n)
            line_number=true
            ;;
        v)
            invert_match=true
            ;;
        h)
            show_usage
            exit 0
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            show_usage
            exit 1
            ;;
    esac
done

# Shift the parsed options away
shift $((OPTIND - 1))

# Check if the pattern and file are provided
if [ "$#" -lt 2 ]; then
    echo "Error: Missing pattern or file." >&2
    show_usage
    exit 1
fi

# Get the pattern and file from the remaining arguments
pattern=$1
file=$2

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found." >&2
    exit 1
fi

# Perform the grep operation
options="-"
if $line_number; then
    options+="n"
fi
if $invert_match; then
    options+="v"
fi
if [ "$options" = "-" ]; then
    options=""
fi
grep $options $pattern $file

# Check the exit status of grep
if [ $? -ne 0 ]; then
    echo "No matches found."
    exit $?
fi

# Print a success message
echo "Matches found successfully."