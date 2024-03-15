---
title: "MVC Versus PAC"
date: 2011-10-01T19:00:00+0700
draft: false
tags: ["blog"]
---

When I'm learning about the application of OOP in web programming, I come across something called MVC (Model-View-Controller). It's an architecture for an application which allows the application to be easily configurable for different UI. Basically, it allows the same application to be viewed across different type of devices.

The controller is basically a layer which receives all of the input from the user, validates it, and execute the requested action. It has some type of input sanitization, and it knows all of the other element in the application in order to tell them what to do.

The model is a layer which handle all of the business logic, data abstraction and data processing. In conjunction to input-processing-output mechanism, the model layer is comparable to the processing part, while the controller is comparable to the input part.

The view layer, as its name tells, is a layer that allows the user to view the requested content/action. It knows nothing about database or any data sources, it only knows that it needs to render the content provided by the model.

However, when I dug deeper into the MVC architecture, I also come across PAC (Presentation-Abstraction-Control). It basically is an altered version of MVC, where the Model (in this case the "abstraction" part) can't directly access the view ("presentation"). The abstraction layer needs to transmit the data stream to the controller, and when the controller done validating the data stream, it tells the presentation layer to render the data accordingly.

Why do I write about this? It has something to do with the main concept of the blog engine. It will use PAC as the base architecture. It's secure, because all of the data transmission is controlled in one layer (try to beat that, hackers!). OOP will sure be used as the basic paradigm of programming the blog engine.

That's it for today, and, Happy Blogging!

update (2011/10/12 13:15 GMT+7): I will temporarily use MVC for the beginning, and move to PAC as I understand it better.