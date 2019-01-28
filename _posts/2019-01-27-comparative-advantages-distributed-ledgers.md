---
layout:     post
title:      "Comparative Advantages of Distributed Ledgers"
date:       2019-01-27 00:00:00 +0000
categories: dlt blockchain economics
---

*Working draft - [feedback or corrections welcome][contact]*.

If blockchain development were to stagnate at its present state, I think we would find the benefits not to be commensurate with the costs. (bitcoin energy cost) (economic value of exchange) 

Why develop distributed ledgers? (I prefer the term to "blockchain" — the salience of Bitcoin is in its replication, that the blocks are kept in a linked list is an implementation detail)

For the purposes of this analysis, I define distributed ledgers as state transition functions {% ihighlight haskell %} F :: (S, T) -> S {% endihighlight %}, where all parties with a modicum of compute and network bandwidth have oracle access to `S` and the ability to cheaply submit transactions `T`, where the subset of parties responsible for executing `F` cannot instead execute some `F'`, meaningfully censor any subset of transactions `t <- T`, or cause disjoint sets of other parties to view unequal states `S'` and `S''` (agreement). None of these properties are yet satisfactorily provided by existing implementations, but we have reason to expect they may be in time.

- oracle access to elapsed time (PoW, VDF with difficulty adjustment)

Distributed ledgers have *rules*, codified as predicates on the set `T` as a function of a particular `S`.

In this post, I outline five broad areas of system design where I think we have reason to believe that distributed ledgers may substially alter the available components for system designers and thereby enable the creation of radically different systems from what we have today.

For each area, I explain the system reference class, why we might benefit from such systems, where distributed ledgers may provide an advantage, then attempt to address the best arguments against desirability and feasibility.

structure
- what is it
- why desirable
- comparative advantage of dlt
- objections to desirability
- objections to feasibility

### Public Commons

#### What
what is it: platform which facilitates surplus through exchange

Perhaps the most successful existing such commons is the English language (...). Languages as commons have several convenient properties - the size of their state does not scale linearly with the number of users, approximate agreement on most of the present state is sufficient for usage (as any natural language contains many different possible encodings of the same semantics), and our mental facilities and social institutions are well-adapted to track their states and provide the high-throughput gossip required for state changes without requiring central coordination.

#### Why

#### Comparative Advantage

why dlt
- incentivize creation by capturing a portion of future economic value
- credibly commit not to extract rent or arbitrarily enforce rules

#### Objections

objections to desirability

Scott Alexander, uncontrollable even in principle

I admit the concern but consider this the scenario of lesser concern - why? 1. platform reputation very important, 2. covenants around law, 3. worse danger: governments or less scrupulous companies co-opting parts of tech for totalitarian ends.

### Benevolent Totalitarianism

#### What

what is it: effective world government without the risk of capture

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
- existential risk factors aren't that significant
- existential risk factors wouldn't be reduced

objections to feasability

- requires lots of data to be verifiable on-chain
- human law is too nuanced and interpretive to be codified

### Polycentric Law

#### What

what is it: overlapping, voluntary, specialized private legal systems

Tom Bell defines "polycentric law" in [a 1999 essay][polycentric-law-in-a-new-century] as

> law arising from a variety of customs and private processes rather than law coercively imposed by a single state authority

which captures roughly this, but explains neither why such law might be desirable nor, given that, why it does not exist at present.

(one detailed depiction of how such a system might work can be found in Ada Palmer's [Terra Ignota series][terra-ignota])


#### Why

Monopolies of legal systems allow them to extract an inordinate amount of rent. The geographically-determined boundaries by which legal systems operate make sense only to the degree by which geographical proximity indicates a preference for similar law - trend? - and 

An extraordinary amount of effort is directed to the effecting of control over the processes which govern the change in our existing legal monopologies which could perhaps better be directed towards realizing alternative sets of laws, which individuals could voluntarily select from.

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

objections to feasability

- computing intersections between rulesets impossible - counter: inter-blockchain communication

### Threshold Commitment

#### What

Alternatively, "jumping Nash equilibria".

- could be used to threshold-commit to switch *ledgers*

- indexable commitment stores, data processing

in very limited form today: Kickstarter (threshold commitment to produce a product given demand). Doesn't scale, poor information, limited conditionals.

#### Why

- platform lockin

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

#### Why

#### Comparative Advantages

we must subsidize the prediction markets

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
- would diverge from "fair" treatment (pre-existing conditions)

objections to feasibility

- still too complex to contract, not efficient at scale
- transaction costs of prediction markets still too high, illiquid

This analysis is certainly incomplete, but it covers several areas in which I think we have reason to believe that distributed ledger technology may enable implementation of widely beneficial but previously economically infeasible systems. Did I miss any? [Let me know][contact].

Thanks to XYZ.

[vulnerable-world-hypothesis]:      https://nickbostrom.com/papers/vulnerable.pdf
[polycentric-law-in-a-new-century]: https://www.cis.org.au/app/uploads/2015/04/images/stories/policy-magazine/1999-autumn/1999-15-1-tom-bell.pdf
[terra-ignota]:                     https://en.wikipedia.org/wiki/Terra_Ignota
[contact]:                          /contact
