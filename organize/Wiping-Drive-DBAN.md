---
title: Untitled
dateCreated: 2021-11-04T16:18:44
type: Resource
category: SMC
---
type: Resource
category: SMC

# Wiping Drive DBAN

Created: 2021-11-04 16:18:44 -0400

Modified: 2024-06-27 10:03:20 -0400

---

How to use DBAN to wipe multiple drives

by George Ryan





1. Plug in a USB with **DBAN (D**erick's **B**oot **A**nd **N**uke**)** installed.

2. Plug in the hard drive bay to the computer, **without powering on the hard drive bay.**

3. Access the BIOS and boot from the USB.

4. When the command line pops up, type **verbose.**

5. As soon as the **CLI** (**C**ommand **L**ine **I**nterface) starts spitting out text, **power on the hard drive bay.**

6. You will be presented with a screen, using the arrow keys and enter, select the hard drives to be wiped. ***Do not start the wipe.***

7. Press **M** to change the Method, change the Method to **DOD Shor**t (3 passes).

8. Press **R** to change the rounds, change the rounds to **3**.

9. Press **P** to change the **PRNG** (**P**seudo-**R**andom **N**umber **G**enerator) to **ISAAC** for optimal efficiency and security.

9. Press **F10** to start the wipe.


