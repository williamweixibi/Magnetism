close all
clear all
clc

%load the sound sample
[y, Fs] = audioread('laser.wav');
%y contains the sound samples in stereo
%Fs is the number of samples per second
y = y(:,1); %turn into mono sound
N0 = length(y);

%system parameters
echoGain = 0.3;
echoDelay = 0.25; %in seconds

%CREATE IMPULSE SIGNAL HERE (Vector with N0 rows and 1 column)
impulse = zeros(N0,1);
impulse(1,1)=1;

%generate impulse response
impulseResponse = echoSystem(impulse, echoDelay*Fs, echoGain);

%CREATE AN ECHOED AUDIO SIGNAL WITH THE GENERATED IMPULSE RESPONSE
%TO CHECK IF YOU WERE COORECT (use cconv())
echoY = cconv(impulseResponse,y,N0);

%CALCULATE FREQUENCY RESPONSE HERE (N0 x 1 vector)
frequencyResponse = fft(impulseResponse,N0);

%Create Bode plot of the echo system
customBode(frequencyResponse, Fs);

%Save the frequency response to be used to PartC (System Inversion
save('systemData.mat','y','N0','Fs','frequencyResponse','echoDelay','echoGain');





