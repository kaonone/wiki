

<style>
    .md-content {
        margin-left: 0;
    }

    .md-sidebar--primary, .md-header-nav__button.md-icon--menu {
        display: none;
    }
</style>


<img src="/images/introsmall.png" alt="drawing" />

# nuWallet - a Venmo moment for crypto


We bring simplicity and familiar UX to crypto by allowing people to send and receive crypto (Ethereum and ERC-20 tokens, at this stage!) using just their mobile number

* All you need to send crypto to a friend is her mobile number 
* No need to share your ethereum address over insecure channels like messengers/email/SMS. 
* It’s quick, as easy as Venmo, safe and private (you hold the keys)



</br>


## Problem
In order to make a payment over a decentralized network, the user needs to know the recipient’s public key. A public key is a notoriously long set of numbers and letters. It is easy to make a mistake, and copy-pasting isn’t always safe if your device is compromised. As a result, the UX is not intuitive and continues to present a serious hurdle to the mainstream adoption of cryptocurrencies. There are notable teams working on addressing that - shoutout to Austin Griffith from BurnerWallet, Ric from Balance.io and Viktor from TrustWallet. What we are proposing below is our solution to making crypto payments UX familiar, inuitive 

</br>

## Solution
We introduce a NuCypher-based cryptographic scheme, which allows users to send ETH and ERC-20 tokens to a mobile number instead of the recipient’s public key. Our solution has the following features:  

* **Convenient and familiar UX**:  no cognitive burden on users 

* **User privacy and self-sovereignty**: user controls who can know her Ethereum address. User can only receive payments from pre-approved parties, however their number is uncapped.

* **Generalised and scalable**: can be used across many identifiers and any cryptocurrencies any other identifier, e.g. email ID, Whatsapp ID, Telegram ID, Signal ID, WeChat ID, etc. This scheme can be extended to include any cryptocurrency. 

</br>

## How does it work

* Register
* Set settings of access to ethereum address to your friends from the contact list
* Send tokens and ethereum using a phone number instead of ethereum address. 

</br>

## Target client base (lib)

* Wallets and dApp browsers (Trust wallet, Balance, imToken etc)
* Exchanges (Binance, Coinbase, Kraken etc)
* dApps (OpenSea, CryptoKitties, Decentraland etc).

</br>

## Tech design

A) Database: (KMS-like (Key Management System), could be centralized or  decentralized): stores a pair of phone number’s hash and NuCypher public key. 

B) Storage (could be centralized or decentralized): keeps users' encrypted messages with private information: ethereum address, first name and last name (or nickname). 


Let’s consider our usual Bob and Alice.  
1) When registering Alice performs the following actions:

 a.  encrypts the data (message w/ ethereum address, first name/last name)  with its private key and puts it in Storage 

 b. sends its NuCypher public key to Database. 

2) Alice sends API request to Database and gets Bob's NuCypher public key

3) Alice creates a re-encryption key (rekey) >> NuCypher nodes re-encrypt Alice’s data >> Alice puts TreasureMap in Storage.

Now Bob can decipher Alice’s data by his private NuCypher key. Please note that actions 2 and 3 can be performed for any number of friends from Alice’s contact list. 

Then Bob wants to send ETH or ERC-20 tokens to Alice. 

4) Bob gets TreasureMap from Storage 

5) Bob deciphers Alice’s data. Now Bob knows Alice’s ethereum address. 

6) The application generates a transaction for Alice with the ethereum address from the message as a payee. 

<img src="/images/development/nuWallet.jpg" alt="drawing" />

Thus, users can send each other ETH/ERC-20 using just a mobile number of any other identifier, e.g. email ID, Whatsapp ID, Telegram ID, Signal ID, WeChat ID, etc. This scheme can be extended to include any cryptocurrency. 

</br>

## Why NuCypher

</br>

## [Video Walkthrough](https://www.dropbox.com/s/wdu5vdodlbgv542/nuCypher.mp4?dl=0)



</br>

## Force Majeure 
Unfortunately, after designing architecture of our product, our lead blockchain developer had to drop out of the work schedule due a health emergency, therefore we can only demonstrate a pre-recorded prototype. Depending on the feedback from the judges and the community, we’d be happy to conclude the development work. 

</br>