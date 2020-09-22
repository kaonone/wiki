# Simple Staking FAQ

## How to stake?

- Open delphi

- Connect wallet with AKRO/ADEL on it

- Go to [staking page](https://delphi.akropolis.io/staking)

- Click **Stake**

- Choose amount

- Confirm

- Confirm approval transaction (gas fees)

- Confirm deposit transaction (gas fee)

- Chill 🌚

## How can I calculate my rewards?

First, check the APY tab [LM rewards sheet](https://bit.ly/3gtX8GS).

If it is looks like a hard math, you can make **the average** manual **weekly** calculations:

***My Stake / Total Pool Size x Total Weekly Reward = You personal weekly reward***

Take a note, this is **the average** calculations because:

- Pool size changes regulary

- Rewards have been reviewed every week

## Why I received a lesser reward than I calculate?

Historically we pushed the formula **My Stake / Total Pool Size x Total Weekly Reward / 7** to the community.

That was the simple method of calculation while we did not create the calculator yet and rewards were not shown in the interface. In that period, the calculations were made in semi-manual way with the snapshots taken +- same time.

When the automatic mode was deployed and integrated into Delphi this formula does not work anymore as the snapshots are taking in a random period of time. 

Example: 

*T+1 hour - first snapshot*<br/>
*T+20 hour - second snapshot*<br/>
*T+50 hour - third snapshot*<br/>

These snapshots is used to calculate the reward for these specific amounts of hours of holding.

Thus, the reward for 20 hours of holding is NOT EQUAL the personal reward calculated from personal Total Weekly Reward / 7 as 20 hours are less than 24 hours.

The daily rewards in the interface can be bigger or smaller, comparing to personal TWR/7, but at the end of epoch you will get the correct amount of personal TWR.

The weekly calculations are closer to the actuals, but they also have errors because of the reasons mentioned above.

## Where can I see the snapshots you guys do?

We are going to make them public and deciding on the best way to give it to you.

## I still have a smaller amount than I expected.

First of all, restart the browser and refresh the page. Then check the My Harvest tab again.

By the way, did you check your connected wallet?

## Autoclaiming feature

There is the auto claiming feature in Delphi that runs every time you make an action (deposit or withdraw) - the rewards will go to your wallet. This reduces your gas costs.

## How is about automatic re-staking (compound mode)?

We are working on it and this feature will be added to the Delphi pretty soon.

## We want to see rewards history!

It is in our TODO list also.
