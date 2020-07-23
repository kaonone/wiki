#Sparta FAQ

## General

### What is Sparta?

Sparta is a credit pool where users can get access to loans without the need of large collaterals. Its mechanics allows the Sparta users to get an undercollateralized loan, as well as provide funds at a percentage of interest.

### Why Sparta?

Sparta model solves the over-collateralization problem in DeFi. With it, users can get access to a loan with 50% collateral. One of the advantages of our pool is that we have a collective responsibility and staking guarantee approach. Because the users are being rewarded for voting for good participants, they act as native risk assessors in the system, supporting its stability.

Additionally, we implemented a bonding curve (Continuous Token Model with ASPT) to our pool. This gives an additional incentive for users to join the pool at the start of it. It also  allows them to leave the pool at any moment without the problem of locked funds due to lack of liquidity assets.

### But what is a bonding curve?
A bonding curve is a mathematical curve defining the price/supply correlation. A user enters and exit the DAO by buying and selling ASPTs on a price determined by this curve.

### What is the Akropolis Sparta Pool Token (ASPT)?
ASPT – the native ERC20 token of the DAO, minted on the bonding curve. Gives the right to vote for investment decisions and to get access to loans. The ASPT minting is “fully UI abstracted”, meaning users don’t need to deal with it directly.

### How do I use the service?
Connect your wallet to our platform and deposit DAI. After that, you can start using the pool.

### What are the fees?
Our pool does not take commissions at the moment.

## Participating in the pool

###How can I join the pool?

Click on this [link](http://sparta.akropolis.io) to access Sparta. Connect with your wallet (Bitski, Metamask, Connectwallet, Formatic, Portis, Squarelink) and deposit DAI. When you enter the pool, your entrance automatically calculates the poolToken price and you receive an equal amount of ASPT, enabling you to use the pool.

### How can I leave the pool? 

Just click “withdraw” and your available funds will sell on the bonding curve price and return to your connected wallet in DAI. Please be aware that locked funds, staked for somebody’s loan cannot be withdrawn until the loan paid back by the borrower. 

### Why is my available balance different from the deposited amount?

Conducting any operations in DAI, whether they’re deposit or withdrawal, will be represented as ASPT in the pool. As there is a spread between entry and exit prices, as well as fluctuation of the price on the bonding curve, your actual deposit will differ from available balance. For example, after depositing 100 DAI you may see only 97 DAI available and -3 DAI in profit.

## Loan issuance

### How can I take a loan?

When creating a loan request, you need to provide half of the loan amount as collateral. The pool members will need to stake additional 100% in your favour. A request with 150% collateral can only be activated by the borrower.

To create a loan request, go to the Pool overview page and in the Pool information section, click the “Get loan” button.

<details>
<summary></br></summary> 
<img src="/images/develpment/spartafaq/getcredit.png" alt="drawing"/>
</details>

A pop-up will open. There, you’ll need to enter the loan parameters and confirm the intention to create a deposit, then confirm the transaction sending.

<details>
<summary></br></summary> 
<img src="/images/development/spartafaq/getcredit2.png" alt="drawing" />
</details>

After creating the request, you can see it on the “Proposals” page and on the “My loans” page.

<details>
<summary></br></summary> 
<img src="/images/development/spartafaq/getcredit3.png" alt="drawing" />

</details>

### How can I lend funds?

Staking for a loan request allows the user to receive part of the loan interest paid by the borrower. You can become a guarantor in any loan on the Proposals page, which displays all open loan applications. To do this, select the loan and click on the Stake button.

<details>
<summary></br></summary> 
<img src="/images/development/spartafaq/stake0.png" alt="drawing" />
</details>

When you see the pop-up, you need to enter the amount of the deposit and confirm the intention to make it, then confirm the sending of the transaction.

<details>
<summary></br></summary> 
<img src="/images/development/spartafaq/stake1.png" alt="drawing" />
</details>

After making a stake on the Proposals page, you will see your share of interest that you received from the payments on this loan.

<details>
<summary></br></summary> 
<img src="/images/development/spartafaq/stake2.png" alt="drawing" />
</details>

All loans in which the user is the guarantor can be viewed on the page “My guarantees”.

<details>
<summary></br></summary> 
<img src="/images/development/spartafaq/stake3.png" alt="drawing" />
</details>

### Can I unstake my funds?

Yes. Prior to the activation of a loan, any guarantor can withdraw a deposit from the loan request. To do this, click the “Unstake” button in the loan request card on the “Proposals” page or on the “My guarantees” page.

<details>
<summary></br></summary> 
<img src="/images/development/spartafaq/stake4.png" alt="drawing" />
<img src="/images/development/spartafaq/stake3.png" alt="drawing" />
</details>

In the pop-up that opens, you need to enter the amount for withdrawal and confirm the intention to withdraw the stake from the loan request, then confirm the transaction is sent.

<details>
<summary></br></summary> 
<img src="/images/development/spartafaq/stake5.png" alt="drawing" />
</details>

### How can I repay a loan?

IIn order to repay a loan, you need to click on the “Repay” button on the “My loan” page.

Next, you need to enter the amount for the cancellation and confirm the intention to perform the cancellation, then confirm the sending of the transaction.
After the repayment, the loan amount displayed in the “Loan” column on the “My loans” page should decrease, and all guarantors should unlock a part of the collateral and accrue interest.

### How can I claim interest?

On the “My guarantees” page, you can see how much interest was accumulated in the issued loans, and how much collateral is available for unlocking. The accumulated interest is displayed in the Earn column, and the Unlock X.XX DAI button will display how much can be unlocked.

After clicking the Unlock X.XX DAI button, you will need to confirm the intention to withdraw funds from the loan, then confirm the sending of the transaction. Unlocked funds fall into the available balance.

### What happens if a loan is not repaid?

In the case of non-repayment loan is liquidated 90 days after the issuance or partial repayment of. The deposited collateral will be burnt and a partial repayment (if exist) will be distributed between the users who staked for this loan.

## Security

### Where are my deposited funds stored?

All user funds are stored on-chain in smart contracts, Sparta is not a custodial solution.

### Has your product been audited?

Akropolis is currently undergoing a security audit from CertiK, which will take about a month. After the audit, the results will be announced publicly.

### Have you modelled potential attacks on the pool?

We plan to launch a regression testing in the near future. 
For this, we will create scripts that we described in the YML format. As part of this approach, we will manipulate various parameters that the pool works with and monitor its behaviour. This way we can predict how the pool works under certain circumstances.

### Is a flashloan attack against your pool possible?

These kinds of attacks do not affect the Sparta. Attacks of this type are specific to flash loans platforms. A flash loan is an unsecured form of loan that is issued for an ultra-short time. In fact everything is executed in one transaction. Accordingly, in the interval between the beginning of a transaction and its end, opens up a possibility for manipulation. This type of attack could be a potential threat to our governance module, but this element is still under development and we will add preventive measures before it goes live.

### Is your code open-source?

Yes, here is the link to our [Github repo](https://github.com/akropolisio/akropolisOS).
