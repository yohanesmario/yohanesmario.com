---
title: "Secure Session Validation"
date: 2011-05-13T11:04:00+0700
draft: false
tags: ["blog"]
---

It took me one night to realize that my session validation method in my admin page wasn't secure at all. When a user logs in, the user database will be called, and the database will be matched with the username and password which he enters. After that, some sessions will be registered as to what the output of the database produce. After finishing the session registration, the user will be redirected to the main.php page, and it will check whether a session is registered or not every time the user access that page.

Well, you can see that I create 2 fatal vulnerability. First of all, I didn't validate the input that the user give, in short, they can use SQL injection method to access the database. Second of all, at the main page, I only check whether a session is registered or not, but I didn't check whether the session has a valid value or not.

Finally, after a long night of working in front of my laptop, I resorted the problems. I use preg\_match() to validate the user inputs, and instead of checking whether a session is registered or not, I check whether the sessions has valid values or not.

Well, if you don't want to get hacked, keep in mind that no input can be trusted. Not even sessions.

Happy blogging!