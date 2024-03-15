---
title: "Multiple Level Password Encryption"
date: 2011-05-17T10:07:00+0700
draft: false
tags: ["cryptography"]
---

This is a program I made to make my previous post into a reality. I've been talking about multiple level encryption method. Well, here's [the real deal](https://yohanesmario.com/experiments/encryption.php?password=whatever).

The algorithm is composed by no more than 39 lines of code. It mix MD5 and SHA1 algorithm into an array of encryption process. The order of which algorithm is used in which step is defined by the pattern, and one phrase (password) will have one unique pattern, but one pattern may be assigned to different passwords.

I hope this helps you in understanding the basic idea of randomized multi level password encryption. Happy blogging!