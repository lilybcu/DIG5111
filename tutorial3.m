%main3
%Code for table1
%Generate simple sinusoid waveform
%Sound = A*cos(wt + phase)
%sound parameters!
Amplitude = 0.5;
Frequency = 440;
W = Frequency*2*pi;
 
%Time! 
Fs = 11025;
Ts = 1/Fs;
Time = 0:Ts:2;

%Ok let us create sound
signal = Amplitude*cos(W*Time);
 
%Plot one cycle signal
%If we want to plot only one cycle, how many samples are there?
%roughly 26 samples why?
%Time (1:26) signal (1:26)
figure(1);
plot(Time(1:26), signal(1:26));
xlabel('Time (Sec)');
ylabel('Amplitude (V)');
grid on;
 
%output to wav file
audiowrite('A4.wav',signal, Fs);
NoteC=note(0.7, 40, 2);
NoteE=note(0.5, 44, 2);
NoteG=note(0.5, 47, 2);
 
Ctriad_org = NoteC+NoteE+NoteG;
Ctriad = Ctriad_org./max(Ctriad_org);
%sound(Ctriad,11025); 
audiowrite('Ctriad.wav', Ctriad,11025); %is audio clipping why? 

