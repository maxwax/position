# CHANGELOG

### v1.2.1

* Bug fix: If there is no CLI parameter, apply rules based on resolution. Recent work to enable allowing a special-rules-id CLI parameter allowed that new feature but broke the existing, default behavior.  Now tested for both.

### v1.2.0

* Modified the position script so if the user provides a parameter, it will skip the resolution handling and just apply rules named by the parameter.
* Updated my included (sample) position.conf file with some special-rule-id items for cloud computing study work.

### v1.1.1

* Ignore commented out rules when positioning windows.

### v1.1.0

* Added VERSION and VERSION_DATE variables to script.

### v1.1.0

* Rename config file as .position.conf from .position-config for consistency with other scripts I've written.

### v0.1.0

* Switching version numbering
* Now deploys with install script; Deploys position script and work.desktop Gnome shortcut

### 2019-12-24

* Adding install script so this can be downloaded from Github via Chef and deployed. Should make an rpm, but too little time for that right now.

### 2019-10-29

* Added rules to the position-config file so that my Slack and KeePassX applications are always visible on the screen regardless of the virtual desktop that is currently displayed.

### 2019-10-29

* Modified Gnome work.desktop shortcut file to call this script at /usr/local/bin/position instead of /home/maxwell/bin/position.

### 2019-10-29

* Rewrote the script to separate code & data using a configuration file.

The configuration file now defines monitor configurations which are recognized and associated with a rule-group name.  The script then calls wmctrl using the parameters provided by any positioning rule with that resolution's rule-group name.

I've wanted to do this for a long time in order to pull out my specific configuration to a config file in order to allow others to use the script itself.

* Added documentation

* Submitting changes back to an old repo I forgot about on github

### 2014-03-26

* Most recent github update from six years ago.
* I've been using this script daily since then and can't live without it, but wasn't updating github.
