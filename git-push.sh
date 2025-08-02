#!/bin/bash

# Ask for inputs
read -p "Enter your commit message: " commit_message
read -p "Enter your GitHub repository URL: " repo_url
read -p "Enter your branch name (e.g., main): " branch_name

# Git automation
echo "Initializing repository..."
git init

echo "Adding all files..."
git add .

echo "Creating commit..."
git commit -m "$commit_message"

# Remove existing origin if it exists
if git remote | grep -q origin; then
  echo "Remote 'origin' already exists. Resetting..."
  git remote remove origin
fi

echo "Adding remote origin..."
git remote add origin "$repo_url"

echo "Renaming branch to $branch_name..."
git branch -M "$branch_name"

echo "Pushing to $repo_url ($branch_name) with --force..."
git push -u origin "$branch_name" --force

echo " Done."
