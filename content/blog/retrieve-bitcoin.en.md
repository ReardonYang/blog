+++
title = "Losing and Recovering My Bitcoin"
date = "2021-11-20"
tags = [
    "Bitcoin",
]
+++

![bitcoin-bank](/images/bitcoin-bank.jpeg)

* This episode of **losing and recovering my Bitcoin** lasted **about a month in total**, from the evening of October 26, 2021, to this afternoon (November 20, 2021) at three o'clock.

* **The main reason I lost the coins was that I used a 500 GB hard drive, which was not enough to store the current Bitcoin full node.**

* First, following Umbrel's official tutorial, I installed Umbrel on a Raspberry Pi and correctly backed up the private key. **Before the blocks had finished syncing**, I transferred 1,549,929 satoshis of Bitcoin into the wallet. Next I installed the Ride The Lightning app. Then I tried to open a Lightning Network channel with someone else; I transferred 100,154 sats into the channel, and after submitting the request, the channel remained stuck in an unconfirmed state. Only later did I learn that the channel could not be established because block synchronization had not completed, so I closed the request and contacted the channel node to reject my application.

* During this period, the blocks kept syncing. Finally, when synchronization reached about 96%, the sync speed grew slower and slower. At the time I suspected the hard drive was full, and that was indeed the case — the drive was only 500 GB (about 488 GB in reality). Later, block synchronization stalled completely; **for an entire day, not a single block was synced**, so I considered buying another 2 TB hard drive. Then I shut down the Raspberry Pi full node.

* After the new drive arrived, I connected the 2 TB drive to the Raspberry Pi, entered the key I had backed up earlier, and **started over** with block synchronization.

* Then came a long wait: from November 4, 2021, it synced all the way until this morning — around 10 a.m. on November 20, 2021 — a total of 16 days. During that long wait, I more than once believed my coins would never come back.

---

* Logically, once block synchronization is complete, all transaction information should appear in the transaction list — but regrettably, Umbrel never displayed any history. This is, in my view, Umbrel's biggest problem at present: it is unstable and extremely unfriendly to users, and most of the apps in its app store are basically experimental. So **I strongly recommend not storing large amounts of funds on Umbrel. Also, friends with a weak foundation in computers and poor hands-on skills had better not fiddle with all those messy apps at all, including the Lightning Network.**

* The private key I entered was correct, yet no transaction records appeared. I wondered whether this was a problem with Umbrel's own instability, so I tried importing the private key into ImToken — and it immediately returned an error.

* What puzzled me was this: even if the 100,154 sats of Bitcoin locked in the Lightning Network channel were completely lost, I should still have had (1,549,929 sats − 100,154 sats) = **549,775 sats** of Bitcoin in my wallet. So why was that portion lost as well? I couldn't understand it.

* I briefly described my coin-losing experience and posted it to Umbrel's Telegram group. Quite a few friends offered me many ideas for solving the problem, and I am **truly grateful to this community**. In fact, during this process I had already completely given up and accepted the loss as fact. I wrote in the group: "It hurts a bit. I have never spent any Sats I bought, but this time I lost some. I hope that other friends will not make this stupid mistake of mine. However, as Satoshi Nakamoto once said, if you lose Bitcoin, treat it as a gift to other hodlers." Afterwards, a group member messaged: **"I wouldn't give up without a flight."** It was this very sentence that inspired me to decide not to give up easily, but to spend the time recovering the lost coins.

* **The recovery process turned out to be remarkably simple.** After I described my experience to the community, friends there suggested I try recovering through BlueWallet. I had briefly seen information about this wallet on Twitter before, but had never used it, so I hadn't given it much thought. Then, on the Umbrel forum, I saw another post about recovering a wallet that also mentioned BlueWallet. With a **might-as-well-try-anything** mindset, I downloaded BlueWallet, entered my key, and a miracle happened: 549,775 sats of Bitcoin appeared right before my eyes, sitting quietly in BlueWallet. And so I recovered the on-chain coins — **the portion of coins I felt least deserved to be lost**.

* Then I thought: since the on-chain coins were back, could the coins in the channel be recovered too? After all, I had successfully closed the channel at the time, and apart from me, no one could take the coins inside, because the private key was in my hands. Another thing that filled me with confidence was that **I had a complete backup of the Lightning Network channel from that time**. So, for the whole afternoon, I tried every means I could think of to restore the Bitcoin in the Ride The Lightning app. I entered Umbrel via SSH and placed the channel-all.bak backup file into the /data/backup/restore path described on the backup page; I tried everything to restore Ride The Lightning, but without success. Here I cannot help complaining again: **the Ride The Lightning app is extremely difficult to use**. Although I could manage it by consulting the documentation and spending more time, for people unfamiliar with Linux the difficulty is far too high. **If Umbrel wants to become the Android system of the Bitcoin world, it still has a long way to go.**

* After all that effort, I could make no further progress recovering the Bitcoin in the Lightning Network channel, so I had no choice but to give up. I took out my Ledger, planning to use BlueWallet to transfer the recovered 549,775 sats to the Ledger. After submitting the transfer, I was astonished to discover that BlueWallet's transaction records also showed **two other incoming transactions**, in the amounts of 998,133 sats and 149 sats respectively — precisely the Bitcoin that had been locked in the Lightning Network channel.

* **The Bitcoin had come back, just like that. My coins, lost and found again!**

---

## The lessons I learned from this episode:

1. If you plan to sync a Bitcoin full node, as of 2021 please prepare a solid-state drive of at least 1 TB, and if conditions permit go straight for **2 TB or 4 TB**;

2. Umbrel and all the apps in its app store, including but not limited to the various Lightning Network apps, are experimental products — **please do not put large amounts of funds into them**;

3. **BlueWallet is a good thing**;

4. Avoid flashy, reckless maneuvers. In the world of Bitcoin and the Lightning Network, there is no centralized institution like a bank or a government that can help you recover funds or reset a password; you bear **full responsibility** for the safety of your own funds.

5. Always stay calm when something goes wrong;

6. Never give up on your Bitcoin easily. **If you lost your coins yourself, go and recover them yourself**!

7. Always treat your Bitcoin with care. The biggest reason I was able to "recover" my Bitcoin this time was actually that "I had never lost" them at all — **Umbrel misled me, and Ride The Lightning's extreme unfriendliness confused me**. Remember: **if you lose your Bitcoin, you really lose it**; there is no such thing as getting it back.

 
