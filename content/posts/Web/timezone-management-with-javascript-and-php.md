---
title: "Timezone Management with JavaScript and PHP"
date: 2011-04-13T10:20:00+0700
draft: false
tags: ["web", "timezone", "javascript", "php"]
---

In the old days, synchronizing php and javascript date and time functionality is a real pain. You need to detect the client timezone offset with javascript, and then convert it to a format which is php friendly, and transform it as a cookie, and so on. That's a really hard process for a new programmer.

However, thanks to [John Nylander](https://bitbucket.org/pellepim), we can now have a rather convenient system. He made the [JsTimezoneDetect](https://bitbucket.org/pellepim/jstimezonedetect/wiki/Home) javascript library.

Below is a quote form [https://bitbucket.org/pellepim/jstimezonedetect/wiki/Home](https://bitbucket.org/pellepim/jstimezonedetect/wiki/Home):

To simply store away a user's timezone in a variable, you can simply import timezone\_detect.js and do the following.

```js
var timezone = determine_timezone().timezone;
// Now you have an instance of the TimeZone object.

alert(timezone.utc_offset);
// Offset in minutes from UTC

alert(timezone.olson_tz);
// Olson database timezone key (ex: Europe/Amsterdam)

alert(timezone.uses_dst);
// bool for whether the tz uses daylight saving time
```

This gives you an Olson database key you can use for datetime calculations in most programming languages.

After declaring the `timezone` variable in javascript, it's time to transfer it into php. because the `timezone.olson_tz` is already in a php friendly format, we can then directly save it in a cookie with `setCookie("timezone_js", timezone.olson_tz, 365)`.

When the data is stored in a cookie, the php script can start to take over. we can call the cookie by simply calling the `$_COOKIE["timezone_js"]` and putting it in `date_default_timezone_set($_COOKIE["timezone_js"] )`. That way, your web is now in the same timezone as the client.

That's all from me, happy blogging!