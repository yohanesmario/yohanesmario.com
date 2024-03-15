---
title: "HTML 5 Canvas Optimization for Touch Devices"
date: 2011-04-25T14:16:00+0700
draft: false
tags: ["web", "html5"]
---

Making a drawing pad with HTML 5 canvas element is relatively easy, until we encounter touch devices. The codes which used to be working on conventional mouse-driven interface no longger works on touch screens. The purpose of making a drawing pad with the canvas element was simple: to facilitate people to draw from anywhere (as long as they have internet and a browser). But what's more pleasing than drawing on touch enabled screens?

Actually, it's not that hard to make a touch compatible canvas. It's almost the same as the mouse driven code, but with some changes. I'll let you see for yourself. Here's a code I get from [http://tenderlovingcode.com/static/download/draw.html](http://tenderlovingcode.com/static/download/draw.html):

```html
<!DOCTYPE html> 
<head> 
    <meta charset="utf-8"> 
    <meta name="viewport"
        content="width=768px, maximum-scale=1.0" /> 
    <title>sketchpad</title> 
    <script type="text/javascript" charset="utf-8"> 
    window.addEventListener('load',function(){
        // get the canvas element and its context
        var canvas = document.getElementById('sketchpad');
        var context = canvas.getContext('2d');
        
        // create a drawer which tracks touch movements
        var drawer = {
            isDrawing: false,
            touchstart: function(coors){
                context.beginPath();
                context.moveTo(coors.x, coors.y);
                this.isDrawing = true;
            },
            touchmove: function(coors){
                if (this.isDrawing) {
                    context.lineTo(coors.x, coors.y);
                    context.stroke();
                }
            },
            touchend: function(coors){
                if (this.isDrawing) {
                    this.touchmove(coors);
                    this.isDrawing = false;
                }
            }
        };
        // create a function to pass touch events
        // and coordinates to drawer
        function draw(event){
            // get the touch coordinates
            var coors = {
                x: event.targetTouches[0].pageX,
                y: event.targetTouches[0].pageY
            };
            // pass the coordinates to the appropriate handler
            drawer[event.type](coors);
        }
        
        // attach the touchstart, touchmove, touchend event listeners.
        canvas.addEventListener('touchstart',draw, false);
        canvas.addEventListener('touchmove',draw, false);
        canvas.addEventListener('touchend',draw, false);
        
        // prevent elastic scrolling
        document.body.addEventListener('touchmove',function(event){
            event.preventDefault();
        },false);	// end body.onTouchMove
        
    },false);	// end window.onLoad
    </script> 
    <style type="text/css"></style> 
</head> 
<body> 
    <div id="container"> 
        <canvas id="sketchpad" width="766" height="944">
            Sorry, your browser is not supported.
        </canvas>
    </div> 
</body>
</html>
```

You can see that instead of mouseOver, mouseMove and mouseOut events, it uses touchstart, touchmove and touchend events. It is nearly as simple as that, with addition of the script which disable iOS's elastic scrolling. This code is proven to be working on Android devices too.