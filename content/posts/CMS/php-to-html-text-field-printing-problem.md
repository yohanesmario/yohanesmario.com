---
title: "PHP to HTML Text Field Printing Problem"
date: 2016-12-31T17:19:00+0700
draft: false
tags: ["cms", "php"]
---

Since forever I've been looking for a way to easily print my blog content from php inside a html text input field or textarea. The results has always been awful or awkward at best. For those who have been making admin pages their whole life would know this. Printing an escaped HTML character is easy, but printing it inside a textarea is another story. The root cause of this is because `<input type='text' />` and `<textarea></textarea>` have different ways of displaying content.

And then I got an epiphany, why don't I use JSON to encode the data, and then use javascript to fill those empty text fields and textarea? And that's what I did. This way, I avoid printing directly into the textarea altogether. The way to do this is easy, I will have two variables, namely `$json` which contains the JSON encoded string, and `$result` which contains the string which will be echoed.

```php
<?php

    $json = json_encode(array(
        "textareaId" => $textareaContent
    ));

    $result = "<script type='text/javascript'>
        var preloadedData = ".$json.";

        $('#textareaId').val(preloadedData.textareaId);
    </script>";
```

Using this method, I can just use jQuery's `.val()` method to fill any text input, regardless of it's type.

That's all. Hope this helps. Happy blogging!