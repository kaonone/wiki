## What is the Sparta Pool?

Our pool automates the work of financial organizations, and solves the following challenges:

- Risk assessment of different investment instruments
- Lending funds with the maximum percentage, taking loss risk into account
- Liquidity provision to avoid cash gap and subsequent bankruptcy

The goal of our pool is to create a community-owned fund that helps its members earn high-interest rates by providing unsecured loans to its members and by providing capital to various liquid DeFi instruments.

<img src="/images/development/sparta/sparta-new.png" alt="drawing" />

## Motivation / Objective / Features

1. Uncollateralised lending available through the pooling of funds. Currently, in DeFi most lending is over-collateralised.
2. Maximise earnings to its members
3. Incentives for early adopters/users of the pool
4. Incentives to grow the pool size through referrals

## Incentivized behavior

1. Early membership is incentivized by the bonding curve
2. Pools growth is incentivized by borrowers as it leads to decreasing of loan&#39;s interest rate
3. Incentivize responsible credit risk assessment - risk assessors act as guarantors for the credit and their funds are at risk of being slashed in the case of wrong assessment.
4. Active voting (equivalent to risk assessment) is incentivized – only active voters i.e. guarantors earn money in the pool.

## Improvements over traditional / legacy models

1. Use of bonding curve economically incentivises early participants
2. Automates the treasury operations (responsible for having enough liquid assets to  cover the pool&#39;s obligations) by stimulating the attraction of new members while reducing the size of liquid assets in a pool.
3. Automates &quot;ragequitting&quot; in case of disagreements with decisions made in the pool.

## Definitions and principles

1. Initial deposits only in DAI.
2. Akropolis Sparta Pool Token (ASPT) – ERC20 token of DAO. Gives the right to vote for governance/investment decision and to get uncollateralized loan.
3. Ragequit - immediate pool leaving mechanism without funds blocked in DAO (in case you haven&#39;t staked (voted for) anyone).
4. Bonding curve – mathematical curve defining price/supply correlation.

## How does it work?

### Entering and leaving the pool

A DAO is a community-owned organization where community members collectively made decisions regarding fund management. This can scare people away from entering or leaving the DAO as their funds may be blocked in the DAO, for one reason or another.

To solve this problem, we use the Continuous Token Model. Users can enter and exit the DAO by buying and selling ASPTs price of which is determined by the bonding curve (mathematical curve defining price/supply correlation). This approach not only solves the problem of potential funds lock but also gives an additional incentive for the first users due to the bonding curve design. The cost of the token on the bonding curve depends on the amount of liquidity in the pool: with increasing liquidity, the cost of the DAO token increases, while lesser liquidity decreases it.

However, exiting the DAO using the bonding curve exposes the liquidity problem - _what if someone wants to exit the pool with no liquidity?_ (for example, all liquid assets are distributed to borrowers). In our case, such a situation is impossible due to the design of the pool.

&quot;Ragequit&quot; is a mechanism for leaving the pool at any moment, if you haven&#39;t staked (voted to give a loan) for somebody. MolochDAO was first to introduce this approach. We implemented our own variation of &quot;ragequit&quot; using the Bonding Curve mechanism. More on it in &quot;Bonding curve section&quot;

### Сredit issuance

<img src="/images/development/sparta/issuance.png" alt="drawing" />

One of the main use cases of our product is attracting unsecured (uncollateralized) credit by pool users. Why the creation of such a product is so important to us? In developing countries, unsecured credit is often considered as the only tool to improve life quality (see Grameen Bank, Chamas, etc.), because people there don&#39;t have access to the proper banking system. At the same time, most existing DeFi products offer over-collateralized lending that attracts only specific users - either traders who want more leverage for trading or holders who believe in asset growth but need DAI to pay for current expenses. Our focus is on building financial products for underbanked people, who are not knowledgeable on the crypto market.

But how can we guarantee the system stability and decrease to a minimum possibility of lending funds to unreliable borrowers (which will lead to the cash gap in the pool)? We decided to use a social reputation system to solve this issue. Moreover, at the current level of development of decentralized services, we do not believe in opportunistic attempts to create a &quot;single rating / scoring&quot; for all users.

We have chosen to use a simpler approach in our product, which we call &quot;Community grant&quot; - all platform loans must be 100% secured. In addition to the user&#39;s deposit, other members of the pool can vouch for it. How it works:

1. The user pledges his ASPTs as collateral (the deposit should be no less than 50% of the loan amount, i.e. the user will not be able to take a loan more than 200% relative to the size of ASPTs that he has)

2. Pool members who consider the user to be a good borrower vouch for him and lock their ASPTs as collateral.

If the sum of ASPTs locked (both borrower and pool members) equals to the size of the loan than the borrower receives a loan in DAI.

This design leads to two main questions:

- How to encourage pool members to be active and vouch for potential borrowers?

- How to assess the borrower&#39;s risks in case of pseudo-anonymization used in Ethereum, when you know only the wallet address, but not the personal data of a person?

To answer the first question, we create a system of rewards and penalties for guarantors that motivate them to participate in risk assessment to increase their income and to correctly assess risks.

To address the second question, we assume that the guarantors from the pool will know the borrower. For example, a small community of 20-30 people who trust each other and will use our platform to provide loans to each other.

<img src="/images/development/sparta/collateral.png" alt="drawing" />

### Interest rate share

<img src="/images/development/sparta/interest.png" alt="drawing" />

When repaying a loan in DAI, the borrower also pays interest on his loan. 50% of the interest remains in the pool, while the remaining 50% is equally distributed in the form of ASPTs between the users who vouched for the borrower, depending on their stake.

The interest rate is paid by the borrower in the form of ASPT (DAI received from the borrower is used to purchase ASPT and distribute it among the guarantors).

### ASPTs burning

If the borrower delays the repayment of the loan and does not repay (in full or in part) within the specified period:

1. ASPTs are burned in proportion to the interest rate.
2. If the user has X delays (for example, 6 - the governed parameter), then all ASPTs are burned

In such case, ASPT supply, price, and pool liquidity decrease.

### ASPT role

- Acts as collateral for loan issuance
- Used to distribute interest earned after right risk assessment and repayment of the loan by borrower
- Right to act as a guarantor for the loan
- Spreads between enter and exit price of ASPT (pool earnings) used for AKRO buyback from the market and further use in the Development Fund.

### Bonding Curve Mechanics

Bonding Curve has two prices - the purchase price and the sale price.

Bonding curve uses the formula *x = f(S)*, where *x* is the number of issued tokens, and *S* is the pool size.

There is a spread &#39;d&#39; between the purchase price and the sale price, - the fee for exiting the pool.

Upon entering the pool, the price is formed as follows:

<img src="/images/development/sparta/formula1.png" alt="drawing" width="40%" height="40%"/>

where *A* is the volume of  total assets (liquid assets in Pool + debt commitments), *Deposit* is the size of the deposit, *dx* is the number of ASPTs tokens received.

When you exit the pool, the price is formed as follows:

<img src="/images/development/sparta/formula2.png" alt="drawing" width="43%" height="43%"/>

Or (the same)

<img src="/images/development/sparta/formula3.png" alt="drawing" width="43%" height="43%"/>

, where *L* is the volume of liquid assets, *x = f(L)*.

<img src="/images/development/sparta/formula4.png" alt="drawing" width="50%" height="50%"/>

The sum

<img src="/images/development/sparta/formula5.png" alt="drawing" width="20%" height="20%"/>

forms the pool earnings - spread between enter and exit price of ASPT,

<img src="/images/development/sparta/formula5.png" alt="drawing" width="20%" height="20%"/>

amount of money user gets.

To calculate *f(S)* we propose to use the following formula

<img src="/images/development/sparta/formula6.png" alt="drawing" width="63%" height="63%"/>

### Preventing attacks on the pool

Let&#39;s suppose there are *x* funds in the pool and *f(x)* liquid tokens accordingly.

Let&#39;s also suppose a fraudster wants to take a loan *m*, . The fraudster has accomplices with the amount of funds *P*. To process the attack, the accomplices pre-enter the pool, which in turn increases the cost of ASPTs, then vote for the fraudster and he gets a loan. After that, the fraudster accomplices leave the pool. If no one spots it , they will be able to repeat such a scheme over and over again, leading to pool bankrupcy. Let&#39;s check under which conditions would this be possible:

1. Accomplices enter the pool, buying *G = f(x + P) - f(x)* tokens for the amount of funds *P*, where *f(x + P)* stands for liquid tokens in the pool.
2. Pool liquidity increases and has *x + P* liquidity.
3. Fraudster gets a loan *m*. To do this, he and his accomplices lock *Q = f(x + p)-f(x + p - m)* tokens, whereas *f(x + p - m)* is liquid tokens in the pool and *x + p - m* is the pool liquidity.
4. Fraudster accomplices own *G - Q* liquid ASPTs. They take them out and get *H = x + P - m - f^{-1}[f(x + p - m)- G + Q]* for them.
5. As a result, the fraudster and his accomplices have *m + H* funds. If *m + H vs P*, then the fraudsters made money:

<img src="/images/development/sparta/formula7.png" alt="drawing" width="45%" height="45%"/>

As *f* is an increasing function, the sign will be equivalent to the

<img src="/images/development/sparta/formula8.png" alt="drawing" width="39%" height="39%"/>

Let&#39;s add *G* and *Q* values:

<img src="/images/development/sparta/formula9.png" alt="drawing" width="83%" height="83%"/>

Based on the above, *vs* is equivalent to *&#39;=&#39;*. *P* sign does not matter in this case (*P* could be positive and could be negative which is equivalent that accomplices leave pool first, and then join again).

Q.E.D.,  cooperation with fake pool members will not give any advantage to the fraudster.

### Ragequit mechanics:

A. Let&#39;s suppose that there are *L1* liquid assets in the pool and *f(L1)* tokens accordingly. The pool has not issued any loans yet.

B. Next, let&#39;s imagine the following situation - the *dL1* liquidity was added to the pool and  tokens in the amount of *f(L1 + dL1) - f(L1)* were issued.

C. Next, the pool issued a loan in the amount of *dL1*. All issued tokens are now locked and *L1* liquid assets and *f(L1)* liquid tokens remain in the pool.

- If the loan was not repaid, then all the locked tokens got burned. After this, participants with liquid tokens will be able to exit, as there is *f(L1)* tokens and *L1* liquidity.
- If the loan was repaid and during this time no one entered the pool, then we return to the situation B and everyone will be able to leave the pool.
- If more people entered the pool, and the loan has not yet been returned: let&#39;s assume that *dL2* liquidity was added to the pool and contributors received the tokens in the amount of *f(L1 + dL1 + dL2) - f(L1 + dL1)*. The pool has liquid assets in the amount of *L1 + dL2*, and liquid tokens in the amount of *f(L1 + dL1 + dL2)-f(L1 + dL1) + f(L1)*. Let&#39;s assume all participants want to leave the pool. They will be able to do so due to the bonding curve design:
<br/>
<br/>
<center>
<img src="/images/development/sparta/formula10.png" alt="drawing" width="90%" height="90%" class="center"/>
<center/>

&nbsp;  &nbsp;  &nbsp;  &nbsp;  *f’’(L1)dL1dL2 < 0* is true because of *f’’<0*.

- Let&#39;s now assume that loan has been returned. All locked tokens in the amount of *f(L1 + dL1) - f(L1)* will be unlocked. The pool will now have liquid assets in the amount of *L1 + dL1 + dL2*, and liquid tokens in the amount of *f(L1 + dL1 + dL2)*. They will be able to do so due to the bonding curve design.

This logic can be generalized to an arbitrary number of credits / affiliations in the DAO.

### Risk assessor role in the pool

Usually, low voting activity is one of the key issues in the DAO. As a way to solve this problem, we decided to implement the ASPT delegation mechanism.

Users delegate the management of their ASPTs, all of them or partially, to risk assessors, receiving a percentage of interest from successful staking done by the risk assessor.

The risk assessor creates a proposal indicating the commission that he will take for his services. Seeing the staking statistics on the blockchain - profitable or unprofitable - pool users decide to delegate the management of their ASPTs to a particular risk assessor or not.

This model is similar to the work of Livepeer, where working nodes indicate what commission they charge as well as statistics of their work.

### AKRO Governance

Our management system is similar in its principles to the MakerDAO governance.

By purchasing and staking AKRO pool tokens, the user can  participate in the system governance - vote for changes in bonding curve parameters, collateralization level, buyback parameters, etc. It can be done only by AKRO holders (and not ASPTs holders) to prevent pool members from abusing their power (e.g. entering the pool, change bonding curve and make ASPTs too expensive to enter the pool for future members).

## Roles on the platform

|   | Economic Objectives | How does token help? |
|---|---|---|
| Borrower | Have access to an unsecured creditHave a regular availability of credit | The token issued equivalently to the amount of DAI allows you to leave a request for an unsecured loan in the pool and collateralize a loan. The user can get a 200% loan of the amount of ASPT available.Also, high liquidity in the pool formed by depositing funds, using a token, attracting users according to the bonding curve, implies the constant presence of a &quot;living&quot; asset available for a loan. Thus, the user has access to an unsecured loan. |
| Capital provider | To grant loans with the best risk/profit ratio | Providing capital in ASPT, the provider can stake for the requests of borrowers, receiving a percentage of interest. Also, since the governance is working by voting in ASPT, its holding allows participating in collective voting for various decisions, for example, changing the interest rate or bonding curve parameters. |
| Risk Assessor | Get rewarded for the correct risk assessment and tokens staking | ASPT allows you to delegate the management of tokens of other users to a risk assessor. Upon successful risk management, the assessor receives his set percentage of interest for staking. |