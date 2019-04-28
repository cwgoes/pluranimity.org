---
layout:     post
title:      "Comparative Advantages of Distributed Ledgers"
date:       2019-04-27 00:00:00 +0000
categories: dlt blockchain economics
---

Why develop distributed ledgers<sup>[1](#1)</sup>?

For the purposes of this analysis, let distributed ledgers be state transition functions executed in a consensus algorithm<sup>[2](#2)</sup> by a distributed set of parties with arbitrary state complexity<sup>[3](#3)</sup>, unbounded transaction throughput<sup>[4](#4)</sup>, perfect censorship resistance<sup>[5](#5)</sup>, bandwidth-inexpensive queryability<sup>[6](#6)</sup>, oracle access to elapsed time<sup>[7](#7)</sup>, and private data / public ruleset segmentation<sup>[8](#8)</sup>. None of these properties are yet satisfactorily provided by existing implementations, but we have reason enough to expect they may be in time (see references). The present developmental efforts justifiably focus on satisficing these properties, in of itself a challenging and engrossing task — but assume we largely succeed — what then?

In this post, I outline four broad areas of systems design where I think we have reason to believe that distributed ledgers may increase the available component set for mechanism designers and thereby enable the creation of radically different systems from what we have today: public commons, polycentric law, threshold commitment, and contingent payments. For each area, I explain the system reference class, why we might benefit from such systems, and in what way distributed ledgers may provide a significant advantage, then attempt to articulate & address the best arguments against desirability and feasibility.

### Public commons

#### What

What are public commons?

*Public commons* are platforms which creates economic surplus by connecting buyers and sellers & providing a medium through which they can transact, where the platform operator, if distinct from the userbase, is not manufacturing the product or providing the service. The US dollar (value), Airbnb (housing), Uber (transportation), Ebay (goods), Github (code, bug reports), Microsoft Windows (desktop applications), and search engines (information) are all public commons to varying degrees. Public commons tend to possess strong network effects, since the utility provided to any particular user is proportional to the number of other users, thus they often result in natural monopolies, especially in the absence of prior open standards for product representation (present in the case of websites, for example, but not in the case of transportation or housing).

Perhaps the most successful (by both user count and economic utility) — and most decentralized — existing such commons is the English language, a platform for the exchange of information. Languages as commons have several convenient properties: the size of their state does not scale linearly with the number of users, approximate agreement on most of the present state is sufficient for usage (as any natural language contains many different possible encodings of the same semantics), and our mental facilities and social institutions are well-adapted to track their states and provide the high-throughput gossip required for state changes without requiring central coordination.

#### Why

Why are public commons valuable, and what are their challenges?

- Public commons provide an enormous amount of utility. Seven of the ten largest global firms by market capitalization operate commons of sorts<sup>[9](#9)</sup>, and they capture but a small fraction (although perhaps a larger fraction than necessary) of the created utility. The English language provides far more utility than all of them combined, but — and partially because (imagine if the English vocabulary were owned by a company) — it captures none of it.
- Control of commons by companies often tends to be suboptimal, since the profit motive of the company (generally enshrined in law) is not necessarily aligned with the best interests of the commons' userbase. Especially once they attain a dominant agglomeration effect, companies may find it more profitable to extract rent far in excess of their costs, deprive users of alternative interfaces and algorithms through the use of proprietary standards and siloed data, deplatform users instead of respecting a notion of minority rights, and optimize content & information for attention and behavioural surplus capture even when it is clearly against the best interest of the user.
- The immense possible utility seems to justify incentivizing the creation of commons by allowing a capture by the creators of some fraction of the future value, but preferably in a way where the creators can credibly commit to a particular ruleset which curtails their power as an operator of the commons. At the moment, the only way to incentivize creation is for firms to own the commons and control all of the rules, which frequently leads to incentive misalignment.

#### Comparative advantage

Why might distributed ledger technology help, and what role would it serve?

- Distributed ledger technology can serve as the backbone of a decentralized commons, enforcing the ruleset (accepting user input, matching counterparties, settling payment, operating rating algorithms, etc.) by encoding it in the state machine.
- Creators of a decentralized commons can capture a portion of the future economic value by assigning themselves a fraction of future revenue or apportionment of a network-associated token, but credibly commit not to extract rent or arbitrarily alter the rules against users' interest once the platform becomes dominant (as noted by Tyler Cowen<sup>[10](#10)</sup>).
- Decentralized commons can faciliate scalable permissionless innovation and interoperation with other services and interfaces since interactions with the system are not bottlenecked by trusted organizational relationships.
- Distributed ledgers, by construction, cannot own and control access to data in the same sense as Google or Facebook, so the cost of exit (were the decentralized commons to ramp up fees, say) and correspondingly the degree of possible rent extraction is lower.
- Commons operated on distributed ledgers are likely to be more resilient to legal & geopolitical adversaries, since they must be constructed to function on open networks and build cryptographic authentication & Sybil resistance into their design.

#### Objections

Why might this approach not be desirable?

Scott Alexander has expressed concern<sup>[11](#11)</sup> about the risks of too-resilient marketplaces:

> The latest development in the brave new post-Bitcoin world is crypto-equity. At this point I’ve gone from wanting to praise these inventors as bold libertarian heroes to wanting to drag them in front of a blackboard and making them write a hundred times “I WILL NOT CALL UP THAT WHICH I CANNOT PUT DOWN” (...) People are using the contingent stupidity of our current government to replace lots of human interaction with mechanisms that cannot be coordinated even in principle.

I admit this possibility, but consider it remote.

- I suspect whether "unstoppable markets" which prevent censorship of funding for human trafficking or terrorism (which ought to be censored) are realized hinges on whether the "hard libertarian" aspect of distributed ledgers is primarily endemic to the technology or primarily contingent on founder effects. I think it is mostly the latter. Nothing about the decentralized nature of the infrastructure prevents 
- I don't think that decentralized commons cannot be coordinated. English language social norms around acceptable words and honorifics are shifting rapidly all the time, for example.
- Platform (brand) reputation of decentralized ledgers is extremely important, and the costs of exit are low, so 
- Likely a worse danger is government or less scrupulous companies co-opting parts of the technology and branding around blockchains to realize their own, often totalitarian, ends.

Why might this approach not be feasible?

- technical concerns
  will be solved in time (and not much time, although perhaps more than the market swings) - cite Starkware DEX prover, Tendermint BFT
- change entities in control, but not better than business
  google can also commit to "do no evil"
  ~> not really, not binding in any meaningful way
  consensus partcipants have much less power
- necessity of "flexibility" instead of rigidity in ruleset, adjudication / dispute resolution
  more likely concern
  dlt can interface with meatspace, implement meatspace - cite Kleros alternative adjudication

### Polycentric law

#### What

What is polycentric law?

I borrow the term from a 1999 essay<sup>[12](#12)</sup> by Tom Bell, although I use it somewhat differently. He defines polycentric law as

> law arising from a variety of customs and private processes rather than law coercively imposed by a single state authority.

Bell cites three examples: alternative dispute resolution, private communities, and online adjudicators which have arisen on the internet (the article is a bit dated — a modern take would more likely focus on the differing rulesets of social networks). I am interested in this essential concept, but with a broader scope and a few additional properties.

*Polycentric law* is the realization of overlapping, voluntary, and specialized private legal systems, in a manner capable enough to supplant a substantial fraction of the existing domestic & international regulatory regime,
where enforcement is either inherent or effected through control over economic incentive levers instead of a monopoly on the use of force.

One detailed, albeit fictional, depiction of how a polycentric legal system might work and evolve at global scale can be found in Ada Palmer's Terra Ignota series<sup>[13](#13)</sup>.

#### Why

Why might polycentric law be useful, and what challenges are involved?

- Present legal systems are regionally monopolized: one legislative body & governance process determines the ruleset for an area of physical space. To so determine boundaries of legal systems makes sense only to the degree by which geographical proximity indicates a preference or necessity for shared law — plausible for physically-mediating domains such as the right to bear arms, but far less so for others like online privacy protections.

- An extraordinary amount of effort is directed to the effecting of control over the processes which govern the change in our existing legal monopologies which could perhaps better be directed towards realizing alternative sets of laws which individuals could voluntarily select from. Unfortunately, there is no unclaimed land (except perhaps extraterrestrially) upon which a consenting group of people can voluntarily establish a sovereign nation.

- The closest analogue may be existing internet communities such as social networks, sub-Reddits, private chat groups, and blogs, but these communities are limited in ruleset - primarily content moderation and ranking - and enforcement - primarily social capital<sup>[14](#14)</sup> or shaming.
existing internet communities may be closest analogue, but limited in ability to craft around rules - mostly just around content

#### Comparative advantage

Why might distributed ledger technology help, and what role would it serve?

- Distributed ledgers can enforce contracts either ex ante by embedding the logic directly into the ledger, without a single trusted party, or ex post through economic incentives (slashing).
- The costs of implementing complex rulesets are drastically reduced, and the enforcement can be far more accurate.
- Facilitates codified integration of disparate systems; interoperation where laws are shared
- Includes constrained incentive layer which can affect the real world
- could eventually maintain monopoly on use of force (?)

#### Objections

Why might this approach not be desirable?

- forming trade coalitions wouldn't be easier
  hard to predict now, but reasons to believe it would be, easier to solve information problem

- enforcement-by-ledger is dangerous
  initially existing basic legal structures remain in place, more voluntary aspects of trade, commerce, citizenship

- consensus or ledger governance systems would be just as capturable
  maybe, but the ledgers can compete, no fundamentally scarce resource (land) and existing ledgers can't threaten with weaponry

- network effects will facilitate monopolies anyways
  ledgers by nature do not have monopoly over *data*, "fork threat" real & essential

Why might this approach not be feasible?

- computing intersections between rulesets impossible
  counter: inter-blockchain communication, by nature of verification rulesets must be known to all parties & codified

- physical world, coercion would intervene
  realpolitik
  pentagon, aircraft carrier, black sea, california

  The threat of force is a feature of modern geopolitics. (for an amusing illustration of the realpolitik involved, read Pentagon press releases, like this one <sup></sup> complaining about a Russian SU-27 flying past an American EP-3 in the Black Sea. The Black Sea is on the Russian coast - for comparision, imagine a Russian or Chinese carrier parked off California).

### Threshold commitment

#### What

What is threshold commitment?

*Threshold commitment* is the ability to commit to a particular action (on a distributed ledger, a particular transaction) contingent on other parties committing to particular actions (possibly themselves contingent on your commitment).

explain: may be difficult to conceptualize, most ledgers do not provide transaction introspection, but not a theoretical limitation

Alternatively, "jumping Nash equilibria".

- in very limited form today: Kickstarter (threshold commitment to produce a product given demand). Doesn't scale, poor information, limited conditionals, requires trusted funds custody ~=> can't fund large projects.

#### Why

Why might threshold commitment be useful, and what are the challenges involved?

cite slatestarcodex libertarianism post on lake fishing
- cite tragedy of commons - http://science.sciencemag.org/content/162/3859/1243.full
- platform lockin
- bad game theoretic equilibria
- stuck in pareto-efficient local optima
- better: pareto-efficient global optima, even tradeoffs

#### Comparative advantage

Why might distributed ledger technology help, and what role would it serve?

- atomicization of actions
- can maintain space of possible contingent actions - "DEX orderbook"
- could be used to threshold-commit to switch *ledgers*
- indexable commitment stores, data processing

e.g.

- e.g. carbon emission commitments, solve tragedies of the commons
- companies adopting carbon tax while avoiding Malthusian trap
- nations restricting tax competition, legal arbitrage
- policy compromises
- us/russia disable nuclear devices
- group of people agree to leave a platform (Facebook)

#### Objections

Why might this approach not be desirable?

- how much rent are platforms really extracting?
- still too much effort - after all, humans could coordinate to leave FB

Why might this approach not be feasible?

- bad computational scaling
  zk proofs!
- need to keep a lot of threshold-commitments
  not really... even several per human isn't much

### Contingent payments

#### What

What are contingent payments?

*Contingent payments* are the direct purchase of a future expected difference in a probability distribution, such that a variable part of the price can be efficiently used to incentivize accuracy in the future prediction.

When purchasing medicine (setting aside some [signaling value][]), we are intending to buy a positive difference in the future probability distribution of our health, and we are willing to pay a price as some increasing function of the magnitude of the difference. At present, this can neither be efficiciently measured nor easily written into contract law, so we must content ourselves with choosing to either buy or pass on a particular drug at the market price, and rely instead on an costly, inscrutable, and generally ineffective set of institutions to implement prior controls which enforce some correlation between the future health impact and the price tag. What if instead we could purchase the expected future impact directly, precommiting to pay if and only if it were realized?

one way: two prediction markets
another way: company paid in future contingent on event, company seeks present funding by investors who bet on the event

this applies more generally to any case in which we primarily wish to purchase a difference in a future probability distribution

also e.g. negative externalities - fast food

~ another possible implementation: payment escrowed, settled in future based on measurement, rights of future payment can be tokenized & traded

#### Why

Why might contingent payments be useful, and what are the challenges involved?

#### Comparative advantage

Why might distributed ledger technology help, and what role would it serve?

we must subsidize the prediction markets, and this could provide a way to do so - substantial part of payment to prediction markets

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

Why might this approach not be desirable?

- existing systems are already effective at this, the hard part is just prediction
  lots of evidence incentives are screwy

- would diverge from "fair" treatment (pre-existing conditions)
  not sure about a priori, always an opportunity cost - should work more like triage than "care at any cost" - but of course *I* would try
  if we accept premise, possible to enforce post hoc subsidies according to ratio of probability distributions or something

Why might this approach not be feasible?

- data cannot be individually verified
  ~> not in all cases, but verification just needs to be cost-to-forge, not perfect

- still too complex to contract, not efficient at scale
  information from smart devices, doesn't need to be that complex (e.g. time of death)

- transaction costs of prediction markets still too high, illiquid
  mostly automated, there are existing strong correlations which just aren't priced in

----

This analysis omits many more mundane usecases for which DLT may be able to accomplish roughly the same functionality at a lower cost or with higher efficacy than existing solutions, including cross-border remittances, internet payments, derivative settlement, data notarization, and censorship-resistant communication, not for lack of potential comparative advantage but rather because I am primarily interested in investigating systems which present technology cannot realize at all.

<!--
Thanks to XYZ for reviews of this post.
-->

*Working draft - [feedback welcome][contact]*.

*Footnotes*

<span id="1">1</span>: I prefer the term to "blockchain" — the salience is in the replication mechanism, that the blocks are kept in a linked list is an implementation detail.<br />
<span id="2">2</span>: Fulfilling *agreement* and *termination* in roughly their usual BFT senses, possibly the combined view of separate parallel consensus processes.<br />
<span id="3">3</span>: Or rather than storage capacity could grow faster than storage usage, as is the case with cloud-provisioned storage now.<br />
<span id="4">4</span>: Or rather that transaction throughput capacity is not a bottleneck on demand, as is the case with EMV (card) payments now.<br />
<span id="5">5</span>: Such that the subset of parties responsible for executing {% ihighlight haskell %} F {% endihighlight %} cannot indefinitely censor any subset of transactions, as might be provided by (threshold decryption).<br />
<span id="6">6</span>: Such that bandwidth and compute required is proportional only in the size of the query, not the size of state, and that the querying client cannot be fooled. (current examples: TM lite client proofs).<br />
<span id="7">7</span>: As might be provided by a verifiable-delay function with difficulty adjustment (cite: Wachowski VDF paper). <br />
<span id="8">8</span>: Meaning that specific transaction details (sender, amount, code) can be private to a user while ruleset verification (supply conservation, invariant fulfillment) is performed on the ledger, as likely will be provided by zero-knowledge proof constructions (current examples: Zerocash, ZEXE).<br />
<span id="9">9</span>: [List of top ten firms by market capitalization](https://en.wikipedia.org/wiki/List_of_public_corporations_by_market_capitalization). I count Microsoft, Apple, Amazon, Alphabet, Facebook, Alibaba Group, and Tencent as operating commons.<br />
<span id="10">10</span>: [Blockchains and the Opportunity of the Commons](https://marginalrevolution.com/marginalrevolution/2018/06/blockchains-opportunity-commons.html), Tyler Cowen.<br />
<span id="11">11</span>: [Meditations on Moloch](https://slatestarcodex.com/2014/07/30/meditations-on-moloch/), Scott Alexander.<br />
<span id="12">12</span>: [Polycentric Law in a New Century](https://www.cis.org.au/app/uploads/2015/04/images/stories/policy-magazine/1999-autumn/1999-15-1-tom-bell.pdf), Tom Bell.<br />
<span id="13">13</span>: [Terra Ignota (series)](https://en.wikipedia.org/wiki/Terra_Ignota), Ada Palmer.<br />
<span id="14">14</span>: [Status as a Service](https://www.eugenewei.com/blog/2019/2/19/status-as-a-service), Eugene Wei.<br />

<span id=""></span>: [U.S. EP-3 Intercepted in the Black Sea](https://www.navy.mil/submit/display.asp?story_id=107669), US Naval Forces, 6th Fleet.<br />

[contact]:                          /contact
