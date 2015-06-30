---
title: The State of State in the Browser
date: '2015-06-29'
description:
tags: [state,technology,javascript]
---

I had the privilege of attending the yearly Edge conference this past weekend.  It was one of the best conferences I have ever attended.  The topics were well chosen and the format was geared towards discussion instead of lectures.

One of the topics I felt I had a strong stake in was Front End Data.  There was a panel discussion with audience interaction, and then breakout session for folks interested in talking more directly about the subject.  A goal of each breakout session was to have actions for the market (mostly browser vendors and spec writers), to guide future implementation.

I singled out Front End Data for this post which I will elaborate on here, since the vision for 'Front End Data' seems narrow and based on limited ambition.  Possibly due to reactionary growth and shortsightedness.  I will point out examples that display this and propose a basic solution.

First some background...

##What is 'Front End Data'?
This is the single most important question we need to be asking in the web development community.  Because to break from the reactionary and parasitic path of state always being kept in the DOM, the solutions have not lived up to the task.  Front End Data is any state that is kept in the client, either persistent or transient.  Browser state can be kept in a variety of either too-basic or too-specific implementations.  In fact, the entire availability of state storage in the browser is based on new custom implementations of the concept, and none of the historically valid and well suited ways that computing has taught us over the years.  Browser state has always been ill conceived because of the false assumption that the server will eventually be there to keep our data.

##What is Software?
This is not a question to be taken for granted.  Software is a tool for the manipulation of state.  State being memory or data, and manipulation being a transformation from one form to another.  The state could be captured through an interface, stored on a disk or in memory, or visually displayed through a GUI.  State can come from a server or other external environment (such as sensors), or be fabricated entirely from procedural code.  The software is the glue that takes the state through these many paths.  The point is that software without state is like pipes without water.

This is a basic question we need to answer up-front, because in the context of a web page or web app, software has grown not in a traditional sense but rather as the parasite of a content delivery platform (the WWW).  Javascript was created for the most basic of tasks for interacting with the DOM.  The mindset of how to keep browser state has not kept up with the pace of web application development, which is now a mature field and has brilliant minds and innovations pushing it forward.

##What is missing?
Imagine, for a moment, you are about to write some software.  You want to keep data for your software, and you want that data to live on for a while, since that is the purpose of the software.  You don't want to rely on a 3rd party to keep it for you (like a server or peer), and you want it to be reasonably fast.  These are not outrageous demands.

You are now only given three options to store your state: (1) A limited size place for data that was originally meant for state communication over a network (a cookie), (2) a basic synchronous key value store without any obvious way to organize hierarchy or relationships (localStorage), or (3) IndexedDB.  What is IndexedDB?
>a database of records holding simple values and hierarchical objects. Each record consists of a key and some value. Moreover, the database maintains indexes over records it stores. An application developer directly uses an API to locate records either by their key or by using an index. A query language can be layered on this API. An indexed database can be implemented using a persistent B-tree data structure.

I challenge you to write any meaningful state software that is not predicated on the above three options.  Also, while it is not obvious up front, for the options above the transmission of data is all-or-nothing.  Meaning that to write any state, you must give the entirety of the state over to the system in the form of a value or record.  The transaction operation may be asyncronous once the API has the data, but you still need to give it the whole thing all at once.

Why does that matter?  Because for anyone who wants to write software that processes state efficiently, we don't have the equivalent of stdin/stdout or stream in a browser state context.  This is a bigger deal than it sounds, because while basic uses for state are mostly covered, anything sufficiently complex is unaddressed.

As a good example I will single out Lucene, because I have a professional stake in making sure people can find things easily [2].  There is a great post by the folks at Parse.ly on how Lucene works [3], and there is a good section on how state is covered.  The most important points being:

>We store all the document values in a simple format on-disk. Basically, in flat files.

...

>when you read a 100-megabyte file twice, once after the other, the second access will be quicker, because the file blocks come directly from the page cache in memory and do not have to be read from the hard disk again.

I challenge anyone to write Lucene in a way that works well in a browser context.  I also challenge anyone to write any other reasonably complicated data storage and query device beyond the available KVM/NoSQL with an optional B-Tree index.

##File API
So what about File API?!  I purposefully left off File API above, because while it currently is on track to support reading of files, the File *Writer* API specification is dead[4].  Chrome supports a version that is being used for chrome apps [5], but wider support is not going to happen without a specification.  Additionally, File API is a difficult sell, because Web Apps should be conceptually removed from the file system that is in direct control of the user.  Many mobile devices do not implement the concept of a traditional file system, and web app state should be kept as a construct of the isolated browser sandbox.

Let's ask some more important questions:

- Why does the browser need to encapsulate its own file system?
- Are you really going to use files as big as 100MB in a browser? 
- What kind of applications do you think you will need to support?

##Enter WebAssembly
Not having a well designed layer for state persistence negates all the benefits of having a mature software stack.

WebAssembly is just around the corner.  The answer that vendors have agreed upon to run mature software in a browser, with support for a variety of languages beyond Javascript. 

We need a sane way to keep application state before WebAssembly hits the ecosystem.  For now, I propose picking up File API where it was left off, but alter it to target an encapsulated file-system.  Isn't that hard?  Yes.  Is it worth it?  Definitely.

-

####References
- [1] http://www.w3.org/TR/IndexedDB/#abstract
- [2] I'm into search technology at Wolters Kluwer.
- [3] http://blog.parsely.com/post/1691/lucene/
- [4] http://www.w3.org/TR/file-writer-api/
- [5] https://groups.google.com/a/chromium.org/forum/#!topic/chromium-apps/k39Lb1VYWEI
