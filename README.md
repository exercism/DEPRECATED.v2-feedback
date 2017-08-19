**TL;DR:**
- The new site is up on [v2.exercism.io](https://v2.exercism.io).
- Download the prerelease version of the new CLI from [exercism/cli releases](https://github.com/exercism/cli/releases).
- This beta is for Exercism maintainers, contributors, and power users.
- We'd love to hear your gut reaction at [https://github.com/exercism/v2-feedback/issues/1](https://github.com/exercism/v2-feedback/issues/1).
- Please read the rest of this before providing other feedback in the [v2-feedback issues](https://github.com/exercism/v2-feedback/issues).

# Beta launch of the new Exercism website

We've re-imagined Exercism.

It's not that Exercism is _bad_ in its original form.
Quite the opposite.
It's so good, so helpful, and so enjoyable that it deserves to be a real product rather than a half-baked website with a bunch of exercises.

We've spent the past 9 months exploring the core concepts of what Exercism is, who it is for, and how we can design it to support people's learning in the best way possible.
In other words: we're turning it into a fully conceived product.
Most of this long process has been conceptual, and in the past few weeks we've taken everything that we've learned and turned it into wireframes, designs, and a working prototype.
The next step in getting this right is sharing the prototype with Exercism's maintainers, contributors, and power users so we can get feedback and figure out what needs to be done in order to launch this to the public.

**The goal of this beta launch is to ensure that the user experience we have designed is smooth and understandable, and to figure out if there are any major pieces that we are missing or have not considered.**

This document lays out

- what this prototype is and is not
- the plan for the beta testing period
- what we're looking for help with and feedback on
- our thinking around the criteria for a public launch

## Table of contents

- [About the prototype](#about-the-prototype)
  - [What does the prototype currently consist of?](#what-does-the-prototype-currently-consist-of)
    - [New branding](#new-branding)
    - [Redesigned language tracks](#redesigned-language-tracks)
    - [A new mentorship model](#a-new-mentorship-model)
    - [Discoverability of solutions](#discoverability-of-solutions)
    - [Privacy features](#privacy-features)
    - [Improved onboarding](#improved-onboarding)
    - [Granular notifications](#granular-notifications)
    - [Improved deploys](#improved-deploys)
    - [Redesigned command-line client](#redesigned-command-line-client)
  - [What does the prototype _not_ contain?](#what-does-the-prototype-not-contain)
  - [Beta testing plan](#beta-testing-plan)
    - [Who should get involved in the beta](#who-should-get-involved-in-the-beta)
    - [What needs to be tested](#what-needs-to-be-tested)
      - [The user experience](#the-user-experience)
      - [Accessibility](#accessibility)
      - [Browsers and devices](#browsers-and-devices)
    - [Where to submit feedback](#where-to-submit-feedback)
    - [Other contributions](#other-contributions)
      - [The language tracks](#the-language-tracks)
      - [The CLI](#the-cli)
      - [The interactive CLI installation guide](#the-interactive-cli-installation-guide)
      - [Copywriting](#copywriting)
      - [More copywriting](#more-copywriting)
    - [A caveat](#a-caveat)
  - [Help prepare the language tracks for launch](#help-prepare-the-language-tracks-for-launch)
  - [Criteria for public launch](#criteria-for-public-launch)

## About the prototype

### What does the prototype currently consist of?

Below we cover the core considerations of a number of the design elements, the main choices that we made, and the current status of each item (i.e. how "done" it is).

#### New branding

There are aspects of the old logo and branding that we like, but we found that it doesn't express the most important thing about Exercism: this is a friendly, welcoming place focused on the humans.

The horned "e" logo and the unofficial tagline "the devil is in the details" is problematic.
It focuses too hard on the "exorcism" part of the pun, rather than the "exercise" part of the pun.
The pink color scheme and the horns can be perceived as off-putting, aggressive, and unwelcoming.
The meaning of the idiom "the devil is in the details" is not obvious, especially if English is not your first language.
While the original intent of this was a playful hat tip to how deeply you can dig into a simple problem, how much you can learn from it, and how much people can find to say about it, the result is that it feels like an inside joke.
Inside jokes exclude people, which is the exact opposite of what we want.
Additionally, for people who are deeply religious in the Catholic tradition, this can sometimes come across as a disrespectful play on their beliefs.

Also, to some people it looks like an emotional support group for people who don't like Internet Explorer.
I'm sorry.
Now you can't unsee it.
I know.

We want to emphasize human connections and a supportive, friendly learning environment.

To this end we have designed a completely new logo, and a new design aesthetic.

##### Old logo
![](/img/v1-logo.png)

##### New logo
![](/img/v2-logo.png)

##### Status

We think we're pretty much done with the branding.
We're ~~happy with~~ ecstatic about the logo, pleased with the choices for color, fonts, and overall layout and design.
We love the aesthetic that we've achieved with the illustrations.

You'll notice on the home page that we have a drawing of a person.
If you reload the page you will see that the person changes.
This is a random selection, and we aim to continuously grow this collection.
There is a special type of delight that people feel when they see someone they identify with.
It's magical.

#### Redesigned language tracks

We have completely redesigned the experience around joining, participating in, and completing a language track.

We have done so very carefully with the goal of enticing people to try a track, and to help motivate people to work their way through it.

The most important consideration for us in redesigning the tracks has been to support people's learning.
We want to support their intrinsic motivation to progress through and complete the track.
We want to reduce unnecessary friction.
We are optimizing for the **right** friction, centered around wrestling with the language and exercises productively, rather than feeling intimidated by the process, the site, or the community.

As described in the [design document about progression and learning](https://github.com/exercism/docs/blob/master/about/conception/progression.md), we have restructured the exercises within the tracks to contain a small set of core exercises that must be completed in order to complete the track.
Each core exercise unlocks a number of optional exercises, which lets us continue to add exercises without making people feel like the goal post is constantly moving.

In order to enhance the playful and welcoming feel of the site, we've given each exercise its own icon.
Most of the icons come from [the Noun Project](https://thenounproject.com/), with some custom designed icons where we couldn't find something that fit.
We've also redesigned all the track icons to get a uniform look and feel across the site.
All the exercise and track icons live in the [website-icons](https://github.com/exercism/website-icons) repository.

Each person who joins a track gets a personal dashboard for that track, showing their progression through the core exercises.
It also shows them all of the optional exercises, letting people filter on topic and difficulty in order to find exercises they want to work on.

The maintainers of a track have a huge influence on the experience that a track provides.

A great track will be a comprehensive introduction to the basics of a programming language.
It will have a rich set of varied exercises that cover the bredth of both the language features themselves, as well as the standard library.
It will have a large number of optional exercises that explore parts of the language more in-depth.

It is our hope that the user experience on the site is so good that it fades into the background, creating a place where the work of the maintainers can shine.

There are two core audiences for the exercise portion of the language tracks.
They are:

* people who are learning to program for the first time
* programmers who want to ramp up quickly in a new language

We are able to have two core audiences rather than one, because they share a common goal: basic fluency in a programming language.
Exercism's sweet spot is bridging the awkward gap between "hello world" and productivity in the basics of a language.

How many exercises someone needs will vary from person to person and from language to language, based on people's existing background and skills.
The goal is to achieve basic fluency in the syntax, data structures, standard library, and idioms of a language.
There is no competitive aspect designed into the product, and we've put a lot of effort into making sure that people can work at their own pace, focusing on the parts of the language that they need the most and are most interested in.

Notice that we're not focusing on "artisans" as a core audience for the exercises themselves.
Artisans are typically already fluent in a language, use it professionally, and care deeply about about the finer details of the language.
We believe that artisans will be able to enjoy the exercises and get a lot out of them, however we are not catering to their needs directly within the track progression.
We are willing to design for them, but only to the extent that it doesn't detract from the two core audiences whose focus is basic fluency.

That said, we believe that Exercism has a lot to offer artisans, and they are part of our core "mentor" audience, described in more detail below.

##### Status

The core experience of progressing through a track may need some polish, but we believe that it is largely complete.
We have a lot of thoughts about how we want to extend it, but we don't want to do so until we actually have people using the product.
Doing more design work on this now would risk going down counter-productive rabbit holes.

In order to support maintainers in developing these richer, more comprehensive tracks, we will be developing a great deal of tooling for maintainers.
This should help maintainers discover both conceptual gaps, and jumps in difficullty that might cause people to get stuck.

#### A new mentorship model

Because learning can be such a vulnerable process, we decided after much deliberation to make the mentorship process private between the learner and their mentors.
There are some giant trade-offs inherent in this choice, between helping people feel safe and supported, scaling mentorship, and making solutions available for others to learn from. We will be addressing some aspects of the old model of communal feedback and learning with the new teams interface.

We have written in depth about the considerations we wrestled with and that led to this decision in the [design document about code review](https://github.com/exercism/docs/blob/master/about/conception/code-review.md).

We believe this redesigned mentorship will benefit both the learners and the mentors.
For learners, this will improve the quality of the feedback, and provide a safer space within which to receive it.

By opting in to be a mentor, an individual is opting in to receive meta feedback and—if we can find great coaches—coaching on their mentoring skills.
The skills that mentors will be practicing and improving are skills that are highly valued on software development teams.
Things like code review, communication skills, the ability to synthesize information, explain technical concepts, provide useful feedback, the difference between critique and criticism, a deeper understanding of architecture, best practices, the design of code, simplicity, naming things, etc.
These skills are among the skills that employers look for when choosing technical leads or managers for technical teams.

In order to reduce the risk of learners feeling like they're at the bottom of a dogpile, we will restrict the number of mentors that have access to a given solution.
We think that the optimal ratio of mentor to learner on a solution is probably about 3:1—however we don't think we need three times as many mentors as learners.
Most mentors will be able to give feedback on exercises much more quickly and efficiently than learners will be submitting code.
We will need to work out the ideal ratios once we have launched.

Once a student has completed an exercise, they can decide whether or not to make it available to the broader Exercism community. If someone decides to make the solution available, they can also decide whether or not to include it in their public showcase.

Even if you believe that you will not participate as a mentor when the site launches to the public, please try out the mentorship features during the beta period.

##### Status

The basics of the mentorship relationship is in place, along with a dashboard for mentors.
You can find this dashboard in the dropdown under your avatar in the top navigation.

During the beta testing period we are automatically opting all beta testers into being a mentor when they first create their account in the prototype.
In the final phase of beta testing we will turn this off so that we can test the actual user experience of not being a mentor, the calls to action to become one, and signing up.

We have a ton of work to do in order to develop resources for mentors.
Our goal is to provide mentors with the tools they need to provide high quality feedback quickly and effortlessly.
This will eventually involve automated code analysis, resources to point people to, and workflow tools within the application to remove friction and improve the ease with which can respond.

One of the tools that we will be repurposing to serve mentors rather than learners, is Rikki, the feedback bot.
For learners, the impersonal and inflexible nature of the bot can detract from the learning experience.
We believe that the learning process should be focusing on the human connections, and the bot fails at this—for obvious reasons.
For mentors, however, impersonal is fine.
Mentors need a quick list of pointers about what might be relevant feedback for a given solution, and are well-placed to make judegement calls about whether or not the issues detected by the bot are worth bringing up.

Before we can launch we will need to do a massive mentorship drive across all the tracks.

#### Discoverability of solutions

One of the key ways that people learn from others on the site is browsing existing solutions and looking at how other people have approached a problem.
The current site is quite painful to navigate.
We've built in basic browsing and filtering features into the new design.

##### Status

We will be improving this going forward, both by finding new things to filter on, as well as exploring other more sophisticated approaches to discoverability.
A possibility that we wish to explore is to use artificial intelligence to classify solutions so that we can show learners solutions that are different from their own.

#### Privacy features

**Aliases** People can choose on a track-by-track basis what avatar they want to use and what handle they want to go by.
This means that people can use their Exercism username publicly in some tracks while remaining private in others.
Logging in is now decoupled from GitHub, so the Exercism username may or may not be the same as their GitHub username.
If someone chooses to use a handle that is different from their username, then we will make it clear to mentors that this is an alias.

**Blocking** People can choose to not interact with certain others.
This goes for both learners who can opt out of certain mentors, and mentors who can choose to not work with certain learners.
There are a number of reasons why people might want to not interact with someone, and they do not all reflect poorly on the person in question.
We will however, be monitoring this data for outliers so that we can intervene if we are seeing behavior that is concerning.

**Selective publication of solutions** As mentioned above, people can choose whether or not to make their solutions available to the Exercism community, and also whether or not they wish to make specific exercises/solutions available in their public showcase.
Solutions submitted under an alias can not be added to a user's public showcase.
The solutions can still be made available via browsing to the general Exercism audience, however.

##### Status

A few details still need to be implemented, notably the blocking functionality and ability to change avatar per track (at the moment it shows a blank image).

While there is almost certainly more that can be done to help people feel safe, we believe that we've gotten the basics right.

#### Improved onboarding

Onboarding has been one of the very sore points in the existing site.
New programmers get stuck and confused.

One of the key improvements is an interactive guide to installing the client.
This will avoid showing people a wall of text, most of which is irrelevant to them.

We'll also be developing an onboarding email series that people get after they've joined the site.

##### Status

We believe that the onboarding is sketched out correctly, but there is work to be done to flesh out the details.

We have a working prototype for the interactive guide that walks people through installing the CLI, but it doesn't contain any of the actual workflows for any of the various platforms.

Most of the copy still needs to be written, and the email series has not yet been implemented.

#### Granular notifications

It's important that people can get notifications about the things they care about, while not adding unnecessary noise to their inbox.

We've added email notifications with granular settings so people can choose what to receive.

##### Status

This is done.
We will be adding more notifications as we discover the need for them.

Emails contain a link to change your preferences, which at the moment requires you to log in to make any changes.
We'll be fixing this before the public launch so that you can update your preferences without logging in.

#### Improved deploys

The old site has a truly horrendous deploy cycle, the result of which is that changes to language tracks can take a day (or several) to make it to the site. In the prototype, changes to track repositories get updated on the site every 5 minutes.

#### Redesigned command-line client

We're reworking the CLI to have a more uniform user interface, to allow us more control over the messaging, and to provide hooks for customization.

One thing that we've seen over and over again with people who are new to programming, is that they will copy/paste a series of commands, and they won't notice if any of them didn't run.
Often the last one will not run because there's a missing newline at the end of the final command.
At other times, one of the commands will fail, causing the whole chain to grind to a halt.
Beginners tend to not know how to tell if something didn't run.
They'll see some output and assume they're done.
They also don't have the experience necessary to troubleshoot even if they notice that something is wrong.

One of the most important things that we are working on in the new CLI is to make it so that you have a single command to run to get started.
We will then interactively ask for any information that we need in order to proceed.
It is very important to us to not annoy experienced users, however, so we are including additional commands, flags, and shortcuts for people who are comfortable on the command-line.

The old commands are a bit of a hodge podge, and we're removing some of them, renaming others, and even the ones that are named the same will have a different user interface.

The most important commands are:

**download (alias: d)**

Download an exercise along with its solution, if it exists.

```
exercism download hello-world
exercism download hello-world --track go
exercism download --uuid c5c398c3-003d-2f80-f6dc-f7fdaaec75a0a655bed
```

The uuid can be one of your own, or someone elses.

**submit (alias: s)**

Submit a solution to the site.

```
exercism submit
exercism submit hello-world
exercism submit path/to/hello-world
exercism submit file1 file2 ...
```

The submit command is becoming much more flexible with respect to how you can address it.
If called without any arguments, it will submit the current directory.
If called with the name of an exercise, it will find the exercise within your Exercism workspace and submit it.
If it finds multiple exercises by that name, it will help disambiguate.
You can still call it with a list of specific files as well.

Find the latest prerelease on the [exercism/cli releases page](https://github.com/exercism/cli/releases).

##### Status

There's still quite a lot to be done on the CLI.

The basic download and submit functions work, but not for all the intended use cases, and it's not very good at handling multiple tracks intelligently. For now, if something doesn't work, try specifying which track you mean with the `--track` flag.

You will need to run `configure` with `--token` and `--workspace` in order for the CLI to be functional.
It's likely to break pretty spectacularly if you don't.

The copy/messaging is all placeholder copy, and much of it is missing.

It is also entirely undocumented.

### What does the prototype _not_ contain?

- team features (but it will)
- contributing documentation (and it won't)

Teams are the most important thing that the prototype is missing.

The new design is highly focused around the learner's personal experience.
In order to support a better experience both for teams and for individuals, we are splitting teams out into a completely separate user experience.
The new teams site is currently being wireframed, designed, and prototyped, and we hope to have something to show in the next couple of weeks.

The old site has contributing hints and documentation embedded alongside the main site.
We've also not included any contributing documentation in the new site, and are planning on providing this in a completely separate location.

Other than teams and contributing docs, we've also removed a number of small, random features that did not fit in with the overall design and vision for the product.

## Beta testing plan

We're opening this up now, but we don't know yet how long it will take before we are ready to launch to the public.

**Throughout the beta test we will periodically delete the database** both in order to make it easier to test onboarding, as well as to test the data import process from the old site.
Please be careful to keep backups of any solutions that you want to keep around, or to submit them to the live site.

### Who should get involved in the beta

We want help from the people who feel invested in Exercism already, and who have a good idea of what it is and what we're trying to achieve.
We have a lot of polishing and copywriting to do before we think that it will make sense to someone unfamiliar with the project.

Therefore this beta is primarily for people who are already involved with Exercism, whether as a maintainer, a contributor, or someone who uses the website for their own practice, learning, or enjoyment.

### What needs to be tested

#### The user experience

We need people to test all aspects of the user experience, both as a learner and as a mentor.

It's crucial that the experience is good whether you're using Exercism to learn a single language, or using it to learn many languages sequentially, or many languages at the same time.

The user interface of the command-line client has been almost entirely redone.
We need to know if it breaks in spectacular or subtle ways.
The messaging in the client is currently placeholder copy, so it's probably best not to pay too close attention to that.

**NOTE:** the alpha release of the new exercism command-line client will be named `nextercism` in order to allow people to continue to use the old site while testing the new one.

#### Accessibility

We've not done any comprehensive testing in terms of assistive technologies or other accessibility concerns.
If you have expertise in this area then we dearly need your help.

#### Browsers and devices

We've not done any comprehensive browser testing, as this is much easier to crowdsource.
Please try this out in multiple browsers and on multiple devices and report anything that is broken or weird.

We've not yet done any significant mobile-specific tweaks, as we believe that the main user experience will be on larger devices.
If we turn out to be wrong, we should be able to adjust the site for mobile without difficulty, as the design and front-end implementation is quite straight-forward.

### Where to submit feedback

We have created this repository specifically to collect feedback on the prototype.
You can see feedback from others and post your own in the [issues](https://github.com/exercism/v2-feedback/issues).

We're primarily looking for feedback on:

- major concerns—around user experience, usability, accessibility, or or inclusivity
- the new mentoring experience
- rough spots or things that are confusing
- anything that breaks in the new CLI

If there is a particular use case that you think is essential and that you don't see here, then please raise it as a concern.
We might have deliberately cut it due to constraints and trade-offs, but if there's something we haven't considered, we want to know about it.

We are not looking for feedback on basic aesthetics (colors, branding, fonts, design nitpicks) aside from usability, accessibility, or inclusivity concerns.

We will eventually need feedback on the website copy, but not yet.
We haven't gotten to actually writing, so for now it's a whole lot of high level ideas, lorem ipsum, bullet points, and typos.
Please ignore that for now.

### Other contributions

#### The language tracks

If you have time to contribute beyond testing and feedback, then we'd love _love_ **LOVE** :heart: your [help with the language tracks](#help-prepare-the-language-tracks-for-launch).

#### The CLI

We're rewriting the command-line client, and adding some tooling to help with track configuration.
If Go is your jam, then we have all sorts of things you can help out, primarily in the [exercism/cli](https://github.com/exercism/cli) and [exercism/configlet](https://exercism/configlet) code bases.
Watch the repos, check out the issues, and help out with pull request reviews.

#### The interactive CLI installation guide

We need help figuring out all the flows and edge cases for the interactive CLI-installation guide, a.k.a. the "Walkthrough".
The guide lives in a JSON file in the "walkthrough" directory of the [exercism/website-copy](https://github.com/exercism/website-copy/tree/master/walkthrough) repository.
There's an open issue for it here: https://github.com/exercism/discussions/issues/170

#### Copywriting

We need to put in place the high level bullet-points of what ideas we want to communicate on all the various pages.
Once that is done, we would love help with writing site copy, polishing, and copyediting.
The site copy lives in a separate repository at [exercism/website-copy](https://github.com/exercism/website-copy).

#### More copywriting

We want each language track to have an inviting and enticing landing page.

This means we need help with two bits of copywriting, which we're calling the "blurb" and the "about". What we're aiming for is friendly and inviting. Imagine that you are sitting in a park, enthusiastically explaining to a friend why they should try out the language. So... not Wikipedia.

Both of these pieces of content live in the respective language track repositories.

- **Blurb:** Lives in `config.json`, should be about 30-ish words long.
- **About:** Lives in `docs/ABOUT.md`, should be 2-3 paragraphs or so.

To illustrate the tone that we're going for, take a look at [the Go track](https://v2.exercism.io/tracks/go) and [the R track](https://v2.exercism.io/tracks/r). We really like what they've got.

### A caveat

We're publishing the new codebase under the same license as the existing site but we're not looking for contributions to the site codebase at the moment.
We know there's a lot of work to be done, but we've found that accepting design and usability contributions typically has a very high overhead that we don't have the bandwidth to deal with.

## Help prepare the language tracks for launch

Getting the tracks ready is crucial.
We have a number of active tracks that do not have dedicated maintainers, and without your help we might not be able to include these on the new site.

The two most important things are:

- add or edit introductory copy
- rework exercises for the new site
  - choose core exercises
  - decide which exercises get unlocked by a core exercise
  - add topics to exercise metadata
  - update difficulty ratings for exercises

For a track to be included in the new site, it must have:

- introductory copy
- exercise metadata (topics, difficulties)
- a core exercise progression consisting of 8-20 exercises
- 2-3 optional introductory exercises (core: false, unlocked by: false)
- committed mentors

We would also really love it if each core exercise unlocks at least one optional exercise.

We have a lot of work to do around recruiting mentors.
Our goal is to have enough mentors on each track to handle the current active load of participants, plus 10%.
We have not yet worked out exactly what that means in terms of raw numbers.
If you want to see stats from the current exercism.io tracks [we've got them here](https://github.com/exercism/v2-feedback/tree/master/mentors).

It is still unclear what we should do with a track that doesn't have enough mentors.
We have some ideas, but we're going to need to dig into this properly to come up with a plan that sets the track up for success, even if it currently doesn't have the resources it needs.

We will be putting together a detailed plan for recruiting mentors, which we will submit for comments and feedback soon.

If you have some extra cycles, you could also help out by adopting an unmaintained track.
These are typically low-activity repositories with a lot of low-hanging fruit.
The most important thing is to provide a response when people contribute.
Triaging existing issues and helping land open pull requests would also be incredibly valuable.
For a good guess at which tracks are unmaintained, take a look at the [open pull requests, ordered oldest to newest](https://github.com/search?o=asc&q=org%3Aexercism+is%3Apr+is%3Aopen&s=created&type=Issues&utf8=%E2%9C%93).
If you figure out what needs to be done in an unmaintained track and are willing to do it, [email kytrinyx](mailto:katrina.owen@gmail.com) to receive commit powers.

## Criteria for public launch

We have three large, known blockers:

- **Teams** - we can't launch until we have completed the separate user interface for teams.
- **Mentors** - we need enough mentors on each track to ensure that every participant gets a response.
- **Migration** - we need to write the migration that will port all the historical data into the new site.

If we don't discover any additional blockers, then we could be ready to launch in 2-4 weeks.
