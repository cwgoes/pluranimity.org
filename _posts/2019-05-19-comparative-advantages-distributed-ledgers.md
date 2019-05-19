---
layout:     post
title:      "Comparative Advantages of Distributed Ledgers"
date:       2019-05-19 00:00:00 +0000
categories: dlt blockchain economics
---

Why develop distributed ledgers<sup>[1](#1)</sup>?

For the purposes of this analysis, let distributed ledgers be state transition functions executed in a consensus algorithm<sup>[2](#2)</sup> by a distributed set of parties, with arbitrary state complexity<sup>[3](#3)</sup>, unbounded transaction throughput<sup>[4](#4)</sup>, perfect censorship resistance<sup>[5](#5)</sup>, bandwidth-inexpensive queryability<sup>[6](#6)</sup>, oracle access to elapsed time<sup>[7](#7)</sup>, and private data - public ruleset segmentation<sup>[8](#8)</sup>. None of these properties are yet satisfactorily provided by existing implementations, but we have reason enough to expect they may be in time (see references). The present developmental efforts justifiably focus on satisficing these properties, in of itself a challenging and engrossing task — but assume we largely succeed — what then?

In this post, I focus on *institution design*, where an *institution* is a set of rules, actors, and incentives intentionally designed to realize a particular high-level outcome and persist itself over time in the absence of a singular coordinating entity. I outline four broad areas of institution design where I think we have reason to believe that distributed ledgers may increase the available component set for mechanism designers and thereby enable the creation of radically different institutions from what we have today: public commons, polycentric law, threshold commitment, and contingent payments. For each area, I explain the institution or institutional component reference class, why we might benefit from such institutions or components, and in what way distributed ledgers may provide a significant advantage, then attempt to articulate & address the best arguments against desirability and feasibility.

### Public commons

#### What

What are public commons?

*Public commons* are platforms which create economic surplus by connecting buyers and sellers & providing a medium through which they can transact, where the platform operator, if distinct from the userbase, is not manufacturing the product or providing the service. The US dollar (value), Airbnb (housing), Uber (transportation), Ebay (goods), Github (code, bug reports), Microsoft Windows (desktop applications), and search engines (information) are all public commons to varying degrees. Public commons tend to possess strong network effects, since the utility provided to any particular user is proportional to the number of other users, and thus they often result in natural monopolies, especially in the absence of prior open standards for product representation (present in the case of websites, for example, but not in the case of transportation or housing).

Perhaps the most successful (by both user count and economic utility) — and most decentralized — existing such commons is the English language, a medium for the exchange of information. Languages as commons have several convenient properties: the size of their state does not scale linearly with the number of users, approximate agreement on most of the present state is sufficient for usage (as any natural language contains many different possible encodings of the same semantics), and our mental facilities and social institutions are well-adapted to track their states and provide the high-throughput gossip required for loosely coordinated state changes.

#### Why

Why are public commons valuable, and what are their challenges?

- Public commons provide an enormous amount of utility. Seven of the ten largest global firms by market capitalization operate commons of sorts<sup>[9](#9)</sup>, and they capture but a small fraction (although perhaps a larger fraction than necessary) of the created utility. The English language provides far more utility than all of them combined, but — and partially because (imagine if the English vocabulary were owned by a company) — it captures none of it.
- Control of commons by companies often tends to be suboptimal, since the profit motive of the company (generally enshrined in law) is not necessarily aligned with the best interests of the commons' userbase. Especially once they attain a dominant agglomeration effect, companies may find it more profitable to extract rent far in excess of their costs, deprive users of alternative interfaces and algorithms through the use of proprietary standards and siloed data, deplatform users instead of respecting a notion of minority rights, and optimize content & information for attention and behavioural surplus capture even when it is clearly against the best interest of the user<sup>[10](#10)</sup>.
- The immense possible utility seems to justify incentivizing the creation of commons by allowing a capture by the creators of some fraction of the future value, but preferably in a way where the creators can credibly commit to a particular ruleset which curtails their power as an operator of the commons. At the moment, the only way to incentivize creation is for firms to own the commons and control all of the rules, which frequently leads to incentive misalignment.

#### Comparative advantage

Why might distributed ledger technology help, and what role would it serve?

- Distributed ledger technology can serve as the backbone of a decentralized commons, enforcing the ruleset (accepting user input, matching counterparties, settling payment, operating rating algorithms, etc.) by encoding the actors, rules, and incentives in the state machine.
- Creators of a decentralized commons can capture a portion of the future economic value by assigning themselves a fraction of future revenue or an apportionment of a network-associated token, but credibly commit not to extract rent or arbitrarily alter the rules against users' interest once the platform becomes dominant (as noted by Tyler Cowen<sup>[11](#11)</sup>).
- Decentralized commons can faciliate scalable permissionless innovation and interoperation with other services and interfaces since interactions with the system are not bottlenecked by trusted organizational relationships.
- Distributed ledgers, by construction, cannot own and control access to data in the same sense as Google or Facebook, so the cost of exit (were the decentralized commons to ramp up fees, say) and correspondingly the degree of possible rent extraction is lower.
- Commons operated on distributed ledgers are likely to be more resilient to legal & geopolitical adversaries, since they must be constructed to function on open networks, build cryptographic authentication & Sybil resistance into their design, and do not require specialized hardware or expertise to operate.

#### Objections

Why might this approach not be desirable?

Scott Alexander has expressed concern<sup>[12](#12)</sup> about the risks of too-resilient marketplaces:

> The latest development in the brave new post-Bitcoin world is crypto-equity. At this point I’ve gone from wanting to praise these inventors as bold libertarian heroes to wanting to drag them in front of a blackboard and making them write a hundred times “I WILL NOT CALL UP THAT WHICH I CANNOT PUT DOWN” (...) People are using the contingent stupidity of our current government to replace lots of human interaction with mechanisms that cannot be coordinated even in principle.

I admit this possibility, but consider it remote.

- I suspect whether "unstoppable markets" which prevent censorship of funding for human trafficking or terrorism are realized hinges on whether the "hard libertarian" aspect of distributed ledgers is primarily endemic to the technology or primarily contingent on founder effects, and I think it is mostly the latter. Nothing about the decentralized nature of the infrastructure prevents vendor blacklists, legal enforcement, or even the incorporation of human oversight for dispute-resolution<sup>[13](#13)</sup>.
- I don't think that decentralized commons cannot be coordinated. English language social norms around acceptable words and honorifics are shifting rapidly all the time. Existing distributed ledgers such as Bitcoin and Ethereum have seen frequent forks on occaisions of political disagreement, and recent projects have integrated explicit governance mechanisms.
- Platform (brand) reputation of decentralized ledgers is extremely important, and the costs of exit are low, so the threat of association with socially disapproved activity may motivate ledger stakeholders to construct preventative mechanisms.

Likely a far worse danger is governmental agencies or less scrupulous companies co-opting parts of the technology and branding around distributed ledgers to realize their own, often totalitarian, ends, while using their monopolies on the use of force or existing social graphs to raise the cost of exit. 

Why might this approach not be feasible?

> Many unsolved technical problems remain, particularly in the areas of scaling<sup>blockchain-scaling</sup>, privacy<sup>chainalysis</sup>, and genuine decentralization<sup>arewedecentralizedyet</sup>.

  The rate of progress is rapid (on a human timescale, not perhaps on the market timescale) and I think we can expect these to be solved in time.

> Distributed ledgers will simply switch out the controlling oligarchy for a new one. Google famously committed to "do no evil", and has not succeeded - how are blockchains different? Will not the stakeholders or consensus operators merely fill the same role?

Distributed ledgers enable a kind of credible, binding commitment to future rulesets & restrictions that for-profit companies simply cannot make.

Since ledgers do not maintain a monopoly on data, the cost of exit is far lower, so consensus participants and stakeholders have far less power than shareholders of current technology companies with data monopolies.

> "Smart contracts" and the rulesets of distributed ledgers more generally are too rigid, and will fail to supplant meatspace systems requiring flexibility and human judgement in adjudication.

Many present "flexible" meatspace institutions — such as the IRS<sup>taxevasion</sup>, the Pentagon<sup>fundslost</sup>, and Facebook<sup>deplatforming</sup> — seem like they might benefit from a little more rigidity and a little less flexibility in enforcement. In cases where case-by-case human judgement is necessary, distributed ledgers will not replace it, but can instead serve as an immutable, auditable record of the process.

### Polycentric law

#### What

What is polycentric law?

I borrow the term from a 1999 essay<sup>[13](#13)</sup> by Tom Bell, although I use it somewhat differently.

Bell defines polycentric law as

> law arising from a variety of customs and private processes rather than law coercively imposed by a single state authority.

His essay cites three examples: alternative dispute resolution, private communities, and online adjudicators which have arisen on the internet (the article is a bit dated — a modern take would more likely focus on the differing rulesets of social networks). I am interested in this essential concept, but with a broader scope and a few additional properties.

*Polycentric law* is the realization of overlapping, voluntary, and specialized private legal systems, in a manner capable enough to supplant a substantial fraction of the existing domestic & international regulatory regime. Although this is not inherent to the definition, in the distributed ledger context, enforcement is either inherent or effected through control over economic incentive levers instead of a monopoly on the use of force.

One detailed, albeit fictional, depiction of how a polycentric legal system might function and evolve at global scale can be found in Ada Palmer's Terra Ignota series<sup>[14](#14)</sup>.

#### Why

Why might polycentric law be useful, and what challenges are involved?

- Present legal systems are regionally monopolized: one legislative body & governance process determines the ruleset for an area of physical space. To so determine boundaries of legal systems makes sense only to the degree by which geographical proximity indicates a preference or necessity for shared law — such a shared preference is plausible or at least necessary for physically-mediating domains such as the right to bear arms, but seems far less sensical for others like online privacy protections.

- An extraordinary amount of effort is directed to the effecting of control over the processes which govern changes in our existing legal monopolies. This effort could perhaps better be directed towards realizing alternative sets of laws which individuals could voluntarily select from. Unfortunately, there is no unclaimed land (except perhaps extraterrestrially) upon which a consenting group of individuals can voluntarily establish a sovereign nation — but this restriction does not exist in the digital realm.

- The closest analogue may be existing internet communities such as social networks, sub-Reddits, private chat groups, and blogs, but these communities are limited in the kinds of rulesets - primarily content moderation and ranking - and methods of enforcement by positive & negative incentive levers - primarily social capital<sup>[15](#15)</sup> or shaming - that they can implement.

#### Comparative advantage

Why might distributed ledger technology help, and what role would it serve?

- Distributed ledgers can enforce contracts in two distinct ways: *ex ante*, by embedding the logic directly into the ledger,
  or *ex post* through economic incentives or penalties for attributable behaviours<sup>counterfactual-slashing</sup>.
  *Ex ante* enforcement is rarely possible to construct with the toolkits of existing meatspace institutions, and *ex post*
  enforcement tends to have substantial implementation costs which distort accuracy.

- Facilitates codified integration of disparate systems; interoperation where laws are shared

- Includes constrained incentive layer which can affect the real world

- Could eventually maintain monopoly on use of force (?) (cite: Nick Bostrom vulnerable world hypothesis)

#### Objections

Why might this approach not be desirable?

> Concentrated political coalitions & supranational bodies emerge because of economies of scale in military & economic geopolitics, which will persist whether or not distributed ledgers are used as a medium of legal enforcement.

  hard to predict now, but reasons to believe it would be, easier to solve information problem

  ledgers by nature do not have monopoly over *data*, or over *land*, "fork threat" real & essential

> *Ex ante* contract enforcement by distributed ledger is dangerous because it fails to preserve the nuance and "learned lessons" of meatspace arbitration systems.

  initially existing basic legal structures remain in place, more voluntary aspects of trade, commerce, citizenship

> Governance mechanisms of distributed ledgers, whether formal or informal, will be capturable just as present governance mechanisms are.

- consensus or ledger governance systems would be just as capturable
  maybe, but the ledgers can compete, no fundamentally scarce resource (land) and existing ledgers can't threaten with weaponry

Why might this approach not be feasible?

> Computing the intersections between rulesets necessary to determine how subscribers to different legal systems can interact will be impossible, due to complexity or due to the inability of distributed ledgers with separate consensus algorithms to interoperate.

By the nature of distributed ledgers (which must be verified by many parties), the rulesets being verified must be public & codified, so computing intersections of compatibility should be possible. Cross-consensus-algorithm interoperation protocols are under development<sup>polkadot,cosmosibc</sup>.

> The threat of physical coercion will prevent voluntary, ledger-based legal systems from supplanting a substantial portion of the role of existing institutions.

  The threat of force is indeed a feature of modern geopolitics<sup>force</sup>


This may be true, but technology does supplant (banking system), force is a blunt instrument

### Threshold commitment

#### What

What is threshold commitment?

*Threshold commitment* is the ability to commit to a particular action (on a distributed ledger, a particular transaction) contingent on other parties committing to particular actions (possibly themselves contingent on your commitment). A set of threshold commitments can together realize an atomic transition from one state to another which could not be unilaterally effected by any of the participating parties individually<sup>ledgers</sup>.

Threshold commitment may prove particularly useful since it can be used to jump between Nash equilibria in incentive space: players in a game can commit to change their strategies (restricting their own future actions) contingent on other players agreeing to do likewise, and the underlying ledger can realize this transition atomically such that no individual player can defect.

In very limited form today, threshold commitments are realized by crowdfunding platforms such as Kickstarter, where producers commit to produce a product or service given sufficient demand, and consumers commit to pay a certain amount given sufficient demand to provide the necessary capital for production costs. Kickstarter is a very limited threshold commitment platform, however — the information provided to participants is quite minimal, the conditionals which can be committed to are very limited, and contract enforcement requires trust in a corporate intermediary (and is thus limited to low-stakes games: Kickstarter cannot fund public infrastructure or enforce multiparty nuclear deprofileration). 

#### Why

Why might threshold commitment be useful, and what are the challenges involved?

The best illustration of the essential game theoretic problem can be found in a parable of fishermen upon a lake.

cite slatestarcodex libertarianism post on lake fishing
- cite tragedy of commons - http://science.sciencemag.org/content/162/3859/1243.full

- platform lockin, bad game theoretic equilibria, surveillance capitalism

- stuck in pareto-efficient local optima ~ better: pareto-efficient global optima, even tradeoffs

e.g.

- carbon emission commitments, solve tragedies of the commons
- companies adopting carbon tax while avoiding Malthusian trap
- nations restricting tax competition, legal arbitrage
- policy compromises
- us/russia disable nuclear devices
- group of people agree to leave a platform (Facebook)

#### Comparative advantage

Why might distributed ledger technology help, and what role would it serve?

- collection of binding commitments - can maintain space of possible contingent actions - "DEX orderbook"

- indexable commitment stores, data processing

- atomicization of actions

- could be used to threshold-commit to switch *ledgers*

#### Objections

Why might this approach not be desirable?

> Are centrally controlled platforms really extracting that much rent? If they are, why aren't humans coordinating to leave Facebook et al.?

Coordination is really hard (at least at fast speed) - unilateral actions do happen, and eventual "tipping point", but slower. Operative question: how easy to compete with better ruleset.

Why might this approach not be feasible?

> Enacting threshold commitments between thousands (or millions) of participants will never fit into a single blockchain transaction, so won't be possible to settle atomically.

This is currently the case, but computational efficiency can be expected to scale much faster than the number of actors involved in most threshold-commitment systems. One particularly promising technology here may be zero-knowledge proofs, instantiations of which such as SNARKS<sup>?</sup> or STARKS<sup>?</sup> come with "succinct" proof sizes which are generally sublinear or even constant relative to the size of the input.

### Contingent payments

#### What

What are contingent payments?

*Contingent payments* are the purchase of an expected difference in a future probability distribution such that the price paid can vary contingent on the eventual accuracy of the prediction.

When purchasing medicine (setting aside some signaling value<sup>[?](?)</sup>), we are intending to buy a positive difference in the future probability distribution of our health, and we are willing to pay a price as some increasing function of the magnitude of the difference. At present, this difference can neither be efficiently measured nor easily written into contract law, so we must content ourselves with choosing to either buy or pass on a particular pharmaceutical or treatment at the market price, and rely instead on an costly, inscrutable, and generally inefficient set of institutions to implement studies, review boards, and legislation which enforces some correlation between the future health impact and the price tag. Contingent payments, predicated on the ability to cheaply track individual health outcomes, would have us instead purchase the expected future impact directly, precommiting to pay if and only if it were realized?

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

> Existing systems are already effective at this, the hard part is prediction.

lots of evidence incentives are screwy

> Overindividualized contingent payments would diverge from "fair" treatment, by discriminating on the basis of pre-existing conditions, personal history, etc.

not sure about a priori, always an opportunity cost - should work more like triage than "care at any cost" - but of course *I* would try
if we accept premise, possible to enforce post hoc subsidies according to ratio of probability distributions or something

Why might this approach not be feasible?

> The relevant data cannot be easily or securely verified. Distributed ledgers can notarize data but have no way to verify its authenticity.<sup>??</sup>.

not in all cases, but verification just needs to be cost-to-forge, not perfect

> Contingent payments are still too complex to contract and will not be efficient at scale.

information from smart devices, doesn't need to be that complex (e.g. time of death) - walk into a pharmacy and contract with any drug you buy

> The transaction costs of operating prediction markets will be too high, and the markets will be too illiquid to generate correct prices.

mostly automated, there are existing strong correlations which just aren't priced in

----

This analysis omits many more mundane usecases for which DLT may be able to accomplish roughly the same functionality at a lower cost or with higher efficacy than existing solutions, including cross-border remittances, internet payments, derivative settlement, data notarization, and censorship-resistant communication, not for lack of potential comparative advantage but rather because I am primarily interested in investigating institutions which present technology cannot realize at all.

<!--
Thanks to XYZ for reviews of this post.
-->

*Working draft - [feedback welcome][contact]*.

----

*Footnotes*

<span id="1">1</span>: I prefer the term to "blockchain" — the salience is in the replication mechanism, that the blocks are kept in a linked list is an implementation detail.<br />
<span id="2">2</span>: Fulfilling *agreement* and *termination* in roughly their usual BFT senses, possibly the combined view of separate parallel consensus processes, but necessarily such that the cost of breaking safety or progress is high.<br />
<span id="3">3</span>: Or rather than storage capacity could grow faster than storage usage, as is the case with cloud-provisioned storage now.<br />
<span id="4">4</span>: Or rather that transaction throughput capacity is not a bottleneck on demand, as is the case with EMV (card) payments now.<br />
<span id="5">5</span>: Such that the subset of parties responsible for executing {% ihighlight haskell %} F {% endihighlight %} cannot indefinitely censor any subset of transactions, as might be provided by (threshold decryption).<br />
<span id="6">6</span>: Such that bandwidth and compute required is proportional only in the size of the query, not the size of state, and that the querying client cannot be fooled. (current examples: TM lite client proofs).<br />
<span id="7">7</span>: As might be provided by a verifiable-delay function with difficulty adjustment (cite: Wachowski VDF paper). <br />
<span id="8">8</span>: Meaning that specific transaction details (sender, amount, code) can be private to a user while ruleset verification (supply conservation, invariant fulfillment) is performed on the ledger, as likely will be provided by zero-knowledge proof constructions (current examples: Zerocash, ZEXE).<br />
<span id="9">9</span>: [List of top ten firms by market capitalization](https://en.wikipedia.org/wiki/List_of_public_corporations_by_market_capitalization). I count Microsoft, Apple, Amazon, Alphabet, Facebook, Alibaba Group, and Tencent as operating commons.<br />
<span id="10">10</span>: [The Age of Surveillance Capitalism](https://www.goodreads.com/book/show/26195941-the-age-of-surveillance-capitalism), Shoshana Zuboff - the Marxist ontological frame obscures the argument, but this is still the best detailed expose I've found.<br />
<span id="11">11</span>: [Blockchains and the Opportunity of the Commons](https://marginalrevolution.com/marginalrevolution/2018/06/blockchains-opportunity-commons.html), Tyler Cowen.<br />
<span id="12">12</span>: [Meditations on Moloch](https://slatestarcodex.com/2014/07/30/meditations-on-moloch/), Scott Alexander.<br />
<span id="13">13</span>: [Kleros - The Blockchain Dispute Resolution Layer](https://kleros.io/assets/whitepaper.pdf), Federico Ast & Clément Lesaege.<br />

<span id="13">13</span>: [Polycentric Law in a New Century](https://www.cis.org.au/app/uploads/2015/04/images/stories/policy-magazine/1999-autumn/1999-15-1-tom-bell.pdf), Tom Bell.<br />
<span id="14">14</span>: [Terra Ignota (series)](https://en.wikipedia.org/wiki/Terra_Ignota), Ada Palmer.<br />
<span id="15">15</span>: [Status as a Service](https://www.eugenewei.com/blog/2019/2/19/status-as-a-service), Eugene Wei.<br />

<span id="??">??</span>: For those familiar with existing ledgers such as Bitcoin or Ethereum, this may be difficult to conceptualize since most present ledgers do not natively provide transaction introspection, but the limitation is not theoretical. As an example in this direction consider the [Wyvern DEX protocol](https://wyvernprotocol.com/docs).

<span id="??">??</span>: For an amusing illustration of the realpolitik involved, read Pentagon press releases, like [this one](https://www.navy.mil/submit/display.asp?story_id=107669) complaining about a Russian SU-27 flying past an American EP-3 in the Black Sea. The Black Sea is on the Russian coast - for comparision, imagine a Russian or Chinese carrier parked off California. Ape chest-banging incarnate.

<span id="??">??</span>: [Hanson on Signalling](https://www.econtalk.org/hanson-on-signalling/), Russ Roberts / Robin Hanson.<br />

<span id="??">??</span>: See this [phone cradle](https://twitter.com/mbrennanchina/status/1128201958962032641) for boosting step counts.<br />

[contact]:                          /contact
