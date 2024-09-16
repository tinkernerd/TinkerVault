---
title: A Detailed Guide to Printing Your Minis
author: Reddit User /r/PrintedMinis
source: https://www.reddit.com/r/PrintedMinis/comments/68umnm/a_detailed_guide_to_printing_your_minis/
description: A detailed guide on how to print miniatures, covering optimal settings, supports, and techniques for achieving high-quality prints.
date: 2024-09-15
tags:
  - Miniatures
  - Guide
  - 3dprinting
categories:
  - 3D Printing, Tech
related_topics:
  - Miniature Printing
  - Resin Printing Techniques
  - Support Structures
audience:
  - 3D printing enthusiasts, especially those interested in miniatures
keywords:
  - Miniature Printing Guide
  - High-Quality 3D Prints
  - 3D Printing Techniques
license: CC-BY-SA
version: 1
topic:
  - Tech
---

!!! Note
	Hey, this isn't my work. Feel free to check out the [original article]({{ page.meta.source }}), by {{page.meta.author}}.
# A detailed guide to printing your minis! : r/PrintedMinis

> ## Excerpt
> FDM printing has a lot of drawbacks when it comes to printing minis. It simply cannot achieve the required detail that SLA printers relish in. Unfortunately, resin printers are expensive. Even with the D7 and possible MP clone, it can get pretty expensive. Not to mention the amount of post processing. In this post, I intend to equip you with the tools to print your minis on your regular cheap FDM printer.

---
FDM printing has a lot of drawbacks when it comes to printing minis. It simply cannot achieve the required detail that SLA printers relish in. Unfortunately, resin printers are expensive. Even with the D7 and possible MP clone, it can get pretty expensive. Not to mention the amount of post processing. In this post, I intend to equip you with the tools to print your minis on your regular cheap FDM printer.

This post is thanks to the great feedback received on [my previous post](https://www.reddit.com/r/3Dprinting/comments/68jofs/004mm_layers_are_starting_to_grow_on_me/). For those of you who [just wanted my Cura settings](http://image.prntscr.com/image/8afac42592c842999eac615530fc84d0.png), enjoy!

-   **Proper layer heights**
    

You may think that a lower layer height is always better. 0.05 must be better than 0.08, right? The problem with this is that stepper motors move in steps. These motors moving in parts of a step can be a big problem over time. Less accurate layers will result in big layer lines and weaker layers.

To solve this, find out what your stepper motor is geared to. There are plenty of guides on this already that would dwarf the size of this post. The Monoprice Maker Select, for example, has a step of 0.04mm. This means that 0.08mm would look much better than 0.10mm.

-   **Top Layers**
    

Printing at such low layer heights require a lot of top layers. For normal layer heights, 5 top layers is more than enough. At such low layer heights, you need many more. [here](http://image.prntscr.com/image/2a02e9cd331a4b36a01e4722edf46fb0.png) is what 5 and 10 layers looks like. 5 layers is only 0.2mm high, while 10 was 0.4mm tall. With a more dense infill and better cooling, this would probably be sufficient. I would suggest 0.5mm thick top layers as a minimum. This only had a big impact on the stand of the model, the rest of the mini printed fine.

-   **Cooling / Temperature**
    

Cooling is of the utmost importance when it comes to detailed minis. You want to have enough cooling to be able to lay the filament in thin air; because that's what you are doing for a lot of the model. This means you need even cooling all around your nozzle. A [dii cooler](http://www.thingiverse.com/thing:1025471) is ideal for this. Also be sure to run some [Temperature tests](http://www.thingiverse.com/thing:696093) for each roll of filament.

Also be sure to not have a minimum layer time. This may increase the cooling, but doing that results in big blobs wherever the layer starts. The extra filament on the end could also harden quickly and may end up knocking your mini over. If you want to have a longer lay time, either print slower or print 2 at a time. Printing multiples often increases the details on those really tiny minis. Especially the kobold. I print them 4-5 at a time!

-   **Speed**
    

Slow. Print very slow. I would print at 30-40% of your normal speed for minis. I generally print 45-60mm/s, so for minis I print 20-25mm/s. This gives more time per layer for cooling, which is the ultimate goal here.

-   **Supports**
    

Don't use slicer made supports. They are either difficult to remove or useless in my experience. S3D may have better options than Cura, but they still use a similar concept. Build straight up from the next point down. This hurts arms and legs. The supports often fully enclose the legs and the upper arms making them very difficult to remove without breaking off some limbs.

Instead I use Meshmixer. Not only can you clean up your models, but the supports look beautiful. The settings may take a while to set in, but [here](http://image.prntscr.com/image/2d1767f9d2f147f4b977c50e6b2ebe45.png) are my settings. It is important to not have a tip diameter larger than your nozzle size. That would result in the tips not fully printing and being too far from the mini. If you have really good cooling, you can use a higher angle threshhold. If you find supports aren't being placed where you need them, you can either place them yourself or adjust the tip height. 80 density works well for me, but many models could be printed in 50. I prefer to keep the optimization low. [here](http://image.prntscr.com/image/4008165cf2f648489c41d2d094dce265.png) is 0 whereas [here](http://image.prntscr.com/image/eb07d075e9cf459cafeb74e432808654.png) is 100. Both print fine, there is no difference in quality. It technically uses less filament, but you spend just as much printing the skirt of a print. The main difference is that the 100 took 5 minutes to prune.

-   **Retraction**
    

There isn't much to say in this part. You need to make sure your retraction is damn perfect for many of these models. Especially if you are using meshmixer supports. Do a bunch of pillar tests to determine the optimal retraction settings. I use 3mm at 25mm/s on my MMS with Hatchbox PLA. It is a good starting point for most direct drive extruders. Bowden tubes may be more difficult.

-   **Conclusion**
    

Minis are hard to print in FDM. Just plain hard. Of course you can do it, but resin is better. If that is your intention with 3D printing, resin 100% of the time. But for people who already have an FDM printer or want a cheaper printer, this guide should be helpful enough to get started

**If I didn't address anything, or I missed something, don't hesitate to ask. I will try keep this post updated**
