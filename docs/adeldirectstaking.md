# ADEL direct staking

## Staking

#### I. Approve spending a specific amount of tokens.

1) Choose **Write as proxy** tab on the ADEL token contract page:
[https://etherscan.io/address/0x94d863173EE77439E4292284fF13fAD54b3BA182#writeProxyContract](https://etherscan.io/address/0x94d863173EE77439E4292284fF13fAD54b3BA182#writeProxyContract)

2) Choose **Connect to Web3** and connect your wallet.

3) Click on **“2.approve”**.

4) Fill the following data:

&nbsp; &nbsp; *spender* - fill the staking pool contract address: **0x1A547c3dd03c39Fb2b5aEaFC524033879bD28F13**

&nbsp; &nbsp; *amount* - fill the amount of tokens to stake - Note that you should fill it taking into account the decimals - 10^18, so for 1 ADEL it will be 1000000000000000000

5) Click **Write** and sign the transaction. 

6) Wait for the transaction to confirm.

&nbsp; &nbsp; 	

#### II. Staking ADEL

1) Choose **Write as proxy** tab on the staking pool contract page: 
[https://etherscan.io/address/0x1A547c3dd03c39Fb2b5aEaFC524033879bD28F13#writeProxyContract](https://etherscan.io/address/0x1A547c3dd03c39Fb2b5aEaFC524033879bD28F13#writeProxyContract)

2) Choose **Connect to Web3** and connect your wallet.

3) Click on **“22.stake”**

4) Fill the following data:

&nbsp; &nbsp; *_amount* - the amount of tokens to stake - fill **the same amount** of token you approved in the step **1.4.2**

&nbsp; &nbsp; *_data* - additional data, this line simply registers the event - fill with **0x**

5) Click **Write** and sign the transaction.

6) Wait for the transaction to confirm.

7) You successfully staked.

<br/>

## Full unstake

1) Choose **Write as proxy** tab on the staking pool contract page: 
[https://etherscan.io/address/0x1A547c3dd03c39Fb2b5aEaFC524033879bD28F13#writeProxyContract](https://etherscan.io/address/0x1A547c3dd03c39Fb2b5aEaFC524033879bD28F13#writeProxyContract)

2) Choose **Connect to Web3** and connect your wallet.

3) Choose the **“26.unstakeAllUnlocked”**

4) Fill the following data:

&nbsp; &nbsp; *_data* - additional data, this line simply registers the event - fill with **0x**

5) Click **Write** and sign the transaction.

6) Wait for the transaction to confirm.

7) You successfully unstaked.

<br/>

## View stake

1) Go to the **Read as proxy** tab on the staking pool contract page:  
[https://etherscan.io/address/0x1A547c3dd03c39Fb2b5aEaFC524033879bD28F13#readProxyContract](https://etherscan.io/address/0x1A547c3dd03c39Fb2b5aEaFC524033879bD28F13#readProxyContract)

2) Choose the **“29.totalStakedFor”**

3) Fill the following data:

&nbsp; &nbsp; *_address* - fill your wallet address

4) Click **Query**, and divide the output by 10^18 (remember about 18 decimals) - as a result you will get the staked ADEL amount. 

**Note: If you have ADEL staked in the staking pool, you can both see the stake amount & unstake from the [app UI](https://akropolis.io/staking) on the Stake page.**
