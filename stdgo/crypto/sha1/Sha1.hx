package stdgo.crypto.sha1;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package sha1 implements the SHA-1 hash algorithm as defined in RFC 3174.
    //
    // SHA-1 is cryptographically broken and should not be used for secure
    // applications.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
private var _golden = (new Slice<stdgo.crypto.sha1.Sha1.T_sha1Test>(
32,
32,
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("76245dbf96f661bd221046197ab8b9f063f11bad" : GoString), ("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\n" : GoString), Go.str("sha",
1,
"\x0B",
160,
")I",
222,
"q(8h",
158,
"v",
229,
136,
"[",
248,
129,
23,
186,
"4Daaaaaaaaaaaaaaaaaaaaaa",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
150)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("da39a3ee5e6b4b0d3255bfef95601890afd80709" : GoString), Go.str(), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("86f7e437faa5a7fce15d1ddcb9eaeaea377667b8" : GoString), ("a" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("da23614e02469a0d7c7bd1bdab5c9c474b1904dc" : GoString), ("ab" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"a",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
1)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("a9993e364706816aba3e25717850c26c9cd0d89d" : GoString), ("abc" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"a",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
1)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("81fe8bfe87576c3ecb22426f8e57847382917acf" : GoString), ("abcd" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"ab",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
2)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("03de6c570bfe24bfc328ccd7ca46b76eadaf4334" : GoString), ("abcde" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"ab",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
2)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("1f8ac10f23c5b5bc1167bda84b833e5c057a77d2" : GoString), ("abcdef" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"abc",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
3)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("2fb5e13419fc89246865e7a324f476ec624e8740" : GoString), ("abcdefg" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"abc",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
3)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("425af12a0743502b322e93a015bcf868e324d56a" : GoString), ("abcdefgh" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"abcd",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
4)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("c63b19f1e4c8b5f76b25c49b8b87f57d8e4872a1" : GoString), ("abcdefghi" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"abcd",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
4)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("d68c19a0a345b7eab78d5e11e991c026ec60db63" : GoString), ("abcdefghij" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"abcde",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
5)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("ebf81ddcbe5bf13aaabdc4d65354fdf2044f38a7" : GoString), ("Discard medicine more than two years old." : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"Discard medicine mor",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
20)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("e5dea09392dd886ca63531aaa00571dc07554bb6" : GoString), ("He who has a shady past knows that nice guys finish last." : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"He who has a shady past know",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
28)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("45988f7234467b94e3e9494434c96ee3609d8f8f" : GoString), ("I wouldn\'t marry him with a ten foot pole." : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"I wouldn\'t marry him ",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
21)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("55dee037eb7460d5a692d1ce11330b260e40c988" : GoString), ("Free! Free!/A trip/to Mars/for 900/empty jars/Burma Shave" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"Free! Free!/A trip/to Mars/f",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
28)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("b7bc5fb91080c7de6b582ea281f8a396d7c0aee8" : GoString), ("The days of the digital watch are numbered.  -Tom Stoppard" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"The days of the digital watch",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
29)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("c3aed9358f7c77f523afe86135f06b95b3999797" : GoString), ("Nepal premier won\'t resign." : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"Nepal premier",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
"\r")) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("6e29d302bf6e3a5e4305ff318d983197d6906bb9" : GoString), ("For every action there is an equal and opposite government program." : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"For every action there is an equa",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
"!")) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("597f6a540010f94c15d71806a99a2c8710e747bd" : GoString), ("His money is twice tainted: \'taint yours and \'taint mine." : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"His money is twice tainted: ",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
28)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("6859733b2590a8a091cecf50086febc5ceef1e80" : GoString), ("There is no reason for any individual to have a computer in their home. -Ken Olsen, 1977" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"There is no reason for any individual to hav",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
",")) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("514b2630ec089b8aee18795fc0cf1f4860cdacad" : GoString), ("It\'s a tiny change to the code and not completely disgusting. - Bob Manchek" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"It\'s a tiny change to the code and no",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
"%")) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("c5ca0d4a7b6676fc7aa72caa41cc3d5df567ed69" : GoString), ("size:  a.out:  bad magic" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"size:  a.out",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
"\x0C")) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("74c51fa9a04eadc8c1bbeaa7fc442f834b90a00a" : GoString), ("The major problem is with sendmail.  -Mark Horton" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"The major problem is wit",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
24)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("0b4c4ce5f52c3ad2821852a8dc00217fa18b8b66" : GoString), ("Give me a rock, paper and scissors and I will move the world.  CCFestoon" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"Give me a rock, paper and scissors a",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
"$$")) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("3ae7937dd790315beb0f48330e8642237c61550a" : GoString), ("If the enemy is within range, then so are you." : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"If the enemy is within ",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
23)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("410a2b296df92b9a47412b13281df8f830a9f44b" : GoString), ("It\'s well we cannot hear the screams/That we create in others\' dreams." : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"It\'s well we cannot hear the scream",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
"#")) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("841e7c85ca1adcddbdd0187f1289acb5c642f7f5" : GoString), ("You remind me of a TV show, but that\'s all right: I watch it anyway." : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"You remind me of a TV show, but th",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
"\"")) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("163173b825d03b952601376b25212df66763e1db" : GoString), ("C is as portable as Stonehedge!!" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"C is as portable",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
16)) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("32b0377f2687eb88e22106f133c586ab314d5279" : GoString), ("Even if I could be Shakespeare, I think I should still choose to be Faraday. - A. Huxley" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"Even if I could be Shakespeare, I think I sh",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
",")) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("0885aaf99b569542fd165fa44e322718f4a984e0" : GoString), ("The fugacity of a constituent in a mixture of gases at a given temperature is proportional to its mole fraction.  Lewis-Randall Rule" : GoString), Go.str("sha",
1,
"x}",
244,
"\r",
235,
242,
16,
135,
232,
"[",
178,
"JA$$D",
183,
"غx8em",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
"B")) : stdgo.crypto.sha1.Sha1.T_sha1Test),
(new stdgo.crypto.sha1.Sha1.T_sha1Test(("6627d6904d71420b0bf3886ab629623538689f45" : GoString), ("How can you write a big system without C++?  -Paul Glick" : GoString), Go.str("sha",
1,
"gE#",
1,
239,
"ͫ",
137,
152,
186,
220,
254,
16,
"2Tv",
195,
210,
225,
240,
"How can you write a big syst",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
28)) : stdgo.crypto.sha1.Sha1.T_sha1Test)) : Slice<stdgo.crypto.sha1.Sha1.T_sha1Test>);
/**
    
    
    
**/
private var _largeUnmarshalTests = (new Slice<stdgo.crypto.sha1.Sha1.T_unmarshalTest>(2, 2, ({ _state : Go.str("sha",
1,
19,
188,
254,
131,
140,
189,
223,
"P",
31,
216,
"ڿ<",
158,
"ji8t",
225,
165,
"@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuv",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
1,
167,
"VCw"), _sum : ("bc6245c9959cc33e1c2592e5c9ea9b5d0431246c" : GoString) } : stdgo.crypto.sha1.Sha1.T_unmarshalTest), ({ _state : Go.str("sha",
1,
"m;",
22,
166,
"R",
190,
"@",
169,
"nĈ",
249,
"S",
3,
0,
"B",
194,
220,
"v",
207,
"@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuv",
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
1,
135,
"VCw"), _sum : ("8f2d1c0e4271768f35feb918bfe21ea1387a2072" : GoString) } : stdgo.crypto.sha1.Sha1.T_unmarshalTest)) : Slice<stdgo.crypto.sha1.Sha1.T_unmarshalTest>);
/**
    
    
    
**/
private var _bench = new_();
/**
    
    
    
**/
private var _buf = new Slice<GoUInt8>((8192 : GoInt).toBasic(), 0).__setNumber32__();
/**
    
    
    
**/
private final _boringEnabled = false;
/**
    // The size of a SHA-1 checksum in bytes.
    
    
**/
final size = (20i64 : GoUInt64);
/**
    // The blocksize of SHA-1 in bytes.
    
    
**/
final blockSize = (64i64 : GoUInt64);
/**
    
    
    
**/
private final _chunk = (64i64 : GoUInt64);
/**
    
    
    
**/
private final _init0 = (1732584193i64 : GoUInt64);
/**
    
    
    
**/
private final _init1 = (4023233417i64 : GoUInt64);
/**
    
    
    
**/
private final _init2 = (2562383102i64 : GoUInt64);
/**
    
    
    
**/
private final _init3 = (271733878i64 : GoUInt64);
/**
    
    
    
**/
private final _init4 = (3285377520i64 : GoUInt64);
/**
    
    
    
**/
private final _magic = Go.str("sha", 1);
/**
    
    
    
**/
private final _marshaledSize = (96 : GoInt);
/**
    
    
    
**/
private final __K0 = (1518500249i64 : GoUInt64);
/**
    
    
    
**/
private final __K1 = (1859775393i64 : GoUInt64);
/**
    
    
    
**/
private final __K2 = (2400959708i64 : GoUInt64);
/**
    
    
    
**/
private final __K3 = (3395469782i64 : GoUInt64);
/**
    // digest represents the partial evaluation of a checksum.
    
    
**/
@:structInit @:private @:using(stdgo.crypto.sha1.Sha1.T_digest_static_extension) class T_digest {
    public var _h : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 5) (0 : GoUInt32)]);
    public var _x : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) (0 : GoUInt8)]);
    public var _nx : GoInt = 0;
    public var _len : GoUInt64 = 0;
    public function new(?_h:GoArray<GoUInt32>, ?_x:GoArray<GoUInt8>, ?_nx:GoInt, ?_len:GoUInt64) {
        if (_h != null) this._h = _h;
        if (_x != null) this._x = _x;
        if (_nx != null) this._nx = _nx;
        if (_len != null) this._len = _len;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_digest(_h, _x, _nx, _len);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_sha1Test {
    public var _out : GoString = "";
    public var _in : GoString = "";
    public var _halfState : GoString = "";
    public function new(?_out:GoString, ?_in:GoString, ?_halfState:GoString) {
        if (_out != null) this._out = _out;
        if (_in != null) this._in = _in;
        if (_halfState != null) this._halfState = _halfState;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_sha1Test(_out, _in, _halfState);
    }
}
/**
    // Tests for unmarshaling hashes that have hashed a large amount of data
    // The initial hash generation is omitted from the test, because it takes a long time.
    // The test contains some already-generated states, and their expected sums
    // Tests a problem that is outlined in GitHub issue #29543
    // The problem is triggered when an amount of data has been hashed for which
    // the data length has a 1 in the 32nd bit. When casted to int, this changes
    // the sign of the value, and causes the modulus operation to return a
    // different result.
    
    
**/
@:structInit @:private class T_unmarshalTest {
    public var _state : GoString = "";
    public var _sum : GoString = "";
    public function new(?_state:GoString, ?_sum:GoString) {
        if (_state != null) this._state = _state;
        if (_sum != null) this._sum = _sum;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_unmarshalTest(_state, _sum);
    }
}
private function _boringNewSHA1():stdgo.hash.Hash.Hash {
        throw Go.toInterface(("boringcrypto: not available" : GoString));
    }
private function _boringUnreachable():Void {}
private function _boringSHA1(_0:Slice<GoByte>):GoArray<GoByte> {
        throw Go.toInterface(("boringcrypto: not available" : GoString));
    }
private function _consumeUint64(_b:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : GoUInt64; } {
        _b[(7 : GoInt)];
        var _x:GoUInt64 = (((((((_b[(7 : GoInt)] : GoUInt64) | ((_b[(6 : GoInt)] : GoUInt64) << (8i64 : GoUInt64))) | ((_b[(5 : GoInt)] : GoUInt64) << (16i64 : GoUInt64))) | ((_b[(4 : GoInt)] : GoUInt64) << (24i64 : GoUInt64))) | ((_b[(3 : GoInt)] : GoUInt64) << (32i64 : GoUInt64))) | ((_b[(2 : GoInt)] : GoUInt64) << (40i64 : GoUInt64))) | ((_b[(1 : GoInt)] : GoUInt64) << (48i64 : GoUInt64))) | ((_b[(0 : GoInt)] : GoUInt64) << (56i64 : GoUInt64));
        return { _0 : (_b.__slice__((8 : GoInt)) : Slice<GoUInt8>), _1 : _x };
    }
private function _consumeUint32(_b:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : GoUInt32; } {
        _b[(3 : GoInt)];
        var _x:GoUInt32 = (((_b[(3 : GoInt)] : GoUInt32) | ((_b[(2 : GoInt)] : GoUInt32) << (8i64 : GoUInt64))) | ((_b[(1 : GoInt)] : GoUInt32) << (16i64 : GoUInt64))) | ((_b[(0 : GoInt)] : GoUInt32) << (24i64 : GoUInt64));
        return { _0 : (_b.__slice__((4 : GoInt)) : Slice<GoUInt8>), _1 : _x };
    }
/**
    // New returns a new hash.Hash computing the SHA1 checksum. The Hash also
    // implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    // marshal and unmarshal the internal state of the hash.
**/
function new_():stdgo.hash.Hash.Hash {
        if (false) {
            return _boringNewSHA1();
        };
        var _d = (Go.setRef(({} : stdgo.crypto.sha1.Sha1.T_digest)) : Ref<stdgo.crypto.sha1.Sha1.T_digest>);
        _d.reset();
        return Go.asInterface(_d);
    }
/**
    // Sum returns the SHA-1 checksum of the data.
**/
function sum(_data:Slice<GoByte>):GoArray<GoByte> {
        if (false) {
            return _boringSHA1(_data)?.__copy__();
        };
        var _d:T_digest = ({} : stdgo.crypto.sha1.Sha1.T_digest);
        _d.reset();
        _d.write(_data);
        return _d._checkSum()?.__copy__();
    }
function testGolden(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_golden.length), _i++, {
                var _g:stdgo.crypto.sha1.Sha1.T_sha1Test = _golden[(_i : GoInt)];
                var _s:GoString = stdgo.fmt.Fmt.sprintf(("%x" : GoString), Go.toInterface(sum((_g._in : Slice<GoByte>))));
                if (_s != (_g._out)) {
                    _t.fatalf(("Sum function: sha1(%s) = %s want %s" : GoString), Go.toInterface(_g._in), Go.toInterface(_s), Go.toInterface(_g._out));
                };
                var _c:stdgo.hash.Hash.Hash = new_();
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (4 : GoInt), _j++, {
                        var _sum:Slice<GoByte> = (null : Slice<GoUInt8>);
                        {
                            final __value__ = _j;
                            if (__value__ == ((0 : GoInt)) || __value__ == ((1 : GoInt))) {
                                stdgo.io.Io.writeString(_c, _g._in);
                                _sum = _c.sum((null : Slice<GoUInt8>));
                            } else if (__value__ == ((2 : GoInt))) {
                                stdgo.io.Io.writeString(_c, (_g._in.__slice__((0 : GoInt), (_g._in.length) / (2 : GoInt)) : GoString));
                                _c.sum((null : Slice<GoUInt8>));
                                stdgo.io.Io.writeString(_c, (_g._in.__slice__((_g._in.length) / (2 : GoInt)) : GoString));
                                _sum = _c.sum((null : Slice<GoUInt8>));
                            } else if (__value__ == ((3 : GoInt))) {
                                if (false) {
                                    continue;
                                };
                                stdgo.io.Io.writeString(_c, (_g._in.__slice__((0 : GoInt), (_g._in.length) / (2 : GoInt)) : GoString));
                                (Go.typeAssert((Go.toInterface(_c) : Ref<T_digest>)) : Ref<T_digest>).constantTimeSum((null : Slice<GoUInt8>));
                                stdgo.io.Io.writeString(_c, (_g._in.__slice__((_g._in.length) / (2 : GoInt)) : GoString));
                                _sum = (Go.typeAssert((Go.toInterface(_c) : Ref<T_digest>)) : Ref<T_digest>).constantTimeSum((null : Slice<GoUInt8>));
                            };
                        };
                        var _s:GoString = stdgo.fmt.Fmt.sprintf(("%x" : GoString), Go.toInterface(_sum));
                        if (_s != (_g._out)) {
                            _t.fatalf(("sha1[%d](%s) = %s want %s" : GoString), Go.toInterface(_j), Go.toInterface(_g._in), Go.toInterface(_s), Go.toInterface(_g._out));
                        };
                        _c.reset();
                    });
                };
            });
        };
    }
function testGoldenMarshal(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _h:stdgo.hash.Hash.Hash = new_();
        var _h2:stdgo.hash.Hash.Hash = new_();
        for (__0 => _g in _golden) {
            _h.reset();
            _h2.reset();
            stdgo.io.Io.writeString(_h, (_g._in.__slice__(0, (_g._in.length) / (2 : GoInt)) : GoString));
            var __tmp__ = (Go.typeAssert((Go.toInterface(_h) : stdgo.encoding.Encoding.BinaryMarshaler)) : stdgo.encoding.Encoding.BinaryMarshaler).marshalBinary(), _state:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("could not marshal: %v" : GoString), Go.toInterface(_err));
                continue;
            };
            if ((_state : GoString) != (_g._halfState)) {
                _t.errorf(("sha1(%q) state = %+q, want %+q" : GoString), Go.toInterface(_g._in), Go.toInterface(_state), Go.toInterface(_g._halfState));
                continue;
            };
            {
                var _err:Error = (Go.typeAssert((Go.toInterface(_h2) : stdgo.encoding.Encoding.BinaryUnmarshaler)) : stdgo.encoding.Encoding.BinaryUnmarshaler).unmarshalBinary(_state);
                if (_err != null) {
                    _t.errorf(("could not unmarshal: %v" : GoString), Go.toInterface(_err));
                    continue;
                };
            };
            stdgo.io.Io.writeString(_h, (_g._in.__slice__((_g._in.length) / (2 : GoInt)) : GoString));
            stdgo.io.Io.writeString(_h2, (_g._in.__slice__((_g._in.length) / (2 : GoInt)) : GoString));
            {
                var __0 = _h.sum((null : Slice<GoUInt8>)), __1 = _h2.sum((null : Slice<GoUInt8>)), _actual2 = __1, _actual = __0;
                if (!stdgo.bytes.Bytes.equal(_actual, _actual2)) {
                    _t.errorf(("sha1(%q) = 0x%x != marshaled 0x%x" : GoString), Go.toInterface(_g._in), Go.toInterface(_actual), Go.toInterface(_actual2));
                };
            };
        };
    }
function testSize(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _c:stdgo.hash.Hash.Hash = new_();
        {
            var _got:GoInt = _c.size();
            if (_got != ((20 : GoInt))) {
                _t.errorf(("Size = %d; want %d" : GoString), Go.toInterface(_got), Go.toInterface((20 : GoInt)));
            };
        };
    }
function testBlockSize(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _c:stdgo.hash.Hash.Hash = new_();
        {
            var _got:GoInt = _c.blockSize();
            if (_got != ((64 : GoInt))) {
                _t.errorf(("BlockSize = %d; want %d" : GoString), Go.toInterface(_got), Go.toInterface((64 : GoInt)));
            };
        };
    }
/**
    // Tests that blockGeneric (pure Go) and block (in assembly for some architectures) match.
**/
function testBlockGeneric(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (false) {
            _t.skip(Go.toInterface(("BoringCrypto doesn\'t expose digest" : GoString)));
        };
        {
            var _i:GoInt = (1 : GoInt);
            Go.cfor(_i < (30 : GoInt), _i++, {
                var __0 = (Go.typeAssert((Go.toInterface(new_()) : Ref<T_digest>)) : Ref<T_digest>), __1 = (Go.typeAssert((Go.toInterface(new_()) : Ref<T_digest>)) : Ref<T_digest>), _asm = __1, _gen = __0;
                var _buf = new Slice<GoUInt8>(((64 : GoInt) * _i : GoInt).toBasic(), 0).__setNumber32__();
                stdgo.crypto.rand.Rand.read(_buf);
                _blockGeneric(_gen, _buf);
                _block(_asm, _buf);
                if (Go.toInterface(Go.asInterface((_gen : stdgo.crypto.sha1.Sha1.T_digest))) != Go.toInterface(Go.asInterface((_asm : stdgo.crypto.sha1.Sha1.T_digest)))) {
                    _t.errorf(("For %#v block and blockGeneric resulted in different states" : GoString), Go.toInterface(_buf));
                };
            });
        };
    }
private function _safeSum(_h:stdgo.hash.Hash.Hash):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _sum:Slice<GoByte> = (null : Slice<GoUInt8>), _err:Error = (null : Error);
        __deferstack__.unshift(() -> {
            var a = function():Void {
                {
                    var _r:AnyInterface = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    });
                    if (_r != null) {
                        _err = stdgo.fmt.Fmt.errorf(("sum panic: %v" : GoString), _r);
                    };
                };
            };
            a();
        });
        try {
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _h.sum((null : Slice<GoUInt8>)), _1 : (null : Error) };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return { _0 : _sum, _1 : _err };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return { _0 : _sum, _1 : _err };
        };
    }
function testLargeHashes(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _test in _largeUnmarshalTests) {
            var _h:stdgo.hash.Hash.Hash = new_();
            {
                var _err:Error = (Go.typeAssert((Go.toInterface(_h) : stdgo.encoding.Encoding.BinaryUnmarshaler)) : stdgo.encoding.Encoding.BinaryUnmarshaler).unmarshalBinary((_test._state : Slice<GoByte>));
                if (_err != null) {
                    _t.errorf(("test %d could not unmarshal: %v" : GoString), Go.toInterface(_i), Go.toInterface(_err));
                    continue;
                };
            };
            var __tmp__ = _safeSum(_h), _sum:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("test %d could not sum: %v" : GoString), Go.toInterface(_i), Go.toInterface(_err));
                continue;
            };
            if (stdgo.fmt.Fmt.sprintf(("%x" : GoString), Go.toInterface(_sum)) != (_test._sum)) {
                _t.errorf(("test %d sum mismatch: expect %s got %x" : GoString), Go.toInterface(_i), Go.toInterface(_test._sum), Go.toInterface(_sum));
            };
        };
    }
function testAllocations(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (false) {
            _t.skip(Go.toInterface(("BoringCrypto doesn\'t allocate the same way as stdlib" : GoString)));
        };
        var _in = (("hello, world!" : GoString) : Slice<GoByte>);
        var _out = new Slice<GoUInt8>((0 : GoInt).toBasic(), (20 : GoInt)).__setNumber32__();
        var _h:stdgo.hash.Hash.Hash = new_();
        var _n:GoInt = (stdgo.testing.Testing.allocsPerRun((10 : GoInt), function():Void {
            _h.reset();
            _h.write(_in);
            _out = _h.sum((_out.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>));
        }) : GoInt);
        if (_n > (0 : GoInt)) {
            _t.errorf(("allocs = %d, want 0" : GoString), Go.toInterface(_n));
        };
    }
private function _benchmarkSize(_b:Ref<stdgo.testing.Testing.B>, _size:GoInt):Void {
        var _sum = new Slice<GoUInt8>((_bench.size() : GoInt).toBasic(), 0).__setNumber32__();
        _b.run(("New" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            _b.reportAllocs();
            _b.setBytes((_size : GoInt64));
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    _bench.reset();
                    _bench.write((_buf.__slice__(0, _size) : Slice<GoUInt8>));
                    _bench.sum((_sum.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>));
                });
            };
        });
        _b.run(("Sum" : GoString), function(_b:Ref<stdgo.testing.Testing.B>):Void {
            _b.reportAllocs();
            _b.setBytes((_size : GoInt64));
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    sum((_buf.__slice__(0, _size) : Slice<GoUInt8>));
                });
            };
        });
    }
function benchmarkHash8Bytes(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkSize(_b, (8 : GoInt));
    }
function benchmarkHash320Bytes(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkSize(_b, (320 : GoInt));
    }
function benchmarkHash1K(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkSize(_b, (1024 : GoInt));
    }
function benchmarkHash8K(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkSize(_b, (8192 : GoInt));
    }
/**
    // blockGeneric is a portable, pure Go version of the SHA-1 block step.
    // It's used by sha1block_generic.go and tests.
**/
private function _blockGeneric(_dig:Ref<T_digest>, _p:Slice<GoByte>):Void {
        var _w:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 16) (0 : GoUInt32)]);
        var __0:GoUInt32 = _dig._h[(0 : GoInt)], __1:GoUInt32 = _dig._h[(1 : GoInt)], __2:GoUInt32 = _dig._h[(2 : GoInt)], __3:GoUInt32 = _dig._h[(3 : GoInt)], __4:GoUInt32 = _dig._h[(4 : GoInt)], _h4:GoUInt32 = __4, _h3:GoUInt32 = __3, _h2:GoUInt32 = __2, _h1:GoUInt32 = __1, _h0:GoUInt32 = __0;
        while ((_p.length) >= (64 : GoInt)) {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (16 : GoInt), _i++, {
                    var _j:GoInt = _i * (4 : GoInt);
                    _w[(_i : GoInt)] = ((((_p[(_j : GoInt)] : GoUInt32) << (24i64 : GoUInt64)) | ((_p[(_j + (1 : GoInt) : GoInt)] : GoUInt32) << (16i64 : GoUInt64))) | ((_p[(_j + (2 : GoInt) : GoInt)] : GoUInt32) << (8i64 : GoUInt64))) | (_p[(_j + (3 : GoInt) : GoInt)] : GoUInt32);
                });
            };
            var __0:GoUInt32 = _h0, __1:GoUInt32 = _h1, __2:GoUInt32 = _h2, __3:GoUInt32 = _h3, __4:GoUInt32 = _h4, _e:GoUInt32 = __4, _d:GoUInt32 = __3, _c:GoUInt32 = __2, _b:GoUInt32 = __1, _a:GoUInt32 = __0;
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (16 : GoInt), _i++, {
                var _f:GoUInt32 = (_b & _c) | ((-1 ^ _b) & _d);
                var _t:GoUInt32 = (((stdgo.math.bits.Bits.rotateLeft32(_a, (5 : GoInt)) + _f) + _e) + _w[(_i & (15 : GoInt) : GoInt)]) + (1518500249u32 : GoUInt32);
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo.math.bits.Bits.rotateLeft32(_b, (30 : GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            Go.cfor(_i < (20 : GoInt), _i++, {
                var _tmp:GoUInt32 = ((_w[((_i - (3 : GoInt)) & (15 : GoInt) : GoInt)] ^ _w[((_i - (8 : GoInt)) & (15 : GoInt) : GoInt)]) ^ _w[((_i - (14 : GoInt)) & (15 : GoInt) : GoInt)]) ^ _w[((_i) & (15 : GoInt) : GoInt)];
                _w[(_i & (15 : GoInt) : GoInt)] = (_tmp << (1i64 : GoUInt64)) | (_tmp >> (31i64 : GoUInt64));
                var _f:GoUInt32 = (_b & _c) | ((-1 ^ _b) & _d);
                var _t:GoUInt32 = (((stdgo.math.bits.Bits.rotateLeft32(_a, (5 : GoInt)) + _f) + _e) + _w[(_i & (15 : GoInt) : GoInt)]) + (1518500249u32 : GoUInt32);
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo.math.bits.Bits.rotateLeft32(_b, (30 : GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            Go.cfor(_i < (40 : GoInt), _i++, {
                var _tmp:GoUInt32 = ((_w[((_i - (3 : GoInt)) & (15 : GoInt) : GoInt)] ^ _w[((_i - (8 : GoInt)) & (15 : GoInt) : GoInt)]) ^ _w[((_i - (14 : GoInt)) & (15 : GoInt) : GoInt)]) ^ _w[((_i) & (15 : GoInt) : GoInt)];
                _w[(_i & (15 : GoInt) : GoInt)] = (_tmp << (1i64 : GoUInt64)) | (_tmp >> (31i64 : GoUInt64));
                var _f:GoUInt32 = (_b ^ _c) ^ _d;
                var _t:GoUInt32 = (((stdgo.math.bits.Bits.rotateLeft32(_a, (5 : GoInt)) + _f) + _e) + _w[(_i & (15 : GoInt) : GoInt)]) + (1859775393u32 : GoUInt32);
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo.math.bits.Bits.rotateLeft32(_b, (30 : GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            Go.cfor(_i < (60 : GoInt), _i++, {
                var _tmp:GoUInt32 = ((_w[((_i - (3 : GoInt)) & (15 : GoInt) : GoInt)] ^ _w[((_i - (8 : GoInt)) & (15 : GoInt) : GoInt)]) ^ _w[((_i - (14 : GoInt)) & (15 : GoInt) : GoInt)]) ^ _w[((_i) & (15 : GoInt) : GoInt)];
                _w[(_i & (15 : GoInt) : GoInt)] = (_tmp << (1i64 : GoUInt64)) | (_tmp >> (31i64 : GoUInt64));
                var _f:GoUInt32 = ((_b | _c) & _d) | (_b & _c);
                var _t:GoUInt32 = (((stdgo.math.bits.Bits.rotateLeft32(_a, (5 : GoInt)) + _f) + _e) + _w[(_i & (15 : GoInt) : GoInt)]) + (-1894007588u32 : GoUInt32);
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo.math.bits.Bits.rotateLeft32(_b, (30 : GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            Go.cfor(_i < (80 : GoInt), _i++, {
                var _tmp:GoUInt32 = ((_w[((_i - (3 : GoInt)) & (15 : GoInt) : GoInt)] ^ _w[((_i - (8 : GoInt)) & (15 : GoInt) : GoInt)]) ^ _w[((_i - (14 : GoInt)) & (15 : GoInt) : GoInt)]) ^ _w[((_i) & (15 : GoInt) : GoInt)];
                _w[(_i & (15 : GoInt) : GoInt)] = (_tmp << (1i64 : GoUInt64)) | (_tmp >> (31i64 : GoUInt64));
                var _f:GoUInt32 = (_b ^ _c) ^ _d;
                var _t:GoUInt32 = (((stdgo.math.bits.Bits.rotateLeft32(_a, (5 : GoInt)) + _f) + _e) + _w[(_i & (15 : GoInt) : GoInt)]) + (-899497514u32 : GoUInt32);
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo.math.bits.Bits.rotateLeft32(_b, (30 : GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            _h0 = _h0 + (_a);
            _h1 = _h1 + (_b);
            _h2 = _h2 + (_c);
            _h3 = _h3 + (_d);
            _h4 = _h4 + (_e);
            _p = (_p.__slice__((64 : GoInt)) : Slice<GoUInt8>);
        };
        {
            final __tmp__0 = _h0;
            final __tmp__1 = _h1;
            final __tmp__2 = _h2;
            final __tmp__3 = _h3;
            final __tmp__4 = _h4;
            _dig._h[(0 : GoInt)] = __tmp__0;
            _dig._h[(1 : GoInt)] = __tmp__1;
            _dig._h[(2 : GoInt)] = __tmp__2;
            _dig._h[(3 : GoInt)] = __tmp__3;
            _dig._h[(4 : GoInt)] = __tmp__4;
        };
    }
private function _block(_dig:Ref<T_digest>, _p:Slice<GoByte>):Void {
        _blockGeneric(_dig, _p);
    }
@:keep var _ = {
        try {
            stdgo.crypto.Crypto.registerHash((3u32 : stdgo.crypto.Crypto.Hash), new_);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_digest_asInterface {
    @:keep
    public dynamic function _constSum():GoArray<GoByte> return __self__.value._constSum();
    /**
        // ConstantTimeSum computes the same result of Sum() but in constant time
    **/
    @:keep
    public dynamic function constantTimeSum(_in:Slice<GoByte>):Slice<GoByte> return __self__.value.constantTimeSum(_in);
    @:keep
    public dynamic function _checkSum():GoArray<GoByte> return __self__.value._checkSum();
    @:keep
    public dynamic function sum(_in:Slice<GoByte>):Slice<GoByte> return __self__.value.sum(_in);
    @:keep
    public dynamic function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function blockSize():GoInt return __self__.value.blockSize();
    @:keep
    public dynamic function size():GoInt return __self__.value.size();
    @:keep
    public dynamic function reset():Void __self__.value.reset();
    @:keep
    public dynamic function unmarshalBinary(_b:Slice<GoByte>):Error return __self__.value.unmarshalBinary(_b);
    @:keep
    public dynamic function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } return __self__.value.marshalBinary();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_digest>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.crypto.sha1.Sha1.T_digest_asInterface) class T_digest_static_extension {
    @:keep
    static public function _constSum( _d:Ref<T_digest>):GoArray<GoByte> {
        var _length:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) (0 : GoUInt8)]);
        var _l:GoUInt64 = _d._len << (3i64 : GoUInt64);
        {
            var _i:GoUInt = (0u32 : GoUInt);
            Go.cfor(_i < (8u32 : GoUInt), _i++, {
                _length[(_i : GoInt)] = (_l >> ((56u32 : GoUInt) - ((8u32 : GoUInt) * _i)) : GoByte);
            });
        };
        var _nx:GoUInt8 = (_d._nx : GoByte);
        var _t:GoUInt8 = _nx - (56 : GoUInt8);
        var _mask1b:GoUInt8 = ((_t : GoInt8) >> (7i64 : GoUInt64) : GoByte);
        var _separator:GoUInt8 = ((128 : GoUInt8) : GoByte);
        {
            var _i:GoUInt8 = ((0 : GoUInt8) : GoByte);
            Go.cfor(_i < (64 : GoUInt8), _i++, {
                var _mask:GoUInt8 = ((_i - _nx : GoInt8) >> (7i64 : GoUInt64) : GoByte);
                _d._x[(_i : GoInt)] = ((-1 ^ _mask) & _separator) | (_mask & _d._x[(_i : GoInt)]);
                _separator = _separator & (_mask);
                if (_i >= (56 : GoUInt8)) {
                    _d._x[(_i : GoInt)] = _d._x[(_i : GoInt)] | (_mask1b & _length[(_i - (56 : GoUInt8) : GoInt)]);
                };
            });
        };
        _block(_d, (_d._x.__slice__(0) : Slice<GoUInt8>));
        var _digest:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) (0 : GoUInt8)]);
        for (_i => _s in _d._h) {
            _digest[(_i * (4 : GoInt) : GoInt)] = _mask1b & (_s >> (24i64 : GoUInt64) : GoByte);
            _digest[((_i * (4 : GoInt)) + (1 : GoInt) : GoInt)] = _mask1b & (_s >> (16i64 : GoUInt64) : GoByte);
            _digest[((_i * (4 : GoInt)) + (2 : GoInt) : GoInt)] = _mask1b & (_s >> (8i64 : GoUInt64) : GoByte);
            _digest[((_i * (4 : GoInt)) + (3 : GoInt) : GoInt)] = _mask1b & (_s : GoByte);
        };
        {
            var _i:GoUInt8 = ((0 : GoUInt8) : GoByte);
            Go.cfor(_i < (64 : GoUInt8), _i++, {
                if (_i < (56 : GoUInt8)) {
                    _d._x[(_i : GoInt)] = _separator;
                    _separator = (0 : GoUInt8);
                } else {
                    _d._x[(_i : GoInt)] = _length[(_i - (56 : GoUInt8) : GoInt)];
                };
            });
        };
        _block(_d, (_d._x.__slice__(0) : Slice<GoUInt8>));
        for (_i => _s in _d._h) {
            _digest[(_i * (4 : GoInt) : GoInt)] = _digest[(_i * (4 : GoInt) : GoInt)] | ((-1 ^ _mask1b) & (_s >> (24i64 : GoUInt64) : GoByte));
            _digest[((_i * (4 : GoInt)) + (1 : GoInt) : GoInt)] = _digest[((_i * (4 : GoInt)) + (1 : GoInt) : GoInt)] | ((-1 ^ _mask1b) & (_s >> (16i64 : GoUInt64) : GoByte));
            _digest[((_i * (4 : GoInt)) + (2 : GoInt) : GoInt)] = _digest[((_i * (4 : GoInt)) + (2 : GoInt) : GoInt)] | ((-1 ^ _mask1b) & (_s >> (8i64 : GoUInt64) : GoByte));
            _digest[((_i * (4 : GoInt)) + (3 : GoInt) : GoInt)] = _digest[((_i * (4 : GoInt)) + (3 : GoInt) : GoInt)] | ((-1 ^ _mask1b) & (_s : GoByte));
        };
        return _digest?.__copy__();
    }
    /**
        // ConstantTimeSum computes the same result of Sum() but in constant time
    **/
    @:keep
    static public function constantTimeSum( _d:Ref<T_digest>, _in:Slice<GoByte>):Slice<GoByte> {
        var _d0:stdgo.crypto.sha1.Sha1.T_digest = (_d : stdgo.crypto.sha1.Sha1.T_digest)?.__copy__();
        var _hash = _d0._constSum()?.__copy__();
        return (_in.__append__(...(_hash.__slice__(0) : Slice<GoUInt8>).__toArray__()));
    }
    @:keep
    static public function _checkSum( _d:Ref<T_digest>):GoArray<GoByte> {
        var _len:GoUInt64 = _d._len;
        var _tmp:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 72) (0 : GoUInt8)]);
        _tmp[(0 : GoInt)] = (128 : GoUInt8);
        var _t:GoUInt64 = (0 : GoUInt64);
        if ((_len % (64i64 : GoUInt64)) < (56i64 : GoUInt64)) {
            _t = (56i64 : GoUInt64) - (_len % (64i64 : GoUInt64));
        } else {
            _t = (120i64 : GoUInt64) - (_len % (64i64 : GoUInt64));
        };
        _len = _len << ((3i64 : GoUInt64));
        var _padlen = (_tmp.__slice__(0, _t + (8i64 : GoUInt64)) : Slice<GoUInt8>);
        stdgo.encoding.binary.Binary.bigEndian.putUint64((_padlen.__slice__(_t) : Slice<GoUInt8>), _len);
        _d.write(_padlen);
        if (_d._nx != ((0 : GoInt))) {
            throw Go.toInterface(("d.nx != 0" : GoString));
        };
        var _digest:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) (0 : GoUInt8)]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32((_digest.__slice__((0 : GoInt)) : Slice<GoUInt8>), _d._h[(0 : GoInt)]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32((_digest.__slice__((4 : GoInt)) : Slice<GoUInt8>), _d._h[(1 : GoInt)]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32((_digest.__slice__((8 : GoInt)) : Slice<GoUInt8>), _d._h[(2 : GoInt)]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32((_digest.__slice__((12 : GoInt)) : Slice<GoUInt8>), _d._h[(3 : GoInt)]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32((_digest.__slice__((16 : GoInt)) : Slice<GoUInt8>), _d._h[(4 : GoInt)]);
        return _digest?.__copy__();
    }
    @:keep
    static public function sum( _d:Ref<T_digest>, _in:Slice<GoByte>):Slice<GoByte> {
        _boringUnreachable();
        var _d0:stdgo.crypto.sha1.Sha1.T_digest = (_d : stdgo.crypto.sha1.Sha1.T_digest)?.__copy__();
        var _hash = _d0._checkSum()?.__copy__();
        return (_in.__append__(...(_hash.__slice__(0) : Slice<GoUInt8>).__toArray__()));
    }
    @:keep
    static public function write( _d:Ref<T_digest>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _nn:GoInt = (0 : GoInt), _err:Error = (null : Error);
        _boringUnreachable();
        _nn = (_p.length);
        _d._len = _d._len + ((_nn : GoUInt64));
        if (_d._nx > (0 : GoInt)) {
            var _n:GoInt = Go.copySlice((_d._x.__slice__(_d._nx) : Slice<GoUInt8>), _p);
            _d._nx = _d._nx + (_n);
            if (_d._nx == ((64 : GoInt))) {
                _block(_d, (_d._x.__slice__(0) : Slice<GoUInt8>));
                _d._nx = (0 : GoInt);
            };
            _p = (_p.__slice__(_n) : Slice<GoUInt8>);
        };
        if ((_p.length) >= (64 : GoInt)) {
            var _n:GoInt = (_p.length) & ((63 : GoInt) ^ (-1i32 : GoInt));
            _block(_d, (_p.__slice__(0, _n) : Slice<GoUInt8>));
            _p = (_p.__slice__(_n) : Slice<GoUInt8>);
        };
        if ((_p.length) > (0 : GoInt)) {
            _d._nx = Go.copySlice((_d._x.__slice__(0) : Slice<GoUInt8>), _p);
        };
        return { _0 : _nn, _1 : _err };
    }
    @:keep
    static public function blockSize( _d:Ref<T_digest>):GoInt {
        return (64 : GoInt);
    }
    @:keep
    static public function size( _d:Ref<T_digest>):GoInt {
        return (20 : GoInt);
    }
    @:keep
    static public function reset( _d:Ref<T_digest>):Void {
        _d._h[(0 : GoInt)] = (1732584193u32 : GoUInt32);
        _d._h[(1 : GoInt)] = (-271733879u32 : GoUInt32);
        _d._h[(2 : GoInt)] = (-1732584194u32 : GoUInt32);
        _d._h[(3 : GoInt)] = (271733878u32 : GoUInt32);
        _d._h[(4 : GoInt)] = (-1009589776u32 : GoUInt32);
        _d._nx = (0 : GoInt);
        _d._len = (0i64 : GoUInt64);
    }
    @:keep
    static public function unmarshalBinary( _d:Ref<T_digest>, _b:Slice<GoByte>):Error {
        if ((_b.length < Go.str("sha", 1).length) || (((_b.__slice__(0, (Go.str("sha", 1).length)) : Slice<GoUInt8>) : GoString) != Go.str("sha", 1))) {
            return stdgo.errors.Errors.new_(("crypto/sha1: invalid hash state identifier" : GoString));
        };
        if ((_b.length) != ((96 : GoInt))) {
            return stdgo.errors.Errors.new_(("crypto/sha1: invalid hash state size" : GoString));
        };
        _b = (_b.__slice__((Go.str("sha", 1).length)) : Slice<GoUInt8>);
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d._h[(0 : GoInt)] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d._h[(1 : GoInt)] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d._h[(2 : GoInt)] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d._h[(3 : GoInt)] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d._h[(4 : GoInt)] = __tmp__._1;
        };
        _b = (_b.__slice__(Go.copySlice((_d._x.__slice__(0) : Slice<GoUInt8>), _b)) : Slice<GoUInt8>);
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            _d._len = __tmp__._1;
        };
        _d._nx = (_d._len % (64i64 : GoUInt64) : GoInt);
        return (null : Error);
    }
    @:keep
    static public function marshalBinary( _d:Ref<T_digest>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b = new Slice<GoUInt8>((0 : GoInt).toBasic(), (96 : GoInt)).__setNumber32__();
        _b = (_b.__append__(...Go.str("sha", 1).__toArray__()));
        _b = stdgo.encoding.binary.Binary.bigEndian.appendUint32(_b, _d._h[(0 : GoInt)]);
        _b = stdgo.encoding.binary.Binary.bigEndian.appendUint32(_b, _d._h[(1 : GoInt)]);
        _b = stdgo.encoding.binary.Binary.bigEndian.appendUint32(_b, _d._h[(2 : GoInt)]);
        _b = stdgo.encoding.binary.Binary.bigEndian.appendUint32(_b, _d._h[(3 : GoInt)]);
        _b = stdgo.encoding.binary.Binary.bigEndian.appendUint32(_b, _d._h[(4 : GoInt)]);
        _b = (_b.__append__(...(_d._x.__slice__(0, _d._nx) : Slice<GoUInt8>).__toArray__()));
        _b = (_b.__slice__(0, (_b.length + _d._x.length) - _d._nx) : Slice<GoUInt8>);
        _b = stdgo.encoding.binary.Binary.bigEndian.appendUint64(_b, _d._len);
        return { _0 : _b, _1 : (null : Error) };
    }
}
