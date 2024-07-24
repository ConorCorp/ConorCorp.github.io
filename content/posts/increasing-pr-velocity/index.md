---
title: "Increasing PR Velocity"
date: 2024-07-24T09:42:34+02:00
draft: false
lastmod:
summary: 
categories: [writing]
tags: [coding]
ShowToc: false
writingTime: 2.5 hrs
cover:
    image: "images/speed-holes.gif"
    alt: "Simpson's Speed Holes Clip"
    relative: true
---
Reviewing pull requests is a pain in the hole, but a necessary one. It is also huge time sync if you’re actually reviewing your team’s PRs with care.

## Normal PR Process
The PR process often looks like this.
- Get slack message: “pwetty please review my PR :3 (don’t hate me) [pr link](https://github.com/EpicGames/Signup/pull/24)”
- Open PR in browser, scroll through the code a bit
- Inner Monologue: “*This looks mostly understandable? Can I can get away without pulling this locally?*”
- Decide to **run it locally**:
  - Stash current changes (*remember that you have a stash saved!*)
  - Pull down PR branch
  - Run the code/tests (Hopefully it runs)
  - Click through all the changes, going back and forth with the PR on github.com
  - See an issue, flip to the web browser, find the line, and post a comment in the PR
- Decide to just **view it in the browser**:
  - Attempt to read the code
  - *Optional*: Try to “understand” the logic, but often you’re just [NITing](https://stackoverflow.com/questions/27810522/what-does-nit-mean-in-hacker-speak) formatting issues because you can’t run it
  - If you see a glaring issue or have a question, plop a comment in the PR

From a DX perspective, this process is slow and shit. If I think it’s slow and shit, I know my team does as well. If my team thinks that, then when they’re stressed or lazy, they’re not reviewing my PRs well, meaning they’re not always pulling down my code which leads to worse code health in the long run across the team.

The other issue here is it's is not conducive to making changes to your mates’ PRs.  NITing PRs is a waste of time if you could just fix the issues, but you have to get through so many steps to make the change.

## Solution: Make PRs Easy To Touch
**Things that we don’t want to do need to be easy.** That’s why startups make it way easier to pay for subscriptions rather than to cancel them.

The PR loop of: view code, run code, fix/comment needs to be high velocity.

{{< figure src="images/github-demo.gif" caption="Github Pull Request demo. [link](https://github.com/microsoft/vscode-pull-request-github)" >}}

The best thing I’ve seen to speed up the PR loop is to have PRs in the editor right away. For this, I’ve been using VSCode’s awesome  [Github Pull Request](https://github.com/microsoft/vscode-pull-request-github) extension, but you can use anything that makes it quick to pull PRs, view changes, and comment in your editor.  

Basically Github PR lightly puts the GitHub web PR view into the vscode. You’ll have access to all PRs, the file changes, comments, and most importantly: a button to immediately pull down a PR’s branch (an actual hidden super power).

When you do PRs in the editor, you get some serious benefits:
1. **Speed** - You have your teammate's branch (and file diffs) locally with a single button click. No navigating the web. Less time context switching.
2. **High Touch** - You can run their code right away. You can change their code right away and push it. No need for the comment for a small change. There is no struggle to make the decision if you need to pull down the code or not. It’s there! Add in a log statement, learn what’s happening!
3. **Self Service** - It works stupendously for your PRs as well. The second you push, you can see your changes and fix any accidentally pushed code. Never leave the editor and can also quickly jump into your next branch.

# PR Velocity In Teams
The speed at which PR’s are getting reviewed is a hugely overlooked part of what slows down our feature delivery. Adding a PR tool to your editor is a solid step for speeding up the PR loop, but if you really want to see this **speed compound**, get your whole team on it. 

When teams do PRs in the editor, we are not only fixing each other’s code faster, but also understanding each others’ code, and thus our whole codebase, on a deeper level. Our team at [Formly](www.formly.ai) hugely benefits from Github PR and we’re not looking back 💙
