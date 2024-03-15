---
title: "Let's Encrypt"
date: 2016-12-26T11:13:00+0700
draft: false
tags: ["cryptography", "lets-encrypt"]
---

> [Let's encrypt](https://letsencrypt.org) is a free, automated, and open Certification Authority.

That's what's said on the main page of their website. I've been looking into this thing for so long, but just now that I have learned that they provide a way to manually generate certificates for shared web hosting with no root shell access like the one I use. However, upon further investigation, and as I try to generate that certificate myself, I found that their documentation is lacking in terms of clarity, especially for my specific use case. In case you didn't notice, I have successfuly generated the certificate, but not without any hurdles. That's what I'm going to share here.

The steps are as follows (assuming you use Ubuntu or any equivalent distributions):

1.  Download certbot by using the command: `wget https://dl.eff.org/certbot-auto`.
2.  Mark it as executable: `chmod a+x ./certbot-auto`
3.  Begin to obtain certificate:`./certbot-auto certonly --manual -d www.example.com -d example.com`
4.  You will be asked to create some files with certain content in your public\_html. Do each of that, and then you will get your certificate.
5.  Your certificate will be located at `/etc/letsencrypt/live/example.com/fullchain.pem`,
6.  and your private-key will be located at `/etc/letsencrypt/live/example.com/privkey.pem`.
7.  Copy them to your web hosting, install them, and you're good to go.

That's all. I hope this helps. Cheers.