var sounds = {
    65: 'tom',
    66: 'tink',
    67: 'snare',
    68: 'ride',
    69: 'openhat',
    70: 'kick',
    71: 'hihat',
    72: 'clap',
    73: 'boom'

};
var val = {
    65: 'box1',
    66: 'box2',
    67: 'box3',
    68: 'box4',
    69: 'box5',
    70: 'box6',
    71: 'box7',
    72: 'box8',
    73: 'box9'

};
document.onkeydown = function (e) {
    var soundid = sounds[e.keyCode];
    var valid = val[e.keyCode];
    if (soundid) {
        document.getElementById(soundid).play();

    } else console.log("key not mapped : code is", e.keyCode);
    if (valid) {
        document.getElementById(valid).style.fontSize = "100px";

    } else console.log("key not mapped : code is", e.keyCode);

}
document.onkeyup = function (e) {
    var valid = val[e.keyCode];
    if (valid) {
        document.getElementById(valid).style.fontSize = "80px";

    } else console.log("key not mapped : code is", e.keyCode);

}