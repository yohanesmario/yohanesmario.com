---
title: "Separate Room SQL Validation Method"
date: 2011-11-03T14:48:00+0700
draft: false
tags: ["cms"]
---

Up until now, web designers (or web programmers) are trying to make their httpGET or httpPOST input more secure by filtering it. This has a side-effect which limits the number of characters allowed for a password or username. What if someone wants to have an equal-to (=) character, or even a quote (") character? These characters are known for it's ability to achieve SQL injection. However, I will further explain how they can not.

The old school method of filtering these kind of input is by limiting the characters so that caracters like equal-to (=) or quote (") can't be used. After the filtering is done, then, the input is passed to the SQL command, and then executed. This practicular method involves inserting some PHP variable (or any other language's variable) into the SQL command line. When you forget to sanitize the input, hackers will be very happy to infiltrate your system.

Now, I want to introduce you to a method used in my OOCMS project, which is extremely secure for any kind of SQL-involving input validation. I call it "Separate Room SQL Validation Method", or SRS-VM for short. Instead of letting the SQL part to do the selection job, I use the PHP part to do that. So, I do that by pulling all of the SQL query which is involved in the selection proccess into an array, and then comparing the input to the array. If a match is found, then you'll be able to proceed. This method involves no variable insertion at all, so the SQL command is a clean SQL command without any interference from the outside. That's why I call it "separate room". It will cause a big overhead for a big database, that's for sure. However, the lag is almost unnoticable.

If you want to further understand this method, hit [my OOCMS git](https://github.com/yohanesmario/oocms) and go to the framework/controller directory, and open the janitor.php file. I use it in almost every fuction it that class.

That's all from me, and happy blogging!