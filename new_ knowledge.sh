#!/bin/bash

# Prompt the user for the folder name
echo "Enter CS Topic (uppercase):"
read folder_name

# Convert folder name to uppercase
folder_name=$(echo "$folder_name" | tr '[:lower:]' '[:upper:]')

# Check if the folder already exists
if [ -d "$folder_name" ]; then
    echo "Folder '$folder_name' already exists."
else
    # Create the folder
    mkdir "$folder_name"
    echo "Folder '$folder_name' created."
fi

# Prompt the user for the topic
echo "Enter the detail topic:"
read topic

# Get the current date
current_date=$(date +%y-%m-%d)
file_date=$(date +%y.%m.%d)

# Create the file name with the specified format
file_name="$current_date-$topic.md"

# Create the file inside the folder
touch "$folder_name/$file_name"

# Display a success message
echo "File '$file_name' created inside folder '$folder_name'."

echo "| $file_date |  $topic  | [$topic content](./$folder_name/$current_date-$topic.md) |" >> README.md

echo "README updated"