

### What is Commitments to Future Cashflows:

More about it you can read here: *link to c2fc description*

### Design

Core elements of C2FC on Substrate implementation: 

- User accounts

- FreePromise

- Promise

- Bucket

- Storage-module C2FC

Creation of Commitment to Future Cashflow consists of two steps: at first, you create *Free Promise* and then assign a payee to it (*Promise* stage). While C2FC is in the *Free Promise stage*, it hasn’t recipient of payments (issuer is a recipient). 
Any user can create an unlimited number of *FreePromises*. *FreePromise* has parameteres:

- Id

- Due amount (value)

- Term (period)

- Issuer’s Account id. 

*Promise* has parameters: 

- Id (the same for both *FreePromise* and *Promise*)
- Due amount (value)
- Term (period)
- Amount already deposited to *Promise* (filled amount)
- *Promise* Issuance date
- Bucket id. 

The only option to create *Promise* is to assign a payee to *FreePromise*. When the recipient includes Promise in his *Bucket*, *FreePromise* becomes *Promise*.

*Bucket* has its price. Price is set by *Bucket's* owner. If price is not 0, anyone could buy this bucket for this price. 

*Bucket* has parameters: 

- Bucket Id

- Price

- *Promise* (could be null value). 

*Storage C2FC* implements business logic of *Bucket* creation/adding *Promise* to *Bucket*. 

### Process Flow

**Transfer FreePromise to Bucket**

Initial conditions:

- Bucket owner isn't FreePromise issuer
- Bucket's *Promise* field has null value


Bucket's owner calls method ```accept_promise(..., promise_id, bucket_id)``` to transfer FreePromise to Bucket, where promise_id - id of FreePromise, Bucket_id - id of Bucket, that will own Promise. 

When the function ```accept_promise(..., promise_id, bucket_id)``` is called the following happens:

- Verify the ability to perform an operation
```
pls insert code here
```

- *Promise* is created and its has copy of all data from *FreePromise* (!they have the same id).

- *Promise* keeps number of current last block. 

- *Promise* is assigned to *Bucket*. 

- Bucket is registered in navigational hashmaps. 
```
pls insert code here
```

- Write event to chain.
```
pls insert code here
```
