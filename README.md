<img src="src/test/images/header_title_red_2x.png" alt="Ogilvy Pulse Newsletter CMS" width="150" style="width: 150px;" />

[Ogilvy Repo >>](https://git.ogilvy-digital.com/projects/DXA/repos/ogilvy-usa-newsletter/)

[CMS Dashboard >>](https://app.smartsheet.com/dashboards/v4wGWrMXVrh622FmcCfGg898PCHVJWFC9vHHGhv1)

[Live Preview >>](https://dxa.ogilvy-digital.com/ogilvy-usa-newsletter/)

[JIRA >>](https://hogarthdigital.atlassian.net/browse/CTUS-483)

---

### Dev overview

- This CMS tool imports content & the data structure from a Smartsheet owned and edited by the Ogilvy Coms team.
- The CMS code is located inside `dist/` and changes there are automatically deployed to the webserver via Jenkins.
- The email templates are PHP templates using the [SMARTY library](https://www.smarty.net). They live in `src/`.
- The main source file `src/email_template.tpl` is SMARTY template that includes other template modules. It has CSS inlined via [gulp-email-builder-min](https://www.npmjs.com/package/gulp-email-builder-min).
- Default gulp task `gulp` will run the inline task and drop the final template(s) into the `dist/templates/`.
- All media queries are located in `src/embeddedStyles.css`
- All text styles are located in `src/inlinedTextStyles.css`
- All module styles are located in `src/moduleStyles.css`
- All other styles are located in `src/inlinedStyles.css`

*We cannot connect to Ogilvy's BitBucket repos while connected to Hogarth VPN.*

---
### Setup
Clone the repository.
``` cli
git clone git@git-ssh.ogilvy-digital.com:7999/dxa/ogilvy-usa-newsletter.git
```

From the command line install `node_modules/` (not included in the repo).
``` cli
cd existing_folder
npm install
```

### Gulp Tasks

Task Name    | What it Does
-------------|-----------
`build:email` | Inlines all CSS from the css files into the main template. Clears app cache.
`build:test` | Inlines CSS for static Test file if using it.
`watch` | Automatically runs the default `gulp` task if any files in my `src/` change.
---
### Local Testing
Navigate to the `dist/` folder inside your repo and start a local PHP server to run the app locally at `http://localhost:8888`
``` cli
cd dist
php -S localhost:8888
```
