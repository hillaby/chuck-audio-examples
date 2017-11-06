SinOsc sinOsc => dac;

440 => sinOsc.freq;
0.05 => sinOsc.gain;

<<< "Playing a 440 Hz sine wave with a gain of 0.05 for 5 seconds" >>>;

5::second => now;
