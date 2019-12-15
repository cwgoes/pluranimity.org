---
layout:     post
title:      "The Topology of Sybil Resistance Mechanisms"
date:       2019-10-15 00:00:00 +0000
categories: proof-of-stake proof-of-work dlt
---

https://twitter.com/lucasnuzzi/status/1205225932593729536

I agree with the general class of concerns
"staking arbitrage" depends on the ability to find a counterparty who will lock the assets, so you can get the liquid coupons (staking derivatives)
that counterparty should charge a premium for taking on risk according to the level of risk (the validator, slashing rate, etc.)
I am also concerned about a totally different class of concerns, which involves directly betting against network security (e.g. betting on a fork, betting that a particular validator will equivocate, etc) (edited) 
the really tricky part is that the whole system is open, so any actor can play multiple roles (staker, liquidity provider, short with a smart contract) and it's very hard to reason about what exactly the incentives will be
there are a lot of tactics PoS networks can use, though
I agree with his (1) Increase switching costs in PoS via VDF ASICs - this is a good idea. There aren't that many VDFs right now, but they're fairly easy to construct.
Dynamic staking yield helps, I would include that in a larger category of tactics of "market-responsive proof-of-stake policy", including dynamic yields, multi-token "mutual staking" (where two chains partially share a validator set and have the shared validators slashable on both for an equivocation on either, this can be generalised to n-chains and n-tokens), flexible lock-up periods with increased yield in proportion to the lock-up period, etc
another category of tactics is "relax the safety guarantees a bit & notarise" - notarising a bunch of PoS chains into each other is easy & inexpensive, and light clients can easily check a header from many chains every so often, notarising into PoW chains is also possible
another dependency is what the transactions costs (both literally and figuratively) actually are, a lot of how much liquidity exists will depend on that
this problem is really worth some deep analysis, maybe I'll write a blog post about it, thanks for the ping
in the more immediate term, the other unrelated problem I'm concerned about is whitelabeled validation services
I think there is a very strong case to be made for correlated slashing, I am concerned that it will be politically difficult to adopt it because we launched without it & the large validators will vote against it (edited) 

for example, validators have to run VDFs to be elected (pseudo-randomly)
I don't think it helps that much though, the hardware is always going to be relatively cheap and buying more of it doesn't help you get elected more frequently (edited) 
one crazy meta approach is to try to build a reliable system on top of unreliable blockchains by having zkrollup-style exit games from every chain to several other chains (so some state is replicated)
https://github.com/cosmos/ics/issues/267
to be fair, the only reason these concerns don't apply to PoW is that ASICs just so happen to be fixed-purpose once manufactured (edited) 
it's not some "physical property of energy in the universe" or something, that's bogus (edited) 
if FPGAs were as efficient as ASICs but could be instantly reprogrammed PoW would have the exact same problem
