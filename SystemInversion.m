close all
clear all
clc

%load the frequecy response of the echo system
load('systemData.mat')

%pass the sound clip through the echo system
echoY = echoSystem(y, echoDelay*Fs, echoGain);

%FIND THE FREQUENCY RESPONSE OF THE INVERSE SYSTEM
inverseSystemFrequencyResponse  = 1./frequencyResponse;
customBode(inverseSystemFrequencyResponse, Fs);

%APPLY THE INVERSE SYSTEM TO THE ECHOED SIGNAL
echoRemovedY = cconv(echoY,ifft(inverseSystemFrequencyResponse,N0),N0);