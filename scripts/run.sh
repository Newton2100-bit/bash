#!/bin/bash

src=$1
destination=${src%.kt}.jar
# echo "Your source file is $src and your end file is $destination."
echo -e "The output of your file is ::: \n>>>>>>"
kotlinc "$src" -include-runtime -d "$destination" && java -jar "$destination"
echo "<<<<<<"
