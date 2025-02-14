---
title: "Tip Of The Century: The Chrome Debugger"
date: 2025-02-14T18:31:23+01:00
draft: false
lastmod:
summary: 
categories: [coding]
tags: []
ShowToc: false
cover:
    image: "images/code.png"
    alt: "debugger"
    caption: "It's that easy"
    relative: true
---

You should use the [chrome debugger](https://developer.chrome.com/docs/devtools/javascript) if you do any frontend js/ts work. /thread

`console.log` is dead. The debugger saves my ass every time.


**You don't need to set up anything** or even import it if your using Chrome. You just:
1. Add `debugger;` anywhere in your code: (stick it behind an `if` if you like!)
2. If you're debugging on the fly, find your file in the `sources` tab and click "Add Breakpoint".

Now you can really debug all those god damn rerenders.

(It can do a load of other cool things too like logging on global DOM events like on `mousedown`. Here's the [docs](https://developer.chrome.com/docs/devtools/javascript).)

