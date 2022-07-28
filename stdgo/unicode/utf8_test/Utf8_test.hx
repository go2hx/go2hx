package stdgo.unicode.utf8_test;
import stdgo.unicode.utf8.Utf8;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _utf8map : Slice<stdgo.unicode.utf8_test.Utf8_test.Utf8Map> = ((new Slice<Utf8Map>(
((new Utf8Map(((0 : GoInt32)), (((((haxe.io.Bytes.ofHex("00") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((1 : GoInt32)), (((((haxe.io.Bytes.ofHex("01") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((126 : GoInt32)), (((((haxe.io.Bytes.ofHex("7e") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((127 : GoInt32)), (((((haxe.io.Bytes.ofHex("7f") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((128 : GoInt32)), (((((haxe.io.Bytes.ofHex("c2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((129 : GoInt32)), (((((haxe.io.Bytes.ofHex("c2") : GoString)) + ((haxe.io.Bytes.ofHex("81") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((191 : GoInt32)), (((((haxe.io.Bytes.ofHex("c2") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((192 : GoInt32)), (((((haxe.io.Bytes.ofHex("c3") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((193 : GoInt32)), (((((haxe.io.Bytes.ofHex("c3") : GoString)) + ((haxe.io.Bytes.ofHex("81") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((200 : GoInt32)), (((((haxe.io.Bytes.ofHex("c3") : GoString)) + ((haxe.io.Bytes.ofHex("88") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((208 : GoInt32)), (((((haxe.io.Bytes.ofHex("c3") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((224 : GoInt32)), (((((haxe.io.Bytes.ofHex("c3") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((240 : GoInt32)), (((((haxe.io.Bytes.ofHex("c3") : GoString)) + ((haxe.io.Bytes.ofHex("b0") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((248 : GoInt32)), (((((haxe.io.Bytes.ofHex("c3") : GoString)) + ((haxe.io.Bytes.ofHex("b8") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((255 : GoInt32)), (((((haxe.io.Bytes.ofHex("c3") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((256 : GoInt32)), (((((haxe.io.Bytes.ofHex("c4") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((2047 : GoInt32)), (((((haxe.io.Bytes.ofHex("df") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((1024 : GoInt32)), (((((haxe.io.Bytes.ofHex("d0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((2048 : GoInt32)), (((((haxe.io.Bytes.ofHex("e0") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((2049 : GoInt32)), (((((haxe.io.Bytes.ofHex("e0") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("81") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((4096 : GoInt32)), (((((haxe.io.Bytes.ofHex("e1") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((53248 : GoInt32)), (((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((55295 : GoInt32)), (((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("9f") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((57344 : GoInt32)), (((((haxe.io.Bytes.ofHex("ee") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((65534 : GoInt32)), (((((haxe.io.Bytes.ofHex("ef") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("be") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((65535 : GoInt32)), (((((haxe.io.Bytes.ofHex("ef") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((65536 : GoInt32)), (((((haxe.io.Bytes.ofHex("f0") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((65537 : GoInt32)), (((((haxe.io.Bytes.ofHex("f0") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("81") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((262144 : GoInt32)), (((((haxe.io.Bytes.ofHex("f1") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((1114110 : GoInt32)), (((((haxe.io.Bytes.ofHex("f4") : GoString)) + ((haxe.io.Bytes.ofHex("8f") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("be") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((1114111 : GoInt32)), (((((haxe.io.Bytes.ofHex("f4") : GoString)) + ((haxe.io.Bytes.ofHex("8f") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString))) : GoString))) : Utf8Map)),
((new Utf8Map(((65533 : GoInt32)), (((((haxe.io.Bytes.ofHex("ef") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("bd") : GoString))) : GoString))) : Utf8Map))) : Slice<Utf8Map>));
var _surrogateMap : Slice<stdgo.unicode.utf8_test.Utf8_test.Utf8Map> = ((new Slice<Utf8Map>(((new Utf8Map(((55296 : GoInt32)), (((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : Utf8Map)), ((new Utf8Map(((57343 : GoInt32)), (((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString))) : GoString))) : Utf8Map))) : Slice<Utf8Map>));
var _testStrings : Slice<GoString> = ((new Slice<GoString>(((((("" : GoString))) : GoString)), ((((("abcd" : GoString))) : GoString)), ((((("☺☻☹" : GoString))) : GoString)), ((((("日a本b語ç日ð本Ê語þ日¥本¼語i日©" : GoString))) : GoString)), ((((("日a本b語ç日ð本Ê語þ日¥本¼語i日©日a本b語ç日ð本Ê語þ日¥本¼語i日©日a本b語ç日ð本Ê語þ日¥本¼語i日©" : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : Slice<GoString>));
var _invalidSequenceTests : Slice<GoString> = ((new Slice<GoString>(
(((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("91") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("C2") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("DF") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("DF") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("E0") : GoString)) + ((haxe.io.Bytes.ofHex("9F") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("E0") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("E0") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("E0") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("E1") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("E1") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("E1") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("E1") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("ED") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("ED") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("ED") : GoString)) + ((haxe.io.Bytes.ofHex("9F") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("ED") : GoString)) + ((haxe.io.Bytes.ofHex("A0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F0") : GoString)) + ((haxe.io.Bytes.ofHex("8F") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F0") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F0") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F0") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F0") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F0") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F1") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F1") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F1") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F1") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F1") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F1") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F4") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F4") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F4") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("7F") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F4") : GoString)) + ((haxe.io.Bytes.ofHex("8F") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F4") : GoString)) + ((haxe.io.Bytes.ofHex("8F") : GoString)) + ((haxe.io.Bytes.ofHex("C0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)),
(((((haxe.io.Bytes.ofHex("F4") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString))) : Slice<GoString>));
var _runecounttests : Slice<stdgo.unicode.utf8_test.Utf8_test.RuneCountTest> = ((new Slice<RuneCountTest>(((new RuneCountTest(((((("abcd" : GoString))) : GoString)), ((4 : GoInt))) : RuneCountTest)), ((new RuneCountTest(((((("☺☻☹" : GoString))) : GoString)), ((3 : GoInt))) : RuneCountTest)), ((new RuneCountTest(((((("1,2,3,4" : GoString))) : GoString)), ((7 : GoInt))) : RuneCountTest)), ((new RuneCountTest((((((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString))) : GoString)), ((2 : GoInt))) : RuneCountTest)), ((new RuneCountTest((((((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((2 : GoInt))) : RuneCountTest)), ((new RuneCountTest(((((("a" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)), ((3 : GoInt))) : RuneCountTest))) : Slice<RuneCountTest>));
var _runelentests : Slice<stdgo.unicode.utf8_test.Utf8_test.RuneLenTest> = ((new Slice<RuneLenTest>(((new RuneLenTest(((0 : GoInt32)), ((1 : GoInt))) : RuneLenTest)), ((new RuneLenTest(((((("e" : GoString))).code : GoInt32)), ((1 : GoInt))) : RuneLenTest)), ((new RuneLenTest(((((("é" : GoString))).code : GoInt32)), ((2 : GoInt))) : RuneLenTest)), ((new RuneLenTest(((((("☺" : GoString))).code : GoInt32)), ((3 : GoInt))) : RuneLenTest)), ((new RuneLenTest(((65533 : GoInt32)), ((3 : GoInt))) : RuneLenTest)), ((new RuneLenTest(((1114111 : GoInt32)), ((4 : GoInt))) : RuneLenTest)), ((new RuneLenTest(((55296 : GoInt32)), ((-1 : GoInt))) : RuneLenTest)), ((new RuneLenTest(((57343 : GoInt32)), ((-1 : GoInt))) : RuneLenTest)), ((new RuneLenTest(((1114112 : GoInt32)), ((-1 : GoInt))) : RuneLenTest)), ((new RuneLenTest(((-1 : GoInt32)), ((-1 : GoInt))) : RuneLenTest))) : Slice<RuneLenTest>));
var _validTests : Slice<stdgo.unicode.utf8_test.Utf8_test.ValidTest> = ((new Slice<ValidTest>(
((new ValidTest(((((("" : GoString))) : GoString)), true) : ValidTest)),
((new ValidTest(((((("a" : GoString))) : GoString)), true) : ValidTest)),
((new ValidTest(((((("abc" : GoString))) : GoString)), true) : ValidTest)),
((new ValidTest(((((("Ж" : GoString))) : GoString)), true) : ValidTest)),
((new ValidTest(((((("ЖЖ" : GoString))) : GoString)), true) : ValidTest)),
((new ValidTest(((((("брэд-ЛГТМ" : GoString))) : GoString)), true) : ValidTest)),
((new ValidTest(((((("☺☻☹" : GoString))) : GoString)), true) : ValidTest)),
((new ValidTest(((((("aa" : GoString)) + ((haxe.io.Bytes.ofHex("e2") : GoString))) : GoString)), false) : ValidTest)),
((new ValidTest(((((new Slice<GoByte>(((66 : GoUInt8)), ((250 : GoUInt8))) : Slice<GoByte>)) : GoString)), false) : ValidTest)),
((new ValidTest(((((new Slice<GoByte>(((66 : GoUInt8)), ((250 : GoUInt8)), ((67 : GoUInt8))) : Slice<GoByte>)) : GoString)), false) : ValidTest)),
((new ValidTest(((((("a\uFFFDb" : GoString))) : GoString)), true) : ValidTest)),
((new ValidTest((((((((haxe.io.Bytes.ofHex("F4") : GoString)) + ((haxe.io.Bytes.ofHex("8F") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString))) : GoString)) : GoString)), true) : ValidTest)),
((new ValidTest((((((((haxe.io.Bytes.ofHex("F4") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)) : GoString)), false) : ValidTest)),
((new ValidTest((((((((haxe.io.Bytes.ofHex("F7") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString))) : GoString)) : GoString)), false) : ValidTest)),
((new ValidTest((((((((haxe.io.Bytes.ofHex("FB") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString)) + ((haxe.io.Bytes.ofHex("BF") : GoString))) : GoString)) : GoString)), false) : ValidTest)),
((new ValidTest((((((((haxe.io.Bytes.ofHex("c0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)) : GoString)), false) : ValidTest)),
((new ValidTest((((((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("a0") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)) : GoString)), false) : ValidTest)),
((new ValidTest((((((((haxe.io.Bytes.ofHex("ed") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString)) + ((haxe.io.Bytes.ofHex("bf") : GoString))) : GoString)) : GoString)), false) : ValidTest))) : Slice<ValidTest>));
var _validrunetests : Slice<stdgo.unicode.utf8_test.Utf8_test.ValidRuneTest> = ((new Slice<ValidRuneTest>(
((new ValidRuneTest(((0 : GoInt32)), true) : ValidRuneTest)),
((new ValidRuneTest(((((("e" : GoString))).code : GoInt32)), true) : ValidRuneTest)),
((new ValidRuneTest(((((("é" : GoString))).code : GoInt32)), true) : ValidRuneTest)),
((new ValidRuneTest(((((("☺" : GoString))).code : GoInt32)), true) : ValidRuneTest)),
((new ValidRuneTest(((65533 : GoInt32)), true) : ValidRuneTest)),
((new ValidRuneTest(((1114111 : GoInt32)), true) : ValidRuneTest)),
((new ValidRuneTest(((55295 : GoInt32)), true) : ValidRuneTest)),
((new ValidRuneTest(((55296 : GoInt32)), false) : ValidRuneTest)),
((new ValidRuneTest(((57343 : GoInt32)), false) : ValidRuneTest)),
((new ValidRuneTest(((57344 : GoInt32)), true) : ValidRuneTest)),
((new ValidRuneTest(((1114112 : GoInt32)), false) : ValidRuneTest)),
((new ValidRuneTest(((-1 : GoInt32)), false) : ValidRuneTest))) : Slice<ValidRuneTest>));
var _boolSink : Bool = false;
@:structInit class Utf8Map {
    public var _r : GoInt32 = 0;
    public var _str : GoString = "";
    public function new(?_r:GoInt32, ?_str:GoString) {
        if (_r != null) this._r = _r;
        if (_str != null) this._str = _str;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Utf8Map(_r, _str);
    }
}
@:structInit class RuneCountTest {
    public var _in : GoString = "";
    public var _out : GoInt = 0;
    public function new(?_in:GoString, ?_out:GoInt) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new RuneCountTest(_in, _out);
    }
}
@:structInit class RuneLenTest {
    public var _r : GoInt32 = 0;
    public var _size : GoInt = 0;
    public function new(?_r:GoInt32, ?_size:GoInt) {
        if (_r != null) this._r = _r;
        if (_size != null) this._size = _size;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new RuneLenTest(_r, _size);
    }
}
@:structInit class ValidTest {
    public var _in : GoString = "";
    public var _out : Bool = false;
    public function new(?_in:GoString, ?_out:Bool) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ValidTest(_in, _out);
    }
}
@:structInit class ValidRuneTest {
    public var _r : GoInt32 = 0;
    public var _ok : Bool = false;
    public function new(?_r:GoInt32, ?_ok:Bool) {
        if (_r != null) this._r = _r;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ValidRuneTest(_r, _ok);
    }
}
@:structInit @:local class T__struct_0 {
    public var _name : GoString = "";
    public var _data : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_data) + "}";
    public function new(?_name:GoString, ?_data:Slice<GoUInt8>, ?toString) {
        if (_name != null) this._name = _name;
        if (_data != null) this._data = _data;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_name, _data);
    }
}
function exampleDecodeLastRune():Void {
        var _b = ((((((("Hello, 世界" : GoString))) : GoString)) : Slice<GoByte>));
        while ((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(_b), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
            stdgo.fmt.Fmt.printf(((((("%c %v\n" : GoString))) : GoString)), Go.toInterface(_r), Go.toInterface(_size));
            _b = ((_b.__slice__(0, (_b != null ? _b.length : ((0 : GoInt))) - _size) : Slice<GoUInt8>));
        };
    }
function exampleDecodeLastRuneInString():Void {
        var _str:GoString = ((((("Hello, 世界" : GoString))) : GoString));
        while ((_str != null ? _str.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRuneInString(_str), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
            stdgo.fmt.Fmt.printf(((((("%c %v\n" : GoString))) : GoString)), Go.toInterface(_r), Go.toInterface(_size));
            _str = ((_str.__slice__(0, (_str != null ? _str.length : ((0 : GoInt))) - _size) : GoString));
        };
    }
function exampleDecodeRune():Void {
        var _b = ((((((("Hello, 世界" : GoString))) : GoString)) : Slice<GoByte>));
        while ((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_b), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
            stdgo.fmt.Fmt.printf(((((("%c %v\n" : GoString))) : GoString)), Go.toInterface(_r), Go.toInterface(_size));
            _b = ((_b.__slice__(_size) : Slice<GoUInt8>));
        };
    }
function exampleDecodeRuneInString():Void {
        var _str:GoString = ((((("Hello, 世界" : GoString))) : GoString));
        while ((_str != null ? _str.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_str), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
            stdgo.fmt.Fmt.printf(((((("%c %v\n" : GoString))) : GoString)), Go.toInterface(_r), Go.toInterface(_size));
            _str = ((_str.__slice__(_size) : GoString));
        };
    }
function exampleEncodeRune():Void {
        var _r:GoInt32 = ((((("世" : GoString))).code : GoInt32));
        var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((3 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _n:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_buf, _r);
        stdgo.fmt.Fmt.println(_buf);
        stdgo.fmt.Fmt.println(_n);
    }
function exampleEncodeRune_outOfRange():Void {
        var _runes = ((new Slice<GoRune>(((-1 : GoInt32)), ((1114112 : GoInt32)), ((65533 : GoInt32))) : Slice<GoRune>));
        for (_i => _c in _runes) {
            var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((3 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var _size:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_buf, _c);
            stdgo.fmt.Fmt.printf(((((("%d: %d %[2]s %d\n" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_buf), Go.toInterface(_size));
        };
    }
function exampleFullRune():Void {
        var _buf = ((new Slice<GoByte>(((228 : GoUInt8)), ((184 : GoUInt8)), ((150 : GoUInt8))) : Slice<GoByte>));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.fullRune(_buf));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.fullRune(((_buf.__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>))));
    }
function exampleFullRuneInString():Void {
        var _str:GoString = ((((("世" : GoString))) : GoString));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.fullRuneInString(_str));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.fullRuneInString(((_str.__slice__(0, ((2 : GoInt))) : GoString))));
    }
function exampleRuneCount():Void {
        var _buf = ((((((("Hello, 世界" : GoString))) : GoString)) : Slice<GoByte>));
        stdgo.fmt.Fmt.println(((((("bytes =" : GoString))) : GoString)), (_buf != null ? _buf.length : ((0 : GoInt))));
        stdgo.fmt.Fmt.println(((((("runes =" : GoString))) : GoString)), stdgo.unicode.utf8.Utf8.runeCount(_buf));
    }
function exampleRuneCountInString():Void {
        var _str:GoString = ((((("Hello, 世界" : GoString))) : GoString));
        stdgo.fmt.Fmt.println(((((("bytes =" : GoString))) : GoString)), (_str != null ? _str.length : ((0 : GoInt))));
        stdgo.fmt.Fmt.println(((((("runes =" : GoString))) : GoString)), stdgo.unicode.utf8.Utf8.runeCountInString(_str));
    }
function exampleRuneLen():Void {
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeLen(((((("a" : GoString))).code : GoInt32))));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeLen(((((("界" : GoString))).code : GoInt32))));
    }
function exampleRuneStart():Void {
        var _buf = ((((((("a界" : GoString))) : GoString)) : Slice<GoByte>));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeStart((_buf != null ? _buf[((0 : GoInt))] : ((0 : GoUInt8)))));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeStart((_buf != null ? _buf[((1 : GoInt))] : ((0 : GoUInt8)))));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.runeStart((_buf != null ? _buf[((2 : GoInt))] : ((0 : GoUInt8)))));
    }
function exampleValid():Void {
        var _valid = ((((((("Hello, 世界" : GoString))) : GoString)) : Slice<GoByte>));
        var _invalid = ((new Slice<GoByte>(((255 : GoUInt8)), ((254 : GoUInt8)), ((253 : GoUInt8))) : Slice<GoByte>));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.valid(_valid));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.valid(_invalid));
    }
function exampleValidRune():Void {
        var _valid:GoInt32 = ((((("a" : GoString))).code : GoInt32));
        var _invalid:GoInt32 = ((((268435455 : GoInt32)) : GoRune));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.validRune(_valid));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.validRune(_invalid));
    }
function exampleValidString():Void {
        var _valid:GoString = ((((("Hello, 世界" : GoString))) : GoString));
        var _invalid:GoString = ((((new Slice<GoByte>(((255 : GoUInt8)), ((254 : GoUInt8)), ((253 : GoUInt8))) : Slice<GoByte>)) : GoString));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.validString(_valid));
        stdgo.fmt.Fmt.println(stdgo.unicode.utf8.Utf8.validString(_invalid));
    }
function exampleAppendRune():Void {
        var _buf1 = stdgo.unicode.utf8.Utf8.appendRune(((null : Slice<GoUInt8>)), ((65536 : GoInt32)));
        var _buf2 = stdgo.unicode.utf8.Utf8.appendRune(((((((("init" : GoString))) : GoString)) : Slice<GoByte>)), ((65536 : GoInt32)));
        stdgo.fmt.Fmt.println(((_buf1 : GoString)));
        stdgo.fmt.Fmt.println(((_buf2 : GoString)));
    }
/**
    // Validate the constants redefined from unicode.
**/
function testConstants(_t:stdgo.testing.Testing.T):Void {
        if (false) {
            _t.errorf(((((("utf8.MaxRune is wrong: %x should be %x" : GoString))) : GoString)), Go.toInterface(((1114111 : GoInt32))), Go.toInterface(((1114111 : GoInt32))));
        };
        if (false) {
            _t.errorf(((((("utf8.RuneError is wrong: %x should be %x" : GoString))) : GoString)), Go.toInterface(((65533 : GoInt32))), Go.toInterface(((65533 : GoInt32))));
        };
    }
function testFullRune(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _m in _utf8map) {
            var _b = ((_m._str : Slice<GoByte>));
            if (!fullRune(_b)) {
                _t.errorf(((((("FullRune(%q) (%U) = false, want true" : GoString))) : GoString)), Go.toInterface(_b), Go.toInterface(_m._r));
            };
            var _s:GoString = _m._str;
            if (!fullRuneInString(_s)) {
                _t.errorf(((((("FullRuneInString(%q) (%U) = false, want true" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_m._r));
            };
            var _b1 = ((_b.__slice__(((0 : GoInt)), (_b != null ? _b.length : ((0 : GoInt))) - ((1 : GoInt))) : Slice<GoUInt8>));
            if (fullRune(_b1)) {
                _t.errorf(((((("FullRune(%q) = true, want false" : GoString))) : GoString)), Go.toInterface(_b1));
            };
            var _s1:GoString = ((_b1 : GoString));
            if (fullRuneInString(_s1)) {
                _t.errorf(((((("FullRune(%q) = true, want false" : GoString))) : GoString)), Go.toInterface(_s1));
            };
        };
        for (_1 => _s in ((new Slice<GoString>((((((haxe.io.Bytes.ofHex("c0") : GoString))) : GoString)), (((((haxe.io.Bytes.ofHex("c1") : GoString))) : GoString))) : Slice<GoString>))) {
            var _b = ((_s : Slice<GoByte>));
            if (!fullRune(_b)) {
                _t.errorf(((((("FullRune(%q) = false, want true" : GoString))) : GoString)), Go.toInterface(_s));
            };
            if (!fullRuneInString(_s)) {
                _t.errorf(((((("FullRuneInString(%q) = false, want true" : GoString))) : GoString)), Go.toInterface(_s));
            };
        };
    }
function testEncodeRune(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _m in _utf8map) {
            var _b = ((_m._str : Slice<GoByte>));
            var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 10) ((0 : GoUInt8))]);
            var _n:GoInt = encodeRune(((_buf.__slice__(((0 : GoInt))) : Slice<GoUInt8>)), _m._r);
            var _b1 = ((_buf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>));
            if (!stdgo.bytes.Bytes.equal(_b, _b1)) {
                _t.errorf(((((("EncodeRune(%#04x) = %q want %q" : GoString))) : GoString)), Go.toInterface(_m._r), Go.toInterface(_b1), Go.toInterface(_b));
            };
        };
    }
function testAppendRune(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _m in _utf8map) {
            {
                var _buf = appendRune(((null : Slice<GoUInt8>)), _m._r);
                if (((_buf : GoString)) != _m._str) {
                    _t.errorf(((((("AppendRune(nil, %#04x) = %s, want %s" : GoString))) : GoString)), Go.toInterface(_m._r), Go.toInterface(_buf), Go.toInterface(_m._str));
                };
            };
            {
                var _buf = appendRune(((((((("init" : GoString))) : GoString)) : Slice<GoByte>)), _m._r);
                if (((_buf : GoString)) != (((((("init" : GoString))) : GoString)) + _m._str)) {
                    _t.errorf(((((("AppendRune(init, %#04x) = %s, want %s" : GoString))) : GoString)), Go.toInterface(_m._r), Go.toInterface(_buf), Go.toInterface(((((("init" : GoString))) : GoString)) + _m._str));
                };
            };
        };
    }
function testDecodeRune(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _m in _utf8map) {
            var _b = ((_m._str : Slice<GoByte>));
            var __tmp__ = decodeRune(_b), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
            if ((_r != _m._r) || (_size != (_b != null ? _b.length : ((0 : GoInt))))) {
                _t.errorf(((((("DecodeRune(%q) = %#04x, %d want %#04x, %d" : GoString))) : GoString)), Go.toInterface(_b), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_m._r), Go.toInterface((_b != null ? _b.length : ((0 : GoInt)))));
            };
            var _s:GoString = _m._str;
            {
                var __tmp__ = decodeRuneInString(_s);
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if ((_r != _m._r) || (_size != (_b != null ? _b.length : ((0 : GoInt))))) {
                _t.errorf(((((("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_m._r), Go.toInterface((_b != null ? _b.length : ((0 : GoInt)))));
            };
            {
                var __tmp__ = decodeRune(((_b.__slice__(((0 : GoInt)), (_b != null ? _b.cap() : ((0 : GoInt)))) : Slice<GoUInt8>)));
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if ((_r != _m._r) || (_size != (_b != null ? _b.length : ((0 : GoInt))))) {
                _t.errorf(((((("DecodeRune(%q) = %#04x, %d want %#04x, %d" : GoString))) : GoString)), Go.toInterface(_b), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_m._r), Go.toInterface((_b != null ? _b.length : ((0 : GoInt)))));
            };
            _s = _m._str + (((((haxe.io.Bytes.ofHex("00") : GoString))) : GoString));
            {
                var __tmp__ = decodeRuneInString(_s);
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if ((_r != _m._r) || (_size != (_b != null ? _b.length : ((0 : GoInt))))) {
                _t.errorf(((((("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(_m._r), Go.toInterface((_b != null ? _b.length : ((0 : GoInt)))));
            };
            var _wantsize:GoInt = ((1 : GoInt));
            if (_wantsize >= (_b != null ? _b.length : ((0 : GoInt)))) {
                _wantsize = ((0 : GoInt));
            };
            {
                var __tmp__ = decodeRune(((_b.__slice__(((0 : GoInt)), (_b != null ? _b.length : ((0 : GoInt))) - ((1 : GoInt))) : Slice<GoUInt8>)));
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if ((_r != ((65533 : GoInt32))) || (_size != _wantsize)) {
                _t.errorf(((((("DecodeRune(%q) = %#04x, %d want %#04x, %d" : GoString))) : GoString)), Go.toInterface(((_b.__slice__(((0 : GoInt)), (_b != null ? _b.length : ((0 : GoInt))) - ((1 : GoInt))) : Slice<GoUInt8>))), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(((65533 : GoInt32))), Go.toInterface(_wantsize));
            };
            _s = ((_m._str.__slice__(((0 : GoInt)), (_m._str != null ? _m._str.length : ((0 : GoInt))) - ((1 : GoInt))) : GoString));
            {
                var __tmp__ = decodeRuneInString(_s);
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if ((_r != ((65533 : GoInt32))) || (_size != _wantsize)) {
                _t.errorf(((((("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(((65533 : GoInt32))), Go.toInterface(_wantsize));
            };
            if ((_b != null ? _b.length : ((0 : GoInt))) == ((1 : GoInt))) {
                if (_b != null) _b[((0 : GoInt))] = ((128 : GoUInt8));
            } else {
                if (_b != null) _b[(_b != null ? _b.length : ((0 : GoInt))) - ((1 : GoInt))] = ((127 : GoUInt8));
            };
            {
                var __tmp__ = decodeRune(_b);
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if ((_r != ((65533 : GoInt32))) || (_size != ((1 : GoInt)))) {
                _t.errorf(((((("DecodeRune(%q) = %#04x, %d want %#04x, %d" : GoString))) : GoString)), Go.toInterface(_b), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(((65533 : GoInt32))), Go.toInterface(((1 : GoInt))));
            };
            _s = ((_b : GoString));
            {
                var __tmp__ = decodeRuneInString(_s);
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if ((_r != ((65533 : GoInt32))) || (_size != ((1 : GoInt)))) {
                _t.errorf(((((("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(((65533 : GoInt32))), Go.toInterface(((1 : GoInt))));
            };
        };
    }
function testDecodeSurrogateRune(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _m in _surrogateMap) {
            var _b = ((_m._str : Slice<GoByte>));
            var __tmp__ = decodeRune(_b), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
            if ((_r != ((65533 : GoInt32))) || (_size != ((1 : GoInt)))) {
                _t.errorf(((((("DecodeRune(%q) = %x, %d want %x, %d" : GoString))) : GoString)), Go.toInterface(_b), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(((65533 : GoInt32))), Go.toInterface(((1 : GoInt))));
            };
            var _s:GoString = _m._str;
            {
                var __tmp__ = decodeRuneInString(_s);
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if ((_r != ((65533 : GoInt32))) || (_size != ((1 : GoInt)))) {
                _t.errorf(((((("DecodeRuneInString(%q) = %x, %d want %x, %d" : GoString))) : GoString)), Go.toInterface(_b), Go.toInterface(_r), Go.toInterface(_size), Go.toInterface(((65533 : GoInt32))), Go.toInterface(((1 : GoInt))));
            };
        };
    }
/**
    // Check that DecodeRune and DecodeLastRune correspond to
    // the equivalent range loop.
**/
function testSequencing(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _ts in _testStrings) {
            for (_1 => _m in _utf8map) {
                for (_2 => _s in ((new Slice<GoString>(_ts + _m._str, _m._str + _ts, (_ts + _m._str) + _ts) : Slice<GoString>))) {
                    _testSequence(_t, _s);
                };
            };
        };
    }
function _runtimeRuneCount(_s:GoString):GoInt {
        return (((_s : Slice<GoRune>)) != null ? ((_s : Slice<GoRune>)).length : ((0 : GoInt)));
    }
/**
    // Check that a range loop, len([]rune(string)) optimization and
    // []rune conversions visit the same runes.
    // Not really a test of this package, but the assumption is used here and
    // it's good to verify.
**/
function testRuntimeConversion(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _ts in _testStrings) {
            var _count:GoInt = runeCountInString(_ts);
            {
                var _n:GoInt = _runtimeRuneCount(_ts);
                if (_n != _count) {
                    _t.errorf(((((("%q: len([]rune()) counted %d runes; got %d from RuneCountInString" : GoString))) : GoString)), Go.toInterface(_ts), Go.toInterface(_n), Go.toInterface(_count));
                    break;
                };
            };
            var _runes = ((_ts : Slice<GoRune>));
            {
                var _n:GoInt = (_runes != null ? _runes.length : ((0 : GoInt)));
                if (_n != _count) {
                    _t.errorf(((((("%q: []rune() has length %d; got %d from RuneCountInString" : GoString))) : GoString)), Go.toInterface(_ts), Go.toInterface(_n), Go.toInterface(_count));
                    break;
                };
            };
            var _i:GoInt = ((0 : GoInt));
            for (_1 => _r in _ts) {
                if (_r != (_runes != null ? _runes[_i] : ((0 : GoInt32)))) {
                    _t.errorf(((((("%q[%d]: expected %c (%U); got %c (%U)" : GoString))) : GoString)), Go.toInterface(_ts), Go.toInterface(_i), Go.toInterface((_runes != null ? _runes[_i] : ((0 : GoInt32)))), Go.toInterface((_runes != null ? _runes[_i] : ((0 : GoInt32)))), Go.toInterface(_r), Go.toInterface(_r));
                };
                _i++;
            };
        };
    }
function _runtimeDecodeRune(_s:GoString):GoRune {
        for (_0 => _r in _s) {
            return _r;
        };
        return ((-1 : GoInt32));
    }
function testDecodeInvalidSequence(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _s in _invalidSequenceTests) {
            var __tmp__ = decodeRune(((_s : Slice<GoByte>))), _r1:GoInt32 = __tmp__._0, _1:GoInt = __tmp__._1;
            {
                var _want:GoInt32 = ((65533 : GoInt32));
                if (_r1 != _want) {
                    _t.errorf(((((("DecodeRune(%#x) = %#04x, want %#04x" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_r1), Go.toInterface(_want));
                    return;
                };
            };
            var __tmp__ = decodeRuneInString(_s), _r2:GoInt32 = __tmp__._0, _2:GoInt = __tmp__._1;
            {
                var _want:GoInt32 = ((65533 : GoInt32));
                if (_r2 != _want) {
                    _t.errorf(((((("DecodeRuneInString(%q) = %#04x, want %#04x" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_r2), Go.toInterface(_want));
                    return;
                };
            };
            if (_r1 != _r2) {
                _t.errorf(((((("DecodeRune(%#x) = %#04x mismatch with DecodeRuneInString(%q) = %#04x" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_r1), Go.toInterface(_s), Go.toInterface(_r2));
                return;
            };
            var _r3:GoInt32 = _runtimeDecodeRune(_s);
            if (_r2 != _r3) {
                _t.errorf(((((("DecodeRuneInString(%q) = %#04x mismatch with runtime.decoderune(%q) = %#04x" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_r2), Go.toInterface(_s), Go.toInterface(_r3));
                return;
            };
        };
    }
@:structInit class T_info__testSequence_0 {
    public var _index : GoInt = 0;
    public var _r : GoInt32 = 0;
    public function new(?_index:GoInt, ?_r:GoInt32) {
        if (_index != null) this._index = _index;
        if (_r != null) this._r = _r;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_info__testSequence_0(_index, _r);
    }
}
function _testSequence(_t:stdgo.testing.Testing.T, _s:GoString):Void {
        {};
        var _index = new Slice<stdgo.unicode.utf8_test.Utf8_test.T_info__testSequence_0>(...[for (i in 0 ... (((_s != null ? _s.length : ((0 : GoInt))) : GoInt)).toBasic()) new stdgo.unicode.utf8_test.Utf8_test.T_info__testSequence_0()]);
        var _b = ((_s : Slice<GoByte>));
        var _si:GoInt = ((0 : GoInt));
        var _j:GoInt = ((0 : GoInt));
        for (_i => _r in _s) {
            if (_si != _i) {
                _t.errorf(((((("Sequence(%q) mismatched index %d, want %d" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_si), Go.toInterface(_i));
                return;
            };
            if (_index != null) _index[_j] = ((new T_info__testSequence_0(_i, _r) : T_info__testSequence_0));
            _j++;
            var __tmp__ = decodeRune(((_b.__slice__(_i) : Slice<GoUInt8>))), _r1:GoInt32 = __tmp__._0, _size1:GoInt = __tmp__._1;
            if (_r != _r1) {
                _t.errorf(((((("DecodeRune(%q) = %#04x, want %#04x" : GoString))) : GoString)), Go.toInterface(((_s.__slice__(_i) : GoString))), Go.toInterface(_r1), Go.toInterface(_r));
                return;
            };
            var __tmp__ = decodeRuneInString(((_s.__slice__(_i) : GoString))), _r2:GoInt32 = __tmp__._0, _size2:GoInt = __tmp__._1;
            if (_r != _r2) {
                _t.errorf(((((("DecodeRuneInString(%q) = %#04x, want %#04x" : GoString))) : GoString)), Go.toInterface(((_s.__slice__(_i) : GoString))), Go.toInterface(_r2), Go.toInterface(_r));
                return;
            };
            if (_size1 != _size2) {
                _t.errorf(((((("DecodeRune/DecodeRuneInString(%q) size mismatch %d/%d" : GoString))) : GoString)), Go.toInterface(((_s.__slice__(_i) : GoString))), Go.toInterface(_size1), Go.toInterface(_size2));
                return;
            };
            _si = _si + (_size1);
        };
        _j--;
        {
            _si = (_s != null ? _s.length : ((0 : GoInt)));
            while (_si > ((0 : GoInt))) {
                var __tmp__ = decodeLastRune(((_b.__slice__(((0 : GoInt)), _si) : Slice<GoUInt8>))), _r1:GoInt32 = __tmp__._0, _size1:GoInt = __tmp__._1;
                var __tmp__ = decodeLastRuneInString(((_s.__slice__(((0 : GoInt)), _si) : GoString))), _r2:GoInt32 = __tmp__._0, _size2:GoInt = __tmp__._1;
                if (_size1 != _size2) {
                    _t.errorf(((((("DecodeLastRune/DecodeLastRuneInString(%q, %d) size mismatch %d/%d" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_si), Go.toInterface(_size1), Go.toInterface(_size2));
                    return;
                };
                if (_r1 != (_index != null ? _index[_j] : new stdgo.unicode.utf8_test.Utf8_test.T_info__testSequence_0())._r) {
                    _t.errorf(((((("DecodeLastRune(%q, %d) = %#04x, want %#04x" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_si), Go.toInterface(_r1), Go.toInterface((_index != null ? _index[_j] : new stdgo.unicode.utf8_test.Utf8_test.T_info__testSequence_0())._r));
                    return;
                };
                if (_r2 != (_index != null ? _index[_j] : new stdgo.unicode.utf8_test.Utf8_test.T_info__testSequence_0())._r) {
                    _t.errorf(((((("DecodeLastRuneInString(%q, %d) = %#04x, want %#04x" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_si), Go.toInterface(_r2), Go.toInterface((_index != null ? _index[_j] : new stdgo.unicode.utf8_test.Utf8_test.T_info__testSequence_0())._r));
                    return;
                };
                _si = _si - (_size1);
                if (_si != (_index != null ? _index[_j] : new stdgo.unicode.utf8_test.Utf8_test.T_info__testSequence_0())._index) {
                    _t.errorf(((((("DecodeLastRune(%q) index mismatch at %d, want %d" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_si), Go.toInterface((_index != null ? _index[_j] : new stdgo.unicode.utf8_test.Utf8_test.T_info__testSequence_0())._index));
                    return;
                };
                _j--;
            };
        };
        if (_si != ((0 : GoInt))) {
            _t.errorf(((((("DecodeLastRune(%q) finished at %d, not 0" : GoString))) : GoString)), Go.toInterface(_s), Go.toInterface(_si));
        };
    }
/**
    // Check that negative runes encode as U+FFFD.
**/
function testNegativeRune(_t:stdgo.testing.Testing.T):Void {
        var _errorbuf = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _errorbuf = ((_errorbuf.__slice__(((0 : GoInt)), encodeRune(_errorbuf, ((65533 : GoInt32)))) : Slice<GoUInt8>));
        var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _buf = ((_buf.__slice__(((0 : GoInt)), encodeRune(_buf, ((-1 : GoInt32)))) : Slice<GoUInt8>));
        if (!stdgo.bytes.Bytes.equal(_buf, _errorbuf)) {
            _t.errorf(((((("incorrect encoding [% x] for -1; expected [% x]" : GoString))) : GoString)), Go.toInterface(_buf), Go.toInterface(_errorbuf));
        };
    }
function testRuneCount(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _runecounttests) {
            {
                var _out:GoInt = runeCountInString(_tt._in);
                if (_out != _tt._out) {
                    _t.errorf(((((("RuneCountInString(%q) = %d, want %d" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
            {
                var _out:GoInt = runeCount(((_tt._in : Slice<GoByte>)));
                if (_out != _tt._out) {
                    _t.errorf(((((("RuneCount(%q) = %d, want %d" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(_out), Go.toInterface(_tt._out));
                };
            };
        };
    }
function testRuneLen(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _runelentests) {
            {
                var _size:GoInt = runeLen(_tt._r);
                if (_size != _tt._size) {
                    _t.errorf(((((("RuneLen(%#U) = %d, want %d" : GoString))) : GoString)), Go.toInterface(_tt._r), Go.toInterface(_size), Go.toInterface(_tt._size));
                };
            };
        };
    }
function testValid(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _validTests) {
            if (valid(((_tt._in : Slice<GoByte>))) != _tt._out) {
                _t.errorf(((((("Valid(%q) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(!_tt._out), Go.toInterface(_tt._out));
            };
            if (validString(_tt._in) != _tt._out) {
                _t.errorf(((((("ValidString(%q) = %v; want %v" : GoString))) : GoString)), Go.toInterface(_tt._in), Go.toInterface(!_tt._out), Go.toInterface(_tt._out));
            };
        };
    }
function testValidRune(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _validrunetests) {
            {
                var _ok:Bool = validRune(_tt._r);
                if (_ok != _tt._ok) {
                    _t.errorf(((((("ValidRune(%#U) = %t, want %t" : GoString))) : GoString)), Go.toInterface(_tt._r), Go.toInterface(_ok), Go.toInterface(_tt._ok));
                };
            };
        };
    }
function benchmarkRuneCountTenASCIIChars(_b:stdgo.testing.Testing.B):Void {
        var _s = ((((((("0123456789" : GoString))) : GoString)) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                runeCount(_s);
            });
        };
    }
function benchmarkRuneCountTenJapaneseChars(_b:stdgo.testing.Testing.B):Void {
        var _s = ((((((("日本語日本語日本語日" : GoString))) : GoString)) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                runeCount(_s);
            });
        };
    }
function benchmarkRuneCountInStringTenASCIIChars(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                runeCountInString(((((("0123456789" : GoString))) : GoString)));
            });
        };
    }
function benchmarkRuneCountInStringTenJapaneseChars(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                runeCountInString(((((("日本語日本語日本語日" : GoString))) : GoString)));
            });
        };
    }
function benchmarkValidTenASCIIChars(_b:stdgo.testing.Testing.B):Void {
        var _s = ((((((("0123456789" : GoString))) : GoString)) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                valid(_s);
            });
        };
    }
function benchmarkValidTenJapaneseChars(_b:stdgo.testing.Testing.B):Void {
        var _s = ((((((("日本語日本語日本語日" : GoString))) : GoString)) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                valid(_s);
            });
        };
    }
function benchmarkValidStringTenASCIIChars(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                validString(((((("0123456789" : GoString))) : GoString)));
            });
        };
    }
function benchmarkValidStringTenJapaneseChars(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                validString(((((("日本語日本語日本語日" : GoString))) : GoString)));
            });
        };
    }
function benchmarkEncodeASCIIRune(_b:stdgo.testing.Testing.B):Void {
        var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                encodeRune(_buf, ((((("a" : GoString))).code : GoInt32)));
            });
        };
    }
function benchmarkEncodeJapaneseRune(_b:stdgo.testing.Testing.B):Void {
        var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                encodeRune(_buf, ((((("本" : GoString))).code : GoInt32)));
            });
        };
    }
function benchmarkAppendASCIIRune(_b:stdgo.testing.Testing.B):Void {
        var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                appendRune(((_buf.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)), ((((("a" : GoString))).code : GoInt32)));
            });
        };
    }
function benchmarkAppendJapaneseRune(_b:stdgo.testing.Testing.B):Void {
        var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                appendRune(((_buf.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)), ((((("本" : GoString))).code : GoInt32)));
            });
        };
    }
function benchmarkDecodeASCIIRune(_b:stdgo.testing.Testing.B):Void {
        var _a = ((new Slice<GoByte>(((((("a" : GoString))).code : GoUInt8))) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                decodeRune(_a);
            });
        };
    }
function benchmarkDecodeJapaneseRune(_b:stdgo.testing.Testing.B):Void {
        var _nihon = ((((((("本" : GoString))) : GoString)) : Slice<GoByte>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                decodeRune(_nihon);
            });
        };
    }
function benchmarkFullRune(_b:stdgo.testing.Testing.B):Void {
        var _benchmarks = ((new Slice<T__struct_0>(((new T__struct_0(((((("ASCII" : GoString))) : GoString)), ((((((("a" : GoString))) : GoString)) : Slice<GoByte>))) : T__struct_0)), ((new T__struct_0(((((("Incomplete" : GoString))) : GoString)), (((((((haxe.io.Bytes.ofHex("f0") : GoString)) + ((haxe.io.Bytes.ofHex("90") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString))) : GoString)) : Slice<GoByte>))) : T__struct_0)), ((new T__struct_0(((((("Japanese" : GoString))) : GoString)), ((((((("本" : GoString))) : GoString)) : Slice<GoByte>))) : T__struct_0))) : Slice<T__struct_0>));
        for (_0 => _bm in _benchmarks) {
            _b.run(_bm._name, function(_b:stdgo.testing.Testing.B):Void {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        _boolSink = fullRune(_bm._data);
                    });
                };
            });
        };
    }
@:keep var _ = {
        try {
            if (false) {
                throw Go.toInterface(((((("utf8.MaxRune is wrong" : GoString))) : GoString)));
            };
            if (false) {
                throw Go.toInterface(((((("utf8.RuneError is wrong" : GoString))) : GoString)));
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
