# 🚀 Portfolio Deployment Guide

## Quick Deployment Steps

### Method 1: Using the Deploy Script (Recommended)
```bash
chmod +x deploy.sh
./deploy.sh
```

### Method 2: Manual Git Commands
```bash
git init
git add .
git commit -m "Initial portfolio commit"
git branch -M main
git remote add origin https://github.com/Em-Deesha/My-Portfolio.git
git push -u origin main
```

### Method 3: GitHub Web Interface
1. Go to https://github.com/Em-Deesha/My-Portfolio
2. Click "uploading an existing file"
3. Drag these files:
   - index.html
   - styles.css
   - script.js
   - pp.png (optional)
4. Commit changes

## Enable GitHub Pages

1. Go to repository Settings
2. Click "Pages" in sidebar
3. Select "Deploy from a branch"
4. Choose "main" branch and "/ (root)" folder
5. Click "Save"

## Your Live URL
```
https://em-deesha.github.io/My-Portfolio
```

## Alternative Quick Deployment

### Netlify Drop (Instant)
1. Go to https://app.netlify.com/drop
2. Drag your project folder
3. Get instant URL

### Vercel (Connect GitHub)
1. Go to https://vercel.com
2. Import from GitHub
3. Auto-deploys on commits

---
*Deployment usually takes 5-10 minutes to go live*