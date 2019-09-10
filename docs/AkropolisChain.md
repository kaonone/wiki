<img src="/images/introsmall.png" alt="drawing" />

# AkropolisOSChain Readme

## Connecting and creating an account


This guide will walk you through the process of connecting and creating your account in AkropolisOSChain Testnet.

1) Open [Akropolis UI](https://wallet.akropolis.io) (it’s polkadotJS app working with Substrate v.1.0). You can also use [Polkadot UI](https://polkadot.js.org/apps/#/explorer). 

2) Go to *Settings* -> *Developer*  and insert the following types description in the textbox (just copy&paste it) and hit “Save it” button. 


```bash

{
    "Count": "u64",
    "DaoId": "u64",
    "MemberId": "u64",
    "ProposalId": "u64",
    "VotesCount": "MemberId",
    
    "Dao": {
     "address": "AccountId",
     "name": "Text",
     "description": "Bytes",
     "founder": "AccountId"
    },
    "Action": {
     "_enum": {
       "EmptyAction": null,
    
       "AddMember": "AccountId",
       "RemoveMember": "AccountId"
     }
    },
    "Proposal": {
     "dao_id": "DaoId",
     "action": "Action",
     "open": "bool",
     "voting_deadline": "BlockNumber",
     "yes_count": "MemberId",
     "no_count": "MemberId"
    }
}


```


3) If you’re using [Akropolis UI](https://wallet.akropolis.io), you can skip  step 3, and go right to the step 4. If you’re using [Polkadot UI](https://polkadot.js.org/apps/#/explorer), go to *Settings ->General*, choose *custom endpoint* (top right corner), and set: 

- remote node/endpoint to connect to: wss://node1-chain.akropolis.io or wss://node2-chain.akropolis.io, 

- address prefix: Default for the connected node, 

- default interface theme: Substrate, 

- interface operation mode: Fully featured.

Then hit the *Save&Reload* button. 

4) Creating Account: 

- Go to the *Accounts* tab and click on the *Add account* button.

- Enter the name for your account and create a secure password. This password will be used to decrypt your account.

- Click *Save* and *Create and backup account*.

- Save your encrypted keystore locally.

- The account now appears in your *Accounts* tab and is backed up by the keystore you just saved.

5) Fill [the form](https://forms.gle/QjcccF6WWxSrbe9Z7) to get test AKRO tokens. 

##Staking

This guide will walk you through how to nominate your AKROs to a validator node so that you can take part in the staking.

We will assume that you will be starting with two fresh accounts. Click [here](https://wiki.polkadot.network/en/latest/polkadot/learn/staking/#accounts) to learn more about what stash and controller accounts mean.

1) The first step is to create two accounts by going to the *Accounts* tab. Make sure to use *stash* and *controller* in the names of your accounts to identify them easily.

2) Once you've created your accounts you will need to acquire some AKROs. Each of your accounts should have at least 150 milliAKROs to cover the minimum deposit and transaction fees.

To nominate and validate follow [this instructions](https://wiki.polkadot.network/en/latest/polkadot/node/guides/how-to-nominate/#nominating). 



## Working with DAOs


### Creating aDAO

To create a DAO you will need an account with some AKROs. 

1) Go to *Extrinsics* tab and select your account address in *using the selected account*. 

2) Select "dao" in *submit the following extrinsic*

3) Insert *name* of new DAO and it's *description* in the HEX format. You can use this[utility](https://www.rapidtables.com/convert/number/ascii-to-hex.html) to convert ASCII symbols to HEX (please remove space symbols). Length of DAO's name should be less than 255 symbols, the length of description is between 10 and 4096 symbols. 

3) Click *Submit* button

After DAO is created you will see a DAO page with minimal balance:


4) You can checkDAO stats in *Chain state* tab. Select *dao* in *selected state query* and select what kind of data you want to get: 

- daosCount(): number of DAOs

- daos(DaoId): get information about a DAO. DaoId is a number, starts from 0. 

- membersCount(): number of members in a DAO

- members(DaoId, MemberId): information about DAO member, where DaoId and MemberId is a numbers-identifiers. 

### Add new members to a DAO

Adding new members to DAO works through voting. To start the vote, you should make a proposal to add a candidate. The candidate should have an account with some AKROs. The account could not be another DAO and it could not be a member of the DAO you want to add the candidate to.. 

1) Go to 'Extrinsics' tab and insert candidate's address to "using the selected account", select "dao" in "submit the following extrinsic" and "proposeToAddMemeber(dao_id)" function. Then insert dao id and click "Submit Transaction". 

2) You can check the status of the proposal in *Chain state* tab. Select *dao* in *selected state query*. 

- daoProposalsCount(DaoId) will show the number of existing proposals

- daoProposals(DaoId, ProposalId) will show the status of the proposal in DAO DaoId: open:true/false, voting_deadline - block number when voting is over, yes_count & no_count - number of DAO members voted yes or no for the proposal). 

### Remove member from a DAO

Excluding DAO members happens through voting. Only existing DAO members can be removed from a DAO. If a DAO has only one member, this member can't be removed from a DAO. 

1) Go to 'Extrinsics' tab and insert candidate's address to "using the selected account", select "dao" in "submit the following extrinsic" and "proposeToRemoveMemeber(dao_id)" function. Then insert dao id and click "Submit Transaction". 

2) You can check the status of the proposal in *Chain state* tab. Select *dao* in *selected state query*. 

- daoProposalsCount(DaoId) will show the number of existing proposals

- daoProposals(DaoId, ProposalId) will show the status of the proposal in a DAO DaoId: open:true/false, voting_deadline - block number when voting is over, yes_count & no_count - number of DAO members voted yes or no for proposal). 



### Voting

Only DAO members can participate  in the vote (one vote per one proposal). 

To participate in the vote go to 'Extrinsics' tab and insert your address to "using the selected account", select "dao" in "submit the following extrinsic" and "vote(dao_id, proposal_id, vote)" function, where vote is boolean (Yes/No).  Then insert dao id and click "Submit Transaction". 
