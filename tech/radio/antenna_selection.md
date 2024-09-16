---
tit: A Simple Guide to Antenna Selection
topic:
  - Radio
  - Antennas
  - Tech
tags:
  - radio
  - antenna
type: Article
---
# A Simple Guide to Antenna Selection
Selecting an antenna for testing can sometimes be straightforward but often requires some specific consideration.   One aspect in antenna selection is knowing the intended test frequencies and then selecting a matching antenna.  

Not all antennas are created equal, and when it comes to frequency different antenna styles perform better at some frequencies and not at others. Some special considerations are sometimes required in antenna design typically at very high and very low frequencies. Take an antenna for a low frequency in the kHz range. A single wavelength at this range is on the order of miles long. Even a ¼ wavelength antenna at kHz frequencies is impractical at around 10,000 ft long. To get a better understanding of wavelength size and frequency,[ this calculator is helpful](https://www.ahsystems.com/EMC-formulas-equations/frequency-wavelength-calculator.php).  

Low frequency radio signals tend to act more like low frequency audio, traveling through and around objects in non-directional ways. On the other hand, elements for high frequency antennas on the order of GHz can be very small, but signals tend to propagate in very directional ways more like light, but also won’t go around or through objects. Because of this, low frequency signals are naturally more omnidirectional and high frequency ones are more directional. Attempting to make directional low frequency antennas or omnidirectional high frequency ones can be challenging.  

Other antenna design factors such as bandwidth are frequency-dependent as well. High frequencies require more precise length elements, making it more difficult to construct a wide bandwidth high  frequency antenna, but some designs manage to achieve this.

## Active and passive  
Receiving and transmitting RF signals, while related, have some different antenna requirements. Reception picks  up very small signals and delivers them to the receiver, requiring a well-tuned sensitive antenna. To aid with weak signals, some antennas or receivers employ active circuitry that amplifies the incoming signal. The amplifiers are  better located near to or on the antenna to reduce the chance of it amplifying the noise as well, but ideally will boost weak signals. When used with a transceiver, these amplifiers need to be switched in and out since they do not handle transmit power. They are designed so they are connected during reception, but bypassed during  
transmission. 
## Beam width and antenna gain  
Another factor in antenna selection is beam width, or the gain of the signal versus how directional it is. Directional antennas have a narrow beam width in the shape of a lobe in the intended direction, while omnidirectional antennas  have a more spherical propagation. Other antennas — such as doughnut-shaped ones — have some directionality. In this case, the signal does not propagate up or down much but does cover 360° on a single plane. [Calculators such as this one](https://www.ahsystems.com/EMC-formulas-equations/Antenna-beamwidth-coverage-calculation.php) can be helpful for determining beam width requirements.  
## Frequency range  
Antennas have different frequencies they are tuned for, in addition to the bandwidth or range or frequencies they can cover. Horn antennas and similar designs have a relatively narrow bandwidth while others such as a log periodic in comparison are very wide. Choosing an antenna with a wider bandwidth will also impact its other characteristics. If only a narrow test frequency is needed, it is preferable to have an antenna designed solely for  that range.

## Loop antennas  
For low frequencies below 30 MHz, loop antennas are ideal for magnetic field strength measurements. These consist of a typically circular loop or coil; the size and number of turns of the loop impacts the frequency the antenna works on. Without any matching network, loop antennas are resonant such that the circumference is a single wavelength of the desired frequency. They can be adjusted with a matching network to be anywhere from 10% of the size up to full size wavelength. Loop antennas are convenient to use due to their small size relative to their frequency. For magnetic field testing at low frequencies, loop antennas produce a voltage for a given field strength, making them easy to use. They are less idea for higher frequencies due to their  size and response characteristics.  

## Monopoles  
Monopoles can be used in many frequency ranges depending on their size, but like other antennas get larger at lower frequencies. Matching networks used with monopoles allow them to work over a wider range. Monopoles are constructed of a ground plane that is typically around ¼ wavelength and a single  radiating/reception element in the middle of the ground plane and perpendicular to it. Monopoles are good for measuring the electric field in testing.  

## Log periodic and hybrid antennas  
The log periodic antenna is another broadband antenna that is much more directional and handles higher frequencies than other similar designs. They are constructed of multiple elements that become progressively smaller toward the tip of the antenna.  These antennas are a good choice for both emission and immunity testing and can be used for both reception and transmission.  

The hybrid or biological antenna design is a mix of a log periodic and a bow tie type  
design as a reflector. This antenna design has a wideband response, making it a  
good choice for testing a wide range of frequencies without having to switch  
antennas. It can be used for immunity and other compliance testing with repeatable  
results.  

## Dipoles  
The dipole is a simple design and is considered somewhat of a standard when it comes to antennas. Its design consists of two equal length of tuned elements in line with each other but opposite in direction. The elements on a dipole are typically tuned to ¼ wavelength such that the total length is ½ wavelength. The dipole is simple but also an effective antenna with a radiation pattern that covers a 360° doughnut-like pattern when vertically polarized. When horizontally polarized, the same doughnut pattern makes them bi-directional. Shorter dipoles can also be constructed with matching network components. The dipole does not have a very wide bandwidth and while still useful it is less desirable for testing a wide range of frequencies as it requires adjustments or multiple antennas for different test frequencies.

## Biconical antennas  
Biconical antennas are a modified type of dipole where the two elements form a roughly conical shape. This change allows them to have a wider bandwidth versus a regular dipole. The cones used on these are rarely solid and are often made of multiple elements, making them easier to fold or transport. Their broadband nature allows quick testing without having to adjust or change the antenna. They are linearly polarized and typically work in  frequency from 20 MHz to 300 MHz, but when designed for it, they can work as high as 18 GHz.  
## Horns  
At frequencies around 1 GHz and higher, a horn antenna becomes a practical choice. Horns are too large for sub-1 GHz use but they work well for high frequencies. Horn antennas are very directional both for receiving and transmitting so they can both pick up weak signals and transmit a strong signal to a device. This makes them a good choice for both immunity and emission testing.  

Above 1 GHz a horn is still a good choice and they get physically smaller and more directional as frequency increases. Horns work well up to 40 GHz and above, but the addition of a pre-amplifier for reception is a good addition to improve the dynamic range of the antenna.  
## Conclusion 
Selecting the right antenna for a situation can sometimes seem confusing when considering all the necessary criteria. Frequency is a paramount consideration and often the starting point for a design. To help get past the confusion, contact an expert in the field.