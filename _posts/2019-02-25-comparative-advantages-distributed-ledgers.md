---
layout:     post
title:      "Comparative Advantages of Distributed Ledgers"
date:       2019-04-01 00:00:00 +0000
categories: dlt blockchain economics
---

(qs? wording, 1st-person)

*Working draft - [feedback or corrections welcome][contact]*.

Why develop distributed ledgers<sup>[1](#1)</sup>?

For the purposes of this analysis, let distributed ledgers be state transition functions {% ihighlight haskell %} F :: (S, T) -> S {% endihighlight %} executed in a consensus algorithm<sup>[2](#2)</sup> by a distributed set {% ihighlight haskell %} P {% end ihighlight %} of parties with arbitrary state complexity<sup>[3](#3)</sup>, unbounded transaction throughput<sup>[4](#4)</sup>, perfect censorship resistance<sup>[5](#5)</sup>, bandwidth-inexpensive queryability<sup>[6](#6)</sup>, oracle access to elapsed time<sup>[7](#7)</sup>, and private data / public ruleset segmentation<sup>[8](#8)</sup>. None of these properties are yet satisfactorily provided by existing implementations, but we have reason to expect they may be in time (see references). The present developmental efforts justifiably focus on satisficing these properties, in of itself a challenging and engrossing task - but assume we largely succeed - what then?

In this post, I outline four broad areas of systems design where I think we have reason to believe that distributed ledgers may increase the available component set for mechanism designers and thereby enable the creation of radically different systems from what we have today: public commons, polycentric law, threshold commitment, and contingent payments. For each area, I explain the system reference class, why we might benefit from such systems, and in what way distributed ledgers may provide a significant advantage, then attempt to articulate & address the best arguments against desirability and feasibility.

### Public Commons

#### What

Public commons are platforms which creates economic surplus by connecting buyers and sellers & providing a medium through which they can transact, where the platform operator, if existent, is not manufacturing the product or providing the service. The US dollar (value), Airbnb (housing), Uber (transportation), Ebay (goods), Github (code, bug reports), and search engines (information) are all public commons. Public commons tend to possess strong network effects, since the utility to any particular user is proportional to the number of other users, and thus usually result in natural monopolies, especially in the absence of prior open standards for product representation (present in the case of websites, for example, but not in the case of transportation or housing).

Perhaps the most successful (by both user count and economic utility) - and most decentralized - existing such commons is the English language, a platform for the exchange of information. Languages as commons have several convenient properties - the size of their state does not scale linearly with the number of users, approximate agreement on most of the present state is sufficient for usage (as any natural language contains many different possible encodings of the same semantics), and our mental facilities and social institutions are well-adapted to track their states and provide the high-throughput gossip required for state changes without requiring central coordination.

#### Why

- public commons provide lots of utility (lookup companies by market capitalization, and they capture but a small fraction)
- control by companies is suboptimal - rent extraction, natural monopolies, deplatforming, just not as efficient as open standards, leads to optimization for mean instead of diversity
- want to incentivize creation by allowing the capture of some future value, only way to incentivize creation r.n. is to own the platform

#### Comparative Advantage

why dlt
- incentivize creation by capturing a portion of future economic value
- credibly commit not to extract rent or arbitrarily enforce rules
- permissionless innovation: interfaces, cross-common connections, no organizational relationship/trust cost
- competition at interface layer instead of at data layer
- rent extraction by consensus participants - data can be forked

cite: Tyler Cowen post

#### Objections

objections to desirability

- Scott Alexander, uncontrollable even in principle
  hinges a lot on - is "libertarian" aspect of blockchain endemic or social?
  I admit the concern but consider this the scenario of lesser concern - why? 1. platform reputation very important, 2. covenants around law, 3. worse danger: governments or less scrupulous companies co-opting parts of tech for totalitarian ends.

objections to feasibility

- technical concerns
  will be solved in time (and not much time, although perhaps more than the market swings) - cite Starkware DEX prover, Tendermint BFT
- change entities in control, but not better than business
  google can also commit to "do no evil"
  ~> not really, not binding in any meaningful way
  consensus partcipants have much less power
- necessity of "flexibility" instead of rigidity in ruleset, adjudication / dispute resolution
  more likely concern
  dlt can interface with meatspace, implement meatspace - cite Kleros alternative adjudication

### Polycentric Law

#### What

Polycentric law is the realization of overlapping, volunary, and specialized private legal systems in a manner capable enough to supplant a substantial fraction of the existing domestic & international regulatory regimes,
with enforcement through control over economic incentives instead of by the implicit threat of force.

I take the term from [a 1999 essay][polycentric-law-in-a-new-century] by Tom Bell, which defines polycentric law as

> law arising from a variety of customs and private processes rather than law coercively imposed by a single state authority

which captures roughly this, but explains neither why such law might be desirable nor, given that, why it does not exist at present.

unlike his examples, does not capture entirely what I mean: mostly a superset of existing law, none of three examples are exempt (Internet most so, but still)

One detailed, albeit fictional, depiction of how a polycentric legal system might work can be found in Ada Palmer's [Terra Ignota series][terra-ignota].

#### Why

Monopolies of legal systems allow them to extract an inordinate amount of rent. The geographically-determined boundaries by which legal systems operate make sense only to the degree by which geographical proximity indicates a preference for similar law - trend? - and 

An extraordinary amount of effort is directed to the effecting of control over the processes which govern the change in our existing legal monopologies which could perhaps better be directed towards realizing alternative sets of laws, which individuals could voluntarily select from.

Laws are "bundled" not due to conflict but rather due to meatspace limitations

No unclaimed land upon which group of people can voluntarily establish self-governed community.

cite: prediction markets banned, security laws, attention tax

existing internet communities may be closest analgoue, but limited in ability to craft around rules - mostly just around content

polycentric law may be especially effective when combined with threshold commitment, enabling jumping Nash equilibria of legal schemes

#### Comparative Advantage

why dlt?

- can "enforce" contracts without a single trusted party
- reduces transaction costs of implementation
- facilitates codified integration of disparate systems
- includes incentive layer
- could eventually maintain monopoly on use of force (?)

in the consequentialist extreme, precommit to a set of metrics upon which legal systems are contionuously and automatically chosen based on randomized control trials (perhaps specifiying some basic deontological restrictions)

#### Objections

objections to desirability

- forming trade coalitions wouldn't be easier
  hard to predict now, but reasons to believe it would be, easier to solve information problem

- enforcement-by-ledger is dangerous
  initially existing basic legal structures remain in place, more voluntary aspects of trade, commerce, citizenship

- consensus or ledger governance systems would be just as capturable
  maybe, but the ledgers can compete, no fundamentally scarce resource (land) and existing ledgers can't threaten with weaponry

- network effects will facilitate monopolies anyways
  ledgers by nature do not have monopoly over *data*, "fork threat" real & essential

objections to feasability

- computing intersections between rulesets impossible
  counter: inter-blockchain communication, by nature of verification rulesets must be known to all parties & codified

### Threshold Commitment

#### What

Threshold commitment is the ability to commit to a particular action (on a distributed ledger, a particular transaction) contingent on other parties committing to particular actions (possibly themselves contingent on your commitment).

Alternatively, "jumping Nash equilibria".

- could be used to threshold-commit to switch *ledgers*

- indexable commitment stores, data processing

in very limited form today: Kickstarter (threshold commitment to produce a product given demand). Doesn't scale, poor information, limited conditionals, requires trusted funds custody ~=> can't fund large projects.

explain: may be difficult to conceptualize, most ledgers do not provide transaction introspection, but not a theoretical limitation

e.g. carbon emission commitments, solve tragedies of the commons

#### Why

cite slatestarcodex libertarianism post on lake fishing

- cite tragedy of commons - http://science.sciencemag.org/content/162/3859/1243.full
- platform lockin
- bad game theoretic equilibria
- stuck in pareto-efficient local optima
- better: pareto-efficient global optima, even tradeoffs

#### Comparative Advantage

why dlt?

- atomicization of actions
- can maintain space of possible contingent actions - "DEX orderbook"

e.g.

- companies adopting carbon tax while avoiding Malthusian trap
- nations restricting tax competition, legal arbitrage
- policy compromises
- us/russia disable nuclear devices
- group of people agree to leave a platform (Facebook)

#### Objections

objections to desirability

- how much rent are platforms really extracting?
- still too much effort - after all, humans could coordinate to leave FB

objections to feasibility

- bad computational scaling
  zk proofs!
- need to keep a lot of threshold-commitments
  not really... even several per human isn't much

### contingent Payments

#### What

~ another possible implementation: payment escrowed, settled in future based on measurement, rights of future payment can be tokenized & traded

Contingent payments are the direct purchase of a future expected difference in a probability distribution, such that a variable part of the price can be efficiently used to incentivize accuracy in the future prediction.

When purchasing medicine (setting aside some [signaling value][]), we are intending to buy a positive difference in the future probability distribution of our health, and we are willing to pay a price as some increasing function of the magnitude of the difference. At present, this can neither be efficiciently measured nor easily written into contract law, so we must content ourselves with choosing to either buy or pass on a particular drug at the market price, and rely instead on an costly, inscrutable, and generally ineffective set of institutions to implement prior controls which enforce some correlation between the future health impact and the price tag. What if instead we could purchase the expected future impact directly, precommiting to pay if and only if it were realized?

one way: two prediction markets
another way: company paid in future contingent on event, company seeks present funding by investors who bet on the event

this applies more generally to any case in which we primarily wish to purchase a difference in a future probability distribution

also e.g. negative externalities - fast food

#### Why

#### Comparative Advantage

we must subsidize the prediction markets, and this could provide a way to do so - substantial part of payment to prediction markets

why dlt?

- automatic contract creation & enforcement
- separation of measurement and of computation - one measurement protocol can serve all needs, scales better
- consumers can create bespoke contracts more easily

relative to

- insurance markets
- lloyds of london

cite

- foam protocol, Numerai Erasure?, others (oracles on data)
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

- data cannot be individually verified
  ~> not in all cases, but verification just needs to be cost-to-forge, not perfect

- still too complex to contract, not efficient at scale
  information from smart devices, doesn't need to be that complex (e.g. time of death)

- transaction costs of prediction markets still too high, illiquid
  mostly automated, there are existing strong correlations which just aren't priced in

----

This analysis omits many more mundane usecases for which DLT may be able to accomplish roughly the same functionality at a lower cost or with higher efficacy than existing solutions, including cross-border remittances, internet payments, derivative settlement, data notarization, censorship-resistant communication, and mesh-networked state synchronization, not for lack of potential comparative advantage but rather because I am primarily interested in investigating systems which present technology cannot realize at all.

<!--
Thanks to XYZ for reviews of this post.
-->

<span id="1">1</span>: I prefer the term to "blockchain" — the salience is in the replication mechanism, that the blocks are kept in a linked list is an implementation detail.<br />
<span id="2">2</span>: Fulfilling *agreement* and *termination* in roughly their usual BFT senses, possibly the combined view of separate parallel consensus processes.
<span id="3">3</span>: Or rather than storage capacity could grow faster than storage usage, as is the case with cloud-provisioned storage now.
<span id="4">4</span>: Or rather that transaction throughput capacity is not a bottleneck on demand, as is the case with EMV (card) payments now.
<span id="5">5</span>: Such that the subset of parties responsible for executing {% ihighlight haskell %} F {% end ihighlight %} cannot indefinitely censor any subset of transactions, as might be provided by (threshold decryption)
<span id="6">6</span>: Such that bandwidth and compute required is proportional only in the size of the query, not the size of state, and that the querying client cannot be fooled. (current examples: TM lite client proofs)
<span id="7">7</span>: As might be provided by a verifiable-delay function with difficulty adjustment (cite: Wachowski VDF paper)
<span id="8">8</span>: Meaning that specific transaction details (sender, amount, code) can be private to a user while ruleset verification (supply conservation, invariant fulfillment) is performed on the ledger, as likely will be provided by zero-knowledge proof constructions (current examples: Zerocash, ZEXE).

<span id=""></span>: [Vulnerable World Hypothesis](https://nickbostrom.com/papers/vulnerable.pdf)
<span id=""></span>: [Polycentric Law in a New Century](https://www.cis.org.au/app/uploads/2015/04/images/stories/policy-magazine/1999-autumn/1999-15-1-tom-bell.pdf)
<span id=""></span>: [Terra Ignota](https://en.wikipedia.org/wiki/Terra_Ignota)

[contact]:                          /contact
