---
layout:     post
title:      "Comparative Advantages of Distributed Ledgers"
date:       2019-01-27 00:00:00 +0000
categories: dlt blockchain economics
---

(qs? wording, 1st-person)

*Working draft - [feedback or corrections welcome][contact]*.

Why develop distributed ledgers<sup>[1](#1)</sup>?

For the purposes of this analysis, I define distributed ledgers as state transition functions {% ihighlight haskell %} (S, T) -> S {% endihighlight %}, where all parties with a modicum of compute and network bandwidth have oracle access to {% ihighlight haskell %} S {% endihighlight %} and the ability to cheaply submit transactions {% ihighlight haskell %} T {% endihighlight %}, where the subset of parties responsible for executing {% ihighlight haskell %} F {% endihighlight %} cannot cheaply instead execute some {% ihighlight haskell %} F' {% endihighlight %}, meaningfully censor any subset of transactions `t ⊂ T`, or cause disjoint sets of other parties to view unequal states `S'` and `S''` (agreement). None of these properties are yet satisfactorily provided by existing implementations, but we have reason to expect they may be in time.

- oracle access to elapsed time (PoW, VDF with difficulty adjustment) (cite: Wachowski VDF paper)
Distributed ledgers have *rules*, codified as predicates on the set `T` as a function of a particular `S`.

The present efforts justifiably focus on satisficing these properties, in of itself a challenging and interesting task - but assume we largely succeed, what then?

In this post, I outline five broad areas of system design where I think we have reason to believe that distributed ledgers may substially alter the available components for system designers and thereby enable the creation of radically different systems from what we have today.

For each area, I explain the system reference class, why we might benefit from such systems, where distributed ledgers may provide an advantage, then attempt to address the best arguments against desirability and feasibility.

### Public Commons

#### What

A public commons is a platform which creates economic surplus by connecting buyers and sellers, and/or by providing a medium with which they can transact.

Perhaps the most successful existing such commons is the English language (...), a platform for the exchange of information. Languages as commons have several convenient properties - the size of their state does not scale linearly with the number of users, approximate agreement on most of the present state is sufficient for usage (as any natural language contains many different possible encodings of the same semantics), and our mental facilities and social institutions are well-adapted to track their states and provide the high-throughput gossip required for state changes without requiring central coordination.

Airbnb, Uber, Ebay, Github and even search engines (although not the further flung activies of the surveillance panopticon) would fall under this definition.

#### Why

#### Comparative Advantage

why dlt
- incentivize creation by capturing a portion of future economic value
- credibly commit not to extract rent or arbitrarily enforce rules
- permissionless innovation: interfaces, cross-common connections, no organizational relationship/trust cost

cite: Tyler Cowen post

#### Objections

objections to desirability

- Scott Alexander, uncontrollable even in principle
  hinges a lot on - is "libertarian" aspect of blockchain endemic or social?
  I admit the concern but consider this the scenario of lesser concern - why? 1. platform reputation very important, 2. covenants around law, 3. worse danger: governments or less scrupulous companies co-opting parts of tech for totalitarian ends.

objections to feasibility

- technical concerns
  will be solved in time (and not much time, although perhaps more than the market swings) - cite Starkware DEX prover, Tendermint BFT
- necessity of "flexibility" instead of rigity
  more likely concern
  dlt can interface with meatspace, implement meatspace - cite Kleros alternative adjudication

### Benevolent Totalitarianism

#### What

Benevolent totalitarianism is extremely specific global policing with negligible error rates.

#### Why

[Nick Bostrom argues][vulnerable-world-hypothesis] that the relative ineffectiveness of our present legal institutions in enforcing the law may be an extinction-level risk factor:

> Scientific and technological progress might change people’s capabilities or incentives in ways
that would destabilize civilization. For example, advances in DIY biohacking tools might make it
easy for anybody with basic training in biology to kill millions; novel military technologies could
trigger arms races in which whoever strikes first has a decisive advantage; or some economically
advantageous process may be invented that produces disastrous negative global externalities
that are hard to regulate. [...] A general ability to stabilize a vulnerable world would require greatly amplified
capacities for preventive policing and global governance.

#### Comparative Advantage

why dlt?
- separate enforcement from control of rules, avoid dystopic aspects of totalitarianism
- drastically reduce transaction costs of implementation
- e.g.: can only utilize currency iff. prove compliance with rules

#### Objections

objections to desirability

- could be captured
  possible to restrict enforcement more precisely

- existential risk factors aren't that significant
  cite counterarguments: Sandberg, Gwern

- existential risk factors wouldn't be reduced
  instead just shifted to locus of control - consensus-economic thresholds insufficient

objections to feasability

- requires lots of data to be verifiable on-chain
  will the oracles really work?
  cite: proof-of-location, numerai thing, Augur market settlements

- human law is too nuanced and interpretive to be codified
  maybe, but not sure we care about the nuanced aspects here - more about preventing nuclear warfare, bioterror

### Polycentric Law

#### What

Polycentric law is overlapping, volunary, and specialized private legal systems.

Tom Bell defines "polycentric law" in [a 1999 essay][polycentric-law-in-a-new-century] as

> law arising from a variety of customs and private processes rather than law coercively imposed by a single state authority

which captures roughly this, but explains neither why such law might be desirable nor, given that, why it does not exist at present.

unlike his examples, does not capture entirely what I mean: mostly a superset of existing law, none of three examples are exempt (Internet most so, but still)

(one detailed depiction of how such a system might work can be found in Ada Palmer's [Terra Ignota series][terra-ignota])

#### Why

Monopolies of legal systems allow them to extract an inordinate amount of rent. The geographically-determined boundaries by which legal systems operate make sense only to the degree by which geographical proximity indicates a preference for similar law - trend? - and 

An extraordinary amount of effort is directed to the effecting of control over the processes which govern the change in our existing legal monopologies which could perhaps better be directed towards realizing alternative sets of laws, which individuals could voluntarily select from.

Laws are "bundled" not due to conflict but rather due to meatspace limitations

No unclaimed land upon which group of people can voluntarily establish self-governed community.

cite: prediction markets banned, security laws, attention tax

existing internet communities may be closest analgoue, but limited in ability to craft around rules - mostly just around content

#### Comparative Advantage

why dlt?

- reduces transaction costs of implementation
- facilitates codified integration of disparate systems
- includes incentive layer
- could eventually maintain monopoly on use of force

in the consequentialist extreme, precommit to a set of metrics upon which legal systems are contionuously and automatically chosen based on randomized control trials (perhaps specifiying some basic deontological restrictions)

#### Objections

objections to desirability

- forming trade coalitions wouldn't be easier

- enforcement-by-ledger is dangerous
  initially existing basic legal structures remain in place, more voluntary aspects of trade, commerce, citizenship

objections to feasability

- computing intersections between rulesets impossible
  counter: inter-blockchain communication, by nature of verification rulesets must be known to all parties & codified

### Threshold Commitment

#### What

Alternatively, "jumping Nash equilibria".

- could be used to threshold-commit to switch *ledgers*

- indexable commitment stores, data processing

in very limited form today: Kickstarter (threshold commitment to produce a product given demand). Doesn't scale, poor information, limited conditionals.

explain: may be difficult to conceptualize, most ledgers do not provide transaction introspection, but not a theoretical limitation

e.g. carbon emission commitments

#### Why

- platform lockin
- bad game theoretic equilibria

#### Comparative Advantage

why dlt?

- atomicization of actions
- can maintain space of possible contingent actions - "DEX orderbook"

e.g.

- policy compromises
- us/russia disable nuclear devices
- group of people agree to leave a platform (Facebook)

#### Objections

objections to desirability

- how much rent are platforms really extracting?
- still too much effort - after all, humans could coordinate to leave FB

objections to feasibility

- bad computational scaling

### Contingent Payments

#### What

When purchasing medicine (setting aside some [signaling value][]), we are intending to buy a positive difference in the future probability distribution of our health, and we are willing to pay a price as some increasing function of the magnitude of the difference. At present, this can neither be efficiciently measured nor easily written into contract law, so we must content ourselves with choosing to either buy or pass on a particular drug at the market price, and rely instead on an costly, inscrutable, and generally ineffective set of institutions to implement prior controls which enforce some correlation between the future health impact and the price tag. What if instead we could purchase the expected future impact directly, precommiting to pay if and only if it were realized?

this applies more generally to any case in which we primarily wish to purchase a difference in a future probability distribution

also e.g. negative externalities - fast food

#### Why

#### Comparative Advantages

we must subsidize the prediction markets, and this could provide a way to do so - substantial part of payment

why dlt?

- automatic contract creation & enforcement
- separation of measurement and of computation - one measurement protocol can serve all needs

relative to

- insurance markets
- lloyds of london

cite

- foam protocol
- oracle research
- oracle markets

#### Objections

objections to desirability

- existing systems are already effective at this, the hard part is just prediction
  lots of evidence incentives are screwy

- would diverge from "fair" treatment (pre-existing conditions)
  not sure about a priori, always an opportunity cost - should work more like triage than "care at any cost" - but of course *I* would try
  if we accept premise, possible to enforce post hoc subsidies according to ratio of probability distributions or something

objections to feasibility

- still too complex to contract, not efficient at scale
  information from smart devices, doesn't need to be that complex (e.g. time of death)

- transaction costs of prediction markets still too high, illiquid
  mostly automated, there are existing strong correlations which just aren't priced in

----

This analysis is certainly incomplete, but it covers several areas in which I think we have reason to believe that distributed ledger technology may enable implementation of widely beneficial but previously economically infeasible systems. Did I miss any? [Let me know][contact].

Thanks to XYZ.

<span id="1">1</span>: I prefer the term to "blockchain" — the salience is in the replication mechanism, that the blocks are kept in a linked list is an implementation detail.<br />
<span id="2">2</span>: [Vulnerable World Hypothesis](https://nickbostrom.com/papers/vulnerable.pdf)

[vulnerable-world-hypothesis]:      https://nickbostrom.com/papers/vulnerable.pdf
[polycentric-law-in-a-new-century]: https://www.cis.org.au/app/uploads/2015/04/images/stories/policy-magazine/1999-autumn/1999-15-1-tom-bell.pdf
[terra-ignota]:                     https://en.wikipedia.org/wiki/Terra_Ignota
[contact]:                          /contact
