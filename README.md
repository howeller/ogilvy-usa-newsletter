<img src="src/images/header_title_red_2x.png" alt="Ogilvy Pulse Newsletter CMS" width="150" style="width: 150px;" />

[Ogilvy Repo >>](https://git.ogilvy-digital.com/projects/DXA/repos/ogilvy-usa-newsletter/)

[CMS Dashboard >>](https://app.smartsheet.com/dashboards/v4wGWrMXVrh622FmcCfGg898PCHVJWFC9vHHGhv1)

[Live Preview >>](https://dxa.ogilvy-digital.com/ogilvy-usa-newsletter/)

[JIRA >>](https://hogarthdigital.atlassian.net/browse/CTUS-483)

---

### Dev overview

- This repo is only for version tracking our template source code. The email app/CMS lives in Ogilvy's repo `ogilvy-usa-newsletter`. They didn't want to track our source code, so we have their repo inside our repo.
- Must clone `ogilvy-usa-newsletter` repo into the root directory here (ignored in this repo) to commit final output files.
- Main task is to create an HTML email template that uses the PHP SMARTY templating language. 
- The main source file `src/newscan.tpl` is HTML with SMARTY template code. It has CSS inlined via [gulp-email-builder-min](https://www.npmjs.com/package/gulp-email-builder-min)
- Default gulp task `gulp` will run the inline task and drop the final template into the `ogilvy-usa-newsletter/src/templates` repo.
- All media queries are located in `src/css/embeddedStyles.css`
- All text styles are located in `src/css/inlinedTextStyles.css`
- All other styles are located in `src/css/inlinedStyles.css`

*We cannot connect to Ogilvy's BitBucket repos while connected to Hogarth VPN.*

---
### Setup
From the command line install `node_modules/` (not included in this repo).
``` cli
cd existing_folder
npm install
```
Next clone Ogilvy's CMS into our repo
``` cli
git clone git@git-ssh.ogilvy-digital.com:7999/dxa/ogilvy-usa-newsletter.git
```
---
### Gulp Tasks

Task Name    | What it Does
-------------|-----------
`gulp` | Inlines all CSS from the css files into the main template. Clears app cache.
`watch` | Automatically runs the default `gulp` task if any files in my `src/` change.
---
### Testing
Navigate to the dist folder inside your repo and start a local PHP server to run the app locally at `http://localhost:8888`
``` cli
cd dist
php -S localhost:8888
```
