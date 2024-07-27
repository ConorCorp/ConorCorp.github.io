---
title: "Faster PRs - Lower The Barrier Of Entry"
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
Reviewing pull requests is a pain in the hole, but a necessary one. It is also massive time sync if you're actually doing it right.

## Normal PR Process
It often looks like this:
- Get slack message: “pwetty pwease review my PR :3 [pr link](https://github.com/EpicGames/Signup/pull/24)”
- Open in browser, scroll through the code a bit
- Inner Monologue: “*This looks mostly understandable? Can I can get away without pulling this locally?*”
- Decide to 
  - **run it locally**
    - Stash current branch's changes (*remember that you have a stash saved!*). Pull down PR branch. Run the code/tests (Hopefully it runs). Click through all the changes going back and forth with the PR on github.com. See an issue in the editor and flip to the web browser, find the line, and post a comment in the PR.
  - **view it in the browser**
    - Attempt to read the code. *Optional*: Try to “understand” the logic, but often you’re just [NITing](https://stackoverflow.com/questions/27810522/what-does-nit-mean-in-hacker-speak) formatting issues because you can’t run it. If you see a glaring issue or have a question, plop a comment in the PR.

## Yucky DX

From a DX perspective, this process is slow and shit. If I think it’s slow and shit, I know my team does as well. If my team thinks it's slow and shit, then when they’re stressed or lazy, they’re not pulling down my code, meaning they’re not reviewing my PRs well, meaning we're often committing worse code and bugs into `master`.

The issue with this PR process is that it's not conducive to making changes to your mates’ PRs.  For example, NITing PRs is a waste of time if you could just fix the issues, but you have to get through so many steps to make the change.

## Solution: Make PRs Easy To Touch
**Things that we don’t want to do need to be easy.** The PR loop of: view code, run code, fix/comment needs to have an extremely low barrier to entry. If PRs are easy to touch, they're easier to understand and maybe even fix.

{{< figure src="images/github-demo.gif" caption="Github Pull Request demo. [link](https://github.com/microsoft/vscode-pull-request-github)" >}}

The best thing I’ve seen to speed up the PR loop is to have PRs in the editor right away.

For this, I’ve been using VSCode’s [Github Pull Request](https://github.com/microsoft/vscode-pull-request-github) extension, but you can use anything that makes it quick to pull PRs, view changes, and view/make comments in your editor.

Github Pull Request lightly translates Github's PR web view into your editor with some nice extras. For example, when reviewing your own PRs, comments showing up inline in your code make it super fast to make changes across files. But that's just a nice-to-have. 

The part I want to highlight is the seemingly innocuous button which pulls down the PR's branch. 

You're reviewing someone's code in your editor, boom you see an issue: Just click the button and fix it in their branch. Your brain starts to just fix small issues rather then commenting out work for others to do. It's a simple action that has profound effects.

Of course, if it's a bigger fix it will still be worth it to leave a comment. You can just click on that line of code in the editor and leave a comment for the PR author. Likely, you can leave a higher quality comment because you can actually run the code and learn things about the outputs.

The editor PR experience really kicks the crap out of the web view experience. I do love the web view UI for small stuff, but its not great for deeper understanding of the code. 

You never actually run the code there, so how do you know if it works? When you click around object references, Github has made some cool strides there, but it has limitations that your editor doesn't have, like you can't really get into node_modules if it's not committed!

## 1 + 1 = 3 or Scaling To Teams
The speed at which PRs are getting reviewed is a hugely overlooked part of what slows down our feature delivery. Adding a PR tool to your editor is a solid step for speeding up the PR loop, but if you really want to see this **speed compound**, get your whole team on it. 

When teams do PRs in the editor, we are not only fixing each other’s code faster, but also understanding each others’ code, and thus our whole codebase, on a deeper level. Our team at [Formly](www.formly.ai) hugely benefits from Github PR.

## Wrap Up
Pulling PRs into the editor makes them **easier to view and touch**. 

This helps to review your own PRs, but more importantly, it makes it **easier to manipulate your teammate's PRs**.

With a foreign PR is in your editor, it should be easier to understand (i.e code execution, console.logs, click on variable references, editor linting, etc.) but also allow for quicker changes which results in **quicker code reviews** that are also of **higher quality**.

P.S It only adds 23ms startup time on my m1 mac.
{{< figure src="images/startup-time.png" >}}
