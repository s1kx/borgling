# borgling

## Overview
borgling is a wrapper, written in go, for [borg backups](https://github.com/borgbackup/borg) with profile management for configurations.

Inspired by [duply](https://github.com/Oefenweb/duply) and [borgmatic](https://github.com/witten/borgmatic).



## Goals

* Global configuration options via `/etc/borgling/config.toml`
* Folder-based profile configuration, overriding global configuration
	* `<profile>/config.toml` - Borg backup options in  which will be translated to flags *(mandatory)*
	* `<profile>/patterns` - Use include/exclude patterns from file *(optional)*
	* `<profile>/excludes` - Use exclude file *(optional)*
	* `<profile>/pre` - Execute script before backup *(optional)*
	* `<profile>/post` - Execute script after backup *(optional)*
