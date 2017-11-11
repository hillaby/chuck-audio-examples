for (20 => float freq; freq < 20000; freq * 1.1 => freq) {
    <<< "Frequency: " + freq + ", MIDI note: " + Std.ftom(freq) >>>;
}

for (0 => int note; note < 100; note++) {
    <<< "MIDI note: " + note + ", frequency: " + Std.mtof(note) >>>;
}
