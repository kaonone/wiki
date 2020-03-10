# Incentive Design & Token Utility

## Glossary

**pToken**  –  ERC20 token of the Akropolis DAO. Gives the right to vote on decisions inside the pool and get access to an uncollateralized loan.

**AKRO** – ERC20 token for system governance. Gives the right to vote for changes in the DAO parameters - interest rate, bonding curve parameters, loan collateralization ratio, etc..

**Bonding curve** – mathematical formula defining the pToken price due to the pool liquidity and the number of issued pTokens.

**Staking** – a process of placing and locking pTokens as a risk deposit to a special smart contract with the purpose to vouch for an honest borrower. If the borrower repays the debt properly, the person who staked for him receives a reward in the form of an interest fee. Tokens are unlocked as the borrower repays his debt, and in case he doesn’t - tokens are slashed (burned).  

**Governance fee** – spread between the entering and the exiting price of pToken. Used to buy & burn AKRO tokens.

## pToken

## Role and purpose: what is the role of the pToken?

pToken is classified as a Network Token, combining the Work token and Governance functionality. It provides voting and staking functionalities within the Pool, and gives the right to get an uncollateralized loan.

As such, the token is an essential element of the internal economy and cannot be replaced by an external stablecoin. The staking and governance approach require to be managed only by using a token, which value is connected to the current network and not tied to other projects/networks. The specific DAO-design also requires an internal token to implement functions as bonding curve and ragequit.

Meanwhile, the loans will be provided in known and reliable stablecoins (SAI initially), which will be further used to repay loans. The pToken will not be used for this purpose.

## How will the pToken model work in the network?

*pToken as collateral*

We use an approach that we call a “Community grant” - all platform loans are 100% secured. The user pledges his pTokens as collateral (the deposit should be no less than 50% of the loan amount, i.e. the user will not be able to take a loan more than 200% relative to the size of pTokens that he has). The Pool members who consider the user to be a good borrower, vouch for him and lock their pTokens as collateral. If the sum of the pTokens locked (both borrower and pool members) equals the size of the loan, then the borrower receives a loan in a stablecoin (DAI).

*pToken staking*

The Risk Assessors are staking their tokens in favor of borrowers, that they consider reliable. The more trustworthy the borrower, the more stakes he can attract from the Risk Assessors and Capital Providers. Risk Assessors are incentivized to stake pTokens for trustworthy and honest borrowers who repay the loan in time. If the borrower is good - they receive part of the interest proportionally to their stake for the borrower, and in case of a “bad borrower” situation, their pTokens (staked for the borrower) will be slashed.

## Underlying value: what is the value of the token tied to?

The value of the pToken is tied to the real assets held in the DAO. Each time DAI is deposited or withdrawn, pToken is minted or burned in accordance with the DAI. The pToken price is defined by the bonding curve algorithm.

It should be noted that the token holder does not receive any profits by simply holding the token. pToken does not grant the right to receive any profits, income, payments, returns, dividends from Akropolis or any entity from its group of companies, nor is it intended to be a security, commodity, bond, debt instrument or any kind of financial instrument or investment carrying equivalent rights.

## Token Functionality and Use by Stakeholder Type

The token functionality and use is similar to the one used in the Nexus Mutual bonding curve and designed to ensure that all participants, acting in their own self-interests are motivated to (a) maximize the revenue captured through and by the network; and (b) maintain sustainable liquidity growth in the network. Please note that a party may combine roles for a greater impact within the network.


|    	|      **Economic Objectives**      	|   **How does a token help?**	|
|----------	|-------------	|---	|
| Borrower 	|  <li>Have access to uncollateralized loans; <li>Have a regular availability to take a loan;|  <li>The token issued equivalently to the amount of DAI allows you to make a request for an unsecured loan in the pool and collateralize a loan. The user can get a 200% loan of the amount of pToken available. <li>Also, high liquidity in the pool formed by depositing funds, using a token, attracting users according to the bonding curve-  implies the constant presence of a “living” asset available for a loan. Thus, the user has access to an unsecured loan.  |
| Capital Provider 	|  <li>To grant loans with the best risk/profit ratio  |  <li>Providing capital in pToken, the provider can stake for the requests of the borrowers, receiving a percentage of interest.  |
|  Risk Assessor  |  <li>Get rewarded for the correct risk assessment and tokens staking  |  <li>pToken allows you to delegate the management of tokens of other users to a risk assessor. Upon successful risk management, the assessor receives his set percentage of interest for staking.  |


## AKRO Governance

Our management system is similar in its principles to the MakerDAO governance.
By purchasing and staking AKRO tokens, the user can:

●	Participate in the system governance - vote for changes in bonding curve parameters, collateralization level, buyback parameters, etc. It can be only done only by AKRO holders (and not pTokens holders) to prevent pool members from abusing their power (e.g. entering the pool, change bonding curve and make the pTokens too expensive to enter the pool for future members). 

●	Buyback & Burn - there is a spread between enter and exit price of the pToken, which forms pool earnings (formula in [Bonding curve mechanics]). It is used for AKRO tokens buyback from the market and burn it.



<br/><br/>