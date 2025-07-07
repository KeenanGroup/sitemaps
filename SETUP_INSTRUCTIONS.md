# GitHub Sitemap Hosting Setup Instructions

## Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `sitemaps`
3. Description: "XML sitemaps for thekeenangroup.com"
4. Make it **Public** (required for GitHub Pages)
5. Don't initialize with README (we have one)
6. Click "Create repository"

## Step 2: Push Files to GitHub

Run these commands in terminal:

```bash
cd /Users/joekeenan/Claude/thekeenangroup/github-sitemap-hosting
git init
git add .
git commit -m "Initial commit - add sitemaps for canonical URL fix"
git branch -M main
git remote add origin https://github.com/KeenanGroup/sitemaps.git
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. Go to your repository: https://github.com/KeenanGroup/sitemaps
2. Click "Settings" tab
3. Scroll down to "Pages" section (left sidebar)
4. Under "Source", select "GitHub Actions"
5. Save

## Step 4: Wait for Deployment

1. Go to "Actions" tab in your repository
2. You should see the deployment workflow running
3. Once complete (green checkmark), your sitemaps will be available at:
   - https://keenangroup.github.io/sitemaps/sitemap-canonical.xml
   - https://keenangroup.github.io/sitemaps/sitemap-urls.txt
   - https://keenangroup.github.io/sitemaps/sitemap.xml

## Step 5: Update Google Search Console

### Option A: Direct Submission
1. Go to Google Search Console
2. Navigate to Sitemaps
3. Submit: `https://keenangroup.github.io/sitemaps/sitemap-canonical.xml`

### Option B: Redirect Method (Recommended)
Set up a redirect on your hosting:
- FROM: `https://thekeenangroup.com/sitemap-canonical.xml`
- TO: `https://keenangroup.github.io/sitemaps/sitemap-canonical.xml`

Then submit in GSC: `https://thekeenangroup.com/sitemap-canonical.xml`

## Files Included

- `sitemap-canonical.xml` - Main canonical sitemap (60 URLs)
- `sitemap-urls.txt` - Plain text URL list (42 URLs)
- `sitemap.xml` - Sitemap index file
- `README.md` - Repository documentation
- `.github/workflows/deploy.yml` - GitHub Pages deployment

## Verification

After deployment, test the URLs:
```bash
curl -I https://keenangroup.github.io/sitemaps/sitemap-canonical.xml
```

Should return `200 OK` status.

## Updating Sitemaps

To update sitemaps in the future:
1. Edit the XML/TXT files
2. Commit and push to GitHub
3. GitHub Actions will automatically redeploy

---
*The Keenan Group - Austin's Premier Luxury Real Estate Team*