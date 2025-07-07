# Redirect Setup for Hosting Provider

Since your hosting provider can't host the sitemap files directly, you'll need to set up redirects to GitHub Pages.

## Required Redirects

Add these 301 redirects to your hosting configuration:

### For .htaccess (Apache):
```apache
# Redirect sitemaps to GitHub Pages
RedirectMatch 301 ^/sitemap-canonical\.xml$ https://keenangroup.github.io/sitemaps/sitemap-canonical.xml
RedirectMatch 301 ^/sitemap-urls\.txt$ https://keenangroup.github.io/sitemaps/sitemap-urls.txt
RedirectMatch 301 ^/sitemap\.xml$ https://keenangroup.github.io/sitemaps/sitemap.xml
```

### For Nginx:
```nginx
location = /sitemap-canonical.xml {
    return 301 https://keenangroup.github.io/sitemaps/sitemap-canonical.xml;
}

location = /sitemap-urls.txt {
    return 301 https://keenangroup.github.io/sitemaps/sitemap-urls.txt;
}

location = /sitemap.xml {
    return 301 https://keenangroup.github.io/sitemaps/sitemap.xml;
}
```

### For Cloudflare Page Rules:
1. Create page rule: `thekeenangroup.com/sitemap-canonical.xml`
   - Forward to: `https://keenangroup.github.io/sitemaps/sitemap-canonical.xml`
   - Status: 301

2. Create page rule: `thekeenangroup.com/sitemap-urls.txt`
   - Forward to: `https://keenangroup.github.io/sitemaps/sitemap-urls.txt`
   - Status: 301

3. Create page rule: `thekeenangroup.com/sitemap.xml`
   - Forward to: `https://keenangroup.github.io/sitemaps/sitemap.xml`
   - Status: 301

## Benefits of This Approach

1. **Google Search Console** will accept `https://thekeenangroup.com/sitemap-canonical.xml`
2. The redirect will seamlessly send Google to the GitHub-hosted version
3. You maintain control over the sitemap content via GitHub
4. Updates are instant - just push to GitHub

## Testing the Redirects

Once set up, test with:
```bash
curl -I https://thekeenangroup.com/sitemap-canonical.xml
```

Should show:
```
HTTP/1.1 301 Moved Permanently
Location: https://keenangroup.github.io/sitemaps/sitemap-canonical.xml
```

## Google Search Console Submission

After redirects are working:
1. Go to GSC > Sitemaps
2. Submit: `https://thekeenangroup.com/sitemap-canonical.xml`
3. Google will follow the redirect and fetch from GitHub