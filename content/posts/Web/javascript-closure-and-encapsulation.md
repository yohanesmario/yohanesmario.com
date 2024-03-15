---
title: "Javascript Closure and Encapsulation"
date: 2017-01-23T11:03:00+0700
draft: false
tags: ["web", "javascript"]
---

JavaScript is a confusing language. You can do OOP with it, you can do functional programming with it, and so on. A typical and modern way of encapsulating things in javascript is by creating an object. Objects in javascript are defined by a JSON notation (a single object throughout the runtime) or by creating what's known as a constructor function:

```js
function Creature(legs) {
    this.legs = legs; // This is a public attribute

    this.speak = function(){ // This is a public method
        console.log("Hi!");
    };
}

var person = new Creature(2);
person.speak(); // console: Hi!
```

However, you don't have `private` or `public` modifiers in javascript. Everything added to `this` will result as a public member of that object. So, how do we create private members? The answer: closure. Closure is a concept in javascript which states that anything defined inside a closure (those curly braces) will stay inside it. Nothing from outside of the closure can access anything that's defined inside of the closure. So, we can make:

```js
function Creature(legs) {
    this.legs = legs; // This is a public attribute
    var sound = "Hi!"; // This is a private attribute
    
    var makeSound = function(){ //This is a private method
        console.log(sound);
    };

    this.speak = function(){ // This is a public method
        makeSound();
    };
}

var person = new Creature(2);
person.speak(); // console: Hi!
```

I exploited this behavior to make sure that no one can mess with the internal states of my web applications by doing this:

```js
$(document).ready(function(){
    // The rest of your code goes here
});
```

That way, no external javascript can mess with my internal states. The lesson is, never define your application states as globals, always use closure, be it in an object, or as simple as inside of an initial function. As always, happy blogging!