function [ ] = customBode( frequencyResponse, sampleRate )
    %this function creates a bode plot for
    N0 = length(frequencyResponse);
    
    frequencyResponse = frequencyResponse(1:floor(N0/2));
    frequencies = linspace(0,floor(N0/2)-1,floor(N0/2)).' / (N0/sampleRate); %in Hz
        
    magnitudes = 20*log10(abs(frequencyResponse));
    phases = unwrap(angle(frequencyResponse));
    
    subplot(2,1,1)
    plot(frequencies, magnitudes);
    title('Bode Diagram')
    set(gca,'xscale','log')
    ylabel('Magnitude (dB)')
    subplot(2,1,2)
    plot(frequencies, phases);
    set(gca,'xscale','log')
    ylabel('Phase (rad)')
    xlabel('Frequency (Hz)')
    

    
end

