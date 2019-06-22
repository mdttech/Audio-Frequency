# Audio-Frequency
MATLAB Programming Assignment 
Audio signals are usually composed of many different frequencies. For example, in music, the note 'middle C' has a frequency of 261.6 Hz, and most music consists of several notes (or frequencies) being played at the same time.

Typically, the frequencies that make up a signal are different enough that they do not interfere substantially with each other.

However, when a signal contains two frequencies that are close together, they can cause the signal to appear to have a 'beat' - a pulsing pattern in the amplitude.


In this project, you will create a signal that contains this beat phenomenon and then analyze the signal's frequency content.

# OUTPUT

Notice the two spikes on the left side of the plot which correspond to the frequencies of the two sine waves you created earlier. Since the spikes are close together, the signal exhibits the beat phenomenon.

Why are there four spikes? That relates to the Nyquist frequency, which in this case is 5 (or fs/2). When the input vector consists of real numbers, the fft function always returns data whose magnitude is symmetric about the Nyquist frequency. That is, the second half of the plot (after the Nyquist frequency) is just a mirror image of the first half.
