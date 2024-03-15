---
title: "RSS Feed, a Glimpse Through an XML File"
date: 2011-02-19T12:24:00+0700
draft: false
tags: ["blog", "rss"]
---

In the making of this blog, I come across something called RSS. In Wordpress and many other CMS, it is something that's already built in so you don't have to worry about it. However, since this blog do not use any kind of CMS, I must learn how to make it.

It turns out that an RSS feed back in it's early development is a static file in a (dot)xml format. It meant to give people easy updates of what's new in someone's website. Back in time, the user admin had to change the content of the RSS file to match it's website content manually so people who subscribe to it will get a notification about something that's new.

These days, however, we expect everything to happen automatically. We want our RSS Feed to be changing in an instant when we update our website content. We don't want to be involved in all the hazzle of changing many files when we only want to add one more content.

An RSS Feed in it's \*.xml form looks like this:

```rss
<rss version="2.0">
    <channel>
        <title>This is the title of your website</title>
        <description>This is the tagline of your website</description>
        <link>This is the link to your website</link>
        <item>
            <title>This is the title of your content</title>
            <pubDate>17 Feb 2011 11:51:10 +0700</pubDate>
            <description>Insert your content here</description>
            <link>link to your content</link>
            <guid>also a link to your content</guid>
        </item>
    </channel>
</rss>
```

It's the static form. The item tag is the update that will be received by the subscriber. That's still a static \*.xml file. To make it dynamic, you can change it to a \*.php file. more info can be found [here](http://www.pixel2life.com/publish/tutorials/167/creating_a_php_sql_rss_feed/).

That's all for now. I'll try to keep posting about things that I found informative when I'm making this blog.  
Happy Blogging!