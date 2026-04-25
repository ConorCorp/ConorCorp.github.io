# Hugo Blog — Agent Guide

Site: [c0n0.com](https://c0n0.com)
Theme: PaperMod
Publish dir: `docs/` (served via GitHub Pages from `main`)

## Drafting a Post

```bash
make new url=my-post-slug
```

This creates `content/posts/my-post-slug/index.md` from the `post-bundle` archetype.

### Front matter defaults

```yaml
title: "My Post Slug"   # auto-generated from slug
date: <now>
draft: false
summary:                # one-line description shown in listings
categories: [writing]
tags: []
cover:
  image: "images/"      # place cover image in content/posts/<slug>/images/
  relative: true
```

Edit the generated file to fill in `title`, `summary`, `tags`, and body content.

## Local Dev

```bash
make dev    # hugo server -D (includes drafts)
```

Visit `http://localhost:1313`.

## Build & Deploy

```bash
make build            # hugo → outputs to docs/
make commit m="msg"   # build + git add/commit/push
```

## Content Structure

```
content/
  posts/
    <slug>/
      index.md        # post content
      images/         # post images (cover goes here)
```

## Taxonomy

- `categories`: broad grouping (default: `writing`)
- `tags`: freeform keywords
- `series`: multi-part series name

## Notes

- `lastmod` is sourced from git history automatically — no need to set it manually.
- Set `draft: true` to hide a post from the live site while keeping it in the repo.
- `make dev` shows drafts; `make build` does not.
