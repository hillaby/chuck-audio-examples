SinOsc sinOsc1 => Envelope env => dac;
SinOsc sinOsc2 => env;
SinOsc sinOsc3 => env;

440 => sinOsc1.freq;
550 => sinOsc2.freq;
660 => sinOsc3.freq;

8::second => env.duration;
0.6 => env.target;

<<< "A major triad until you hear distortion. Ctrl-C to stop it!" >>>;

8::second => now;
