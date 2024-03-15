---
title: "A [Ro]Bot In Your Web Browser"
date: 2011-03-08T23:40:00+0700
draft: false
tags: ["web", "bot"]
---

Today at work, I encounter a unique problem. I needed to update a database in a regular basis to make sure that certain condition is applied. That can be done by adding certain script in the page that users are frequently accessing. But as the demand is to make sure that every seconds are not wasted, I need something more than a manually refreshed page.

That's when I first notice the usage of the term "bot". A bot is simply a background running script that is always monitoring certain activity on a specified location. It is the AI of the web.  
For example, if you make a registration system for your site and you want to give every user an added attribute in the next 3 weeks after their registration date, a bot will come in handy. You don't have to code the script in your pages, you just need to make one page which will have a looped script which always check whether the attribute is ready to be applied or not. This method also saves a lot of computing power, as the host is the only computer that's running this script.

The tricky part is, when you make an eternally lopped script, you need to be cautious of how much resource will it consume. If you make it loop too fast with a very long script, it will slow down your system.

I haven't tried it anyway, still an abstract idea of how to solve my problem at work.  
I'll let you know about the technical stuff after I completed the bot. I've got some hard javascript programming to do.  
Happy blogging!