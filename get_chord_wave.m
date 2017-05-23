function [ X ] = get_chord_wave( chord, duration, fs )
%get_chord_wave generates the time signal for a chord
%   Given a chord name ('Am', 'D', 'Cmaj7','G', etc.), duration (in sec), and a sampling
%   frequency, this function generates the corresponding time signal

%feel free to add more cases (other chords or inversions of the given chords),
%just be sure to give new cases unique names
switch chord 
    case 'C'
        notes = {'C','m';
                 'E','m';
                 'G','m'};             
    case 'Cm'
        notes = {'C','m';
                 'Eb','m';
                 'G','m'}; 
    case 'C7'
        notes = {'C','m';
                 'E','m';
                 'G','m';
                 'Bb','m'};
    case 'Cmaj7'
        notes = {'C','m';
                 'E','m';
                 'G','m';
                 'B','m'};
    case 'Cm7'
        notes = {'C','m';
                 'Eb','m';
                 'G','m';
                 'Bb','m'};
    case 'D'
        notes = {'D','m';
                 'Fs','m';
                 'A','m'};        
    case 'Dm'
        notes = {'D','m';
                 'F','m';
                 'A','m'};
     case 'D7'
        notes = {'D', 'm';
                'Fs', 'm';
                'A', 'm';
                'C', 'h'};
    case 'E'
        notes = {'E','m';
                 'Gs','m';
                 'B','m'};
    case 'Em'
        notes = {'E','m';
                 'G','m';
                 'B','m'}; 
    case 'F'
        notes = {'F','m';
                 'A','m';
                 'C','m'};
    case 'Fm'
        notes = {'F','m';
                 'Ab','m';
                 'C','m'};
    case 'G'
        notes = {'G','m';
                 'B','m';
                 'D','m'};
    case 'Gm'
        notes = {'G','m';
                 'Bb','m';
                 'D','m'};
    case 'A'
        notes = {'A','m';
                 'Cs','m';
                 'E','m'};             
    case 'Am'
        notes = {'A','m';
                 'C','m';
                 'E','m'};
    case 'B'
        notes = {'B','m';
                 'Ds','m';
                 'Fs','m'};
    case 'Bm'
        notes = {'B','m';
                 'D','m';
                 'Fs','m'}; 
end

I = size(notes);
n = I(1); %n is the number of notes comprising the chord (usually 3)

chord_length = floor(duration*fs);
X = zeros(1, chord_length); %initialize X
for i=1:n %this loop will add the wave for each note inside the chord
    X = X + %put expression for what is added to X each time
end

end

