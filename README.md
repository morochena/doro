= doro

== Description
A minimalist pomodoro application.

== Install

  $ gem install doro

== Usage

  $ doro start [-t tag] description of task

This starts a 25 minute pomodoro timer in your terminal. To exit the pomodoro early, you can sent an interrupt with Ctrl+C. Whether you let it finish or not, it will save an entry of your pomodoro to +~/.doro+.

  $ doro list [-n num]

This displays a list of your pomodoro entries. Defaults to showing your last 10 entries.

  $ doro break

This starts a 5 minute break timer to be used in between pomodoros.

== Todo


- [ ] **Compatible with android** TODO: background switch
TODO: number flag on list
TODO: remove dependencies
TODO: colorize

:include:doro.rdoc
