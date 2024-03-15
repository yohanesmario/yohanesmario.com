---
title: "Ultra Secure Password Encryption"
date: 2011-05-16T16:49:00+0700
draft: false
tags: ["cryptography"]
---

If you've been developing websites for a while, you'll eventually encounter the thing called encryption. It's often used to make passwords unreadable by regular users. When you sign in to a forum, or for an email, you store your password in the server's database. Malicious admins or users could easily stole them and use them to enter your account if it's stored in plain text format. For example, if you have a password "stupid", and it's stored in the database as "stupid", then, anyone who have access to the database could use your account effortless. But if you have a password "stupid" and it's stored in the database as "fc0586aca6e42cffade83252446d0613", then, it wouldn't be that easy.

So, the basic definition of encryption is: a process which is applied to text messages or other important data, and alters it to make it humanly unreadable except by someone who knows how to decrypt it ([source](http://cplus.about.com/od/glossar1/g/encryption.htm)). Nowadays, we have standard encryption method like MD5, SHA1, and so on. The widely used encryption method on the web is MD5. From it's name (MD5 : Message Digest 5), we understand that whatever it consumes will not be able to be reversed back. It's a one way encryption method, unlike ROT13, which is reversible. However, people can still find the password through dictionary and brute-force attack. In a typical dictionary attack, one would try to find the original password by matching the hash of known words to the target hash. However, if the password uses an uncommon words, it must be cracked by brute-force attack. This practice has been proven to be effective enough against short passwords. A more powerful computer can crack a longer password. So, it's all about time until someone can reveal your original password.

Then, why bother encrypting your password if eventually someone will be able to crack it? The reason is, if our password took ages to be cracked, many things would have changed by then, and the value of the information will be far more less than it used to be when it's new.

People have proven that cracking an MD5 encrypted password is very easy when you use a supercomputer. So, I came up with an idea, why don't we use multiple level encryption method? It's all about making the password cracking time longer. For example, if we encrypt our password in MD5, and then we encrypt the MD5 hash with SHA1, it will took longer time for password crackers to find the original password, or even mislead them. That's just a 2 leveled encryption method. Imagine what if we use 10 level, or maybe 100 level? Even a simple password like "stupid" will take a long time to be cracked, because we can customize the amount of level we want to use in our encryption method.

Hope you like it. Happy blogging!

PS: After searching through the net, I found a [topic](http://eproceedings.worldscinet.com/9789814289986/9789814289986_0011.html) similar to what I've been talking about.