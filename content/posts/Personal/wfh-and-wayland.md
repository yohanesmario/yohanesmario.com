---
title: "WFH and Wayland"
date: 2020-08-16T21:56:00+0700
draft: false
tags: ["covid-19", "wfh", "wayland", "xterm", "tmux"]
summary: With COVID-19 still out there, and with WFH mode still being the primary mode of work for my case, most of my meetings are being done online. Ocassionaly, I need to share my screen in these meetings.
---

> _**WFH** --- Work From Home / Working Remotely_

With COVID-19 still out there, and with WFH mode still being the primary mode of work for my case, most of my meetings are being done online. Ocassionaly, I need to share my screen in these meetings. Before this pandemic, I've experimented with using [Wayland](https://wayland.freedesktop.org/) as my daily driver, but it comes with a limitation. It can't do screen sharing well out of the box.

In my experience, I can't share screen at all, all I can share is only some chrome windows. There are some apps that can be shared, and others can't. It seems that if an app is already wayland native, we can't share it's screen. Fortunately, all of my IDEs are not wayland native (yet). However, I used to use Terminator as my terminal emulator, which is wayland native. So, what's the terminal emulator that is probably will not be wayland native for the forseeable future? Of course it's XTerm, the terminal emulator for X Window System. They have no business in going wayland. And as a bonus, XTerm is also configurable via dotfile, so I can easily apply my profiles across devices. That's why I created a [dotfiles repository](https://github.com/yohanesmario/dotfiles/).

The only missing feature which I used a lot on Terminator is split pane, and for that I use tmux, a terminal multiplexer that I can use in any terminal, which also happens to be configurable via dotfile :)
