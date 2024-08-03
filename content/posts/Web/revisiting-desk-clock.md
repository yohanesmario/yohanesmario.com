---
title: "Revisiting the Desk Clock: Kindle Edition"
date: 2024-07-30T06:54:00+0800
draft: false
tags: ["web", "clock", "kindle"]
---

I have a problem: I need a desk clock, but I don't want to spend extra money for it. I already have several tech that can function as a desk clock: phone, laptop display (I use external monitor as my main display), or kindle.

My phone is constantly being used and picked up, so it's not an ideal solution for a stationary clock. To use my laptop display means that I need to open up my laptop on my already small desk, which is also not ideal as it will offset my monitor placement. So, kindle? Yes, kindle. It has a built-in web browser (yay!), and it can run javascript (also yay!).

The problem is, kindle's browser has an issue with javascript Date object, as it will display an incorrect time if we use the Date object directly without some modification. So to mitigate this, we fetch the current timestamp from an NTP server on each load, and compare it to the local timestamp to get the offset. We will use this offset to make sure we will display the correct time based on the provided timezone. The current implementation doesn't really use an NTP server in a traditional sense, we use [WorldTimeAPI](https://worldtimeapi.org) instead, but it acts more or less the same as an NTP server, just uses different transport and payload.

To test this, you can visit [this page](https://yohanesmario.com/projects/time?tz=Asia/Makassar&rotate=0&hour24=false&showCalendar=true). This will not auto detect your timezone, as that's impossible to do on the kindle browser, so you'll need to provide your timezone using the `tz` query param. We also need to enable display orientation changes, so I just add a `rotate` query param (in degree). Additionally, I've added `hour24` query param to switch between am/pm and 24 hour format, and `showCalendar` to display current and next month calendar, both as boolean.

Here's the end result:
![Kindle Clock](/images/kindle-clock-with-calendar.jpg)

The code for this can be found on [this github repository](https://github.com/yohanesmario/yohanesmario.com/blob/main/content/projects/time.html).
