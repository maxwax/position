# CHANGELOG

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
