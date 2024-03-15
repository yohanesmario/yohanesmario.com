---
title: "SQL Escape Characters"
date: 2012-08-14T22:52:00+0700
draft: false
tags: ["cms", "sql"]
---

From the first time I deal with web programming, I have been searching for the best SQL input sanitation possible. I have tried to eliminate unwanted characters from the string, and then I try to use Separate Room SQL validation Method (SRS-VM) for absolute security with a little performance drawback.

Overtime, SRS-VM proved to be unusable when it comes to inserting new data set which don't have any reference from the database. SRS-VM need to have a data reference in order to operate, so, that makes creating new blog post impossible.

After several time searching through the net, and attending lecture from my university, I realize that there's one more option which is an absolutely secure method, and doesn't hinder performance as much as SRS-VM. For a long time, there has been a function in PHP which I never realize, called mysql\_real\_escape\_string. This function escapes every special characters in SQL. This basically means that I can enter any character I want without worrying about SQL injection.

Yes, I know. My journey towards finding this simple function is THAT long. That's what happen when we don't use documentation properly.

So, I hope this post help you. Happy blogging!