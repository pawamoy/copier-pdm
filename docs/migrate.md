# Migrate from copier-poetry

If you were using `copier-poetry` before,
and would like to migrate to this template
based on PDM, here is how:

```bash
# go into your project
cd my_project

# upgrade to the latest of copier-poetry
copier -f update
```

Reference the new template in `.copier-answers.yml`:

```yaml
_commit: e9e472d
_src_path: gh:pawamoy/copier-pdm.git
```

Now clean up your repository, commit the changes,
and update again:

```bash
copier -f update
```

That's it! You should now be up-to-date
with the latest `copier-pdm` stuff!
