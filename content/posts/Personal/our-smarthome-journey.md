---
title: "Our Smarthome Journey"
date: 2024-03-03T21:48:00+0800
tags: ["smarthome"]
---

Our journey into smarthome system starts with the simplest component, lights, all 15 of them. The thinking process to what type of lights we were going to use wasn't that complicated, my wife and I simply were looking for lights that's compatible with google home, and that's it. The lights we picked up was wifi based and uses bluetooth for pairing. In the process we found out that our lights are matter compatible too, and I'll explain why this is important later in the post.

## Part 1: Installation

Our previous experience with home wifi setup never exceeded 8 wifi clients being connected to a single router. This time, in addition to our existing devices, we need to add 15 more wifi smart lights, bringing the total to 23 actively connected wifi clients. Wifi 802.11n in theory can handle this amount of clients connected using a single channel, however, it turns out that there's another bottleneck in the network: DHCP. When we try to connect the lights one by one, the built-in DHCP server in our router seems to be working just fine. However, when we have a temporary power outage (because we forgot to pay the bills) when the power is turned on again, all devices tried to connect to the wifi network at the same time, and there seems to be a race condition in the DHCP server when allocating addresses which causes the entire router to be inaccessible. These are speculations, yes, either it's a race condition, or the router's computing power simply can't handle that many DHCP requests at the same time.

## Part 2: Being a Hoarder has it's Perks

My wife's organizational method stems from Marie Kondo, but I'm grateful that in this instance I didn't listen to her, or we would be stuck with a router that can't handle this amount of traffic. Thankfully, I still have with me a router that has a dual core processor (4 logical cores), and 256MB of RAM. And it's even half the price of my current router when I bought it.

I installed OpenWRT on it a long time ago, and this time, it come in handy. Not only is OpenWRT far superior to whatever built-in software that my previous router has, the processing power alone even exceeds these newer routers. I setup the OpenWRT router as the main router, and the other router as an access point. The thinking was: I have 2 options, either I buy a new WiFi 6 router that can handle multi channel wifi 2.4Ghz, or I use my existing routers to split the channels into 2, thus reducing the risk of channel congestion. In the end, tight budget prevails. With this setup, I can route all DHCP requests to the OpenWRT router, and it works even after simulating power outages multiple times.

## Part 3: Matter Protocol

With this setup, the only annoying component left was the default protocol used by these smart lights. They uses their own protocol with their own app that can be integrated to google home. However, the integration is sub optimal, since google home needs to talk to their cloud, and their cloud need to talk to each lights to be able to control them via websocket. There was noticable latencies and reliability issues, for example, knowing how websocket works, it will go offline quite often whenever the websocket failed.

I figured, *"well, trying out matter won't hurt now"*. And it didn't hurt indeed. Instead of websocket, matter uses a more robust API based approach. You can search the internet for all of it's capabilities, but what important to me are reliability and local connectivity. For example, when connected to my local network, I no longer have to wait 2 seconds for the command to be executed by each lights, because matter allows the device to talk locally. It also is more reliable, our lights has never shown any signs of going offline after we switched to matter. Moreover, it also seems to strain the network less, since they didn't have to maintain an ongoing websocket connection like they did with the old protocol.

## Key Takeaways

If I can summarize my experience during this whole process, it can be boiled down into 2 points:
- DHCP can be a bottleneck in a network, you'd need a good DHCP server to handle the inavoidable simultaneous DHCP requests.
- Matter protocol works reliably, go for it if your device supports it.