# Contributing instructions

Thank you for considering to contribute to
"Guida allo sviluppo e gestione di software libero" documentation!
Here you will find instructions and guidelines for contributing efficiently.

Before proceeding further, please review our [Code of Conduct](CODE_OF_CONDUCT.md).

## Issues

If you find an issue in the
[Guida allo sviluppo e gestione di software libero](https://docs.italia.it/italia/developers-italia/guida-sviluppo-gestione-software-libero/it/stabile/index.html)
website or in this repository, please check if it's already known by searching
the [issue section](https://github.com/italia/guida-sviluppo-gestione-software-libero/issues),
otherwise file a new one: we really appreciate it! :rocket:.

You're welcome to contribute to open issues with more information or by adding
:+1: on them: it will help the maintainers identify the issues to be
prioritized.

### Creating a new issue

There are three templates for new issues: `Bug report`, `Feature request`
and `General issue`, pick the relevant one and follow the instructions
in that template.

If you pick `General issue` please provide a good amount of detail in
order to let other people clearly understand the issue.
After the creation of the issue, the maintainers team will promptly triage
it by assigning the proper labels.

## Pull Requests

After opening an issue, you may want to further contribute.
That's great and always appreciated! :sunglasses:

> :information_source: Please ensure that there is a pertinent issue related to
> what you are proposing and also make sure that someone has already reviewed it
> before proceeding

1. [Fork the project](https://help.github.com/articles/creating-a-pull-request-from-a-fork/)

2. Follow our [conventions regarding commits](#commit-messages) for your commit
   message

3. Open a Pull request against `master`.
   Blank PRs have a template you can follow where you can tick a checklist.
   When each one of the step is done, please insert an `x` in between the `[ ]`
   to mark it as ready.

> :information_source: Please make sure that all the relevant tests have been
> run and the CI processes triggered by the commits in the PR are passing
> without failures.
> If this is not the case, the PR will not be reviewed so you have to fix them
> before requesting help

The CI builds a live preview of your PR that allows you to see the results of your
work: please check it carefully and, if you spot any problem, uncheck the
"Ready for review" box or mark the PR as Draft.

### Commit messages

The commit message should be simple and self-explanatory.

We follow the [Conventional Commits format](https://www.conventionalcommits.org)
and the general rules of
**[great commit messages](https://chris.beams.io/posts/git-commit/)** (read this!)

If a commit fixes an issue, please
[reference it](https://docs.github.com/en/enterprise/2.16/user/github/managing-your-work-on-github/closing-issues-using-keywords#about-issue-references)
 in the commit body with `Fix: #ISSUENUMBER`.

## Gitflow

This repository adopts a simplified branch management system as follows:

* `master` is stable and gets deployed automatically. Never push directly to it;
* feature or fix branches are derived directly from master.

### Releases

Please check the [Releases](https://github.com/italia/guida-sviluppo-gestione-software-libero/releases)
page to see the current and past releases.

The maintainers try to keep the milestones updated in order to show what will be
fixed soon and, when possible, they also try to set a consistent end date for
such a milestone to be hit.

## Community

Want to get more involved in the community? Use Slack and join
[Developers Italia](https://app.slack.com/client/T6C27AXE0/CJRSS5S9W/)
or inside [Forum Italia](https://forum.italia.it/c/software-open-source-per-la-pa/49).
