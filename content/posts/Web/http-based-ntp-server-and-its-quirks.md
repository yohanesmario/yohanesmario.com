---
title: "HTTP Based NTP Server and Its Quirks"
date: 2017-01-23T10:10:00+0700
draft: false
tags: ["web", "ntp"]
---

While trying to create a [simple web-based desk clock](https://yohanesmario.com/projects/time), I notice that not all computers are made equal in regards to the way they sync time. Since then, I've been trying to create a simple HTTP and JSON based ntp server to sync all of my clocks. The result is as follows:

```js
var start = (new Date()).getTime();
$.ajax({
    url: 'http://time.yohanesmario.com/ntp',
    type: "GET",
    cache: false,
    contentType: "application/json; charset=utf-8",
    dataType: "json",
    success: function(data) {
        var end = (new Date()).getTime();
        var responseTime = end-start;
        if (data!=null && data.milliseconds_since_epoch!=null) {
            var time = parseInt(data.milliseconds_since_epoch);
            
            // Calibrate ntp time
            time = time + (responseTime/2);
            
            // Calculate offset
            offset = end-time;
        }
    }
});
```

Notice that I add half of the response time to the time obtained from the NTP. This is because HTTP as a protocol consist of 2 part, request and response, each took half of the total time. And then, there is TLS.

TLS (more widely known as SSL or HTTPS) works very differently. It, under normal circumstances (TLS 1.2), took 2 round trip handshake before the actual HTTP protocol begin. So, in total, it took 3 round trip to complete an HTTPS request. That's why, the actual time it took for the HTTP response to actually reach the client is `responseTime/6`. We change our original code accordingly:

```js
var start = (new Date()).getTime();
$.ajax({
    url: 'https://time.yohanesmario.com/ntp',
    type: "GET",
    cache: false,
    contentType: "application/json; charset=utf-8",
    dataType: "json",
    success: function(data) {
        var end = (new Date()).getTime();
        var responseTime = end-start;
        if (data!=null && data.milliseconds_since_epoch!=null) {
            var time = parseInt(data.milliseconds_since_epoch);
            
            // Calibrate ntp time
            time = time + (responseTime/6);
            
            // Calculate offset
            offset = end-time;
        }
    }
});
```

This may help you, or may not. Either way, happy blogging!