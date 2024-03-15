---
title: "A Short HTML Page at Work"
date: 2011-02-21T20:11:00+0700
draft: false
tags: ["blog", "html"]
---

Sometimes, we have only small amount of content to fill our page, and that makes the footer rises up to the middle of the screen. Today, my senior coworker asked me to figure out how to make the footer placed on the bottom of the screen when we have a short amount of content. It's an ugly view for both of us, so I told him that I'll try to find a solution.

On my previous studies about HTML, the only thing that will enable you to adjust the vertical-alignment of any object is a `<table>`. A `<table>` will give you that kind of freedom to adjust the alignment both horizontally and vertically. So, I try to encapsulate the whole web page into two rows of `<table>`, one for footer and one for everything else.

I use css to help me set attributes for the table and its contents. The `<table>`, `<html>`, and `<body>` have a `width:100%;` and `height:100%;` attribute. on the other hand, the upper row, which contain everything except the footer, have a `vertical-align:"top";` attribute, and the other row have a `vertical-align:"bottom";` attribute. That will let the content placed where it should be placed, and the footer placed on the bottom of the screen when the content is too short.

Here is the sample html code:

```html
<!DOCTYPE html> <!-- I am using the html5 doctype -->
<html>
<head>
    <link rel ="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <table class="capsule">
        <tr>
            <td class="content">Everything that"s above our footer</td>
        </tr>
        <tr>
            <td class="footer">This contains our footer</td>
        </tr>
    </table>
</body>
</html>
```

And here is the style.css content:

```css
html, body, table.capsule {
    width:100%;
    height:100%;
}

td.content {
    vertical-align:"top";
}

td.footer {
    vertical-align:"bottom";
}
```

I hope that helps. Let me know if it doesn't work for you.  
Happy blogging!