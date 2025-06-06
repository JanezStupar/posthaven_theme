# Posthaven Theme

The `posthaven_theme` gem provides command line tools for developing a Posthaven theme on your computer and pushing updates to Posthaven.

# Requirements

## Ruby

This gem requires Ruby 3.4.3 or above.

## Posthaven API Key

Log in and get your [Posthaven account API key here](https://posthaven.com/account/theme_api_key).


# Installation

To install the `posthaven_theme` gem use 'gem install' (you might have use 'sudo gem install')

```
gem install posthaven_theme
```

to update to the latest version

```
gem update posthaven_theme
```

# Usage

The gem installs the `phtheme` CLI program.

### List available commands
```
phtheme help
```

### Generate a configuration file. For your API key see [above](#posthaven_account).

```
phtheme configure api-key

```
### Upload all files

```
phtheme upload
```

### Upload a single theme file

```
phtheme upload layouts/theme.liquid
```

### Remove a theme file

```
phtheme remove assets/layout.liquid
```

### Completely remove all old theme files and replace them with current local versions

```
phtheme replace
```

### Watch the current theme directory and upload any files as they change
```
phtheme watch
```

# Configuration

Running `phtheme configure` generates `config.yml` file in the base directory of your theme. If you are storing your theme in version control it is **highly recommended that you DO NOT** store this file in version control, e.g. in git add it to your `.gitignore`.

`config.yml` has the following options:

* `api_key` – Your Posthaven API key
* `theme_id` – The ID of the theme to edit. The easiest way to populate the theme id is via the `configure` command above.

See the `phtheme configure` command above for one step setup of the `config.yml` file.

# Thanks 

A huge thanks to [Shopify](https://www.shopify.com) for their [shopify_theme](https://github.com/shopify/shopify_theme) gem upon which this is based.
