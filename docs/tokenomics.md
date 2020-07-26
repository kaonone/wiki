# Incentive Design & Token Utility

## Glossary

**ASPT**  –  ERC20 token of the Sparta Pool. Gives the right to vote on decisions inside the pool and get access to an uncollateralized loan.

**AKRO** – ERC20 token for system governance. Gives the right to vote for changes in the Pool parameters - interest rate, bonding curve parameters, loan collateralization ratio, etc.

**Bonding curve** – mathematical formula defining the ASPT price due to the pool liquidity and the number of issued ASPTs.

**Staking** – a process of placing and locking ASPTs as a risk deposit to a special smart contract with the purpose to vouch for an honest borrower. If the borrower repays the debt properly, the person who staked for him receives a reward in the form of an interest fee. Tokens are unlocked as the borrower repays his debt, and in case he doesn’t - tokens are slashed (burned).  

**Governance fee** – spread between the entering and the exiting price of ASPT. Used to buy & burn AKRO tokens.

## ASPT

## Role and purpose: what is the role of the ASPT?

ASPT is classified as a Network Token, combining the Work token and Governance functionality. It provides voting and staking functionalities within the Pool, and gives the right to get an uncollateralized loan.

As such, the token is an essential element of the internal economy and cannot be replaced by an external stablecoin. The staking and governance approach require to be managed only by using a token, which value is connected to the current network and not tied to other projects/networks. The specific DAO-design also requires an internal token to implement functions as bonding curve and ragequit.

Meanwhile, the loans will be provided in known and reliable stablecoins (DAI, USDT, TUSD, USDC), which will be further used to repay loans. The ASPT will not be used for this purpose.

## How will the ASPT model work in the network?

*ASPT as collateral*

We use an approach that we call a “Community grant” - all platform loans are 100% secured. The user pledges his ASPTs as collateral (the deposit should be no less than 50% of the loan amount, i.e. the user will not be able to take a loan more than 200% relative to the size of ASPTs that he has). The Pool members who consider the user to be a good borrower, vouch for him and lock their ASPTs as collateral. If the sum of the ASPTs locked (both borrower and pool members) equals the size of the loan, then the borrower receives a loan in a stablecoins (DAI, USDT, TUSD, USDC).

## Underlying value: what is the value of the token tied to?

The value of the ASPT is tied to the real assets held in the DAO. Each time stablecoins is deposited or withdrawn, ASPT is minted or burned. The ASPT price is defined by the bonding curve algorithm.

It should be noted that the token holder does not receive any profits by simply holding the token. ASPT does not grant the right to receive any profits, income, payments, returns, dividends from Akropolis or any entity from its group of companies, nor is it intended to be a security, commodity, bond, debt instrument or any kind of financial instrument or investment carrying equivalent rights.

## Token Functionality and Use by Stakeholder Type

The token functionality and use is similar to the one used in the Nexus Mutual bonding curve and designed to ensure that all participants, acting in their own self-interests are motivated to (a) maximize the revenue captured through and by the network; and (b) maintain sustainable liquidity growth in the network. Please note that a party may combine roles for a greater impact within the network.

|    	|      **Economic Objectives**      	|   **How does a token help?**	|
|----------	|----------------	|---	|
| Borrower 	|  <li>Have access to uncollateralized loans; <li>Have a regular availability to take a loan;|  <li>The token issued equivalently to the amount of stablecoins allows you to make a request for an unsecured loan in the pool and collateralize a loan. The user can get a 200% loan of the amount of ASPT available. <li>Also, high liquidity in the pool formed by depositing funds, using a token, attracting users according to the bonding curve-  implies the constant presence of a “living” asset available for a loan. Thus, the user has access to an unsecured loan.  |
| Lender 	|  <li>To grant loans with the best risk/profit ratio  |  <li>Providing capital in ASPT, the provider can stake for the requests of the borrowers, receiving a percentage of interest.  |

## AKRO Governance

AKRO is similar to MKR (MakerDAO) and COMP (Compound). It is a governance token and is used for voting for protocol parameters, as well as for liquidity incentivization. More on it below:

- Token holders can participate in the system governance (soon to be launched) - vote on changes in the protocol parameters - bonding curve shape, collateralization level, minimum and maximum thresholds for loan APRs, etc.

- Liquidity mining incentives - part of TTS is allocated to liquidity mining and will be distributed to product users throughout the course of 2 years.

- Burn - there is a spread between enter and exit price of the ASPT, which forms Sparta earnings. It is used to buy AKRO tokens from the market and burning them.

<br/><br/>