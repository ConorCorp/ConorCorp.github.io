---
title: "Making A Language Learning Buddy w/ ChatGPT"
date: 2023-01-29
draft: false
categories: [coding]
tags: [chatgpt, ai, language learning]
cover:
  image: "images/her.jpg"
  alt: "Her Movie.png"
  caption: "The Future is full of Spaghetti"
  relative: true
---

I'm at a quietly frustrating point with my German language learning.
\
\
It's an uncomfortable expanse within A1-A2 levels where I pick up a myriad of words in a conversation, but I'm still not confident enough to say much. The usual solution here is one of brute force. Go make a fool of yourself, often and brazenly, in the wild. Talk to people around you, have awkward-as-hell conversations.
\
\
But, how can I cash in on the ChatGPT hype that way?
\
\
I'm **cautiously** optimistic for ChatGPT. It really is amazing, the text responses it can generate are sometimes extremely nuanced and correct. But it's also is not a silver bullet. Those touting it as the solution for everything may well end up relying on fancy Markov Chains and cause unimaginable damage.
\
\
But for a semi-trivial thing like a basic language learning buddy, ChatGPT seems like an amazing solution! So here's the results of my experiment.

## Chat 1

### Prompt

```plaintext
Act like my friend. Only speak in German. Let's have a conversation.
```

### Chat

{{< figure src="images/chat-1.png" width="600px" caption="Pretty good, eh?" >}}

This goes super well. We have a conversation about spaghetti. It is very "lifelike" and it feels like good practice. The issue that happens in real life is easy to resolve here. When it says a few words that would have been showstoppers for me in a real conversation ("großartig", "bevorzugst", etc.), I could just head over to Google Translate to look them up. But wait, can it also......

## Chat 2

### Prompt

```plaintext
Act like my friend, and let's have a conversation.
Reply to me in German, but always follow your reply,
with the English translation of the previous message.
```

### Chat

{{< figure src="images/chat-2.png" width="600px" caption="Even better." >}}

So now we don't have to translate! I tested some other things here to:

- I misspelled "Mir geht's gut" as "Mir get's gut" and it still understood me. But it didn't correct me 😕
- I said "I'd like to talk about food" in English and it still replied in German. Good.

&nbsp;  
But can we make it fix my mistakes?

## Chat 3

### Prompt

```plaintext
Act like my friend, and let's have a conversation.
Reply to me in German, but always follow your reply,
with the English translation of the previous message.
Please respond to each sentence that I write,
and tell me if my grammar and vocabulary are correct,
and there are no spelling mistakes.
```

### Chat

{{< figure src="images/chat-3.png" width="600px" caption="Nice.....wait?" >}}

At first, I'm blown away. It's doing 3 things.

1. Replying coherently to me.
2. Translating it's reply.
3. Rating my reply.

&nbsp;  
But on `3` is where the sneaky danger of ChatGpt pops up. The first answer/reply make sense, putting me at ease. But lurking in the silent shadows of my second response, "Méine lieblingsessen sind Spaghetti", I make a typo and put an accented é on 'Meine'. Although ChatGPT understands, it says my grammar and vocab were correct. **It is just regurgitating what it thought I wanted to see, without actually correcting anything.** This 100% shook my confidence in having it correct my responses.
\
\
Tl;Dr: I don't trust ChatGpt to correct me (with this prompt), but its fine to understand me and have some banter.

## In Short

Try ChatGPT as a language buddy! It's free for now and will likely be coherent in having basic conversations (which is exactly what I need it for). If it's a bit wrong, no biggie, I mainly need the confidence to start speaking and can fix small errors in real life later.
\
\
Note: ChatGPT has a slightly older German model from October 2021, so I can't wait to see how it improves.
\
\
I'm going to keep trying to make my ChatGPT language buddy better, if that interests you, you can keep updated by [email](https://github.us5.list-manage.com/subscribe?u=be2b39c77e47598d278e74e4d&id=af0c4dfa0c) or [twitter](https://twitter.com/dogeeseseegucci).
