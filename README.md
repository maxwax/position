# position

This script automatically positions critical open applications on a Linux
desktop system.

It's commonly used after undocking from a desktop multi-monitor position and switching to other display configurations such as a laptop display, work office or single hdtv monitor display.

I normally call this script using a Gnome Shell .desktop file which enables me to press the launch hotkey then type 'work' to reposition windows for productive work.

### Syntax

#### No parameters:

With no parameters, the script will identify your monitor(s) combined resolution configuration, look for a monitor rule matching that config, then follow the monitor rule to a set of window position rules.

This is helpful to just call position and it will relocate windows between single monitor, dual monitor, laptop only modes, etc.

$ position

monitor-config: display-work-office: "3840x1200"

# When no exact H x V resolution is found, the system will look for a
# special type rule to match on horizontal resolution Only
monitor-config: display-home-office: "4320x9999"

points to:

display-work-office: "'Evolution' -e 0,535,0,1385,1020"
display-work-office: "'KeePassX' -e 0,1921,1652,684,300"
display-work-office: "'KeePassX' -b add,sticky"
display-work-office: "'Thunderbird' -e 0,535,0,1385,1020"

#### Special Rule Parameter

If the user provides a parameter that is not some variation of '--help', it will search the config file for any matching window positioning rules and apply them.

This is helpful when you're doing a specific activity and have a certain set of windows open.  Below are my windows for studying cloud computing (three Firefox browser windows and a screen capture utility).

$ position <special-rule-id>

Example:
```position cloudstudy
Using special config |cloudstudy|
Found position rules to apply
Eval wmctrl -r 'AWS Certified Solutions' -e 0,1,465,1199,1078
Eval wmctrl -r 'Management Console' -e 0,1871,420,1249,1136
Eval wmctrl -r 'cloudstudy - Confluence' -e 0,1200,420,671,1136
Eval wmctrl -r 'Shutter' -e 0,1200,1298,665,303
```

## Requirements

* Bash
* wmctrl
* Configuration file: $HOME/.position.conf

## Configuration

Create a text file at $HOME/.position.conf

Identify the resolution of your whole (single or multiple monitor) desktop. You can use 'xrandr' for this.

```
xrandr | grep 'Screen 0'
Screen 0: minimum 320 x 200, current 3120 x 1920, maximum 16384 x 16384
```

Add a monitor-config definition to associate a resolution with a rule-group name:

```
monitor-config: display-home-office: "3120x1920"
```

Add one or more rules that will be executed to position applications when using this desktop/resolution:

```
display-home-office: "'Evolution' -e 0,535,0,1385,1020"
display-home-office: "'Thunderbird' -e 0,535,0,1385,1020"
display-home-office: "'Mozilla Thunderbird' -e 0,535,0,1385,1020"
display-home-office: "'Buddy List' -e 0,2800,760,228,1160"
display-home-office: "'Slack' -e 1,2281,388,839,1572"
```

The double-quoted portion identifies the name of an application's window and adjusts its gravity,x-position,y-postition,width,height factors.  See http://tripie.sweb.cz/utils/wmctrl/ for more information.

## Execution

You can run this from the command line:

```./position
Resolution: 3120x1920
Monitor config is |monitor-config: display-home-office: "3120x1920"|
Position rule is |display-home-office:|
Found position rules to apply
Eval wmctrl -r 'Evolution' -e 0,535,0,1385,1020
Eval wmctrl -r 'Evolution' -e 0,535,0,1385,1020
Eval wmctrl -r 'Thunderbird' -e 0,535,0,1385,1020
Eval wmctrl -r 'Mozilla Thunderbird' -e 0,535,0,1385,1020
Eval wmctrl -r 'Buddy List' -e 0,2800,760,228,1160
Eval wmctrl -r 'Slack' -e 1,2281,388,839,1572
Eval wmctrl -r 'KeePassX' -e 0,1921,1652,684,300
```

I normally execute this program by pressing the 'Super' (Windows) key, then typing 'work' into the launcher.  This provides seamless access from Gnome to run the script without a terminal so that applications are repositioned and I can continue to work.

To do this, deploy the work.desktop file in /usr/share/applications.  Gnome should pick this up and make it available without a restart.
