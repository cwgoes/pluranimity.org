* What is governance
d-ledgers are not autonomous systems at all (ducklings, stock trading programs, and robots are far moreso)
rather: exist to provide utility for users, which end up being human (possibly mediated), maximize expected future utility for current stakeholder set 
must not only provision for future but also management once protocol becomes dominant
* Aligned incentive structures
goal: maximize expected future utility for current stakeholder set = sum of individual utility functions * fraction stake
no intent to debate ethicality, just to analyze possiblity - besides, stakeholders are bound by future + competitors
!= price, notably at what point fiat equivalents no longer mean as much
stakeholder set will change, and utility functions can incorporate expected future changes (e.g. want to be more valuable to sell)
this is just an instantaneous characterization
corollary
maximize chance of actions with highest future expected value being taken
constraints
actors who might take actions have opportunity cost (protocol is competing for time)
indirect: some projects might happen already, no need to reward, but create environments where possible
difficulty of prediction of expected benefit
protocol has finite resources (does it?)
governance overhead
wetware - need advance funding, lots of execution risk
tactic
align rewards with future expected benefit
devote some - possibly quite a bit of - rewards just for prediction accuracy
ensure timelines work within wetware constraints (people can be paid salaries)
* Wetware Constraints
need advance funding
execution risk
opportunity costs of time spent
* Futarchy
one method of satisfying some of these constraints
organizational competition with binding rule enforcement
prediction markets on actions to benefit protocol
forks as a way to de-risk and speed up protocol upgrades

notes from chat:

Futarchy: Vote Values, But Bet Beliefs by Robin Hanson This short "manifesto" describes a new form of government. In "futarchy," we would vote on values, but bet on beliefs. Elected representatives would formally define and manage an after-the-fact measurement of national welfare, while market speculators would say which policies they expect to raise national welfare.
All the components should be able to be implemented on-chain - the protocol layer upgrade system for rule changes, predicition markets as smart contracts, and binding agreements to consider certain outcomes to have particular values (by paying amounts in Tez).
Also, I think it could be a nice model to distribute the risk of funding protocol upgrades.
Prediction markets on protocol upgrades could provide assurance ahead of time and funding prior to the actual passage of the upgrade (and payment in XTZ), with something like the following structure:
Say I, a user (or legal entity), wish to propose a protocol upgrade to Tezos. I write up a description of my intended upgrade (quite possibly complete in code - just not passed yet) and publicly attest to an identity.
I then sell a binary option contract on the protocol upgrade's passage. The protocol upgrade, for example, will include payment of 20K XTZ. 10K XTZ of that will go to me, and 10K XTZ will go to option contract holders (proportional by amount).
The binary option is worth 0 if the protocol upgrade does not pass and 1 if it does - so the market should set a price corresponding to the expected change of passage.
Different models of funding availability could be used - if the public identity attested to is valuable, option contract purchasers may be willing to take the risk of unescrowed payment, or funding could be dispensed over time according to protocol upgrade development milestones.
It would also be possible to implement a "short-circuit" - if the market values the contract below 0.1 XTZ (~ 10% chance of passage, say), all funds are refunded and the developer (me) receives useful information that they should revise the proposal or give up on it.
MikeMonohan (MyCryptoDelegate.com): 'unlike the "real world" we all have basically the same single goal' - I understand your intent but I don't think this is true in practice.
In particular, different users will presumably have different weights over time.
I may want to hold my XTZ for a year, then sell it to buy a sportscar - so I'll vote for a proposal with expected returns in 12 months, but against one that won't payoff until after that.
But you may plan to hold your XTZ for five years - so you might vote against the first proposal if you expected a cheaper one with a superset of its functionality to come along before then (zkSTARKS vs zkSNARKs, for example).
That's a simple model - you or I could of course sell/buy XTZ on the markets in between our planned dates, and if the markets are very efficient predictors of future value some of this would even out, as the future value of protocol upgrades should get "priced in" as soon as they're passed.

The ultimate arbiter is the on-chain governance system - so to an extent I think off-chain social structures will need to *compete* to prove their effectiveness to Tezos holders who will vote on the protocol upgrades they propose.
If the PGC is effective at proposing protocol upgrades which pass and add value to the network, it would likely gain social capital over time - if not, it would lose social capital to other organizations which do a better job (social capital = degree to which Tezos holders trust and will vote for the recommendations of an organization).
I don't think protocol upgrades are necessarily the only method of influence either. A wallet provider, for example, could conceivably set up a system of smart contracts to form a voting pact with their users - where users would still "own" their XTZ (held in a smart contract) but they agree to vote as a bloc - an on-chain political party, essentially.
In return for delegating their votes to the on-chain political party, members would have access to an internal process for proposing and voting on protocol upgrades - a la primaries in a political party.
Organizations such as the PGC could in fact use this structure, requiring members to actually commit their Tezos, in a binding manner, to the result of an internal governance process, before allowing those members to participate in the process.
Sorry, that was unclear - there are really two distinct ideas here.
One: Off-chain organizations could implement binding on-chain process enforcement by implementing parts of their internal governance structure in smart contracts and requiring organization members to commit their votes (XTZ) to the result of the internal governance process before knowing what those results are.
There may be similar incentives to do this as there are incentives to form political parties today - blocs with shared interests may have more influence in the whole voting set by banding together and resolving minor disagreements amongst themselves.
Two: Service providers could require commitment of votes as payment of a sort. A wallet provider (think MyEtherWallet) could provide wallet software for free, and still allow users to control their Tezos in every way *except* voting - the wallet provider would be able to vote with the user's XTZ as long as the user kept it in the provider's wallet implementation smart contracts.
Users may consider the loss of their voting power worth the convenience of the software (perhaps they were unlikely to spend time reviewing proposals anyways), and the wallet provider may value the voting power enough to charge nothing else for the product.

Actually, I think Tezos forks could be really useful (not in quite the competing sense of Bitcoin / Bitcoin Cash).
Especially if there's good cross-chain interop through Cosmos or similar.
Different, lower-value forks can test much riskier protocol upgrades (and test them faster).
Then the main chain can adopt the most successful upgrades.
Perhaps the main chain can credit balances of a forked chain somehow if the mainchain adopts the fork's protocol upgrade, so the forked chain's price would serve as a predictor of the chance of the protocol upgrade getting adopted by the main chain.
What better way to test a protocol upgrade than by forking Tezos, adding the upgrade, then asking people to use it and seeing if they find it useful?
laprunminta (Kate Sills): Perhaps eventually it may be possible for distributed ledgers to not only represent but also enforce property rights. Say, in the future, driverless car ownership was tracked on a blockchain. Physical gateways - toll bridges, perhaps - could require a signature from the owner to whom the car was registered prior to allowing it to pass.
A thief who merely stole the physical vehicle would be unable to transport it very far - no police enforcement required.
The real trick will be when we all put nuclear weapon launch control on a distributed ledger - then write a binding smart contract to disable all the weapons at once, ending the current game theoretic mess of mutually assured destruction.
