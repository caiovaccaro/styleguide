#!/bin/bash
PROJECT_PATH=$(dirname "$0")

compile() {
	cd "$PROJECT_PATH"
	cd ../../..
	harp compile
	echo "Done! Compiled HTML in the www folder."
	echo "PROGRESS:100"
}

echo "Compiling Styleguide..."
echo ""
echo "PROGRESS:0"
type harp >/dev/null 2>&1
if [ $? -eq 1 ]
then
    echo "Harp wasn't found, please run the Start file."
else
	compile
fi

