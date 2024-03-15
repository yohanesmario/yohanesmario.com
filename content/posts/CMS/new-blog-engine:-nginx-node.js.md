---
title: "New Blog Engine: NGINX & Node.js"
date: 2017-01-10T02:27:00+0700
draft: false
tags: ["cms", "nginx", "node.js"]
---

I've been relying on Apache and PHP for a very long time, and they have served me well. However, they do have disadvantages, and I feel that I need to keep up with new technologies in order to further my knowledge. Apache is built with old paradigms to handle concurrency, it uses one thread per connection. Thread is expensive, especially for a constrained environment like a web server. So, when there's another platform which offer high concurency with a fixed size of thread pool, I'm sold.

Enter NGINX (read: engine-x). It uses a limited size of thread pool, so it will never create unlimited number of threads. It uses a non-blocking model instead of the traditional blocking model which Apache uses (which is why they need one thread per connection in the first place). The only disadvantage it has is the lack of support compared to Apache. To use php on NGINX, you need to go the extra mile. But PHP is also reliant on old paradigms. It's still based on a file system structure, it still use one thread per execution of a script (which negates the benefit of NGINX), and it's painfuly slow. So, now what?

This is where Node.js comes in. Node.js is basically javascript which you can run on the server. Imagine that. You can have practically the same language for both client and server. And it also use non-blocking model, just as an added bonus. Granted, it only use a single thread to run everything, but it still performs better than PHP which uses multi-thread, and you still can run multiple Node.js worker processes if you really need to scale further. Mind-blown.

So, yes, I just recreated my blog engine from scratch using Node.js. And it took me significantly less time than if I were to recreate this blog using PHP from scratch. Node.js is that easy to use, if you consider javascript as an easy language. I certainly am.

That's all. As always, happy blogging!