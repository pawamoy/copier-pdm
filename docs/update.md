# Updating a project

Copier has an "update" feature.
It means that, once a project is generated,
you can keep updating it with the latest changes
that happen in the template.

It's particularly useful when you manage a lot of projects,
all generated from the same template, and you want to
apply a change to all your projects.

Example: the template fixed a bug in the Makefile.
You don't want to apply it manually to your projects.

To update your project, go into its directory,
and run `copier update`. Your repository must be clean
(no modified files) when running this command.

Copier will use the previous answers you gave when
generating the project, to re-generate it in a temporary
directory, compare the two versions, and apply patches
to your documents. When it's not sure, or when there's
a conflict, it will ask you if you want to skip that
change or force it. Your previous answers are stored
in the `.copier-answers.yml` file at the root
of the project directory:

```
📁 my-project
├── 📄 .copier-answers.yml
└── 📄 etc.
```

And the file looks like this:

```yaml
# Changes here will be overwritten by Copier
```

Since we are generally using Git in our projects,
my recommendation is to not think at all
and blindly apply every change Copier proposes.
Indeed, you'll be able to see the diff with `git diff`,
un-apply changes on whole files with `git checkout -- FILE`
if they are not relevant,
or do partial, interactive commits with `git add -p`
or within your IDE interface
(PyCharm at least has very good support and UX
for selecting and committing changes).

