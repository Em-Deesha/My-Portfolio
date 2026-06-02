#!/bin/bash

echo "🚀 Portfolio Deployment Script"
echo "=============================="

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📝 Initializing Git repository..."
    git init
fi

# Add all files
echo "📁 Adding files to Git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Deploy portfolio website - $(date)"

# Add remote origin (replace with your repo URL)
echo "🔗 Setting up remote repository..."
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/Em-Deesha/My-Portfolio.git

# Set main branch
git branch -M main

# Push to GitHub
echo "⬆️ Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Deployment Complete!"
echo "🌐 Your portfolio will be available at:"
echo "   https://em-deesha.github.io/My-Portfolio"
echo ""
echo "⏱️ Note: GitHub Pages takes 5-10 minutes to build"
echo "📋 Remember to enable GitHub Pages in repository settings!"