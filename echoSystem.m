function [ out ] = echoSystem( in, delay, gain )
    %This function applies an echo to the signal 'in'
    %'delay' is the number of time steps forward the echo should start. We
    %round in case a non integer is passed in
    %'gain' is what the echo will be multipied by
    delay = round(delay);
    echo = gain*circshift(in,delay);
    echo(1:delay) = 0; %circshift wraps around. Zero out the start of the echo.

    out = in + echo;
end

