---
title: Theories on Artificial Expression
date: '2013-08-04'
description:
tags: [art,technology]
---

###AE and AI

It is hard to write a program that invents original art.  Two of the main reasons that software cannot create original expressive art are lack of context, and lack of experience.

Software lacks the ability to derive a human-like context from its surroundings.  Some trivial examples are not knowing whether a flower is beautiful, or whether satire is funny.  Software also does not know how to learn to understand this context, it cannot experience its surroundings in a similar fashion to that of the observer, and therefore cannot relate to the subject nor connect with the observer in any meaningful way.

Artificial Expression draws a parallel to Artificial Intelligence, in that an artificially expressive program will display sentience relating to creating original subjective aesthetics.  I explore the ideas behind these complexities, as well as techniques in use today to generate art, and set a standard to use in deciding whether a work is an artificial expression.

### Deriving Meaning from an Image

Some impressive strides have been made recently in getting software to understand the stuff we throw at it.  Machines were originally built to process numbers, and then text, and then visual and audio media, in that order.  This evolutionary order makes sense because numbers are represented as on/off switches, text is one dimensional and can be represented numerically, and sound and image processing did not come about until more complex algorithms, digital screens and cameras, and digital speakers and microphones were invented.  Machines and programs with the ability to not only operate as complex input/output devices, but to computationally derive meaning, is still in the very early scientific stages of discovery.

It is trivial to make a program to parse a sentence into words and figure out what the nouns are.  Converting words to their numeric representation and looking them up in a table/dictionary is a fundamental aspect of computing and widely available.  People have long since done the work to classify parts of speech and keep them in an easy-to-find list for a computer to use effectively and efficiently.  However, parsing a picture and trying to find the nouns is much more complicated.  There is no standard definition of what a fox looks like, and cannot simply be looked up in a table.  An entire field, known as cognitive science, deals with such complexities.  See the two examples below for a clearer explanation.

<table>
	<tr>
		<td style="vertical-align:middle; width:50%;padding:10px; border:1px solid #ccc; text-align:center;"><em>The quick brown fox jumps<br />over the lazy dog</em></td>
		<td style="vertical-align:top; width:50%;padding:10px; border:1px solid #ccc;">Write a program to derive:
			<ul>
			<li>colors: brown (easy)</li>
			<li>nouns: fox,dog (easy)</li>
			<li>verbs: jump (easy)</li>
			<li>adjectives: quick,lazy (easy)</li>
			</ul>
		</td>
	</tr>
	<tr>
		<td style="vertical-align:top; width:50%;padding:10px; border:1px solid #ccc; text-align:center;"><img src="{{urls.media}}/foxes.jpg" alt="Lithograph of two Sahara Foxes (Fennecs)" title="The True Fennec (Canis zerda)" /><br />Source: ayacata7 on Flickr<sup><a href="#cite1">[1]</a></sup></td>
		<td style="vertical-align:top; width:50%;padding:10px; border:1px solid #ccc;padding-top:20px;">Write a program to derive:
			<ul>
			<li>colors: orange,brown,grey (easy)</li>
			<li>nouns: foxes,grass,rocks (hard)</li>
			<li>verbs: stand,hide (very hard)</li>
			<li>adjectives: alert,cute (very hard)</li>
			</ul>
		</td>
	</tr>
</table>

The differences in complexity are clear, and the subjective nature of the verbs and adjectives derived from the lithograph is obvious.  Not all people find foxes to be cute, and is the fox on the right hiding?  Colors are adjectives, but I noted them separately to show that these are purely representable numerically, and therefore easy for software to parse.

###A Thousand Words

If I ask a person to "draw a cute fox", that might be enough information the person needs to draw a fox that most people would consider cute (artistic talent notwithstanding).  This is due to several factors, including but not limited to our experience with the natural world, and our perception of contextual emotion.  "Cute" is loaded with a vast history of experience, not only just a life's worth, but generations of evolutionary instinct that allow us to subconsciously tell the difference between a cute fox and a ferocious fox.

The cliche "A picture is worth a thousand words" is very apt when it comes to artificially expressing a textual description as art.  To ask software to draw a cute fox is an insurmountable request.  We would first need to somehow grant the software with not only the corpus of all of human experience and instinct related to foxes, but also the anatomy of a fox and its context in times of different emotions.  Shortcuts may be taken, as most people capable of drawing a cute fox do not have a complete understanding of the fox anatomy, but they still know that visible teeth probably won't fit in the picture.

Monumentally, that task is being worked on by very smart people.  Since people enjoy photographing and creating and describing things so much, we can use shortcuts to symantically derive meaning from images paired with captions.  See google image search <sup><a href="#cite2">[2]</a></sup><sup><a href="#cite3">[3]</a></sup>.  Indeed, as programs become better at deriving contextual meaning from language, all the existing treatise on imagery will be automatically inheritable knowledge to the same programs, even if they are merely referenced and not parsed directly.  A program capable of accurately comprehending the snippet *"The following is a picture of a very cute fox &lt;some picture&gt;"*, without delving into the actual content of *&lt;some picture&gt;*, can still make the appropriate association for reference.

###Patterns

Some key aspects of recognising original and pleasing artwork involve pattern recognition and memory association.

People are very creative, and are very good at finding patterns.  Software is not.  A programmer must specifically dictate the patterns software should find in a given text or image.  One of my university professors, Paliath Narendran, wrote a proof<sup><a href="#cite4">[4]</a></sup> that finding arbitrary patterns in sets of numbers is NP-Complete (Mostly meaning it is impossible to solve using known programming techniques).

Find the pattern in 2, 4, 8, 16, 32, 64 ... (easy).  Find the pattern in 1, 0, 2, -1, 3, -2, 4, -3, 5 ... (medium).  Find the pattern in 2, 3, 0, 1, 6, 7, 4, 5, 10 ... (hard<sup><a href="#cite5">[5]</a></sup>).  Generating complexity is easy, compared to sorting through it.  Cellular Automata is an excellent example of this.  Simple rules can unleash massive complexity.  To take a slice of time out of a cellular automata and matching it to its parameters is no simple task.

<canvas id="patternxor" style="width:700px; height:250px;"></canvas>

<em>Math.sin(x^y)*Math.cos(x&y)</em>

<canvas id="patternand" style="width:700px; height:250px;"></canvas>

<em>Math.sin(x^y)*Math.tan(x|y)</em>

<canvas id="patterntan" style="width:700px; height:250px;"></canvas>

<em>Math.tan(x^y)*Math.cos(x&y)</em>

<script type="text/javascript" src="{{urls.media}}/javascripts/ae-patterns.js"></script>

The complexities generated by a set of simple rules can quickly grow into seemingly pure abstraction.  A hallmark of expression is to show this complexity, yet still relate to the subject.  If I draw a portrait of a fox, the entropy generated from my amature pencil strokes may deviate my result significantly from the subject, but another person will still be able to look at the work and say "Oh, a fox".

###Bias and Randomness

Think of a random number between one and ten.  Is it really random?  Probably not.  Sorry to tell you, but you are probably not very good at chosing purely random numbers, because (no offense) you are biased and therefore predictable when it comes to picking numbers.  For example, your favorite number might be seven, and maybe you won't choose seven because you subconsiously don't consider it random enough, and that is bias.

But now, instead of thinking of a random number, flail your arms and wrists around while keeping them loose.  You've just created a lot of entropy, even if your motions might be biased.  If we could somehow measure the velocity and direction of all the microscopic particles of dust you just moved around in the air, they would meet the standards of randomness.

It is impossible to programatically generate random numbers without using input from an external environment.  Since machines are deterministic, they must rely on external factors to generate randomness.  Did you know that the way you type and the way you move your mouse cursor helps your computer generate random numbers?  There is also a website dedicated to serving guaranteed random numbers by grabbing entropy from atmospheric noise<sup><a href="#cite6">[6]</a></sup>.

<img style="border:1px solid #333;" src="http://www.binarymax.com/brownian_2.gif" alt="A generated work of lines that used messages on twitter as entropy to create random images" title="Twitter Brownian Motion" /><br />*"tRand" - Brownian Motion based on Twitter messages - &copy; 2010 Max Irwin*

Another thing that generates randomness is when lots of people send trillions of 140 byte messages to broadcast their thoughts to each other and the world.  Understanding true randomness is a precursor to Artificial Expression, because every input based on real-world experience given to a program will be random (even if it may follow a trend).  To understand society and comment on it through art, vast swaths of randomness pass through the artist and are filtered, associated, and organised into a singular subjective expression.

Artists thrive on entropy, brush strokes of paint are not calculated and perfected to the molecule.  Colors are mixed and remixed without precise intrumental measurements, and paint is layered emotionally and without dependency on external calculations or instruments.  By the time the subject passes through the eyes of the artist and is slowly laid to a canvas, the representation is unique and original.  Unless a projector<sup><a href="#cite7">[7]</a></sup> is involved, or the artist has some superhuman ability, the work will certainly deviate from the subject in form and substance.  A talented artist shapes the subject to match the expressive goal, rather than simply making a verbatim copy.

###Generating Simple Artistic Forms

My first use of computers, in 1985 at Harris Hill Elementary school, was for generating art.  I used the Logo programming language, and naively generated some interesting forms.  Indeed, I still have a dot-matrix printout of one of my first generated works.  I was seven years old, and I gave it a cool tech sounding title:

<img style="border:1px solid #333;" src="{{urls.media}}/CPU_1985_small.jpg" alt="A Logo Generated abstract, greyscale dot-matrix printout" title="C.P.U." /><br />*"C.P.U." - dotmatrix print - &copy; 1985 Max Irwin*

Generative Art<sup><a href="#cite8">[8]</a></sup> is as popular as ever.  Myself<sup><a href="#cite9">[9]</a></sup> and countless artists<sup><a href="#cite10">[10]</a></sup> are creating amazing works today, many available to see on the internet, and many interactive.  Traditionally shown in galleries through prints and media installations, the explosion of interactive generative art through the web happened mostly via Java Applets in the 90's, then Flash in the early to late 2000's, and now primarily through JavaScript via Canvas, WebGL, and SVG.  Creating a work of Generative Art today is as easy as it was for me when I was only seven, and now it can be instantaneously shared with the entire world.  Just as a child with paints and paper can create a painting, so can a child produce generative art with a computer.

I focus on this distinction, that Generative Art and Artificial Expression have similarities, but are fundamentally different.  While Generative Art, even the interactive kind, is a revelation, it does not nearly approach the complexity or necessary ingenuity required for Artificial Expression.  The reasoning here is that a great deal of Generative Art is abstract and, lacking subject matter, is not prone to the pitfalls of representation of a subject in an original form.  Wikipedia cites *"Ten Questions Concerning Generative Computer Art"* <sup><a href="#cite11">[11]</a></sup>, but a formal distinction must be made between generative art and artificial expression.  Indeed, spewing out random pieces of poetic looking rhyming pentameter is not considered artificial intelligence, and algorithmic abstract shapes should not be considered artificial expression.

###Recognising Artificial Expression

For Artificial Intelligence, the Turing Test is noted as a primary milestone for computational linguistics.  Once a person is able to have a meaningful conversation with a program, and not be able to distinguish its software-companion's dialog from that of a fellow human, we will have reached the first stage of a breakthrough in AI. 

Comparitively, when a program is able to experience its environment contextually, and produce a purely original non-abstract thought-provoking artwork, indistinguishable from that of an amateur artist, we will have reached the first stage of a breakthrough in Artificial Expression.  I propose a new type of test, called the *Cute Fox Test*, that when passed, meets the following constraints:

The work MUST:

* Be based on a subject or subjects

* Be aesthetically pleasing

* Be purely original

The work MUST NOT:

* Be bound to a specific style

* Be predictable or reproducible given a set of starting parameters

* Be a filtered or transformed version of another original

These constraints, when met, should reasonably signal that a program shows artificial expressive merit.

###A Path to Realisation

While I have no formal proof, I postulate that a program posessing the properties of Artificial Expression is NP-Complete. 

Therefore, current methods that yield Generative Art is a dead end.  No amount of hand-coded filters, remixers, or cellular automata can achieve the sentience necessary for AE to become a reality.  Some works of Genetic Programming and Machine Learning pass the "MUST" tests, but all fail the "MUST NOT" tests.

AI has entire formalized scientific fields, including cognitive science and computational linguistics, devoted to unravelling the Natural Language Processing mystery.  AE is in need of such a field or fields, where dedicated studies by acedemia can be made to devise plans and experiments to further the prerequisite knowledge needed and push for a breakthrough.

###Why?

Without foraging too deep into philosophy, expression is needed for any artificial sentience to relate on an emotional level with humanity.  Emotionless intelligent machines that artificially come to the conclusion that earth would be more efficient without humans getting in the way is the stuff of nightmare science fiction, but cannot be ignored or disregarded as as an impossibility.  It is most certainly a possibility, even if unlikely.  Artificially expressive intelligence may recognise the necessity of organic life and beauty through an emotional connection with its creators.  Indeed, science may give us knowledge, but art gives us purpose.

<hr border="0" thickness="0">

<a name="cite1"></a>
[1] <a href="http://www.flickr.com/photos/odisea2008/5792712409/sizes/o/in/photolist-9PTazT-9PW2LS-9PTarv-7RQxGx-9PTacT-9PTaxi-9PTaS2-9PW3bd-9PTaLa-9PW32h-49FA62-6y3vdr-6y3t14-7bVJ1j-7gMwA9-7bVQ8G-9PW35u-9PTam8-9PTahr-r4gbi-r4gas-2CQsca-9PTaXF-9LBtV2-4VbnfN-7BQFWc-7bBPhG-7bBHay-9NFu2f-bxwefA-9NFpHu-5V5iiW-5V5i9Q-Ng49m-Ngaev-Ng49A-Ng49y-Ng49C-NgaeB-NgaeM-bsLC3C-Ngaf8-2CQscv-4W4y7w-4yY9Mi-9NEKvf-6LyFri-9NCE48-8fN7et-7XMjvn-3f9aki/" target="_blank">Source: ayacata7 on Flickr</a>

<a name="cite2"></a>
[2] <a href="https://encrypted.google.com/search?tbm=isch&q=cute%20fox&tbs=imgo:1&biw=1855&bih=955&sei=ijP-UYawEYXBhAeP2oC4BA&pws=0" target="_blank">Cute fox - google image search ^</a>

<a name="cite3"></a>
[3] <a href="https://encrypted.google.com/search?tbm=isch&q=angry%20fox&tbs=imgo:1&biw=1855&bih=955&sei=5jP-UaHLN4yThgeJi4GACQ&pws=0" target="_blank">Angry fox - google image search ^</a>

<a name="cite4"></a>
[4] Paliath Narendran, *Unification and Matching modulo Nilpotence* <a href="http://www.cs.albany.edu/~dran/my_research/papers/cade96.ps" target="_blank">PDF</a>

<a name="cite5"></a>
[5] The next number is 11.  <em><strong>f</strong>(i,j) =&gt; (i^j*2)</em>

<a name="cite6"></a>
[6] <a href="http://random.org/" target="_blank">RANDOM.ORG ^</a>

<a name="cite7"></a>
[7] <a href="https://en.wikipedia.org/wiki/File:Camera_Obscura_box18thCentury.jpg" target="_blank">Camera Obscura ^ </a>

<a name="cite8"></a>
[8] <a href="https://en.wikipedia.org/wiki/Generative_art" target="_blank">Wikipedia - Generative Art ^ </a>

<a name="cite9"></a>
[9] <a href="http://binarymax.com/" target="_blank">binarymax ^</a>

<a name="cite10"></a>
[10] <a href="http://www.generatorx.no/" target="_blank">Generator.x ^</a>

<a name="cite11"></a>
[11] <a href="http://diotima.infotech.monash.edu.au/~jonmc/sa/news/ten-questions-concerning-generative-computer-art/" target="_blank">Ten Questions Concerning Generative Computer Art ^</a>
