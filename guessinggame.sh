#!/bin/bash



files_count=$(find . -maxdepth 1 -type f | wc -l)

echo "Guess how many files are located in the current directory?"

read guess

make_guess() {

    if [ $guess -lt $files_count ]
    then
        echo "Your guess is too low. Please make a new guess."
    else
        echo "Your guess is too high. Make a new guess."
    fi

}

while [ $files_count -ne $guess ]
do
    make_guess

    read guess
done

echo "Congrats! You guess the number of files correctly."

exit 0
