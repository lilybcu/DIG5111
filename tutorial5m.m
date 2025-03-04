%tutorial 5 modified
ir = zeros (1,50000);
ir ([1, 1000, 5000, 10000, 50000]) = [1, 0.8, 0.7, 0.6, 0.5];
[ sig, fs] = audioread ('pluck.wav');
y = conv(sig, ir);
subplot (211), plot(sig);
subplot (212), plot(y);