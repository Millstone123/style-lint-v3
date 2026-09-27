# style-lint-v3

CSS/SCSS style linter with synchronized profile data.

Run the setup with: make bootstrap


## Setup

```sh
make bootstrap
```

## Verify

```sh
make smoke
```

## Test

```sh
make test
```

# Profile smoke check outputs the active default rules.

Run the profile smoke check after setup to confirm the installed default profile.

The pinned release wheel supplies the default profile. Installed rules are loaded by the shared profile runtime and remain read-only.
