 k%audio file name must be in directory
Filename = "piano_middle_C.wav";
[Sig, Fs] = audioread(Filename);
%sig stores raw audio data in column
%Fs = sampling frequency
Duration = length(Sig)/Fs;
disp(Duration);
Ts = 1/Fs;
Time = 0:Ts:(Duration-Ts);
plot (Time,Sig);
ylabel('Amplitude');
xlabel('Time (S)');