---
title: Bed Leveling
source: https://all3dp.com/2/3d-printer-bed-leveling-step-by-step-tutorial/
---
# 3D Printer Bed Leveling Easy Step-by-Step Guide
{% include 'not_my_work.md' %}
Manual 3D printer bed leveling can be a frustrating experience even for seasoned makers. However, as soon as you understand the basics of the process, you’ll easily master this useful skill. Here’s how to do it.

## 1. Create Some Workspace

Most FDM 3D printer beds are mounted with four adjustable screws in the corners of the build plate. Adjust each screw a couple of turns to increase the distance between the nozzle and the build plate. (If “touching up” a leveling job done not too long before, you may not need to do this.)

## 2. Position the Printhead

Now, you want to get the nozzle close to the build plate. To do this, simply home your printhead using whatever method your printer or control software provides.

This will send the nozzle to what the machine considers to be position (0, 0, 0) in the build volume’s space. What’s important is that third 0, which represents the Z coordinate, because it’s at this height that your machine will print the first layer.

Lastly, disable (or unlock) the stepper motors so that you’re able to freely push the printhead within the XY-plane. Again, this should be an option provided by your printer’s firmware. Be careful not to push it too quickly, as this can create a charge in the motor.

## 3. Measure & Adjust

You want to calibrate the 3D printer bed so that it’s as level as possible at all four corners and in the middle. In theory, the nozzle should _just_ touch the build plate at these locations, and this is why we try to pass something thin between them – such as a piece of paper. Reaching the point just before experiencing resistance while sliding the paper around ensures that the “gap” is correct and consistent at all five locations.

Move the printhead to a corner of the bed and put your paper between the nozzle tip and the print bed. If there’s no resistance when dragging the paper back and forth between the nozzle and the bed, adjust the closest leveling screw to tighten the gap. Be careful not to put pressure on the 3D printer bed (for example, with your hand), as this will push the bed down enough to make the gap bigger than it really is. Sliding your paper repeatedly, keep adjusting the screw until you can feel a slight drag from the nozzle and 3D printer bed.

Repeat this same process on all remaining corners. When the corners are okay, move the printhead to the middle of the build plate and check that the same resistance can be felt there. Readjust the screws if necessary.

Lastly, double-check each corner and the center again, as your adjustments in one corner may have affected the others. If that’s the case, repeat the entire procedure until all five points are leveled.

## 4. Inspect the First Layer

Before running a complete 3D print job, it’s a good idea to print only the first layer in order to verify successful bed leveling. If successful, the first layer should look more or less the same over the whole surface. If not, you may need to further adjust your level.