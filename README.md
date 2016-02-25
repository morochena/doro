# doro

## Description

A minimalist pomodoro application.

## Install

  `$ gem install doro`

## Usage

  `$ doro start [-t tag] description of task`

This starts a 25 minute pomodoro timer in your terminal. To exit the pomodoro early, you can sent an interrupt with Ctrl+C. Whether you let it finish or not, it will save an entry of your pomodoro to `~/.doro` and notify you.

  `$ doro list [-n num]`

This displays a list of your pomodoro entries. Defaults to showing your last 10 entries.

  `$ doro break [-t num] [--long]`

This starts a 5 minute break timer to be used in between pomodoros.

  `$ doro help`

For detailed information.

## Todo

- [ ] number flag on list
- [ ] time flag on break
- [ ] long switch on break
- [ ] remove dependencies
- [ ] colorize

### Notifications

Supported notification platforms via [notifier](https://github.com/fnando/notifier) gem:

- Growl (Mac OS X)
- terminal-notifier (Notification Center wrapper for Mac OS X)
- GNTP Protocol (Growl, with Vagrant support)
- Kdialog (Linux/KDE)
- Knotify (Linux/KDE)
- OSD Cat (Linux)
- Libnotify (Linux)
- Snarl (Windows)
