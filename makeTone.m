function tone = makeTone(freq, amp, dur, Fs, ramp)
durSec = dur/1000;
t = 1/Fs:1/Fs:durSec;
tone = amp*cos(2*pi*freq.*t);

% Make Ramps
rampSamp = ramp/1000*Fs;
rampu = 0:1/rampSamp:1-1/rampSamp;
rampd = 1-1/rampSamp:-1/rampSamp:0;
middle = ones(1,(durSec*Fs)-(2.*rampSamp));
envelope = [rampu middle rampd];

tone = tone.*envelope;