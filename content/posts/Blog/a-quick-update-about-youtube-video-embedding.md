---
title: "A Quick Update About Youtube Video Embedding"
date: 2011-02-20T19:30:00+0700
draft: false
tags: ["blog"]
---

Youtube is a widely used video hosting service that serves great hosting quality and multiple embedding options. The commonly used embedding option is by using the flash player, as HTML5 is still not supported in some browsers. In Youtube's embedded flash player, we will see a control bar below our video. That bar's height is exactly 25pixel.

I am a kind of person who don't want to see black bars included in my video, so I need to stretch the flash player to fit the video resolution just perfectly so there will be no excessive spaces. For example, if I have a 320x240pixel video, then I have to set the flash player resolution into 320x(240+25)pixel. We add 25pixel to the height of the flash player because that's the height of the control bar, leaving 320x240pixel space above it, perfectly fit for my video.

I hope that's helpful.

**EDIT**  
The new HTML5 Youtube Video Player has a control bar with 30pixel of height. So, know your player before editing the code. Cheers! :)