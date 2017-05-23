function [ f ] = get_freq( num )
%get_freq produces the frequency of a note in Hz given the key number

middle_A_freq = 440; %Hz
middle_A_num = 22; %this is the key number of middle A

octave_mult = 2; %going up an octave doubles the frequency
num_octave_keys = 12; %there are 12 keys in an octave

%fill in the following lines in terms of num and the constants defined
%above
semitone_mult = 2^(1/12) %frequency ratio of a semitone (two neighbouring keys)
semitone_jump =  num-22 %how many semitones away from middle A our key is
f = middle_A_freq*semitone_mult^semitone_jump %our key's frequency

end

