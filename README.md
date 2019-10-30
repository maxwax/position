# position

This script automatically positions critical open applications on a Linux
desktop system.

It's commonly used after undocking from a desktop multi-monitor position and switching to other display configurations such as a laptop display, work office or single hdtv monitor display.

I normally call this script using a Gnome Shell .desktop file which enables me to press the launch hotkey then type 'work' to reposition windows for productive work.

## Requirements

* Bash
* wmctrl
* Configuration file: $HOME/.position-config 

## Configuration

Create a text file at $HOME/.position-config

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
