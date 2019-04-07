

<style>
    .md-content {
        margin-left: 0;
    }

    .md-sidebar--primary, .md-header-nav__button.md-icon--menu {
        display: none;
    }
</style>


<img src="/images/introsmall.png" alt="drawing" />

# **nuWallet** - A [Venmo](https://venmo.com/about/product/) moment for crypto

NuWallet creates a Venmo moment by replacing a public key with a mobile number in order to send/receive crypto. Our scheme is generalised to allow _any_ cryptocurrency to be used with _any_ identifier. 

We bring simplicity and familiar UX to crypto by allowing people to send and receive crypto (Ethereum and ERC-20 tokens, at this stage!) using just their mobile number

* All you need to send crypto to a friend is her mobile number 
* No need to share your ethereum address over insecure channels like messengers/email/SMS. 
* It’s quick, as easy as [Venmo](https://venmo.com/about/product/), safe and private (you hold the keys)


## Problem

In order to make a payment over a decentralized network, the user needs to know the recipient’s public key. A public key is a notoriously long set of numbers and letters. It is easy to make a mistake, and copy-pasting isn’t always safe if your device is compromised. As a result, the UX is not intuitive and continues to present a serious hurdle to the mainstream adoption of cryptocurrencies. There are notable teams working on addressing that - shoutout to [Austin Griffith](https://twitter.com/austingriffith) from [BurnerWallet](https://xdai.io/), [Ric](https://twitter.com/ricburton) from [Balance.io](https://balance.io/) and [Viktor](https://twitter.com/vikmeup) from [TrustWallet](https://trustwallet.com/). What we are proposing below is our solution that can be integrated with the ecosystem wallets, exchanges and dApps to expand their offering and UX. 



## Solution
We introduce a NuCypher-based cryptographic scheme, which allows users to send ETH and ERC-20 tokens to a mobile number instead of the recipient’s public key. Our solution has the following features:  

* **Convenient and familiar UX**:  no cognitive burden on users 

* **User privacy and self-sovereignty**: user controls who can know her Ethereum address. User can only receive payments from pre-approved parties, however their number is uncapped.

* **Generalised and scalable**: can be used across many identifiers and any cryptocurrencies any other identifier, e.g. email ID, Whatsapp ID, Telegram ID, Signal ID, WeChat ID, etc. This scheme can be extended to include any cryptocurrency. 


## How it works

* Register

* Set settings of access to ethereum address to your friends from the contact list

* Send tokens and ethereum using a phone number instead of ethereum address. 



## Target Client Base (lib)

* Wallets and dApp browsers ([Trust wallet](https://trustwallet.com/), [Balance](https://balance.io/), [imToken](https://token.im/), etc.)

* Exchanges ([Binance](https://www.binance.com), [Coinbase](https://www.coinbase.com/), [Kraken](https://www.kraken.com/), etc.)

* dApps ([OpenSea](https://opensea.io), [CryptoKitties](https://www.cryptokitties.co/), [Decentraland](https://decentraland.org/), etc.).



## Tech design

A) Database: (KMS-like (Key Management System), could be centralized or  decentralized): stores a pair of phone number’s hash and NuCypher public key. 

B) Storage (could be centralized or decentralized): keeps users' encrypted messages with private information: ethereum address, first name and last name (or nickname). 



Let’s consider our usual Bob and Alice.  

1) When registering Alice performs the following actions:

 a.  encrypts the data (message w/ ethereum address, first name/last name)  with its private key and puts it in Storage 

 b. sends its NuCypher public key to Database. 

2) Alice sends API request to Database and gets Bob's NuCypher public key.

3) Alice creates a re-encryption key (rekey) >> NuCypher nodes re-encrypt Alice’s data >> Alice puts TreasureMap in Storage.

Now Bob can decipher Alice’s data by his private NuCypher key. Please note that actions 2 and 3 can be performed for any number of friends from Alice’s contact list. 

Then Bob wants to send ETH or ERC-20 tokens to Alice. 

4) Bob gets TreasureMap from Storage.

5) Bob deciphers Alice’s data. Now Bob knows Alice’s ethereum address. 

6) The application generates a transaction for Alice with the ethereum address from the message as a payee. 

<img src="/images/development/nuWallet.jpg" alt="drawing" />

Thus, users can send each other ETH/ERC-20 using just a mobile number of any other identifier, e.g. email ID, Whatsapp ID, Telegram ID, Signal ID, WeChat ID, etc. This scheme can be extended to include any cryptocurrency. 


## Why NuCypher

NuCypher is a decentralized KMS provider based on homomorphic cryptography.  Using NuCypher we can achieve a secure transmission of address data and effect transfers between the two parties without disclosing the addresses themselves, thus delivering robust partial anonymisation of transactions. A complete anonymisation can be achieved using ZK-Snarks, Schnorr signatures or ring signatures however this work is outside of the timeframe allowed for this project and may be included in further iterations. 

As a result, what we get is cryptographically secure solution that guarantees that access to address and phone number data cannot be obtained illegally or on authorities’ demand without the explicit consent of the user.



## [Video Walkthrough](https://www.dropbox.com/s/wdu5vdodlbgv542/nuCypher.mp4?dl=0)



## Force Majeure 

Unfortunately, after designing architecture of our product, our lead blockchain developer had to drop out of the work schedule due to a health emergency, therefore we can only demonstrate a pre-recorded prototype. Depending on the feedback from the judges and the community, we’d be happy to conclude the development work. 

</br>