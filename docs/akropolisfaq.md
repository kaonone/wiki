# Akropolis FAQ

## Product

### What is Akropolis?

Akropolis is a DeFi yield farming aggregator and Dollar Cost Averaging tool that offers synthetic savings and high yield “accounts” aimed at DeFi-curious users with no deep technical knowledge and some understanding of Ethereum and crypto. Akropolis was built by the Akropolis team and is the second product built on AkropolisOS.

<div align="middle">
  <a href="https://akropolis.io/summary" target="_blank" rel="noopener noreferrer">
    <img src="/images/development/mainnet.png" alt="drawing" width="220">
  </a>
</div>

### Why Akropolis?

Today, the DeFi area provides great opportunities for earning money through staking, yield farming and liquidity provision. Nowadays, different DeFi protocols offer various opportunities for yield generation & yield farming which might confuse DeFi newbies & people who do not have time to follow the news constantly.

Akropolis allocate different yield-farming & yield-generating pools in one interface, solving an important problem for novice DeFi users - simple & user-friendly interface with concise and understandable information.

Another important feature is the ability to set an automated dollar-cost average (DCA) strategy into assets/liquidity pools - oriented at users who want to set up a long-term portfolio. Akropolis decreases operational costs for such operations as all funds are pooled.

We also gave special attention to UI/UX design trying to make it simple & understandable for the end-users (novice or experts) - and are going to constantly improve it & add more user-friendly features as we progress based on feedback and best practices in the space.

### How does it work?

- Connect your wallet.

- Choose one or several pools that currently provides the best yield farming opportunities.

- Choose if you want to deposit all available funds or Dollar Cost Averaging into those pools.

- Relax.

### I see a lot of “coming soon” in the interface. What is the roadmap?

You can find the roadmap [here](https://www.notion.so/b390a85d87124796b0b008b20e6ab38e?v=387bc54a16e34bf2b8f7328b839eebc2). We’re following [Guarded Launch](https://medium.com/electric-capital/derisking-defi-guarded-launches-2600ce730e0a) approach proposed by Ken Deeter from Electric.Capital - and will be rolling out updates to both interface and functionality after thorough testing and audits.


### Save

Savings is all about stablecoins pools. Currently, you can choose where to supply liquidity from selected Curve.fi and Compound pools. You can allocate in one or several pools in once click - just choose amounts & currencies, click on Allocate & chill - your funds will be sent to the corresponding pools, earn interest & farm different tokens all at once.

### Invest

Investments tab is similar to savings with one big difference - all pools contain volatile assets, so risks connected to impermanent loss are much higher. Just choose the pool you’re willing to supply liquidity to & confirm deposit -  chill while your funds earning interest & farming different tokens all at once.

### DCA

Dollar-cost average is a popular strategy in traditional finance and crypto community. If put it simply - it is automated, periodic purchases of an asset (commonly referred to as “stacking sats” in BTC community). Regardless of the asset, the DCA strategy has always been to invest periodically (weekly, monthly, etc) in an effort to reduce the impact of volatility on the overall purchase. The purchases occur regardless of the price and at regular intervals. DCA effectively removes much of the headache that comes with attempts to time the market in order to buy an asset at the best prices.

### How to set up DCA?

DCA pools are the same investment pools with volatile assets. The logic works differently though:

- All deposits are in USDC

- Insert overall deposit amount & amount for weekly DCA, confirm deposit

- Your deposit is sent to the savings pool (Compound USDC) where it constantly earns interest 

- On a weekly basis, your weekly DCA amount is withdrawn from the savings pool and sent to the exchange to buy the asset of your choice (BTC, ETH) or directly to the liquidity pool.

- Assets bought through DCA are sent to the corresponding investment pool, where they earn interest.

**Important! DCA are non-stablecoin pools. Higher risk-reward pools with higher volatility — higher potential capital gains and losses.**

#### Useful links:

[https://www.investopedia.com/terms/d/dollarcostaveraging.asp](https://www.investopedia.com/terms/d/dollarcostaveraging.asp)

[http://dcabtc.com/](http://dcabtc.com/)

### Stake

Currently, stake tab has only one pool - AKRO staking. Mechanics here are simple - you just send AKRO to this pool & farm AKRO&ADEL. No lock-up. We will be expanding the mechanics in the coming days, as well as adding governance pools to this tab.  

## Akropolis Functionality

### How to allocate liquidity?

- Enable Allocate switcher to choose pools you want to deposit into

- Choose amount & tokens in each pool

- Click on Allocate button to deposit in one transaction (additional transactions may come in a form of “approve spending”)

- That’s it. Your funds are sent to corresponding pools where they earn yield & farm tokens.

**Important! Currently, “Allocate in one transaction” is possible only if you deposit the same asset in all pools. We will be expanding this functionality in the coming weeks.**

For DCA deposits, please see [How to set up DCA](https://wiki.akropolis.io/akropolisfaq/#how-to-set-up-dca).

### What's "Add all coins in a balanced proportion"?

Each liquidity pool has a balanced ratio for assets within it - by depositing tokens in a balanced proportion, you decrease the chance of swap (leading to fewer gas fees & swap fees). 

### What's "Infinite unlock"?

Infinite unlock means that you preapprove the contract to be able to spend any amount of tokens when you interact with it. Enabling infinite unlock means that you approve spending tokens only once (thus reducing gas costs associated with signing “approve” transaction). Bear in mind - after enabling infinite unlock, all following transfers/deposit of the asset chosen won’t need approval - so please use it if you fully trust the contract. 

### How to withdraw liquidity I provided?

Each strategy option in Akropolis has a withdrawal tab. You can withdraw either in a proportion of pool assets (preferred way as it decreases swap fees) or in a form of individual tokens (with swaps & fees in place).





### [Try Akropolis on Ethereum mainnet!](https://akropolis.io/summary)
