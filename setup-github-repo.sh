#!/bin/bash

echo "GitHub Sitemap Repository Setup"
echo "==============================="

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi

# Initialize git repository
echo "📁 Initializing git repository..."
git init

# Add all files
echo "📄 Adding files..."
git add .

# Create initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit - add sitemaps for canonical URL fix"

# Set main branch
git branch -M main

# Instructions for user
echo ""
echo "✅ Local repository ready!"
echo ""
echo "Next steps:"
echo "1. Create repository at: https://github.com/new"
echo "   - Name: sitemaps"
echo "   - Make it PUBLIC"
echo "   - Don't initialize with README"
echo ""
echo "2. After creating, run:"
echo "   git remote add origin https://github.com/KeenanGroup/sitemaps.git"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   - Go to Settings > Pages"
echo "   - Source: GitHub Actions"
echo ""
echo "4. Your sitemaps will be available at:"
echo "   https://keenangroup.github.io/sitemaps/sitemap-canonical.xml"
echo "   https://keenangroup.github.io/sitemaps/sitemap-urls.txt"