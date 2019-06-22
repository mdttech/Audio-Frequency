% fs will represent the sampling frequency of the audio signal.

fs = 10;

% t will represent the times when the audio signal was sampled.

t = 0:1/fs:20;

% y will represent the audio signal amplitude at each sampled time.

y = sin(1.8*2*pi*t) + sin(2.1*2*pi*t);

% Since the y vector contains the sum of two sine waves
% with similar frequencies, you will see a 'beat' pattern.
subplot(1,2,1)
plot(t,y)

% A Fourier transform returns information about the frequency content of the signal.
% You can use the fft function to compute the discrete Fourier transform of a vector.

yfft = fft(y);

% Use the numel function to return the number of elements in an array.

n = numel(y);

% The fft function in MATLAB uses only the sampled data to compute the Fourier transform.
% The f variable will represent the frequencies that correspond to the values in yfft.
% Create a variable named f that contains a vector which starts at 0,
% ends at fs*(n-1)/n, and whose elements are spaced by fs/n.

f = 0:fs/n:(fs*(n-1)/n);

% The output values from fft are complex numbers. 
% To plot their magnitude, you can use the abs function.
subplot(1,2,2)
plot(f,abs(yfft))
