#!/bin/bash

# Define the people and their areas
declare -A people_areas=(
    ["mhenke"]="Web Interface"
    ["bdahlstrom"]="User Federation"
    ["cflood2"]="IAM/RBAC"
    ["damianramirez07"]="MFA/SSO"
    ["NickBohlen"]="TBD"
)

# Define the tasks
tasks=(
    "Identify Specific External Interactors"
    "Develop Use Case Diagrams"
    "Derive Security Requirements"
    "Create Misuse Case Diagrams"
    "Iterate and Refine"
    "Integrate Use and Misuse Cases"
    "Build a list of security requirements"
    "Assess alignment with OSS features"
    "Review OSS project documentation and codebase"
    "Provide a summary of findings"
)

# Loop through each person and create tasks
for person in "${!people_areas[@]}"; do
    area=${people_areas[$person]}
    for task in "${tasks[@]}"; do
        gh project item-create 6 --owner "@me" --title "$area - $task" --body "$task for $person - Area: $area"
        echo "Created project item: $task for $person"
    done
done
