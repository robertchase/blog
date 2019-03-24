---
title: "On Software Project Estimation"
date: 2016-08-01T12:00:00Z
draft: false
---

# Repetition

There is a quote going around that says: “the definition of insanity is doing the same thing repeatedly, while expecting a different result”.
Insanity is, of course, more complicated than this, describing a wide variety of maladies and manners, which might occasionally correspond with repetitive behavior.
“Doing the same thing repeatedly, while expecting a different result” sounds much more like a mis-attribution of causation.
In other words, the actor is failing to learn from the outcomes of repeated actions, and continuing to be wrong about simple, observable, cause and effect.
This is not insanity, but stupidity.

# Deadlines and Features

For all kinds of reasons, assigning a deadline *and* a set of features to a mildly complex software project almost never works.
You can set a deadline and hope for some features, or you can define some features and wait for them to be completed.
But you can’t have both.
You can ask for both, and you can “expect a different result”&mdash;but that’s pretty stupid.
*See previous paragraph*.

Is all hope of estimation lost?
Of course not!
Estimation must be seen as just that: estimation.
Estimation assumes uncertainty, and the uncertainty is usually highest at the earliest stages of the process, which is, unfortunately, when we would like to assign a delivery date.
When we make an initial estimation, we suspect&mdash;perhaps secretly&mdash;that we are wildly wrong, and will be less wrong as we proceed with work.

Here, it is important to consider the distribution of estimation error: actual time taken will most often be longer, not shorter, than the estimation.
(This assumes most errors under-estimate complexity, as opposed to the reverse).
This is because errors are cumulative in their effect, each error causing subsequent work to be delayed.
It doesn’t make sense to say “one quarter, plus or minus a month”;
it makes more sense to say “one quarter, plus a quarter, minus a month”.
The latter is more true to the distribution of software project estimation error.

*The distribution is skewed right*.

Once an estimation is established, then it is pointless to expect to improve upon the estimation by adding extra hours and resources,
because you are not suffering from a lack of labor or capital, but from a lack of certainty.
*Manage the uncertainty*!
The first date on the calendar should not be “delivery date”, but “re-estimation date”.
The work prior to the re-estimation should focus on high risk items, so that the a new estimation is actually more certain that its predecessor.
This kind of honing should be repeated as necessary.

# Suggestions

Software estimation is one of those areas where organizations of smart people end up luring themselves into collective ineptitude.
And then repeating it.
Instead of asking ourselves how we can become better at choosing and reaching delivery dates,
what if we ask ourselves how we can become better at picking dates that mean something *in light of our ignorance*?

### Stop rushing to meet made-up dates

Although it does create a frenzy and feels really startup-y when everyone is stressed and focused on a date, that’s a silly reason to do it.
Aside from the mania, the organization also gets mistakes and oversights. That seems like a bad trade.

Find another way to inspire hysteria, *if that is a problem*.

### Stop asking dumb questions that don’t address the fundamental need to manage uncertainty

* We need this by March, how long will it take?
* What if you had more programmers or contractors?
* How long will it take until you know something?
* Why did you miss the deadline?
* *You get the idea*.

### Ask smart questions about uncertainty

* What uncertainties are you aware of that make this hard to estimate?
* What risks did we fail to recognize at the start of the project?
* Can you think of better ways to have handled the risks we encountered?
* Assuming that broken software is a form of uncertainty, how can we minimize this invisible risk?

### Get really good at identifying the risky aspects of projects

This can’t solely be accomplished by the product owner or stakeholders.
It requires some back-and-forth with software people.
The product owner can help prioritize the management of risk in light of the product goals,
but isn’t always aware of which features require complex or little-understood implementations.

### Estimate and re-estimate

Keep the scope the same, while refining the delivery expectations in line with the reduction of uncertainty over time.
When a delivery date “slips”, it is viewed as a failure, when, in fact, the only failure may be the amateurish date-picking heuristic.
When a new date is estimated, it can be *viewed as a success*,
since the organization has understood and mitigated some of the uncertainty inherent in reaching a project goal.
