package stdgo._internal.crypto.sha1;
private var __go2hxdoc__package : Bool;
final _boringEnabled : Bool = false;
final size : stdgo.GoUInt64 = (20i64 : stdgo.GoUInt64);
final blockSize : stdgo.GoUInt64 = (64i64 : stdgo.GoUInt64);
final _chunk : stdgo.GoUInt64 = (64i64 : stdgo.GoUInt64);
final _init0 : stdgo.GoUInt64 = (1732584193i64 : stdgo.GoUInt64);
final _init1 : stdgo.GoUInt64 = (4023233417i64 : stdgo.GoUInt64);
final _init2 : stdgo.GoUInt64 = (2562383102i64 : stdgo.GoUInt64);
final _init3 : stdgo.GoUInt64 = (271733878i64 : stdgo.GoUInt64);
final _init4 : stdgo.GoUInt64 = (3285377520i64 : stdgo.GoUInt64);
final _magic : stdgo.GoString = stdgo.Go.str("sha", 1);
final _marshaledSize : stdgo.GoInt = (96 : stdgo.GoInt);
final __K0 : stdgo.GoUInt64 = (1518500249i64 : stdgo.GoUInt64);
final __K1 : stdgo.GoUInt64 = (1859775393i64 : stdgo.GoUInt64);
final __K2 : stdgo.GoUInt64 = (2400959708i64 : stdgo.GoUInt64);
final __K3 : stdgo.GoUInt64 = (3395469782i64 : stdgo.GoUInt64);
var _golden : stdgo.Slice<stdgo._internal.crypto.sha1.Sha1.T_sha1Test> = (new stdgo.Slice<stdgo._internal.crypto.sha1.Sha1.T_sha1Test>(32, 32, ...[
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("76245dbf96f661bd221046197ab8b9f063f11bad" : stdgo.GoString), ("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\n" : stdgo.GoString), stdgo.Go.str("sha",
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
150)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("da39a3ee5e6b4b0d3255bfef95601890afd80709" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str("sha",
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
0)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("86f7e437faa5a7fce15d1ddcb9eaeaea377667b8" : stdgo.GoString), ("a" : stdgo.GoString), stdgo.Go.str("sha",
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
0)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("da23614e02469a0d7c7bd1bdab5c9c474b1904dc" : stdgo.GoString), ("ab" : stdgo.GoString), stdgo.Go.str("sha",
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
1)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("a9993e364706816aba3e25717850c26c9cd0d89d" : stdgo.GoString), ("abc" : stdgo.GoString), stdgo.Go.str("sha",
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
1)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("81fe8bfe87576c3ecb22426f8e57847382917acf" : stdgo.GoString), ("abcd" : stdgo.GoString), stdgo.Go.str("sha",
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
2)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("03de6c570bfe24bfc328ccd7ca46b76eadaf4334" : stdgo.GoString), ("abcde" : stdgo.GoString), stdgo.Go.str("sha",
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
2)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("1f8ac10f23c5b5bc1167bda84b833e5c057a77d2" : stdgo.GoString), ("abcdef" : stdgo.GoString), stdgo.Go.str("sha",
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
3)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("2fb5e13419fc89246865e7a324f476ec624e8740" : stdgo.GoString), ("abcdefg" : stdgo.GoString), stdgo.Go.str("sha",
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
3)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("425af12a0743502b322e93a015bcf868e324d56a" : stdgo.GoString), ("abcdefgh" : stdgo.GoString), stdgo.Go.str("sha",
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
4)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("c63b19f1e4c8b5f76b25c49b8b87f57d8e4872a1" : stdgo.GoString), ("abcdefghi" : stdgo.GoString), stdgo.Go.str("sha",
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
4)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("d68c19a0a345b7eab78d5e11e991c026ec60db63" : stdgo.GoString), ("abcdefghij" : stdgo.GoString), stdgo.Go.str("sha",
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
5)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("ebf81ddcbe5bf13aaabdc4d65354fdf2044f38a7" : stdgo.GoString), ("Discard medicine more than two years old." : stdgo.GoString), stdgo.Go.str("sha",
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
20)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("e5dea09392dd886ca63531aaa00571dc07554bb6" : stdgo.GoString), ("He who has a shady past knows that nice guys finish last." : stdgo.GoString), stdgo.Go.str("sha",
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
28)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("45988f7234467b94e3e9494434c96ee3609d8f8f" : stdgo.GoString), ("I wouldn\'t marry him with a ten foot pole." : stdgo.GoString), stdgo.Go.str("sha",
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
21)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("55dee037eb7460d5a692d1ce11330b260e40c988" : stdgo.GoString), ("Free! Free!/A trip/to Mars/for 900/empty jars/Burma Shave" : stdgo.GoString), stdgo.Go.str("sha",
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
28)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("b7bc5fb91080c7de6b582ea281f8a396d7c0aee8" : stdgo.GoString), ("The days of the digital watch are numbered.  -Tom Stoppard" : stdgo.GoString), stdgo.Go.str("sha",
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
29)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("c3aed9358f7c77f523afe86135f06b95b3999797" : stdgo.GoString), ("Nepal premier won\'t resign." : stdgo.GoString), stdgo.Go.str("sha",
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
"\r")?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("6e29d302bf6e3a5e4305ff318d983197d6906bb9" : stdgo.GoString), ("For every action there is an equal and opposite government program." : stdgo.GoString), stdgo.Go.str("sha",
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
"!")?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("597f6a540010f94c15d71806a99a2c8710e747bd" : stdgo.GoString), ("His money is twice tainted: \'taint yours and \'taint mine." : stdgo.GoString), stdgo.Go.str("sha",
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
28)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("6859733b2590a8a091cecf50086febc5ceef1e80" : stdgo.GoString), ("There is no reason for any individual to have a computer in their home. -Ken Olsen, 1977" : stdgo.GoString), stdgo.Go.str("sha",
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
",")?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("514b2630ec089b8aee18795fc0cf1f4860cdacad" : stdgo.GoString), ("It\'s a tiny change to the code and not completely disgusting. - Bob Manchek" : stdgo.GoString), stdgo.Go.str("sha",
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
"%")?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("c5ca0d4a7b6676fc7aa72caa41cc3d5df567ed69" : stdgo.GoString), ("size:  a.out:  bad magic" : stdgo.GoString), stdgo.Go.str("sha",
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
"\x0C")?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("74c51fa9a04eadc8c1bbeaa7fc442f834b90a00a" : stdgo.GoString), ("The major problem is with sendmail.  -Mark Horton" : stdgo.GoString), stdgo.Go.str("sha",
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
24)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("0b4c4ce5f52c3ad2821852a8dc00217fa18b8b66" : stdgo.GoString), ("Give me a rock, paper and scissors and I will move the world.  CCFestoon" : stdgo.GoString), stdgo.Go.str("sha",
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
"$")?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("3ae7937dd790315beb0f48330e8642237c61550a" : stdgo.GoString), ("If the enemy is within range, then so are you." : stdgo.GoString), stdgo.Go.str("sha",
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
23)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("410a2b296df92b9a47412b13281df8f830a9f44b" : stdgo.GoString), ("It\'s well we cannot hear the screams/That we create in others\' dreams." : stdgo.GoString), stdgo.Go.str("sha",
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
"#")?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("841e7c85ca1adcddbdd0187f1289acb5c642f7f5" : stdgo.GoString), ("You remind me of a TV show, but that\'s all right: I watch it anyway." : stdgo.GoString), stdgo.Go.str("sha",
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
"\"")?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("163173b825d03b952601376b25212df66763e1db" : stdgo.GoString), ("C is as portable as Stonehedge!!" : stdgo.GoString), stdgo.Go.str("sha",
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
16)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("32b0377f2687eb88e22106f133c586ab314d5279" : stdgo.GoString), ("Even if I could be Shakespeare, I think I should still choose to be Faraday. - A. Huxley" : stdgo.GoString), stdgo.Go.str("sha",
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
",")?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("0885aaf99b569542fd165fa44e322718f4a984e0" : stdgo.GoString), ("The fugacity of a constituent in a mixture of gases at a given temperature is proportional to its mole fraction.  Lewis-Randall Rule" : stdgo.GoString), stdgo.Go.str("sha",
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
"JA$D",
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
"B")?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test),
(new stdgo._internal.crypto.sha1.Sha1.T_sha1Test(("6627d6904d71420b0bf3886ab629623538689f45" : stdgo.GoString), ("How can you write a big system without C++?  -Paul Glick" : stdgo.GoString), stdgo.Go.str("sha",
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
28)?.__copy__()) : stdgo._internal.crypto.sha1.Sha1.T_sha1Test)].concat([for (i in 32 ... (32 > 32 ? 32 : 32 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.sha1.Sha1.T_sha1Test)])) : stdgo.Slice<stdgo._internal.crypto.sha1.Sha1.T_sha1Test>);
var _largeUnmarshalTests : stdgo.Slice<stdgo._internal.crypto.sha1.Sha1.T_unmarshalTest> = (new stdgo.Slice<stdgo._internal.crypto.sha1.Sha1.T_unmarshalTest>(2, 2, ...[({ _state : stdgo.Go.str("sha",
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
"VCw")?.__copy__(), _sum : ("bc6245c9959cc33e1c2592e5c9ea9b5d0431246c" : stdgo.GoString) } : stdgo._internal.crypto.sha1.Sha1.T_unmarshalTest), ({ _state : stdgo.Go.str("sha",
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
"VCw")?.__copy__(), _sum : ("8f2d1c0e4271768f35feb918bfe21ea1387a2072" : stdgo.GoString) } : stdgo._internal.crypto.sha1.Sha1.T_unmarshalTest)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.sha1.Sha1.T_unmarshalTest)])) : stdgo.Slice<stdgo._internal.crypto.sha1.Sha1.T_unmarshalTest>);
var _bench : stdgo._internal.hash.Hash.Hash = new_();
var _buf : stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
@:structInit @:private @:using(stdgo._internal.crypto.sha1.Sha1.T_digest_static_extension) class T_digest {
    public var _h : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(5, 5, ...[for (i in 0 ... 5) (0 : stdgo.GoUInt32)]);
    public var _x : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUInt8)]);
    public var _nx : stdgo.GoInt = 0;
    public var _len : stdgo.GoUInt64 = 0;
    public function new(?_h:stdgo.GoArray<stdgo.GoUInt32>, ?_x:stdgo.GoArray<stdgo.GoUInt8>, ?_nx:stdgo.GoInt, ?_len:stdgo.GoUInt64) {
        if (_h != null) this._h = _h;
        if (_x != null) this._x = _x;
        if (_nx != null) this._nx = _nx;
        if (_len != null) this._len = _len;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_digest(_h, _x, _nx, _len);
    }
}
@:structInit @:private class T_sha1Test {
    public var _out : stdgo.GoString = "";
    public var _in : stdgo.GoString = "";
    public var _halfState : stdgo.GoString = "";
    public function new(?_out:stdgo.GoString, ?_in:stdgo.GoString, ?_halfState:stdgo.GoString) {
        if (_out != null) this._out = _out;
        if (_in != null) this._in = _in;
        if (_halfState != null) this._halfState = _halfState;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sha1Test(_out, _in, _halfState);
    }
}
@:structInit @:private class T_unmarshalTest {
    public var _state : stdgo.GoString = "";
    public var _sum : stdgo.GoString = "";
    public function new(?_state:stdgo.GoString, ?_sum:stdgo.GoString) {
        if (_state != null) this._state = _state;
        if (_sum != null) this._sum = _sum;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unmarshalTest(_state, _sum);
    }
}
function _boringNewSHA1():stdgo._internal.hash.Hash.Hash {
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
function _boringUnreachable():Void {}
function _boringSHA1(_0:stdgo.Slice<stdgo.GoByte>):stdgo.GoArray<stdgo.GoByte> {
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
function _consumeUint64(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.GoUInt64; } {
        var __blank__ = _b[(7 : stdgo.GoInt)];
        var _x = ((((((((_b[(7 : stdgo.GoInt)] : stdgo.GoUInt64) | ((_b[(6 : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(5 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(4 : stdgo.GoInt)] : stdgo.GoUInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        return { _0 : (_b.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : _x };
    }
function _consumeUint32(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.GoUInt32; } {
        var __blank__ = _b[(3 : stdgo.GoInt)];
        var _x = ((((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        return { _0 : (_b.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : _x };
    }
function new_():stdgo._internal.hash.Hash.Hash {
        if (false) {
            return _boringNewSHA1();
        };
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.crypto.sha1.Sha1.T_digest)) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1.T_digest>);
        _d.reset();
        return stdgo.Go.asInterface(_d);
    }
function sum(_data:stdgo.Slice<stdgo.GoByte>):stdgo.GoArray<stdgo.GoByte> {
        if (false) {
            return _boringSHA1(_data)?.__copy__();
        };
        var _d:T_digest = ({} : stdgo._internal.crypto.sha1.Sha1.T_digest);
        _d.reset();
        _d.write(_data);
        return _d._checkSum()?.__copy__();
    }
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_golden.length) : Bool), _i++, {
                var _g = _golden[(_i : stdgo.GoInt)];
                var _s = stdgo._internal.fmt.Fmt.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(sum((_g._in : stdgo.Slice<stdgo.GoByte>))))?.__copy__();
                if (_s != (_g._out)) {
                    _t.fatalf(("Sum function: sha1(%s) = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._out));
                };
                var _c = new_();
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (4 : stdgo.GoInt) : Bool), _j++, {
                        var _sum:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        {
                            final __value__ = _j;
                            if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                                stdgo._internal.io.Io.writeString(_c, _g._in?.__copy__());
                                _sum = _c.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                            } else if (__value__ == ((2 : stdgo.GoInt))) {
                                stdgo._internal.io.Io.writeString(_c, (_g._in.__slice__((0 : stdgo.GoInt), ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                _c.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                                stdgo._internal.io.Io.writeString(_c, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                _sum = _c.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                            } else if (__value__ == ((3 : stdgo.GoInt))) {
                                if (false) {
                                    continue;
                                };
                                stdgo._internal.io.Io.writeString(_c, (_g._in.__slice__((0 : stdgo.GoInt), ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo.Ref<T_digest>)) : stdgo.Ref<T_digest>).constantTimeSum((null : stdgo.Slice<stdgo.GoUInt8>));
                                stdgo._internal.io.Io.writeString(_c, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                _sum = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo.Ref<T_digest>)) : stdgo.Ref<T_digest>).constantTimeSum((null : stdgo.Slice<stdgo.GoUInt8>));
                            };
                        };
                        var _s = stdgo._internal.fmt.Fmt.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_sum))?.__copy__();
                        if (_s != (_g._out)) {
                            _t.fatalf(("sha1[%d](%s) = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._out));
                        };
                        _c.reset();
                    });
                };
            });
        };
    }
function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _h = new_();
        var _h2 = new_();
        for (__0 => _g in _golden) {
            _h.reset();
            _h2.reset();
            stdgo._internal.io.Io.writeString(_h, (_g._in.__slice__(0, ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding.BinaryMarshaler)) : stdgo._internal.encoding.Encoding.BinaryMarshaler).marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("could not marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((_state : stdgo.GoString) != (_g._halfState)) {
                _t.errorf(("sha1(%q) state = %+q, want %+q" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_state), stdgo.Go.toInterface(_g._halfState));
                continue;
            };
            {
                var _err = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h2) : stdgo._internal.encoding.Encoding.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding.BinaryUnmarshaler).unmarshalBinary(_state);
                if (_err != null) {
                    _t.errorf(("could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            stdgo._internal.io.Io.writeString(_h, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            stdgo._internal.io.Io.writeString(_h2, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            {
                var __0 = _h.sum((null : stdgo.Slice<stdgo.GoUInt8>)), __1 = _h2.sum((null : stdgo.Slice<stdgo.GoUInt8>));
var _actual2 = __1, _actual = __0;
                if (!stdgo._internal.bytes.Bytes.equal(_actual, _actual2)) {
                    _t.errorf(("sha1(%q) = 0x%x != marshaled 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_actual2));
                };
            };
        };
    }
function testSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _c = new_();
        {
            var _got = _c.size();
            if (_got != ((20 : stdgo.GoInt))) {
                _t.errorf(("Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((20 : stdgo.GoInt)));
            };
        };
    }
function testBlockSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _c = new_();
        {
            var _got = _c.blockSize();
            if (_got != ((64 : stdgo.GoInt))) {
                _t.errorf(("BlockSize = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((64 : stdgo.GoInt)));
            };
        };
    }
function testBlockGeneric(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("BoringCrypto doesn\'t expose digest" : stdgo.GoString)));
        };
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (30 : stdgo.GoInt) : Bool), _i++, {
                var __0 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(new_()) : stdgo.Ref<T_digest>)) : stdgo.Ref<T_digest>), __1 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(new_()) : stdgo.Ref<T_digest>)) : stdgo.Ref<T_digest>);
var _asm = __1, _gen = __0;
                var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((64 : stdgo.GoInt) * _i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                stdgo._internal.crypto.rand.Rand.read(_buf);
                _blockGeneric(_gen, _buf);
                _block(_asm, _buf);
                if (stdgo.Go.toInterface((_gen : stdgo._internal.crypto.sha1.Sha1.T_digest)) != stdgo.Go.toInterface((_asm : stdgo._internal.crypto.sha1.Sha1.T_digest))) {
                    _t.errorf(("For %#v block and blockGeneric resulted in different states" : stdgo.GoString), stdgo.Go.toInterface(_buf));
                };
            });
        };
    }
function _safeSum(_h:stdgo._internal.hash.Hash.Hash):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _sum = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_r != null) {
                            _err = stdgo._internal.fmt.Fmt.errorf(("sum panic: %v" : stdgo.GoString), _r);
                        };
                    };
                };
                a();
            });
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : _h.sum((null : stdgo.Slice<stdgo.GoUInt8>)), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : _sum, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } = { _0 : _sum, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function testLargeHashes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _test in _largeUnmarshalTests) {
            var _h = new_();
            {
                var _err = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_h) : stdgo._internal.encoding.Encoding.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding.BinaryUnmarshaler).unmarshalBinary((_test._state : stdgo.Slice<stdgo.GoByte>));
                if (_err != null) {
                    _t.errorf(("test %d could not unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            var __tmp__ = _safeSum(_h), _sum:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("test %d could not sum: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                continue;
            };
            if (stdgo._internal.fmt.Fmt.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_sum)) != (_test._sum)) {
                _t.errorf(("test %d sum mismatch: expect %s got %x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._sum), stdgo.Go.toInterface(_sum));
            };
        };
    }
function testAllocations(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("BoringCrypto doesn\'t allocate the same way as stdlib" : stdgo.GoString)));
        };
        var _in = (("hello, world!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (20 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _h = new_();
        var _n = (stdgo._internal.testing.Testing.allocsPerRun((10 : stdgo.GoInt), function():Void {
            _h.reset();
            _h.write(_in);
            _out = _h.sum((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        }) : stdgo.GoInt);
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            _t.errorf(("allocs = %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function _benchmarkSize(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _size:stdgo.GoInt):Void {
        var _sum = (new stdgo.Slice<stdgo.GoUInt8>((_bench.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.run(("New" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            _b.reportAllocs();
            _b.setBytes((_size : stdgo.GoInt64));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _bench.reset();
                    _bench.write((_buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
                    _bench.sum((_sum.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                });
            };
        });
        _b.run(("Sum" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            _b.reportAllocs();
            _b.setBytes((_size : stdgo.GoInt64));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    sum((_buf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>));
                });
            };
        });
    }
function benchmarkHash8Bytes(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkSize(_b, (8 : stdgo.GoInt));
    }
function benchmarkHash320Bytes(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkSize(_b, (320 : stdgo.GoInt));
    }
function benchmarkHash1K(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkSize(_b, (1024 : stdgo.GoInt));
    }
function benchmarkHash8K(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkSize(_b, (8192 : stdgo.GoInt));
    }
function _blockGeneric(_dig:stdgo.Ref<T_digest>, _p:stdgo.Slice<stdgo.GoByte>):Void {
        var _w:stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt32)]);
        var __0 = _dig._h[(0 : stdgo.GoInt)], __1 = _dig._h[(1 : stdgo.GoInt)], __2 = _dig._h[(2 : stdgo.GoInt)], __3 = _dig._h[(3 : stdgo.GoInt)], __4 = _dig._h[(4 : stdgo.GoInt)];
var _h4 = __4, _h3 = __3, _h2 = __2, _h1 = __1, _h0 = __0;
        while (((_p.length) >= (64 : stdgo.GoInt) : Bool)) {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (16 : stdgo.GoInt) : Bool), _i++, {
                    var _j = (_i * (4 : stdgo.GoInt) : stdgo.GoInt);
                    _w[(_i : stdgo.GoInt)] = (((((_p[(_j : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_p[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(_j + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_p[(_j + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
                });
            };
            var __0 = _h0, __1 = _h1, __2 = _h2, __3 = _h3, __4 = _h4;
var _e = __4, _d = __3, _c = __2, _b = __1, _a = __0;
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (16 : stdgo.GoInt) : Bool), _i++, {
                var _f = ((_b & _c : stdgo.GoUInt32) | (((-1 ^ _b)) & _d : stdgo.GoUInt32) : stdgo.GoUInt32);
                var _t = ((((stdgo._internal.math.bits.Bits.rotateLeft32(_a, (5 : stdgo.GoInt)) + _f : stdgo.GoUInt32) + _e : stdgo.GoUInt32) + _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) + (1518500249u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo._internal.math.bits.Bits.rotateLeft32(_b, (30 : stdgo.GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            stdgo.Go.cfor((_i < (20 : stdgo.GoInt) : Bool), _i++, {
                var _tmp = (((_w[(((_i - (3 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] ^ _w[(((_i - (8 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[(((_i - (14 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[((_i) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
                _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.math.bits.Bits.rotateLeft32(_tmp, (1 : stdgo.GoInt));
                var _f = ((_b & _c : stdgo.GoUInt32) | (((-1 ^ _b)) & _d : stdgo.GoUInt32) : stdgo.GoUInt32);
                var _t = ((((stdgo._internal.math.bits.Bits.rotateLeft32(_a, (5 : stdgo.GoInt)) + _f : stdgo.GoUInt32) + _e : stdgo.GoUInt32) + _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) + (1518500249u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo._internal.math.bits.Bits.rotateLeft32(_b, (30 : stdgo.GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            stdgo.Go.cfor((_i < (40 : stdgo.GoInt) : Bool), _i++, {
                var _tmp = (((_w[(((_i - (3 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] ^ _w[(((_i - (8 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[(((_i - (14 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[((_i) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
                _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.math.bits.Bits.rotateLeft32(_tmp, (1 : stdgo.GoInt));
                var _f = ((_b ^ _c : stdgo.GoUInt32) ^ _d : stdgo.GoUInt32);
                var _t = ((((stdgo._internal.math.bits.Bits.rotateLeft32(_a, (5 : stdgo.GoInt)) + _f : stdgo.GoUInt32) + _e : stdgo.GoUInt32) + _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) + (1859775393u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo._internal.math.bits.Bits.rotateLeft32(_b, (30 : stdgo.GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            stdgo.Go.cfor((_i < (60 : stdgo.GoInt) : Bool), _i++, {
                var _tmp = (((_w[(((_i - (3 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] ^ _w[(((_i - (8 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[(((_i - (14 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[((_i) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
                _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.math.bits.Bits.rotateLeft32(_tmp, (1 : stdgo.GoInt));
                var _f = (((((_b | _c : stdgo.GoUInt32)) & _d : stdgo.GoUInt32)) | ((_b & _c : stdgo.GoUInt32)) : stdgo.GoUInt32);
                var _t = ((((stdgo._internal.math.bits.Bits.rotateLeft32(_a, (5 : stdgo.GoInt)) + _f : stdgo.GoUInt32) + _e : stdgo.GoUInt32) + _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) + (-1894007588u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo._internal.math.bits.Bits.rotateLeft32(_b, (30 : stdgo.GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            stdgo.Go.cfor((_i < (80 : stdgo.GoInt) : Bool), _i++, {
                var _tmp = (((_w[(((_i - (3 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] ^ _w[(((_i - (8 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[(((_i - (14 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[((_i) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
                _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.math.bits.Bits.rotateLeft32(_tmp, (1 : stdgo.GoInt));
                var _f = ((_b ^ _c : stdgo.GoUInt32) ^ _d : stdgo.GoUInt32);
                var _t = ((((stdgo._internal.math.bits.Bits.rotateLeft32(_a, (5 : stdgo.GoInt)) + _f : stdgo.GoUInt32) + _e : stdgo.GoUInt32) + _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) + (-899497514u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo._internal.math.bits.Bits.rotateLeft32(_b, (30 : stdgo.GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            _h0 = (_h0 + (_a) : stdgo.GoUInt32);
            _h1 = (_h1 + (_b) : stdgo.GoUInt32);
            _h2 = (_h2 + (_c) : stdgo.GoUInt32);
            _h3 = (_h3 + (_d) : stdgo.GoUInt32);
            _h4 = (_h4 + (_e) : stdgo.GoUInt32);
            _p = (_p.__slice__((64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            final __tmp__0 = _h0;
            final __tmp__1 = _h1;
            final __tmp__2 = _h2;
            final __tmp__3 = _h3;
            final __tmp__4 = _h4;
            final __tmp__5 = _dig._h;
            final __tmp__6 = (0 : stdgo.GoInt);
            final __tmp__7 = _dig._h;
            final __tmp__8 = (1 : stdgo.GoInt);
            final __tmp__9 = _dig._h;
            final __tmp__10 = (2 : stdgo.GoInt);
            final __tmp__11 = _dig._h;
            final __tmp__12 = (3 : stdgo.GoInt);
            final __tmp__13 = _dig._h;
            final __tmp__14 = (4 : stdgo.GoInt);
            __tmp__5[__tmp__6] = __tmp__0;
            __tmp__7[__tmp__8] = __tmp__1;
            __tmp__9[__tmp__10] = __tmp__2;
            __tmp__11[__tmp__12] = __tmp__3;
            __tmp__13[__tmp__14] = __tmp__4;
        };
    }
function _block(_dig:stdgo.Ref<T_digest>, _p:stdgo.Slice<stdgo.GoByte>):Void {
        _blockGeneric(_dig, _p);
    }
@:keep var _ = {
        try {
            stdgo._internal.crypto.Crypto.registerHash((3u32 : stdgo._internal.crypto.Crypto.Hash), new_);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_digest_asInterface {
    @:keep
    public dynamic function _constSum():stdgo.GoArray<stdgo.GoByte> return __self__.value._constSum();
    @:keep
    public dynamic function constantTimeSum(_in:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> return __self__.value.constantTimeSum(_in);
    @:keep
    public dynamic function _checkSum():stdgo.GoArray<stdgo.GoByte> return __self__.value._checkSum();
    @:keep
    public dynamic function sum(_in:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> return __self__.value.sum(_in);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function blockSize():stdgo.GoInt return __self__.value.blockSize();
    @:keep
    public dynamic function size():stdgo.GoInt return __self__.value.size();
    @:keep
    public dynamic function reset():Void __self__.value.reset();
    @:keep
    public dynamic function unmarshalBinary(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value.unmarshalBinary(_b);
    @:keep
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalBinary();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_digest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.crypto.sha1.Sha1.T_digest_asInterface) class T_digest_static_extension {
    @:keep
    static public function _constSum( _d:stdgo.Ref<T_digest>):stdgo.GoArray<stdgo.GoByte> {
        @:recv var _d:stdgo.Ref<T_digest> = _d;
        var _length:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt8)]);
        var _l = (_d._len << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        {
            var _i = (0u32 : stdgo.GoUInt);
            stdgo.Go.cfor((_i < (8u32 : stdgo.GoUInt) : Bool), _i++, {
                _length[(_i : stdgo.GoInt)] = ((_l >> (((56u32 : stdgo.GoUInt) - ((8u32 : stdgo.GoUInt) * _i : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoByte);
            });
        };
        var _nx = (_d._nx : stdgo.GoByte);
        var _t = (_nx - (56 : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _mask1b = (((_t : stdgo.GoInt8) >> (7i64 : stdgo.GoUInt64) : stdgo.GoInt8) : stdgo.GoByte);
        var _separator = ((128 : stdgo.GoUInt8) : stdgo.GoByte);
        {
            var _i = ((0 : stdgo.GoUInt8) : stdgo.GoByte);
            stdgo.Go.cfor((_i < (64 : stdgo.GoUInt8) : Bool), _i++, {
                var _mask = ((((_i - _nx : stdgo.GoUInt8) : stdgo.GoInt8) >> (7i64 : stdgo.GoUInt64) : stdgo.GoInt8) : stdgo.GoByte);
                _d._x[(_i : stdgo.GoInt)] = ((((-1 ^ _mask) & _separator : stdgo.GoUInt8)) | ((_mask & _d._x[(_i : stdgo.GoInt)] : stdgo.GoUInt8)) : stdgo.GoUInt8);
                _separator = (_separator & (_mask) : stdgo.GoUInt8);
                if ((_i >= (56 : stdgo.GoUInt8) : Bool)) {
                    _d._x[(_i : stdgo.GoInt)] = (_d._x[(_i : stdgo.GoInt)] | ((_mask1b & _length[((_i - (56 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
            });
        };
        _block(_d, (_d._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        var _digest:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20, ...[for (i in 0 ... 20) (0 : stdgo.GoUInt8)]);
        for (_i => _s in _d._h) {
            _digest[(_i * (4 : stdgo.GoInt) : stdgo.GoInt)] = (_mask1b & ((_s >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte) : stdgo.GoUInt8);
            _digest[((_i * (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_mask1b & ((_s >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte) : stdgo.GoUInt8);
            _digest[((_i * (4 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)] = (_mask1b & ((_s >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte) : stdgo.GoUInt8);
            _digest[((_i * (4 : stdgo.GoInt) : stdgo.GoInt) + (3 : stdgo.GoInt) : stdgo.GoInt)] = (_mask1b & (_s : stdgo.GoByte) : stdgo.GoUInt8);
        };
        {
            var _i = ((0 : stdgo.GoUInt8) : stdgo.GoByte);
            stdgo.Go.cfor((_i < (64 : stdgo.GoUInt8) : Bool), _i++, {
                if ((_i < (56 : stdgo.GoUInt8) : Bool)) {
                    _d._x[(_i : stdgo.GoInt)] = _separator;
                    _separator = (0 : stdgo.GoUInt8);
                } else {
                    _d._x[(_i : stdgo.GoInt)] = _length[((_i - (56 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
                };
            });
        };
        _block(_d, (_d._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        for (_i => _s in _d._h) {
            _digest[(_i * (4 : stdgo.GoInt) : stdgo.GoInt)] = (_digest[(_i * (4 : stdgo.GoInt) : stdgo.GoInt)] | (((-1 ^ _mask1b) & ((_s >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _digest[((_i * (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_digest[((_i * (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] | (((-1 ^ _mask1b) & ((_s >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _digest[((_i * (4 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)] = (_digest[((_i * (4 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)] | (((-1 ^ _mask1b) & ((_s >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _digest[((_i * (4 : stdgo.GoInt) : stdgo.GoInt) + (3 : stdgo.GoInt) : stdgo.GoInt)] = (_digest[((_i * (4 : stdgo.GoInt) : stdgo.GoInt) + (3 : stdgo.GoInt) : stdgo.GoInt)] | (((-1 ^ _mask1b) & (_s : stdgo.GoByte) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        return _digest?.__copy__();
    }
    @:keep
    static public function constantTimeSum( _d:stdgo.Ref<T_digest>, _in:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _d:stdgo.Ref<T_digest> = _d;
        var _d0 = (_d : stdgo._internal.crypto.sha1.Sha1.T_digest)?.__copy__();
        var _hash = _d0._constSum()?.__copy__();
        return (_in.__append__(...((_hash.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
    }
    @:keep
    static public function _checkSum( _d:stdgo.Ref<T_digest>):stdgo.GoArray<stdgo.GoByte> {
        @:recv var _d:stdgo.Ref<T_digest> = _d;
        var _len = _d._len;
        var _tmp:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(72, 72, ...[for (i in 0 ... 72) (0 : stdgo.GoUInt8)]);
        _tmp[(0 : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
        var _t:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        if (((_len % (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64) < (56i64 : stdgo.GoUInt64) : Bool)) {
            _t = ((56i64 : stdgo.GoUInt64) - (_len % (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        } else {
            _t = ((120i64 : stdgo.GoUInt64) - (_len % (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        };
        _len = (_len << ((3i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _padlen = (_tmp.__slice__(0, (_t + (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.binary.Binary.bigEndian.putUint64((_padlen.__slice__(_t) : stdgo.Slice<stdgo.GoUInt8>), _len);
        _d.write(_padlen);
        if (_d._nx != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("d.nx != 0" : stdgo.GoString));
        };
        var _digest:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20, ...[for (i in 0 ... 20) (0 : stdgo.GoUInt8)]);
        stdgo._internal.encoding.binary.Binary.bigEndian.putUint32((_digest.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _d._h[(0 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary.bigEndian.putUint32((_digest.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _d._h[(1 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary.bigEndian.putUint32((_digest.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _d._h[(2 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary.bigEndian.putUint32((_digest.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _d._h[(3 : stdgo.GoInt)]);
        stdgo._internal.encoding.binary.Binary.bigEndian.putUint32((_digest.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _d._h[(4 : stdgo.GoInt)]);
        return _digest?.__copy__();
    }
    @:keep
    static public function sum( _d:stdgo.Ref<T_digest>, _in:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _d:stdgo.Ref<T_digest> = _d;
        _boringUnreachable();
        var _d0 = (_d : stdgo._internal.crypto.sha1.Sha1.T_digest)?.__copy__();
        var _hash = _d0._checkSum()?.__copy__();
        return (_in.__append__(...((_hash.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
    }
    @:keep
    static public function write( _d:stdgo.Ref<T_digest>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<T_digest> = _d;
        var _nn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _boringUnreachable();
        _nn = (_p.length);
        _d._len = (_d._len + ((_nn : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if ((_d._nx > (0 : stdgo.GoInt) : Bool)) {
            var _n = stdgo.Go.copySlice((_d._x.__slice__(_d._nx) : stdgo.Slice<stdgo.GoUInt8>), _p);
            _d._nx = (_d._nx + (_n) : stdgo.GoInt);
            if (_d._nx == ((64 : stdgo.GoInt))) {
                _block(_d, (_d._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                _d._nx = (0 : stdgo.GoInt);
            };
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_p.length) >= (64 : stdgo.GoInt) : Bool)) {
            var _n = ((_p.length) & (((63 : stdgo.GoInt) ^ (-1i32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            _block(_d, (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            _d._nx = stdgo.Go.copySlice((_d._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _p);
        };
        return { _0 : _nn, _1 : _err };
    }
    @:keep
    static public function blockSize( _d:stdgo.Ref<T_digest>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<T_digest> = _d;
        return (64 : stdgo.GoInt);
    }
    @:keep
    static public function size( _d:stdgo.Ref<T_digest>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<T_digest> = _d;
        return (20 : stdgo.GoInt);
    }
    @:keep
    static public function reset( _d:stdgo.Ref<T_digest>):Void {
        @:recv var _d:stdgo.Ref<T_digest> = _d;
        _d._h[(0 : stdgo.GoInt)] = (1732584193u32 : stdgo.GoUInt32);
        _d._h[(1 : stdgo.GoInt)] = (-271733879u32 : stdgo.GoUInt32);
        _d._h[(2 : stdgo.GoInt)] = (-1732584194u32 : stdgo.GoUInt32);
        _d._h[(3 : stdgo.GoInt)] = (271733878u32 : stdgo.GoUInt32);
        _d._h[(4 : stdgo.GoInt)] = (-1009589776u32 : stdgo.GoUInt32);
        _d._nx = (0 : stdgo.GoInt);
        _d._len = (0i64 : stdgo.GoUInt64);
    }
    @:keep
    static public function unmarshalBinary( _d:stdgo.Ref<T_digest>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        @:recv var _d:stdgo.Ref<T_digest> = _d;
        if ((((_b.length) < (stdgo.Go.str("sha", 1).length) : Bool) || (((_b.__slice__(0, (stdgo.Go.str("sha", 1).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != stdgo.Go.str("sha", 1)) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("crypto/sha1: invalid hash state identifier" : stdgo.GoString));
        };
        if ((_b.length) != ((96 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors.new_(("crypto/sha1: invalid hash state size" : stdgo.GoString));
        };
        _b = (_b.__slice__((stdgo.Go.str("sha", 1).length)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d._h[(0 : stdgo.GoInt)] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d._h[(1 : stdgo.GoInt)] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d._h[(2 : stdgo.GoInt)] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d._h[(3 : stdgo.GoInt)] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d._h[(4 : stdgo.GoInt)] = __tmp__._1;
        };
        _b = (_b.__slice__(stdgo.Go.copySlice((_d._x.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _b)) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            _d._len = __tmp__._1;
        };
        _d._nx = ((_d._len % (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalBinary( _d:stdgo.Ref<T_digest>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<T_digest> = _d;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (96 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...(stdgo.Go.str("sha", 1) : Array<stdgo.GoUInt8>)));
        _b = stdgo._internal.encoding.binary.Binary.bigEndian.appendUint32(_b, _d._h[(0 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary.bigEndian.appendUint32(_b, _d._h[(1 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary.bigEndian.appendUint32(_b, _d._h[(2 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary.bigEndian.appendUint32(_b, _d._h[(3 : stdgo.GoInt)]);
        _b = stdgo._internal.encoding.binary.Binary.bigEndian.appendUint32(_b, _d._h[(4 : stdgo.GoInt)]);
        _b = (_b.__append__(...((_d._x.__slice__(0, _d._nx) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        _b = (_b.__slice__(0, (((_b.length) + (_d._x.length) : stdgo.GoInt) - _d._nx : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.encoding.binary.Binary.bigEndian.appendUint64(_b, _d._len);
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
}
