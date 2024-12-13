# Shell Script Bug: Globbing and Word Splitting

This repository demonstrates a common but subtle bug in shell scripts related to how globbing (filename expansion) and word splitting interact when dealing with filenames containing spaces.

## The Bug

The `bug.sh` script attempts to process files in a directory. However, if a filename contains spaces, it is incorrectly handled due to word splitting. This can lead to unexpected behavior or errors in commands that process the files.

## The Solution

The `bugSolution.sh` script demonstrates the correct way to handle filenames with spaces using proper quoting and array handling to prevent word splitting.

## How to Reproduce

1.  Clone this repository.
2.  Create a directory with files containing spaces in their names (e.g., `my file.txt`).
3.  Run `bug.sh <directory_path>`. You'll observe that the script doesn't process the file correctly.
4.  Run `bugSolution.sh <directory_path>`. You'll see that the script correctly processes files irrespective of spaces in their names.

## Lessons Learned

*   Always quote variables, especially when dealing with filenames, to prevent word splitting and globbing issues.
*   Use arrays to handle lists of filenames safely.