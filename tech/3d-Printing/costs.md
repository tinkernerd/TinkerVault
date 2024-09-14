---
title: Calculate 3D printing costs
---

# How to calculate 3D printing costs? - Original Prusa 3D Printers

> ## Excerpt
> We often see online discussions about the price of 3D prints, or more specifically: how to calculate the price for having something 3D printed. Since there are many myths floating around, we figured out that many people will be interested in...

---
We often see online discussions about the price of 3D prints, or more specifically: **how to calculate the price for having something 3D printed.** Since there are many myths floating around, we figured out that many people will be interested in a deep dive into various aspects of this field. So, how do you set the right price for a 3D print? We’ll take you through the main aspects of 3D printing pricing that affect the price, however, if you’re not really keen on learning every single detail, feel free to scroll down to the end – we have a small surprise for you there.

Let’s imagine a purely hypothetical example of a certain Josef from Prague (any similarities to actual persons or places are purely coincidental), who bought three 3D printers to make some profit: he has the [**Original Prusa i3 MK3S**](https://shop.prusa3d.com/en/51-original-prusa-i3-mk3s), **[Original Prusa MINI](https://shop.prusa3d.com/en/66-original-prusa-mini),** and the [**Original Prusa SL1**](https://shop.prusa3d.com/en/52-original-prusa-sl1).

A customer ordered **[this test object](https://www.prusaprinters.org/prints/3116-treefrog)** from Josef and wishes to know the price of the object printed on the printers mentioned above. It should be printed with **[Prusament](https://shop.prusa3d.com/en/42-prusament) [PLA Orange](https://shop.prusa3d.com/en/prusament/1007-prusament-pla-prusa-orange-1kg.html)** (**MK3s** and **MINI**) and with **[Prusa Orange Tough resin](https://shop.prusa3d.com/en/resin/940-orange-tough-resin-1kg.html)** (**SL1**).

[![](https://blog.prusa3d.com/wp-content/uploads/2020/10/zaba-1024x683.jpg)](https://blog.prusa3d.com/wp-content/uploads/2020/10/zaba.jpg)

### Material costs

Josef already knows that the **most expensive aspects are manpower and filament (or resin)**. Filament and resin prices depend on the manufacturer’s pricing, which makes counting the material costs very simple. 1kg of **Prusament PLA Orange** costs 24.99 USD (without tax and shipping) and according to [**PrusaSlicer**](https://www.prusa3d.com/prusaslicer/#_ga=2.100141212.366407219.1601559088-1598598355.1585749177), one [tree frog](https://www.prusaprinters.org/prints/3116-treefrog) model consumes 6.27 g of filament (basic settings – 0.15mm layer height, 15% gyroid infill).

Josef simply calculated (24.99 / 1000 \* 6,27) that material for one tree frog on the **MK3s** or **MINI** will cost him 0.15 USD. Printing a tree frog without supports on the **SL1** (0.05mm layer height) will consume 10.43 ml resin – this costs 0.6 USD. If the customer wants to print it with other materials, the price could rise a lot. There are filaments with a price exceeding 90 USD/kg and resins more expensive than 315 USD/kg.

The bottom line here is pretty simple: **Material cost = filament price / filament weight (g) \* model weight (g)**

### Manpower costs

Josef values his work at 9.50 USD/hour (calculated from average wage in the Czech Republic for the year 2020). He already knows that print preparation (including slicing) takes him approximately 5 minutes (10 minutes in case the resin in the **SL1** needs to be changed). Therefore, he calculated the work on one treefrog to 0.8 USD for **MK3s/MINI** and 1.6 USD for **SL1**. It’s not too expensive to prepare small models downloaded from the internet. However, it’s important to know that plenty of models require more difficult print preparations. Even slicing alone can take even 30 minutes or more – e.g. preparing supports for SLA printing using manual supports can take a long time.

The price for human labor can, in many cases, reach dozens of USD, especially in cases when something completely new has to be designed. Even a relatively simple technical part can take several hours to draw, which increases the price dramatically.

### 3D printer operation costs

Another thing that Josef calculated was 3D printer operation costs. He started with electricity: according to the local electricity distributor’s rates, 1 kWh costs from 0.07 USD to 0.09 USD. Let’s work with 0.09 USD. The printer input power depends on several factors, however, most of the time it needs around 100-150 W. Printing a tree frog on the **MK3s** takes 1h 16 min, 1h 10min on the **MINI,** and 1h 48 min on the **SL1**. With 150W power input (usually it’s not that much), electricity for printing one tree frog will be less than 0,023 USD. Such a low price is practically negligible.

On the other hand, Josef would like to recoup the money he spent on buying his printers within 6 months (4392 hours) of printing. This led him to add a fixed fee to printing hour costs. The fee (based on our actual printer prices) is 0.21 USD/hour for the **MK3S**, 0.1 USD/hour for the **MINI,** and 0.36 USD/hour for the **SL1**.

**3D printer operation costs = Printer price / required investment return time (h) \* print time (h)**

**Electricity cost = negligible**

[![](https://blog.prusa3d.com/wp-content/uploads/2020/10/mini2-1024x683.jpg)](https://blog.prusa3d.com/wp-content/uploads/2020/10/mini2-scaled.jpg)

### Margin

Josef is still afraid that his investment might not return with these prices. There are other factors coming into play as well: for example, a printing accident could occur, causing the loss of filament. Or there may be extra maintenance costs. **The most common issues are usually print quality problems** (e.g. printing large ASA-based objects can lead to warping etc.). **You can head over to our [older articles](https://blog.prusa3d.com/how-to-fix-the-most-common-3d-printing-errors_8201/) about print quality and troubleshooting.**

In other words, it’s not easy to calculate a price that would cover all potential issues and/or mistakes. It largely depends on the user’s experience and many other factors. In this case, Josef has to observe what percentage of prints tend to fail over a long period, and what do these failures cost him. However, for starters, he set the margin to be 30% of the material (filament or resin) price.

**So, let’s sum up the order:** Josef charged the customer the following prices: 1.3 USD **(MK3s)**, 1.16 USD **(MINI),** and 3.15 USD **(SL1)**, tax not included. Certainly, there will be many people who see it differently – there are customers who won’t pay larger sums of money and there are makers who don’t see it profitable enough.

The purpose of this guide is to give you an overview of all things you should take into account when calculating the costs. Basically, you need to include the material costs, time spent on print preparations, and some kind of “failure insurance”, plus general running costs. The price for energy consumed is almost negligible. Really long prints will be around a dollar, tops. **Obviously, we did not include taxes** – if you want to start a business with commissioned 3D printing, you need to check your country’s laws regarding this kind of work.

**Here’s a complete recap of Josef’s order:**  
**Material:** 0.15 (MK3s) + 0.15 (MINI) + 0.6 (SL1) USD  
**Labor:** 0.8 (MK3s) + 0.8 (MINI) + 1.6 (SL1) USD  
**Printer operation:** 0.27 (MK3s) + 0.12 (MINI) + 0.65 (SL1) USD  
**Margin (30% of material cost):** 0.05 (MK3s) + 0.05 (MINI) + 0.18 (SL1) USD  
**Total: 5.42 USD**

Finally, let’s see how the price would change if the customer wanted to have a truly large and complex model printed on the **MK3s**. Again, it’s a downloaded model, which is pretty much ready to print, however, it takes 1 day, 17 hours, and 48 minutes to finish. The material of choice is a non-standard **carbon fiber composite material [XT-CF20](https://shop.prusa3d.com/en/filament/93-20-carbon-fiber-xt-cf20-filament-750g.html)**, which costs 49.99 USD and we will need 756 g to finish the print. Other values necessary for the calculation remain the same:

**Material:** (49.99 / 750) \* 756 = 50.39 USD  
**Labor:** 0.8 USD  
**Printer operation:** 0.21 \* 41.8 + 0.023 \* 41.8 = 9.74 USD  
**Margin (30% of material cost):** 50,39 \* 0,3 = 15,12 USD  
**Total: 76.05 USD**

It comes as no surprise that larger objects and expensive materials also mean much higher final prices, even though the price for labor stays the same. Printer running/maintenance costs gradually increase with printed hours. Similarly, the price can increase even with seemingly simple parts, if it needs more of Josef’s time (for example drawing the part, manual editing of supports etc.).

### 3D print calculators

[![](https://blog.prusa3d.com/wp-content/uploads/2020/10/kalkulacka2-1-1024x516.jpg)](https://blog.prusa3d.com/wp-content/uploads/2020/10/kalkulacka2-1.jpg)

**We know that there’s a lot of things to cover, so this is why we made this handy [3D Printing Price Calculator](https://blog.prusa3d.com/3d-printing-price-calculator_38905/)!** It’s incredibly easy to use: just fill in the data and it will give you the result immediately! You can set every necessary attribute there and you can share your results with other people. The calculator can also import existing G-codes, saving you even more time. Give it a go!

Do you use 3D printing to make a living? Share your experience with pricing and general thoughts in the comment section – we’re sure that many others will find it useful!

**Happy printing!**
