#!/bin/bash

# Variables
WINDOWS_SERVER_USER="your-username"
WINDOWS_SERVER_IP="your-server-ip"
WINDOWS_PROJECT_PATH="C:/path/to/your/nextjs/project"
PUBLIC_FOLDER_PATH="C:/path/to/public/folder"
RELEASE_BRANCH=$1  # Input release branch from the GitHub Action

echo "Starting deployment of Next.js app to Windows Server from $RELEASE_BRANCH branch"

# Uncomment the following lines if you want to deploy the next app on windows server
# SSH into Windows Server and perform the deployment steps
# ssh "$WINDOWS_SERVER_USER@$WINDOWS_SERVER_IP" << EOF
#   # Navigate to the Next.js project
#   cd "$WINDOWS_PROJECT_PATH"
  
#   # Fetch all branches from the remote
#   git fetch origin
  
# # Check if the release branch exists locally
# if git show-ref --verify --quiet refs/heads/$RELEASE_BRANCH; then
#   # If the branch exists locally, checkout to it
#   git checkout $RELEASE_BRANCH
#   # Pull the latest changes from the release branch
#   git pull origin $RELEASE_BRANCH
# else
#   # If the branch does not exist locally, create a new local branch tracking the remote branch
#   git checkout -b $RELEASE_BRANCH origin/$RELEASE_BRANCH
#   # Pull the latest changes from the newly created branch
#   git pull origin $RELEASE_BRANCH
# fi
  
#   # Pull the latest changes from the release branch
#   git pull origin $RELEASE_BRANCH
  
#   # Build the Next.js project (assumes a static export)
#   npm install
#   npm run build
  
#   # Copy the 'out' folder to the public folder
#   cp -r "$WINDOWS_PROJECT_PATH/out/" "$PUBLIC_FOLDER_PATH/"
  
#   echo "Deployment completed!"
# EOF
