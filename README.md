## Prepend commit with the JIRA ticket number

OCD approved.

### How To

1. Initialize GitFlow by example below. 
```
$ git flow init

Which branch should be used for bringing forth production releases?
   - develop
Branch name for production releases: [] master

Which branch should be used for integration of the "next release"?
   - develop
Branch name for "next release" development: [develop]

How to name your supporting branch prefixes?
Feature branches? [] feature/
Bugfix branches? [] bugfix/
Release branches? [] release/
Hotfix branches? [] hotfix/
Support branches? [] support/
Version tag prefix? [] v
Hooks and filters directory? [<Path_To_Your_Git_Repository>/.git/hooks]

```

2. Install a global Git webhook. The hook will be applied to all git repositories.
It prepends each commit with a ticket number, if you name your branch using the convention.
Ex: feature/PROJ-XXXX-branch-description.

To apply the webhook, use
```
./scripts/install-prepare-commit-msg.sh
```
It installs the webhook to your ~/.git-templates/hooks/ and will be applied for each cloned repository.

### WARNING
The script forces you to have a JIRA ticket for every branch, so you can track you work better.
If the behavior is not desired, don't use the script.
