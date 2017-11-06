SinOsc sinOsc => dac;

440 => sinOsc.freq;

for (0 =>  int i; i <= 80; i + 10 => i) {
    <<< "Playing a 440 Hz sine wave with a gain of " + i + " dB for a second" >>>;
    i => Std.dbtorms => sinOsc.gain;
    1::second => now;
}
