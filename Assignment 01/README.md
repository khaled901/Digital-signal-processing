# Lecture 01 - Signal Visualization Using MATLAB

## Objective

The objective of this assignment is to generate and visualize simple signals using MATLAB and understand frequency, amplitude, and noise.

## Task 1: Create a Sine Wave

I created a sine wave with amplitude 1, frequency 5 Hz, and duration 1 second.

The signal was displayed with a title, axis labels, and grid.

## Task 2: Compare Different Frequencies

I generated three sine waves with frequencies 2 Hz, 5 Hz, and 10 Hz.

**1. Which signal changes fastest?**

The 10 Hz signal changes fastest.

**2. Which signal has the lowest frequency?**

The 2 Hz signal has the lowest frequency.

**3. How can you see the difference in the plots?**

The 10 Hz signal has more cycles in one second, while the 2 Hz signal has fewer cycles.

## Task 3: Compare Different Amplitudes

I generated three sine waves with amplitudes 0.5, 1, and 2 using the same frequency of 5 Hz.

**1. Which signal has the largest amplitude?**

The signal with amplitude 2 has the largest amplitude.

**2. Does changing amplitude change frequency?**

No, changing amplitude does not change frequency.

**3. Give one real-world example where amplitude is important.**

In sound signals, amplitude is related to how loud the sound is.

## Task 4: Add Noise

I generated a clean sine wave and added random noise to it.

**1. What changed after adding noise?**

The signal became irregular because random noise was added.

**2. Can you still recognize the original signal?**

Yes, I can still recognize the original sine wave, but it is less smooth.

**3. Give one real-world source of signal noise.**

Electrical interference from nearby electronic devices.

## Task 5: Save Figures

I saved the following figures as PNG files:

- frequency_comparison.png
- amplitude_comparison.png
- clean_vs_noisy_signal.png

## Task 6: AI Usage

**AI Tool Used:**

ChatGPT

**Prompt:**

How can I add random noise to a sine wave in MATLAB and compare the clean and noisy signals using subplots?

**What AI Suggested:**

ChatGPT suggested using the randn() function to generate random noise and adding it to the clean sine wave. It also suggested using subplot() to display both signals.

**Did the code work immediately?**

Yes, the code worked when I ran it in MATLAB.

**What did you modify?**

I used a noise amplitude of 0.3 and a sine wave frequency of 5 Hz.

**How did you verify the result?**

I ran the MATLAB code and checked the plots. The clean signal was smooth, while the noisy signal had random variations. I could still recognize the original sine wave.

## Conclusion

In this assignment, I learned how to create sine waves, compare different frequencies and amplitudes, add random noise, and save figures using MATLAB.