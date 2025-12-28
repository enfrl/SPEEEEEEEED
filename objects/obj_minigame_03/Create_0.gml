var key_list = [
    ord("A"), ord("B"), ord("C"), ord("D"), ord("E"), ord("F"), ord("G"), ord("H"), ord("I"),
    ord("J"), ord("K"), ord("L"), ord("M"), ord("N"), ord("O"), ord("P"), ord("Q"), ord("R"),
    ord("S"), ord("T"), ord("U"), ord("V"), ord("W"), ord("X"), ord("Y"), ord("Z")
];

randomize();
array_shuffle_ext(key_list);
global.success = false;

random_key = [key_list[0], key_list[1], key_list[2], key_list[3], key_list[4]];
key1 = false;
key2 = false;
key3 = false;
key4 = false;
key5 = false;