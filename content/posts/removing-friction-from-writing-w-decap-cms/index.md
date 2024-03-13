---
title: Removing Friction From Writing w/ Decap CMS
date: 2024-03-12T23:52:47.756Z
---
I’ve been just a bit too silent for too long on this blog.

The constant waves of I-should-be-writing guilt finally flung me far enough below the surf that drastic measures were required to resurface: I added a headless CMS to my static website.

## Git Pages + Hugo flow

I could foresee 0 issues, as I frolicked into the [v1 build](https://c0n0.com/posts/website-in-10-minutes-for-programmers/) of this blog.

I laid my eyes upon the stunningly understandable markdown files that make up Hugo and grew excited with how easy & fun it’d be to write, just the same way that I’d wrote READMEs. I could then host it for free on my own GitHub page, No server needed, no monthly fees, no domain, and the content is all mine baby.

## Friction 

So this flow is actually pretty ok, but I found that I never really had a "Just jump in and start writing" vibe with it, like with notepad or Bear Notes or some WYSIWYG editor.

Here's what the process normally looked lik:

```bash
j ConorCorp.github.io #[^1]
npm i
hugo new --kind post-bundle posts/new-page
# Write a bunch of stuff in Bear Notes because its nice to write md in.
# Copy it into the page bundle
# Add post frontmatter
# Add in the images, make sure they're centered
hugo #builds for prod
git add .
git commit -m "add: new post"
git push
# Wait ~45 seconds, refresh conorcorp.github.io while happening
# Page looks good
# Find a typo
# Fix the typo
# Start over from `hugo` command...
```

[^1] The life changing [autojump](https://github.com/wting/autojump)

So for me, It was always an event to write. I knew I was signing up for all these steps. And when something is 'an event' or, in other words, tough to do, you're less likely to do it.

## Adding A CMS

// CMS basically automates most of these steps for me. I can also log in from my phone and blog if I want.

// Looked at a few options: TinaCMS wouldn't build, Decap looked pretty nice and was free/easy to integrate with netlify.

// Successfully lowered this
