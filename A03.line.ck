SinOsc sinOsc => Envelope env => dac;

440 => sinOsc.freq;

fun void rampToTarget(float target, dur duration) {
    duration => env.duration;
    target => env.target;
    duration => now;
}

<<< "Ramp slowly to 0.1" >>>;
rampToTarget(0.1, 2::second);

2::second => now;

<<< "Ramp slowly back to 0.0" >>>;
rampToTarget(0.0, 2::second);

2::second => now;

<<< "Ramp quickly to 0.1" >>>;
rampToTarget(0.1, 50::ms);

2::second => now;

<<< "Ramp quickly back to 0.0" >>>;
rampToTarget(0.0, 50::ms);

2::second => now;

<<< "Ramp instantly to 0.1" >>>;
rampToTarget(0.1, 0::ms);

2::second => now;

<<< "Ramp instantly back to 0.0" >>>;
rampToTarget(0.0, 0::ms);
