# .github

Shared GitHub artifacts for my personal repositories.

GitHub applies the files in this public repo as defaults to every repo in the account that has no equivalent of its own.

## Artifacts

| Path | What it is |
| --- | --- |
| `.github/ISSUE_TEMPLATE/user-story.yml` | The **User story** issue form. It is offered under **New issue** in any repo without its own `ISSUE_TEMPLATE` folder. |

A repo that has its own issue templates shows only those. The defaults do not merge with them.

## Labels

Labels are per repo and do not come from this repo. The form applies the `user-story` label, so each repo that uses it needs that label.

| Label | Description | Color |
| --- | --- | --- |
| `user-story` | label for a user story based on the issue template | `#0533bd` |

Recreate the label set in another repo by cloning it from the profile repo:

```sh
scripts/clone-labels.sh <repo> [<repo>...]
```

The script wraps `gh label clone Y-O-W/Y-O-W --repo Y-O-W/<repo> --force`.

The profile repo also carries GitHub's default labels (`bug`, `documentation`, `duplicate`, `enhancement`, `good first issue`, `help wanted`, `invalid`, `question`, `wontfix`), which the clone copies too.

## Rules

This repo is public. Keep client, internal and secret material out of it.
