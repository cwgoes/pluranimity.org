---
layout:     post
title:      "Comparative Advantages of Distributed Ledgers"
date:       2019-06-02 00:00:00 +0000
categories: dlt blockchain economics
---

Why develop distributed ledgers<sup>[1](#1)</sup>?

For the purposes of this analysis, let distributed ledgers be state transition functions executed in a consensus algorithm<sup>[2](#2)</sup> by a distributed set of parties, with arbitrary state complexity<sup>[3](#3)</sup>, unbounded transaction throughput<sup>[4](#4)</sup>, censorship resistance<sup>[5](#5)</sup>, bandwidth-inexpensive queryability<sup>[6](#6)</sup>, oracle access to elapsed time<sup>[7](#7)</sup>, and private data / public rule-set segmentation<sup>[8](#8)</sup>. None of these properties are yet satisfactorily provided by existing implementations, but we have reason enough to expect they may be in time (see references). The present developmental efforts justifiably focus on satisfying these properties, in of itself a challenging and engrossing task — but should that effort succeed — what then?

In this post, I focus on *institution design*, where an *institution* is a set of rules, actors, and incentives intentionally designed to realise a particular high-level outcome and persist itself over time in the absence of a singular coordinating entity. I outline four broad areas of institution design where I think we have reason to believe that distributed ledgers may increase the available component set for mechanism designers and thereby enable the creation of radically different institutions from what we have today: public commons, polycentric law, threshold commitment, and contingent payments. For each area, I explain the institution or institutional component reference class, why we might benefit from such institutions or components, and in what way distributed ledgers may provide a significant advantage, then attempt to articulate & address the best arguments against desirability and feasibility.

### Public commons

#### What

What are public commons?

*Public commons* are platforms which create economic surplus by connecting buyers and sellers & providing a medium through which they can transact, where the platform operator, if distinct from the userbase, is not manufacturing the product or providing the service. The US dollar (value), Airbnb (housing), Uber (transportation), Ebay (goods), Github (code, bug reports), Microsoft Windows (desktop applications), and search engines (information) are all public commons to varying degrees. Public commons tend to possess strong network effects, since the utility provided to any particular user is proportional to the number of other users, and thus they often result in natural monopolies, especially in the absence of prior open standards for product representation (present in the case of websites, for example, but not in the case of transportation or housing).

Perhaps the most successful (by both user count and economic utility) and most decentralised existing such commons is the English language, a medium for the exchange of information. Languages as commons have several convenient properties: the size of their state does not scale linearly with the number of users, approximate agreement on most of the present state is sufficient for usage (as any natural language contains many different possible encodings of the same semantics), and our mental facilities and social institutions are well-adapted to track their states and provide the high-throughput gossip required for loosely coordinated state changes.

#### Why

Why are public commons valuable, and what are their challenges?

- Public commons provide an enormous amount of utility. Seven of the ten largest global firms by market capitalisation operate commons of sorts<sup>[9](#9)</sup>, and they capture but a small fraction (although perhaps a larger fraction than necessary) of the created utility. The English language provides far more utility than all of them combined, but — and partially because (imagine if the English vocabulary were owned by a company) — it captures none of it.
- Control of commons by companies often tends to be sub-optimal, since the profit motive of the company (generally enshrined in law) is not necessarily aligned with the best interests of the commons' userbase. Especially once they attain a dominant agglomeration effect, companies may find it more profitable to extract rent far in excess of their costs, deprive users of alternative interfaces and algorithms through the use of proprietary standards and siloed data, deplatform users instead of respecting a notion of minority rights, and optimise content & information for attention and behavioural surplus capture even when it is clearly against the best interest of their userbase<sup>[10](#10)</sup>.
- The immense possible utility seems to justify incentivizing the creation of commons by allowing a capture by the creators of some fraction of the future value, but preferably in a way where the creators can credibly commit to a particular rule-set which curtails their future power over the commons should the enterprise succeed. At the moment, the only way to incentivize creation is for firms to own the commons and control all of the rules, which frequently leads to incentive misalignment.

#### Comparative advantage

Why might distributed ledger technology help, and what role would it serve?

- Distributed ledger technology can serve as the backend of a decentralised commons, enforcing the rule-set (accepting user input, matching counterparties, settling payment, operating rating algorithms, etc.) by encoding the actors, rules, and incentives in the state machine.
- Creators of a decentralised commons can capture a portion of the future economic value by assigning themselves a fraction of future revenue or an apportionment of a network-associated token, but credibly commit not to extract rent or arbitrarily alter the rules against users' interest once the platform becomes dominant (as noted by Tyler Cowen<sup>[11](#11)</sup>).
- Decentralised commons can facilitate scalable permissionless innovation and interoperation with other services and interfaces to a degree which privately operated commons cannot since interactions with the system are not bottlenecked by trusted organisational relationships.
- Distributed ledgers, by construction, cannot own and control access to data in the same sense as Google or Facebook, so the cost of exit (were the decentralised commons to ramp up fees, say) and correspondingly the degree of possible rent extraction is lower.
- Commons operated on distributed ledgers are likely to be more resilient to legal & geopolitical adversaries, since they must be constructed to function on open networks, build cryptographic authentication & Sybil resistance into their design, and do not require specialised hardware or expertise to operate.

#### Objections

Why might this approach not be desirable?

Scott Alexander has expressed concern<sup>[12](#12)</sup> about the risks of too-resilient marketplaces:

> The latest development in the brave new post-Bitcoin world is crypto-equity. At this point I’ve gone from wanting to praise these inventors as bold libertarian heroes to wanting to drag them in front of a blackboard and making them write a hundred times “I WILL NOT CALL UP THAT WHICH I CANNOT PUT DOWN” (...) People are using the contingent stupidity of our current government to replace lots of human interaction with mechanisms that cannot be coordinated even in principle.

I admit this possibility, but consider the dangers (comparatively) remote.

- Whether "unstoppable markets" which prevent censorship of funding for human trafficking or terrorism are realised hinges on whether the "hard libertarian" aspect of distributed ledgers is primarily endemic to the technology or primarily contingent on founder effects, and I think it is mostly the latter. Nothing about the decentralised nature of the infrastructure prevents vendor blacklists, legal enforcement, or even the incorporation of human oversight for dispute-resolution<sup>[13](#13)</sup>.
- It is not the case that decentralised commons cannot be coordinated. English language social norms around acceptable words and honorifics are shifting rapidly all the time. Existing distributed ledgers such as Bitcoin and Ethereum have seen frequent forks on occasions of political disagreement, and recent projects have integrated explicit governance mechanisms.
- Platform (brand) reputation of decentralised ledgers is extremely important for wide-market adoption, and the costs of exit are low, so the threat of association with socially disapproved activity may motivate ledger stakeholders to construct preventative mechanisms — or at minimum, the reputational effects will select for the ledgers which do construct such mechanisms.

Likely a far worse danger is governmental agencies or less scrupulous companies co-opting parts of the technology and branding around distributed ledgers to realise their own, often totalitarian, ends, while using their monopolies on the use of force or existing social graphs to raise the cost of exit. Attempts are already in progress<sup>[14](#14)</sup>.

Why might this approach not be feasible?

> Many unsolved technical problems remain, particularly in the areas of scaling<sup>[15](#15)</sup>, privacy<sup>[16](#16)</sup>, and genuine decentralisation<sup>[17](#17)</sup>.

  The rate of progress is rapid (on a human timescale, perhaps not on the cryptocurrency-market-timescale), and large incentives exist for solutions, so I think we can expect continued rapid progress. No functionality postulated in this analysis has theoretical impossibility results.

> Distributed ledgers will simply switch out the controlling oligarchy for a new one. Google famously committed to "do no evil", and has not succeeded — how are blockchains different? Will not the stakeholders or consensus operators merely fill the same role?

Distributed ledgers enable a kind of credible, binding commitment to future rule-sets & restrictions that for-profit companies simply cannot make, and since ledgers do not maintain a monopoly on data, the cost of exit is far lower, so consensus participants and stakeholders have far less power than shareholders (or executives) of current technology companies with data monopolies.

> "Smart contracts" and the rule-sets of distributed ledgers more generally are too rigid, and will fail to supplant meatspace systems requiring flexibility and human judgement in adjudication.

Many present "flexible" meatspace institutions — such as the IRS<sup>[18](#18)</sup>, the Pentagon<sup>[19](#19)</sup>, and Facebook<sup>[20](#20)</sup> — seem like they might benefit from a little more rigidity and a little less flexibility in enforcement. In cases where case-by-case human judgement is necessary, distributed ledgers need not and will not replace it, but can instead serve as an immutable, auditable record of the human decision-making process.

<br />

### Polycentric law

#### What

What is polycentric law?

I borrow the term from a 1999 essay<sup>[21](#21)</sup> by Tom Bell, although I use it somewhat differently.

Bell defines *polycentric law* as

> law arising from a variety of customs and private processes rather than law coercively imposed by a single state authority.

His essay cites three examples: alternative dispute resolution, private communities, and online adjudicators which have arisen on the internet (the article is a bit dated; a modern take would more likely focus on the differing rule-sets of social networks). I am interested in this essential concept, but with a broader scope and a few additional properties.

*Polycentric law* is the realisation of overlapping, voluntary, and specialised private legal systems, in a manner capable enough to supplant a substantial fraction of the existing domestic & international regulatory regime. In the context of distributed ledger institutional design, enforcement is either *ex ante* inherent in the medium of contract description or effected *ex post* through control over economic incentive levers.

I have found surprisingly little analytical exploration of this concept in the literature. One detailed, albeit fictional, depiction of how a polycentric legal system might function and evolve at global scale can be found in Ada Palmer's Terra Ignota series<sup>[22](#22)</sup>.

#### Why

Why might polycentric law be useful, and what challenges are involved?

- Present legal systems are spatially monopolised: one legislative body & governance process determines the rule-set for an area of physical space. To so determine boundaries of legal systems makes sense only to the degree by which geographical proximity indicates a preference or necessity for shared law — such a shared preference is plausible in theory or at least necessary in practice for physically-mediating legal domains such as the right to bear arms, but seems far less sensible for others like online privacy protections.

- An extraordinary amount of effort is directed to the effecting of control over the processes which govern changes in our existing legal monopolies. This effort could perhaps better be directed towards realising alternative sets of laws which individuals could voluntarily select from. Unfortunately, there is no unclaimed land (except perhaps extra-terrestrially<sup>[23](#23)</sup>) upon which a consenting group of individuals can voluntarily establish a sovereign nation — but this restriction does not exist in the digital realm.

- The closest analogue may be existing internet communities such as social networks, sub-Reddits, private chat groups, and blogs, but these communities are limited in the kinds of rule-sets — primarily content moderation and ranking — which they can implement, and limited to enforcement by reputation-based positive & negative incentive levers — primarily social capital<sup>[24](#24)</sup> and shaming/deplatforming. Furthermore, their content ranking algorithms and incentive levers are warped by opaque for-profit control, and rarely reflect anything like a Rawlsian veil.

#### Comparative advantage

Why might distributed ledger technology help, and what role would it serve?

- Distributed ledgers can enforce contracts in two distinct ways: *ex ante*, by embedding the logic directly into the ledger,
  or *ex post*, through economic incentives or penalties for attributable behaviours<sup>[25](#25)</sup>.
  *Ex ante* enforcement is rarely possible to construct with the tool-kits of existing meatspace institutions, and *ex post*
  enforcement tends to have substantial implementation costs which distort accuracy and limit precision.

- Explicit codification of legal systems will facilitate interoperation where laws are shared,
  through the use of common standards, representations, and semantics. Transactions costs of treaty
  negotiation limit diversification — Nebraska cannot negotiate an alternative trade agreement with the
  United Kingdom — and thus confer out-sized advantages on larger political blocs even though the
  policies chosen may be subpar for the smaller constituencies.

- Distributed ledgers, through inclusion and control of algorithmically scarce assets which acquire market value,
  obtain a programmable incentive lever with which to encourage or discourage particular actions in the real world,
  insofar as the results of those actions (such as behaviour in a consensus protocol) can later be reflected back to
  the state of the ledger. This capability is unique and new — the internet protocol, for example, has no such ability
  to alter the behaviour of its implementers through incentivization, and must content itself with a topology determined
  primarily by the economics of implementing firms (such as ISPs). This incentive lever is far more constrained
  than the modern state's monopoly on the legal use of force, but it is comparable to the subsidies and fines imposed
  through regulation and by civil courts, and distributed ledgers can thus plausibly contend to supplant significant parts of
  that body of law.

#### Objections

Why might this approach not be desirable?

> *Ex ante* contract enforcement by distributed ledger is dangerous because it fails to preserve the nuance and "learned lessons" of meatspace arbitration systems, as is evident in "smart contract" flaws causing hundreds of millions of dollars in losses.

  The state of "smart contract" (an unfortunate misnomer) programming is indeed far from the level of reliability which will be required for high-volume commerce and enforcement of more critical parts of law such as checking a passport at a border gate,
  but that problem will be solved in time. Contemporary type theories<sup>[26](#26)</sup> can prove arbitrary properties about the behaviour of programs, and research on translating these theories into formally verifiable contract languages is ongoing<sup>[27](#27)</sup>.
  Where necessary, fallback arbitration systems<sup>[13](#13)</sup> can also be used.

> Governance mechanisms of distributed ledgers, whether formal or informal, will be capturable just as present governance mechanisms are.

  At present, distributed ledger governance mechanisms are probably far more captured, in the sense of being controlled by a small number of entities, than even the most corrupt democratic institutions today.
  However, the value of capturing such a system and thus the amount of extractable rent is far lower. Unlike countries, which maintain a monopoly over the use of force, distributed ledgers have control over no such
  fundamentally scarce physical resource, not even data. The potency of the positive or negative levers available to a ledger depends directly on public perception of that ledger's value — constraining the behaviour of
  rational stakeholders — and should the stakeholders take action to which the users are opposed, the ledger can be forked.

Why might this approach not be feasible?

> Computing the intersections between rule-sets necessary to determine how subscribers to different legal systems can interact will be impossible or infeasible, due to complexity or due to the inability of distributed ledgers with separate consensus algorithms to interoperate.

By the nature of distributed ledgers (which must be verified by many parties), the rule-sets being verified must be public & codified, so computing intersections of compatibility should be possible and need consist solely of code (so are free to copy). Cross-consensus-algorithm interoperation protocols are under development<sup>[28](#28), [29](#29)</sup>.

> Agglomerative political coalitions & supranational bodies emerge because of economies of scale in geopolitics between military alliances and economic blocs, which will persist whether or not distributed ledgers are used as a medium of legal enforcement. The threat of physical coercion will prevent voluntary, ledger-based legal systems from supplanting a substantial portion of the role of existing institutions.

  Appearances notwithstanding, the threat of force is indeed a salient feature of modern geopolitics<sup>[30](#30)</sup>, and the economies of scale on trade agreements for physical goods will not fade anytime soon. But force as applied by the state is a blunt and expensive instrument,
  too imprecise to prevent the spread of information and too inefficient to enforce minutia of commercial & civil law. Should ledger-based financial & commercial systems be realised at global scale, would-be autocratic states will be forced to choose between market access and tight informational control,
  as they already are with the internet.

<br />

### Threshold commitment

#### What

What is threshold commitment?

*Threshold commitment* is the ability to commit to a particular action contingent on other parties committing to particular actions, possibly themselves contingent on your commitment. A set of threshold commitments can together realise an atomic transition from one state to another which could not be unilaterally effected by any of the participating parties individually<sup>[31](#31)</sup>.

Threshold commitment may prove particularly useful since it can be used to jump between Nash equilibria in incentive space: players in a game can commit to change their strategies (restricting their own future actions) contingent on other players agreeing to do likewise, and the underlying ledger can realise this transition atomically such that no individual player can defect.

In very limited form today, threshold commitments are realised by crowdfunding platforms such as Kickstarter, where producers commit to produce a product or service and consumers commit to pay a certain amount given sufficient aggregate demand to provide the necessary capital for production costs. Kickstarter is a very limited threshold commitment platform, however — the information provided to participants is minimal, the conditionals which can be committed to are limited to small-scale consumer goods manufacturing, and contract enforcement requires trust in a corporate intermediary (and is thus limited to low-stakes games: Kickstarter cannot fund public infrastructure or enforce multiparty nuclear deproliferation). 

#### Why

Why might threshold commitment be useful, and what are the challenges involved?

Scott Alexander puts the essential coordination problem best, as a parable of fishermen<sup>[32](#32)</sup>:

> As a thought experiment, let’s consider aquaculture (fish farming) in a lake. Imagine a lake with a thousand identical fish farms owned by a thousand competing companies. Each fish farm earns a profit of $1000/month. For a while, all is well.

> But each fish farm produces waste, which fouls the water in the lake. Let’s say each fish farm produces enough pollution to lower productivity in the lake by $1/month. A thousand fish farms produce enough waste to lower productivity by $1000/month, meaning none of the fish farms are making any money. Capitalism to the rescue: someone invents a complex filtering system that removes waste products. It costs $300/month to operate. All fish farms voluntarily install it, the pollution ends, and the fish farms are now making a profit of $700/month – still a respectable sum.

> But one farmer (let’s call him Steve) gets tired of spending the money to operate his filter. Now one fish farm worth of waste is polluting the lake, lowering productivity by $1. Steve earns $999 profit, and everyone else earns $699 profit. Everyone else sees Steve is much more profitable than they are, because he’s not spending the maintenance costs on his filter. They disconnect their filters too. Once four hundred people disconnect their filters, Steve is earning $600/month – less than he would be if he and everyone else had kept their filters on! And the poor virtuous filter users are only making $300. Steve goes around to everyone, saying “Wait! We all need to make a voluntary pact to use filters! Otherwise, everyone’s productivity goes down.”

> Everyone agrees with him, and they all sign the Filter Pact, except one person who is sort of a jerk. Let’s call him Mike. Now everyone is back using filters again, except Mike. Mike earns $999/month, and everyone else earns $699/month. Slowly, people start thinking they too should be getting big bucks like Mike, and disconnect their filter for $300 extra profit… A self-interested person never has any incentive to use a filter. A self-interested person has some incentive to sign a pact to make everyone use a filter, but in many cases has a stronger incentive to wait for everyone else to sign such a pact but opt out himself. This can lead to an undesirable equilibrium in which no one will sign such a pact.

> The most profitable solution to this problem is for Steve to declare himself King of the Lake and threaten to initiate force against anyone who doesn’t use a filter. This regulatory solution leads to greater total productivity for the thousand fish farms than a free market could.

The term "tragedy of the commons" was first introduced to describe this general game theoretic predicament by William Lloyd in 1833<sup>[33](#33)</sup>, and later popularised by Garrett Hardin in 1968<sup>[34](#34)</sup> — although both were primarily concerned about exponential population growth in combination with linear food supply growth, which appears to be less of an issue than originally thought<sup>[35](#35)</sup>.

Commons coordination problems under free market competition & selection fall prey to particularly pernicious pathologies. Consider a set of energy suppliers, who individually have the option to substantially reduce their carbon footprint at the expense of slightly higher prices. If energy consumers simply select by price, the suppliers which voluntarily reduce their carbon footprints will be out-competed by the suppliers which do not (and can thus charge slightly lower prices). Over time, the more ethical suppliers which attempt to price in some of their externalities will die off because they did not optimise for the most proximate goal, leading to an outcome where everyone is eventually worse off.

At a given level, this seems soluble if the consumers voluntarily elect to pay higher prices for cleaner energy, but the incentive problems compound: if one shoe manufacturer elects to pay higher energy prices voluntarily, another which does not will be able to sell slightly cheaper shoes, repeat *ad infinitum*. The transactions costs of detailed research into global supply chains quickly become insurmountable — a comprehensive analysis of the environmental impact of one product produced by a single shoe manufacturer took three graduate students most of a year<sup>[36](#36)</sup> — so end consumers could not in practice price in externalities even if they wanted to.

Similar challenges apply even at the meta-level of governance design: wherever lobbying the state, on the margin, becomes more profitable than providing better goods or services, a cyclical degeneration into cronyism can occur, as the companies which elect not to lobby the state will be "outcompeted" by those which do<sup>[37](#37)</sup>.

#### Comparative advantage

Why might distributed ledger technology help, and what role would it serve?

- In the world of the parable, a threshold commitment would allow this filter-installation pact
  to be conditionalized on every fisherman's participation — it's in all the fishermen's best interest
  to sign a pact that commits them to installing a filter if and only if everyone signs the same pact.
  Such a "threshold contract" could in theory be enforced by a state, but the transactions costs of
  legal services may render that route expensive, and imprecise enforcement may dilute the incentive alignment.
  If the fishermen settle their payments through a programmable ledger and can notarise proofs
  of filter installation in a way that is difficult to forge (or in a way such that it is cheaper
  to be honest than dishonest in expectation, perhaps with on-chain adjudication and slashing for misbehaviour),
  they can digitally sign and use the ledger to enforce such a threshold commitment.

- The state machine of a distributed ledger can realise atomic execution of
  threshold commitments through the involved users delegating control of their
  assets or operations to logic on the ledger (a "smart contract"), which can
  wait for the agreed-upon threshold before executing all agreed-upon actions
  atomically at once (or never, should the threshold never be reached), and can
  programmably reroute or burn funds to alter incentives as the commitment designates.

- The representations of binding commitments necessary to settle on a ledger
  as transactions can be collected and stored as a space of possible
  contingent actions (a sort of generalised decentralised exchange orderbook).
  Since the cost of generating and storing contingent commitments represented
  as digitally signed succinct pieces of data is effectively zero, large
  numbers of commitments can be indexed and a wide incentive space searched through.

- Threshold commitment need not constrain itself to operations expressed on a single
  ledger. With appropriate interblockchain communication protocols, users (or contracts) could
  in fact threshold-commit to switch *ledgers* (by moving their assets, or delegating
  control to another ledger) contingent on a modicum of support and perhaps the passage
  (or lack thereof) of particular alterations by an on-chain governance mechanism.

#### Objections

Why might this approach not be desirable?

> In the shoe manufacturer example, do consumers really want the carbon impacts priced in? Why don't shoe manufacturers label their shoes with "carbon rating" tags?

Such signals do occur in limited areas, particularly food — "organic" and "non-GMO" labels can command higher prices — although unfortunately
the information ecosystem behind those labels tends not to be robust. The provenance of food production, as compared to shoe manufacturing, is
likely much easier to track (except in the case of complex processed foods), and the kind of public health scares that prompt
food chain auditing don't have a clear parallel for most goods.

Were consumer goods manufacturers to start to label their products with "carbon output" tags,
it probably would help, but instead allowing the manufacturers to collectively coordinate may be a simpler
solution to implement — and is in any case complementary.

Why might this approach not be feasible?

> Threshold commitments between thousands (or millions) of participants will never fit into a single blockchain transaction, so it won't be possible to settle them atomically.

Computational efficiency can be expected to scale much faster than the number of actors involved in most threshold-commitment systems. One particularly promising technology here may be zero-knowledge proofs, instantiations of which such as SNARKS<sup>[38](#38)</sup> or STARKS<sup>[39](#39)</sup> come with "succinct" proof sizes which are generally sublinear or even constant relative to the size of the input. Such constructions can be used for transaction compression by proving the correctness and cumulative effect of many individual transactions in zero-knowledge and submitting the proof to a verifier running on the ledger.

Ledgers themselves can also, more simply, retain intermediate computational states and only "trigger" once a threshold has been met, using the same basic mechanism as the sort of stateful multi-signature account common on Ethereum<sup>[40](#40)</sup>.

> The relevant data (on, say, filter usage) cannot be easily or securely verified. Distributed ledgers can notarise data but have no way to verify its authenticity<sup>[41](#41)</sup>.

There are no magical data oracles, but none are necessary: it need not be impossible to forge the data, merely more costly in expectation to cheat than to play honestly. Distributed ledgers
can implement multiparty games (such as Foam Protocol<sup>[42](#42)</sup> for location data), Schelling-point coordination schemes (as used in Truthcoin<sup>[43](#43)</sup>),
oracle appeal systems (as in Kleros<sup>[13](#13)</sup>), staking & slashing (planned for Numerai Erasure<sup>[44](#44)</sup>),
and undoubtedly more to-be-developed techniques in order to construct the right incentives for accurate data collection.

<br />

### Contingent payments

#### What

What are contingent payments?

*Contingent payments* are the purchase of an expected difference in a probability distribution over future world states such that the expected price paid can vary depending on the eventual accuracy of the prediction.

These can be implemented in a few ways. The first, simplest way is for the buyer to escrow part or all of the purchase price with a contract executor who will release it or not in the future to the seller contingent on the future state,
which the executor must be able to measure. If the timescale is long, this has the disadvantage of not immediately releasing funds, but the right of future payment could be tokenized by the seller and resold on a secondary market to investors or third parties.
The buyer can then conditionalize their payment in arbitrary ways according to which future states they assign which utilities.

The second way is to instantiate a sort of localised futarchy. When considering purchasing and consuming a good (e.g. medicine), the buyer creates two prediction markets: one for the future probability distribution (e.g. of their health)
contingent on consuming the good, and one for the future probability distribution contingent on abstaining from the good. Assuming the markets are efficient, the difference between the two is the expected difference in the future
probability distribution, which can be used by the buyer to determine what price they should be willing to pay. No funds need to be locked, though the two prediction markets will need to be settled in the future depending on the data.

#### Why

Why might contingent payments be useful, and what are the challenges involved?

When purchasing medicine (setting aside some signalling value<sup>[45](#45)</sup>), we are intending to buy a positive difference in the future probability distribution of our health, and we ought to be willing to pay a price calculated as some increasing function of the magnitude and nature of the difference. At present, this difference can neither be efficiently measured nor easily written into contract law, so we must content ourselves with choosing to either buy or pass on a particular pharmaceutical or treatment at the market price, and rely instead on an costly, inscrutable, and generally inefficient set of institutions to implement studies, review boards, and legislation which theoretically enforces some correlation between the future health impact and the price tag. Contingent payments, predicated on the ability to cheaply track individual health outcomes, would have us instead purchase the expected future impact directly, precommiting to pay if and only if it were realised or using localised futarchy to select an accurate price.

More generally, there are many cases in which we primarily wish to purchase a difference in a future probability distribution which is in principle measurable:
education (future wealth or happiness, to some degree), exercise classes, air travel (a distribution on the landing time of the plane). There are also many cases where we primarily wish to purchase
a good for immediate consumption but would like to ensure that the long-term side effects are not deleterious: fast food,
physiologically- or psychologically-altering substances, or perhaps informational content (social media, in its future effect on our mental health), to name a few.
Contingent payments would allow part of the payment to be conditionalized on the future outcome or localised futarchy to be used to select an accurate price.

#### Comparative advantage

Why might distributed ledger technology help, and what role would it serve?

- Distributed ledgers can play the role of contract executor, for both programatically escrowed
  payments and localised futarchy, at low cost and with high assurance. Codified contracts can
  be automatically negotiated between buyers & sellers, drastically reducing the transactions costs
  of contracting compared to bespoke contracts negotiated between insurance firms and consumers.

- Distributed ledgers can separate the measurement of data (future world states) and the execution of particular 
  contracts into separate protocols, which can interface with each other through the ledger (or across ledgers<sup>[28](#28)</sup>).
  This can potentially scale more effectively than a system where the liquidity providers have separate systems for
  tracking data (e.g. insurance companies each providing health-tracking apps).

- In the latter method of local futarchy, the prediction markets must be subsidised: a substantial portion of the
  purchase price must be used to encourage liquidity in the two markets and thus an accurate price
  determinable from their difference. Distributed ledgers can programmatically realise this, allowing the
  consumer to choose what amount to spend on accurate information about the expected effects of their action.

#### Objections

Why might this approach not be desirable?

> Overindividualized contingent payments for goods like healthcare would diverge from "fair" treatment, by discriminating on the basis of pre-existing conditions, personal history, etc.

The consequentialist moral-theoretic case for personal-history-blind treatment is not clear (compared to the relatively clear expected-QALY case for using limited resources most effectively in triage).
If some level of healthcare redistribution is a societal good, post hoc subsidies could be implemented on the ledger in accordance with chosen rules. Accurate information as to the
effects of treatments on individuals would still be quite beneficial.

Why might this approach not be feasible?

> Contingent payments are still too complex to contract and will not be efficient at scale.

Contingent payment contracts written for distributed ledgers can be codified, redistributed,
and altered just like open-source-software such as Linux is today (consider the diaspora of Linux
distributions<sup>[46](#46)</sup>). The costs of developing languages and tooling can be amortised
across many contracts and ledgers.

> The transaction costs of operating prediction markets will be too high, and the markets will be too illiquid to generate correct prices.

The prediction markets will need to be subsidised, but rational consumers will be willing to do so to
gain more accurate information. If codified in common interfaces and subsidised, liquidity providers
specialising in particular sorts of predictions should emerge, a bit similar to insurance firms today,
but far easier to algorithmically automate.

> The relevant data on future states will be hard to obtain and verify.

The same challenges and solutions apply here as in threshold commitments above. Protocols will need to be constructed
to create incentives for accurately reporting data. Few have been stress-tested at scale yet, but some early results
are positive<sup>[47](#47)</sup>.

----

This analysis omits many more mundane use cases for which DLT may be able to accomplish roughly the same functionality at a lower cost or with higher efficacy than existing solutions, including cross-border remittances, internet payments, derivative settlement, data notarisation, and censorship-resistant communication, not for lack of potential comparative advantage but rather because I am primarily interested in investigating institutions which present technology cannot realise at all.

Thanks to Tomáš Zemanovic & Zhanna Sharipova for reviews of this post.

*Working draft — [feedback welcome][contact]*.

----

*Footnotes*

<span id="1">1</span>: I prefer the term "distributed ledger" to "blockchain" — the salience is in the replication mechanism, that the blocks are kept in a linked list is an implementation detail.<br />
<span id="2">2</span>: Fulfilling *agreement* and *termination* in roughly their usual BFT senses, possibly the combined view of separate parallel consensus processes, but necessarily such that the cost of breaking safety or progress is high.<br />
<span id="3">3</span>: Or rather than storage capacity could grow faster than storage usage, as is the case with cloud-provisioned storage now.<br />
<span id="4">4</span>: Or rather that transaction throughput capacity is not a bottleneck on demand, as is the case with EMV (card) payments now.<br />
<span id="5">5</span>: Such that the subset of parties responsible for executing {% ihighlight haskell %} F {% endihighlight %} cannot indefinitely censor any subset of transactions, as might be provided by (threshold decryption).<br />
<span id="6">6</span>: Such that bandwidth and compute required is proportional only in the size of the query, not the size of state, and that the querying client cannot be fooled. (current examples: TM lite client proofs).<br />
<span id="7">7</span>: As might be provided by a [verifiable-delay function](https://eprint.iacr.org/2018/601.pdf) with difficulty adjustment.<br />
<span id="8">8</span>: Meaning that specific transaction details (sender, amount, code) can be private to a user while ruleset verification (supply conservation, invariant fulfilment) is performed on the ledger, as likely will be provided by zero-knowledge proof constructions (e.g. [Zerocash](http://zerocash-project.org/media/pdf/zerocash-extended-20140518.pdf), [ZEXE](https://eprint.iacr.org/2018/962.pdf)).<br />
<span id="9">9</span>: [List of top ten firms by market capitalization](https://en.wikipedia.org/wiki/List_of_public_corporations_by_market_capitalization). I count Microsoft, Apple, Amazon, Alphabet, Facebook, Alibaba Group, and Tencent as operating commons.<br />
<span id="10">10</span>: [The Age of Surveillance Capitalism](https://www.goodreads.com/book/show/26195941-the-age-of-surveillance-capitalism), Shoshana Zuboff — the Marxist ontological frame obscures the argument, but this is still the best detailed expose I've found.<br />
<span id="11">11</span>: [Blockchains and the Opportunity of the Commons](https://marginalrevolution.com/marginalrevolution/2018/06/blockchains-opportunity-commons.html), Tyler Cowen.<br />
<span id="12">12</span>: [Meditations on Moloch](https://slatestarcodex.com/2014/07/30/meditations-on-moloch/), Scott Alexander.<br />
<span id="13">13</span>: [Kleros - The Blockchain Dispute Resolution Layer](https://kleros.io/assets/whitepaper.pdf), Federico Ast & Clément Lesaege.<br />
<span id="14">14</span>: [Facebook plans to launch 'GlobalCoin' cryptocurrency in 2020](https://www.theguardian.com/technology/2019/may/24/facebook-plans-to-launch-globalcoin-cryptocurrency-in-2020), The Guardian.<br />
<span id="15">15</span>: [Unsolved Problems in Blockchain Sharding](https://medium.com/nearprotocol/unsolved-problems-in-blockchain-sharding-2327d6517f43), Alexander Skidanov.<br />
<span id="16">16</span>: There is even [a company](https://www.chainalysis.com/) dedicated to tracing user activity on blockchains.<br />
<span id="17">17</span>: Although few major distributed ledgers are controlled by a single entity, the state of affairs in proof-of-work land is [pretty absymal](https://arewedecentralizedyet.com/). Unfortunately I have not yet found a similar resource for the newest crop of proof-of-stake blockchains.<br />
<span id="18">18</span>: See this 2017 IRS report: [Declining Resources Have Contributed to Unfavourable Trends in Several Key Criminal Investigation Business Results](https://www.treasury.gov/tigta/auditreports/2017reports/201730073fr.pdf), Treasury Inspector General for Tax Administration.<br />
<span id="19">19</span>: [Pentagon fails its first-ever audit](https://www.reuters.com/article/us-usa-pentagon-audit/pentagon-fails-its-first-ever-audit-official-says-idUSKCN1NK2MC), Reuters, 2018.<br />
<span id="20">20</span>: [This article](https://www.nationalreview.com/2019/05/the-first-rule-of-social-media-censorship-is-that-there-are-no-rules/) on Facebook deplatforming illuminates the problem, though I see little reason to expect companies to adopt the proposed solution voluntarily.<br />
<span id="21">21</span>: [Polycentric Law in a New Century](https://www.cis.org.au/app/uploads/2015/04/images/stories/policy-magazine/1999-autumn/1999-15-1-tom-bell.pdf), Tom Bell.<br />
<span id="22">22</span>: [Terra Ignota (series)](https://en.wikipedia.org/wiki/Terra_Ignota), Ada Palmer.<br />
<span id="23">23</span>: [The Luxembourg Space Law](https://www.ogier.com/news/the-luxembourg-space-law), Ogier Law.<br />
<span id="24">24</span>: [Status as a Service](https://www.eugenewei.com/blog/2019/2/19/status-as-a-service), Eugene Wei.<br />
<span id="25">25</span>: [Counterfactual slashing](https://github.com/tendermint/tendermint/issues/3244), Tendermint/Cosmos.<br />
<span id="26">26</span>: [Martin-Löf dependent type theory](https://ncatlab.org/nlab/show/Martin-L%C3%B6f+dependent+type+theory), nLab.<br />
<span id="27">27</span>: [Formality](https://github.com/moonad/formality), Victor Maia.<br />
<span id="28">28</span>: [The Interblockchain Communication Protocol](https://github.com/cosmos/ics/tree/master/ibc), Tendermint/Cosmos.<br />
<span id="29">29</span>: [Interchain Message Passing](https://wiki.polkadot.network/en/latest/polkadot/learn/interchain/), Polkadot / Web3 Foundation.<br />
<span id="30">30</span>: For an amusing illustration of the realpolitik involved, read Pentagon press releases, like [this one](https://www.navy.mil/submit/display.asp?story_id=107669) complaining about a Russian SU-27 flying past an American EP-3 in the Black Sea. The Black Sea is on the Russian coast — for comparison, imagine a Russian or Chinese carrier parked off California. Ape chest-banging incarnate.<br />
<span id="31">31</span>: For those familiar with existing ledgers such as Bitcoin or Ethereum, this may be difficult to conceptualise since most present ledgers do not natively provide transaction introspection, but the limitation is not theoretical (e.g. the [Wyvern DEX protocol](https://wyvernprotocol.com/docs)).<br />
<span id="32">32</span>: [The Non-Libertarian FAQ](https://slatestarcodex.com/2017/02/22/repost-the-non-libertarian-faq/), Scott Alexander.<br />
<span id="33">33</span>: [Two Lectures on the Checks to Population](https://archive.org/details/twolecturesonch00lloygoog/page/n1), William Lloyd.<br />
<span id="34">34</span>: [The Tragedy of the Commons](https://science.sciencemag.org/content/sci/162/3859/1243.full.pdf), Garrett Hardin.<br />
<span id="35">35</span>: [World Population Prospects](https://population.un.org/wpp/Graphs/Probabilistic/POP/TOT/), United Nations DESA / Population Division.<br />
<span id="36">36</span>: [Analyzing the Environmental Impacts of Simple Shoes](http://www.bren.ucsb.edu/research/documents/SimpleShoesFinalReport.pdf), Kyle Albers, Peter Canepa, Jennifer Miller, University of California Santa Barbera.<br />
<span id="37">37</span>: [Micheal Munger on Crony Capitalism](https://www.econtalk.org/michael-munger-on-crony-capitalism/), EconTalk / Russ Roberts.<br />
<span id="38">38</span>: [On the Size of Pairing-based Non-interactive Arguments](https://eprint.iacr.org/2016/260.pdf), Jens Groth.<br />
<span id="39">39</span>: [Scalable, transparent, and post-quantum-secure computational integrity](https://eprint.iacr.org/2018/046.pdf), Eli Ben-Sasson.<br />
<span id="40">40</span>: [Ethereum Multisignature Wallet](https://github.com/gnosis/MultiSigWallet), Gnosis.<br />
<span id="41">41</span>: An amusing illustration: this [phone cradle](https://twitter.com/mbrennanchina/status/1128201958962032641) boosts step counts to reduce insurance premiums.<br />
<span id="42">42</span>: [FOAM: The Consensus-Driven Map of the World](https://www.foam.space/publicAssets/FOAM_Whitepaper.pdf), Foamspace Corp.<br />
<span id="43">43</span>: [Truthcoin](http://www.truthcoin.info/papers/truthcoin-whitepaper.pdf), Paul Sztorc.<br />
<span id="44">44</span>: [Introducing Erasure](https://medium.com/numerai/numerai-reveals-erasure-unstoppable-peer-to-peer-data-feeds-4fbb8d92820a), Richard Craib.<br /> 
<span id="45">45</span>: [Cut Medicine in Half](https://www.cato-unbound.org/2007/09/10/robin-hanson/cut-medicine-half), Robin Hanson.<br />
<span id="46">46</span>: [DistroWatch](https://distrowatch.com/dwres.php?resource=major), Atea Ataroa Limited.<br />
<span id="47">47</span>: [Explore Augur](https://exploreaugur.com/).<br />
<span id="48">48</span>: [Allegro?](/allegro).</br />

[contact]:                          /contact
