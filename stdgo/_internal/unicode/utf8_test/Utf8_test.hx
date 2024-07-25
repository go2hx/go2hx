package stdgo._internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf8.Utf8;
var _longStringMostlyASCII : stdgo.GoString = ("" : stdgo.GoString);
var _longStringJapanese : stdgo.GoString = ("" : stdgo.GoString);
var _boolSink : Bool = false;
var _utf8map : stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map> = (new stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map>(32, 32, ...[
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((0 : stdgo.GoInt32), stdgo.Go.str(0)?.__copy__()) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((1 : stdgo.GoInt32), stdgo.Go.str(1)?.__copy__()) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((126 : stdgo.GoInt32), ("~" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((127 : stdgo.GoInt32), stdgo.Go.str(127)?.__copy__()) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((128 : stdgo.GoInt32), ("\u0080" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((129 : stdgo.GoInt32), ("\u0081" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((191 : stdgo.GoInt32), ("¿" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((192 : stdgo.GoInt32), ("À" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((193 : stdgo.GoInt32), ("Á" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((200 : stdgo.GoInt32), ("È" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((208 : stdgo.GoInt32), ("Ð" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((224 : stdgo.GoInt32), ("à" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((240 : stdgo.GoInt32), ("ð" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((248 : stdgo.GoInt32), ("ø" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((255 : stdgo.GoInt32), ("ÿ" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((256 : stdgo.GoInt32), ("Ā" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((2047 : stdgo.GoInt32), ("߿" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((1024 : stdgo.GoInt32), ("Ѐ" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((2048 : stdgo.GoInt32), ("ࠀ" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((2049 : stdgo.GoInt32), ("ࠁ" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((4096 : stdgo.GoInt32), ("က" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((53248 : stdgo.GoInt32), ("퀀" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((55295 : stdgo.GoInt32), ("\ud7ff" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((57344 : stdgo.GoInt32), ("\ue000" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((65534 : stdgo.GoInt32), ("\ufffe" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((65535 : stdgo.GoInt32), ("\uffff" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((65536 : stdgo.GoInt32), ("𐀀" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((65537 : stdgo.GoInt32), ("𐀁" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((262144 : stdgo.GoInt32), ("\u{00040000}" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((1114110 : stdgo.GoInt32), ("\u{0010fffe}" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((1114111 : stdgo.GoInt32), ("\u{0010ffff}" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map),
(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((65533 : stdgo.GoInt32), ("�" : stdgo.GoString)) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map)].concat([for (i in 32 ... (32 > 32 ? 32 : 32 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map)])) : stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map>);
var _surrogateMap : stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map> = (new stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map>(2, 2, ...[(new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((55296 : stdgo.GoInt32), stdgo.Go.str(237, 160, 128)?.__copy__()) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map), (new stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map((57343 : stdgo.GoInt32), stdgo.Go.str(237, 191, 191)?.__copy__()) : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map)])) : stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.Utf8Map>);
var _testStrings : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[stdgo.Go.str()?.__copy__(), ("abcd" : stdgo.GoString), ("☺☻☹" : stdgo.GoString), ("日a本b語ç日ð本Ê語þ日¥本¼語i日©" : stdgo.GoString), ("日a本b語ç日ð本Ê語þ日¥本¼語i日©日a本b語ç日ð本Ê語þ日¥本¼語i日©日a本b語ç日ð本Ê語þ日¥本¼語i日©" : stdgo.GoString), stdgo.Go.str(128, 128, 128, 128)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _invalidSequenceTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(37, 37, ...[
stdgo.Go.str(237, 160, 128, 128)?.__copy__(),
stdgo.Go.str(237, 191, 191, 128)?.__copy__(),
stdgo.Go.str(145, 128, 128, 128)?.__copy__(),
stdgo.Go.str(194, 127, 128, 128)?.__copy__(),
stdgo.Go.str(194, 192, 128, 128)?.__copy__(),
stdgo.Go.str(223, 127, 128, 128)?.__copy__(),
stdgo.Go.str(223, 192, 128, 128)?.__copy__(),
stdgo.Go.str(224, 159, 191, 128)?.__copy__(),
stdgo.Go.str(224, 160, 127, 128)?.__copy__(),
stdgo.Go.str(224, 191, 192, 128)?.__copy__(),
stdgo.Go.str(224, 192, 128, 128)?.__copy__(),
stdgo.Go.str(225, 127, 191, 128)?.__copy__(),
stdgo.Go.str(225, 128, 127, 128)?.__copy__(),
stdgo.Go.str(225, 191, 192, 128)?.__copy__(),
stdgo.Go.str(225, 192, 128, 128)?.__copy__(),
stdgo.Go.str(237, 127, 191, 128)?.__copy__(),
stdgo.Go.str(237, 128, 127, 128)?.__copy__(),
stdgo.Go.str(237, 159, 192, 128)?.__copy__(),
stdgo.Go.str(237, 160, 128, 128)?.__copy__(),
stdgo.Go.str(240, 143, 191, 191)?.__copy__(),
stdgo.Go.str(240, 144, 127, 191)?.__copy__(),
stdgo.Go.str(240, 144, 128, 127)?.__copy__(),
stdgo.Go.str(240, 191, 191, 192)?.__copy__(),
stdgo.Go.str(240, 191, 192, 128)?.__copy__(),
stdgo.Go.str(240, 192, 128, 128)?.__copy__(),
stdgo.Go.str(241, 127, 191, 191)?.__copy__(),
stdgo.Go.str(241, 128, 127, 191)?.__copy__(),
stdgo.Go.str(241, 128, 128, 127)?.__copy__(),
stdgo.Go.str(241, 191, 191, 192)?.__copy__(),
stdgo.Go.str(241, 191, 192, 128)?.__copy__(),
stdgo.Go.str(241, 192, 128, 128)?.__copy__(),
stdgo.Go.str(244, 127, 191, 191)?.__copy__(),
stdgo.Go.str(244, 128, 127, 191)?.__copy__(),
stdgo.Go.str(244, 128, 128, 127)?.__copy__(),
stdgo.Go.str(244, 143, 191, 192)?.__copy__(),
stdgo.Go.str(244, 143, 192, 128)?.__copy__(),
stdgo.Go.str(244, 144, 128, 128)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _runecounttests : stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest> = (new stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest>(6, 6, ...[(new stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest(("abcd" : stdgo.GoString), (4 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest(("☺☻☹" : stdgo.GoString), (3 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest(("1,2,3,4" : stdgo.GoString), (7 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest(stdgo.Go.str(226, 0)?.__copy__(), (2 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest(stdgo.Go.str(226, 128)?.__copy__(), (2 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest(stdgo.Go.str("a", 226, 128)?.__copy__(), (3 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest)])) : stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.RuneCountTest>);
var _runelentests : stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest> = (new stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest>(10, 10, ...[(new stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest((0 : stdgo.GoInt32), (1 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest((101 : stdgo.GoInt32), (1 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest((233 : stdgo.GoInt32), (2 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest((9786 : stdgo.GoInt32), (3 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest((65533 : stdgo.GoInt32), (3 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest((1114111 : stdgo.GoInt32), (4 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest((55296 : stdgo.GoInt32), (-1 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest((57343 : stdgo.GoInt32), (-1 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest((1114112 : stdgo.GoInt32), (-1 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest), (new stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest((-1 : stdgo.GoInt32), (-1 : stdgo.GoInt)) : stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest)])) : stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.RuneLenTest>);
var _validTests : stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest> = (new stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest>(18, 18, ...[
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest(stdgo.Go.str()?.__copy__(), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest(("a" : stdgo.GoString), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest(("abc" : stdgo.GoString), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest(("Ж" : stdgo.GoString), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest(("ЖЖ" : stdgo.GoString), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest(("брэд-ЛГТМ" : stdgo.GoString), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest(("☺☻☹" : stdgo.GoString), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest(stdgo.Go.str("aa", 226)?.__copy__(), false) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest(((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(66 : stdgo.GoUInt8), (250 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), false) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest(((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(66 : stdgo.GoUInt8), (250 : stdgo.GoUInt8), (67 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), false) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest(("a�b" : stdgo.GoString), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest(("\u{0010ffff}" : stdgo.GoString), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest((stdgo.Go.str(244, 144, 128, 128) : stdgo.GoString)?.__copy__(), false) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest((stdgo.Go.str(247, 191, 191, 191) : stdgo.GoString)?.__copy__(), false) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest((stdgo.Go.str(251, 191, 191, 191, 191) : stdgo.GoString)?.__copy__(), false) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest((stdgo.Go.str(192, 128) : stdgo.GoString)?.__copy__(), false) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest((stdgo.Go.str(237, 160, 128) : stdgo.GoString)?.__copy__(), false) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest((stdgo.Go.str(237, 191, 191) : stdgo.GoString)?.__copy__(), false) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest)])) : stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.ValidTest>);
var _validrunetests : stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest> = (new stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest>(12, 12, ...[
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest((0 : stdgo.GoInt32), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest((101 : stdgo.GoInt32), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest((233 : stdgo.GoInt32), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest((9786 : stdgo.GoInt32), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest((65533 : stdgo.GoInt32), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest((1114111 : stdgo.GoInt32), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest((55295 : stdgo.GoInt32), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest((55296 : stdgo.GoInt32), false) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest((57343 : stdgo.GoInt32), false) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest((57344 : stdgo.GoInt32), true) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest((1114112 : stdgo.GoInt32), false) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest),
(new stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest((-1 : stdgo.GoInt32), false) : stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest)])) : stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.ValidRuneTest>);
var _ascii100000 : stdgo.GoString = stdgo._internal.strings.Strings.repeat(("0123456789" : stdgo.GoString), (10000 : stdgo.GoInt));
@:structInit class Utf8Map {
    public var _r : stdgo.GoInt32 = 0;
    public var _str : stdgo.GoString = "";
    public function new(?_r:stdgo.GoInt32, ?_str:stdgo.GoString) {
        if (_r != null) this._r = _r;
        if (_str != null) this._str = _str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Utf8Map(_r, _str);
    }
}
@:structInit class RuneCountTest {
    public var _in : stdgo.GoString = "";
    public var _out : stdgo.GoInt = 0;
    public function new(?_in:stdgo.GoString, ?_out:stdgo.GoInt) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RuneCountTest(_in, _out);
    }
}
@:structInit class RuneLenTest {
    public var _r : stdgo.GoInt32 = 0;
    public var _size : stdgo.GoInt = 0;
    public function new(?_r:stdgo.GoInt32, ?_size:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_size != null) this._size = _size;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RuneLenTest(_r, _size);
    }
}
@:structInit class ValidTest {
    public var _in : stdgo.GoString = "";
    public var _out : Bool = false;
    public function new(?_in:stdgo.GoString, ?_out:Bool) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ValidTest(_in, _out);
    }
}
@:structInit class ValidRuneTest {
    public var _r : stdgo.GoInt32 = 0;
    public var _ok : Bool = false;
    public function new(?_r:stdgo.GoInt32, ?_ok:Bool) {
        if (_r != null) this._r = _r;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ValidRuneTest(_r, _ok);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.unicode.utf8_test.Utf8_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.unicode.utf8_test.Utf8_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _name : stdgo.GoString;
    public var _data : stdgo.Slice<stdgo.GoUInt8>;
};
function exampleDecodeLastRune():Void {
        var _b = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRune(_b), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _b = (_b.__slice__(0, ((_b.length) - _size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
function exampleDecodeLastRuneInString():Void {
        var _str = ("Hello, 世界" : stdgo.GoString);
        while (((_str.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRuneInString(_str?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _str = (_str.__slice__(0, ((_str.length) - _size : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
    }
function exampleDecodeRune():Void {
        var _b = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune(_b), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _b = (_b.__slice__(_size) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
function exampleDecodeRuneInString():Void {
        var _str = ("Hello, 世界" : stdgo.GoString);
        while (((_str.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_str?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("%c %v\n" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size));
            _str = (_str.__slice__(_size) : stdgo.GoString)?.__copy__();
        };
    }
function exampleEncodeRune():Void {
        var _r = (19990 : stdgo.GoInt32);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (stdgo._internal.unicode.utf8.Utf8.encodeRune(_buf, _r) : stdgo.GoInt);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_buf));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_n));
    }
function exampleEncodeRune_outOfRange():Void {
        var _runes = (new stdgo.Slice<stdgo.GoInt32>(3, 3, ...[(-1 : stdgo.GoInt32), (1114112 : stdgo.GoInt32), (65533 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _c in _runes) {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _size = (stdgo._internal.unicode.utf8.Utf8.encodeRune(_buf, _c) : stdgo.GoInt);
            stdgo._internal.fmt.Fmt.printf(("%d: %d %[2]s %d\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_size));
        };
    }
function exampleFullRune():Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(228 : stdgo.GoUInt8), (184 : stdgo.GoUInt8), (150 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.fullRune(_buf)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.fullRune((_buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))));
    }
function exampleFullRuneInString():Void {
        var _str = ("世" : stdgo.GoString);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.fullRuneInString(_str?.__copy__())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.fullRuneInString((_str.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())));
    }
function exampleRuneCount():Void {
        var _buf = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("bytes =" : stdgo.GoString)), stdgo.Go.toInterface((_buf.length)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("runes =" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeCount(_buf)));
    }
function exampleRuneCountInString():Void {
        var _str = ("Hello, 世界" : stdgo.GoString);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("bytes =" : stdgo.GoString)), stdgo.Go.toInterface((_str.length)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("runes =" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeCountInString(_str?.__copy__())));
    }
function exampleRuneLen():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeLen((97 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeLen((30028 : stdgo.GoInt32))));
    }
function exampleRuneStart():Void {
        var _buf = (("a界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeStart(_buf[(0 : stdgo.GoInt)])));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeStart(_buf[(1 : stdgo.GoInt)])));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeStart(_buf[(2 : stdgo.GoInt)])));
    }
function exampleValid():Void {
        var _valid = (("Hello, 世界" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _invalid = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(255 : stdgo.GoUInt8), (254 : stdgo.GoUInt8), (253 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.valid(_valid)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.valid(_invalid)));
    }
function exampleValidRune():Void {
        var _valid = (97 : stdgo.GoInt32);
        var _invalid = (((268435455 : stdgo.GoInt32) : stdgo.GoRune) : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.validRune(_valid)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.validRune(_invalid)));
    }
function exampleValidString():Void {
        var _valid = ("Hello, 世界" : stdgo.GoString);
        var _invalid = (((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(255 : stdgo.GoUInt8), (254 : stdgo.GoUInt8), (253 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.validString(_valid?.__copy__())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.validString(_invalid?.__copy__())));
    }
function exampleAppendRune():Void {
        var _buf1 = stdgo._internal.unicode.utf8.Utf8.appendRune((null : stdgo.Slice<stdgo.GoUInt8>), (65536 : stdgo.GoInt32));
        var _buf2 = stdgo._internal.unicode.utf8.Utf8.appendRune((("init" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (65536 : stdgo.GoInt32));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_buf1 : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_buf2 : stdgo.GoString)));
    }
function testConstants(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _t.errorf(("utf8.MaxRune is wrong: %x should be %x" : stdgo.GoString), stdgo.Go.toInterface((1114111 : stdgo.GoInt32)), stdgo.Go.toInterface((1114111 : stdgo.GoInt32)));
        };
        if (false) {
            _t.errorf(("utf8.RuneError is wrong: %x should be %x" : stdgo.GoString), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface((65533 : stdgo.GoInt32)));
        };
    }
function testFullRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _m in _utf8map) {
            var _b = (_m._str : stdgo.Slice<stdgo.GoByte>);
            if (!fullRune(_b)) {
                _t.errorf(("FullRune(%q) (%U) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_m._r));
            };
            var _s = (_m._str?.__copy__() : stdgo.GoString);
            if (!fullRuneInString(_s?.__copy__())) {
                _t.errorf(("FullRuneInString(%q) (%U) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_m._r));
            };
            var _b1 = (_b.__slice__((0 : stdgo.GoInt), ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (fullRune(_b1)) {
                _t.errorf(("FullRune(%q) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_b1));
            };
            var _s1 = ((_b1 : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (fullRuneInString(_s1?.__copy__())) {
                _t.errorf(("FullRune(%q) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_s1));
            };
        };
        for (__33 => _s in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str(192)?.__copy__(), stdgo.Go.str(193)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _b = (_s : stdgo.Slice<stdgo.GoByte>);
            if (!fullRune(_b)) {
                _t.errorf(("FullRune(%q) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
            if (!fullRuneInString(_s?.__copy__())) {
                _t.errorf(("FullRuneInString(%q) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
    }
function testEncodeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _m in _utf8map) {
            var _b = (_m._str : stdgo.Slice<stdgo.GoByte>);
            var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10, ...[for (i in 0 ... 10) (0 : stdgo.GoUInt8)]);
            var _n = (encodeRune((_buf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _m._r) : stdgo.GoInt);
            var _b1 = (_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            if (!stdgo._internal.bytes.Bytes.equal(_b, _b1)) {
                _t.errorf(("EncodeRune(%#04x) = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_b));
            };
        };
    }
function testAppendRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _m in _utf8map) {
            {
                var _buf = appendRune((null : stdgo.Slice<stdgo.GoUInt8>), _m._r);
                if ((_buf : stdgo.GoString) != (_m._str)) {
                    _t.errorf(("AppendRune(nil, %#04x) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_m._str));
                };
            };
            {
                var _buf = appendRune((("init" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), _m._r);
                if ((_buf : stdgo.GoString) != ((("init" : stdgo.GoString) + _m._str?.__copy__() : stdgo.GoString))) {
                    _t.errorf(("AppendRune(init, %#04x) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface((("init" : stdgo.GoString) + _m._str?.__copy__() : stdgo.GoString)));
                };
            };
        };
    }
function testDecodeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _m in _utf8map) {
            var _b = (_m._str : stdgo.Slice<stdgo.GoByte>);
            var __tmp__ = decodeRune(_b), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            if (((_r != _m._r) || (_size != (_b.length)) : Bool)) {
                _t.errorf(("DecodeRune(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface((_b.length)));
            };
            var _s = (_m._str?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = decodeRuneInString(_s?.__copy__());
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != _m._r) || (_size != (_b.length)) : Bool)) {
                _t.errorf(("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface((_b.length)));
            };
            {
                var __tmp__ = decodeRune((_b.__slice__((0 : stdgo.GoInt), _b.capacity) : stdgo.Slice<stdgo.GoUInt8>));
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != _m._r) || (_size != (_b.length)) : Bool)) {
                _t.errorf(("DecodeRune(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface((_b.length)));
            };
            _s = (_m._str + stdgo.Go.str(0)?.__copy__() : stdgo.GoString)?.__copy__();
            {
                var __tmp__ = decodeRuneInString(_s?.__copy__());
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != _m._r) || (_size != (_b.length)) : Bool)) {
                _t.errorf(("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_m._r), stdgo.Go.toInterface((_b.length)));
            };
            var _wantsize = (1 : stdgo.GoInt);
            if ((_wantsize >= (_b.length) : Bool)) {
                _wantsize = (0 : stdgo.GoInt);
            };
            {
                var __tmp__ = decodeRune((_b.__slice__((0 : stdgo.GoInt), ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != _wantsize) : Bool)) {
                _t.errorf(("DecodeRune(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__((0 : stdgo.GoInt), ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface(_wantsize));
            };
            _s = (_m._str.__slice__((0 : stdgo.GoInt), ((_m._str.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            {
                var __tmp__ = decodeRuneInString(_s?.__copy__());
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != _wantsize) : Bool)) {
                _t.errorf(("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface(_wantsize));
            };
            if ((_b.length) == ((1 : stdgo.GoInt))) {
                _b[(0 : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
            } else {
                _b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (127 : stdgo.GoUInt8);
            };
            {
                var __tmp__ = decodeRune(_b);
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != (1 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("DecodeRune(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface((1 : stdgo.GoInt)));
            };
            _s = (_b : stdgo.GoString)?.__copy__();
            {
                var __tmp__ = decodeRuneInString(_s?.__copy__());
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != (1 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("DecodeRuneInString(%q) = %#04x, %d want %#04x, %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface((1 : stdgo.GoInt)));
            };
        };
    }
function testDecodeSurrogateRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _m in _surrogateMap) {
            var _b = (_m._str : stdgo.Slice<stdgo.GoByte>);
            var __tmp__ = decodeRune(_b), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != (1 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("DecodeRune(%q) = %x, %d want %x, %d" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface((1 : stdgo.GoInt)));
            };
            var _s = (_m._str?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = decodeRuneInString(_s?.__copy__());
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != (1 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("DecodeRuneInString(%q) = %x, %d want %x, %d" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface((1 : stdgo.GoInt)));
            };
        };
    }
function testSequencing(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _ts in _testStrings) {
            for (__1 => _m in _utf8map) {
                for (__2 => _s in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[(_ts + _m._str?.__copy__() : stdgo.GoString)?.__copy__(), (_m._str + _ts?.__copy__() : stdgo.GoString)?.__copy__(), ((_ts + _m._str?.__copy__() : stdgo.GoString) + _ts?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                    _testSequence(_t, _s?.__copy__());
                };
            };
        };
    }
function _runtimeRuneCount(_s:stdgo.GoString):stdgo.GoInt {
        return ((_s : stdgo.Slice<stdgo.GoRune>).length);
    }
function testRuntimeConversion(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _ts in _testStrings) {
            var _count = (runeCountInString(_ts?.__copy__()) : stdgo.GoInt);
            {
                var _n = (_runtimeRuneCount(_ts?.__copy__()) : stdgo.GoInt);
                if (_n != (_count)) {
                    _t.errorf(("%q: len([]rune()) counted %d runes; got %d from RuneCountInString" : stdgo.GoString), stdgo.Go.toInterface(_ts), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_count));
                    break;
                };
            };
            var _runes = (_ts : stdgo.Slice<stdgo.GoRune>);
            {
                var _n = (_runes.length : stdgo.GoInt);
                if (_n != (_count)) {
                    _t.errorf(("%q: []rune() has length %d; got %d from RuneCountInString" : stdgo.GoString), stdgo.Go.toInterface(_ts), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_count));
                    break;
                };
            };
            var _i = (0 : stdgo.GoInt);
            for (__17 => _r in _ts) {
                if (_r != (_runes[(_i : stdgo.GoInt)])) {
                    _t.errorf(("%q[%d]: expected %c (%U); got %c (%U)" : stdgo.GoString), stdgo.Go.toInterface(_ts), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_runes[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_runes[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r));
                };
                _i++;
            };
        };
    }
function _runtimeDecodeRune(_s:stdgo.GoString):stdgo.GoRune {
        for (__0 => _r in _s) {
            return _r;
        };
        return (-1 : stdgo.GoInt32);
    }
function testDecodeInvalidSequence(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _s in _invalidSequenceTests) {
            var __tmp__ = decodeRune((_s : stdgo.Slice<stdgo.GoByte>)), _r1:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
            {
                var _want = (65533 : stdgo.GoInt32);
                if (_r1 != (_want)) {
                    _t.errorf(("DecodeRune(%#x) = %#04x, want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_want));
                    return;
                };
            };
            var __tmp__ = decodeRuneInString(_s?.__copy__()), _r2:stdgo.GoInt32 = __tmp__._0, __10:stdgo.GoInt = __tmp__._1;
            {
                var _want = (65533 : stdgo.GoInt32);
                if (_r2 != (_want)) {
                    _t.errorf(("DecodeRuneInString(%q) = %#04x, want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_want));
                    return;
                };
            };
            if (_r1 != (_r2)) {
                _t.errorf(("DecodeRune(%#x) = %#04x mismatch with DecodeRuneInString(%q) = %#04x" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r2));
                return;
            };
            var _r3 = (_runtimeDecodeRune(_s?.__copy__()) : stdgo.GoInt32);
            if (_r2 != (_r3)) {
                _t.errorf(("DecodeRuneInString(%q) = %#04x mismatch with runtime.decoderune(%q) = %#04x" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_r3));
                return;
            };
        };
    }
@:structInit class T__testSequence___localname___info_8684 {
    public var _index : stdgo.GoInt = 0;
    public var _r : stdgo.GoInt32 = 0;
    public function new(?_index:stdgo.GoInt, ?_r:stdgo.GoInt32) {
        if (_index != null) this._index = _index;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__testSequence___localname___info_8684(_index, _r);
    }
}
function _testSequence(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _s:stdgo.GoString):Void {
        {};
        var _index = (new stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.T__testSequence___localname___info_8684>((_s.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_s.length : stdgo.GoInt).toBasic() > 0 ? (_s.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.utf8_test.Utf8_test.T__testSequence___localname___info_8684)]) : stdgo.Slice<stdgo._internal.unicode.utf8_test.Utf8_test.T__testSequence___localname___info_8684>);
        var _b = (_s : stdgo.Slice<stdgo.GoByte>);
        var _si = (0 : stdgo.GoInt);
        var _j = (0 : stdgo.GoInt);
        for (_i => _r in _s) {
            if (_si != (_i)) {
                _t.errorf(("Sequence(%q) mismatched index %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_si), stdgo.Go.toInterface(_i));
                return;
            };
            _index[(_j : stdgo.GoInt)] = (new stdgo._internal.unicode.utf8_test.Utf8_test.T__testSequence___localname___info_8684(_i, _r) : stdgo._internal.unicode.utf8_test.Utf8_test.T__testSequence___localname___info_8684);
            _j++;
            var __tmp__ = decodeRune((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _r1:stdgo.GoInt32 = __tmp__._0, _size1:stdgo.GoInt = __tmp__._1;
            if (_r != (_r1)) {
                _t.errorf(("DecodeRune(%q) = %#04x, want %#04x" : stdgo.GoString), stdgo.Go.toInterface((_s.__slice__(_i) : stdgo.GoString)), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_r));
                return;
            };
            var __tmp__ = decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _r2:stdgo.GoInt32 = __tmp__._0, _size2:stdgo.GoInt = __tmp__._1;
            if (_r != (_r2)) {
                _t.errorf(("DecodeRuneInString(%q) = %#04x, want %#04x" : stdgo.GoString), stdgo.Go.toInterface((_s.__slice__(_i) : stdgo.GoString)), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_r));
                return;
            };
            if (_size1 != (_size2)) {
                _t.errorf(("DecodeRune/DecodeRuneInString(%q) size mismatch %d/%d" : stdgo.GoString), stdgo.Go.toInterface((_s.__slice__(_i) : stdgo.GoString)), stdgo.Go.toInterface(_size1), stdgo.Go.toInterface(_size2));
                return;
            };
            _si = (_si + (_size1) : stdgo.GoInt);
        };
        _j--;
        {
            _si = (_s.length);
            while ((_si > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = decodeLastRune((_b.__slice__((0 : stdgo.GoInt), _si) : stdgo.Slice<stdgo.GoUInt8>)), _r1:stdgo.GoInt32 = __tmp__._0, _size1:stdgo.GoInt = __tmp__._1;
                var __tmp__ = decodeLastRuneInString((_s.__slice__((0 : stdgo.GoInt), _si) : stdgo.GoString)?.__copy__()), _r2:stdgo.GoInt32 = __tmp__._0, _size2:stdgo.GoInt = __tmp__._1;
                if (_size1 != (_size2)) {
                    _t.errorf(("DecodeLastRune/DecodeLastRuneInString(%q, %d) size mismatch %d/%d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_si), stdgo.Go.toInterface(_size1), stdgo.Go.toInterface(_size2));
                    return;
                };
                if (_r1 != (_index[(_j : stdgo.GoInt)]._r)) {
                    _t.errorf(("DecodeLastRune(%q, %d) = %#04x, want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_si), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_index[(_j : stdgo.GoInt)]._r));
                    return;
                };
                if (_r2 != (_index[(_j : stdgo.GoInt)]._r)) {
                    _t.errorf(("DecodeLastRuneInString(%q, %d) = %#04x, want %#04x" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_si), stdgo.Go.toInterface(_r2), stdgo.Go.toInterface(_index[(_j : stdgo.GoInt)]._r));
                    return;
                };
                _si = (_si - (_size1) : stdgo.GoInt);
                if (_si != (_index[(_j : stdgo.GoInt)]._index)) {
                    _t.errorf(("DecodeLastRune(%q) index mismatch at %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_si), stdgo.Go.toInterface(_index[(_j : stdgo.GoInt)]._index));
                    return;
                };
                _j--;
            };
        };
        if (_si != ((0 : stdgo.GoInt))) {
            _t.errorf(("DecodeLastRune(%q) finished at %d, not 0" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_si));
        };
    }
function testNegativeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _errorbuf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _errorbuf = (_errorbuf.__slice__((0 : stdgo.GoInt), encodeRune(_errorbuf, (65533 : stdgo.GoInt32))) : stdgo.Slice<stdgo.GoUInt8>);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__slice__((0 : stdgo.GoInt), encodeRune(_buf, (-1 : stdgo.GoInt32))) : stdgo.Slice<stdgo.GoUInt8>);
        if (!stdgo._internal.bytes.Bytes.equal(_buf, _errorbuf)) {
            _t.errorf(("incorrect encoding [% x] for -1; expected [% x]" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_errorbuf));
        };
    }
function testRuneCount(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _runecounttests) {
            {
                var _out = (runeCountInString(_tt._in?.__copy__()) : stdgo.GoInt);
                if (_out != (_tt._out)) {
                    _t.errorf(("RuneCountInString(%q) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
            {
                var _out = (runeCount((_tt._in : stdgo.Slice<stdgo.GoByte>)) : stdgo.GoInt);
                if (_out != (_tt._out)) {
                    _t.errorf(("RuneCount(%q) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
function testRuneLen(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _runelentests) {
            {
                var _size = (runeLen(_tt._r) : stdgo.GoInt);
                if (_size != (_tt._size)) {
                    _t.errorf(("RuneLen(%#U) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_tt._size));
                };
            };
        };
    }
function testValid(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _validTests) {
            if (valid((_tt._in : stdgo.Slice<stdgo.GoByte>)) != (_tt._out)) {
                _t.errorf(("Valid(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(!_tt._out), stdgo.Go.toInterface(_tt._out));
            };
            if (validString(_tt._in?.__copy__()) != (_tt._out)) {
                _t.errorf(("ValidString(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(!_tt._out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
function testValidRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _validrunetests) {
            {
                var _ok = (validRune(_tt._r) : Bool);
                if (_ok != (_tt._ok)) {
                    _t.errorf(("ValidRune(%#U) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_tt._r), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_tt._ok));
                };
            };
        };
    }
function benchmarkRuneCountTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s = (("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                runeCount(_s);
            });
        };
    }
function benchmarkRuneCountTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s = (("日本語日本語日本語日" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                runeCount(_s);
            });
        };
    }
function benchmarkRuneCountInStringTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                runeCountInString(("0123456789" : stdgo.GoString));
            });
        };
    }
function benchmarkRuneCountInStringTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                runeCountInString(("日本語日本語日本語日" : stdgo.GoString));
            });
        };
    }
function benchmarkValidTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s = (("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                valid(_s);
            });
        };
    }
function benchmarkValid100KASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s = (_ascii100000 : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                valid(_s);
            });
        };
    }
function benchmarkValidTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s = (("日本語日本語日本語日" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                valid(_s);
            });
        };
    }
function benchmarkValidLongMostlyASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _longMostlyASCII = (_longStringMostlyASCII : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                valid(_longMostlyASCII);
            });
        };
    }
function benchmarkValidLongJapanese(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _longJapanese = (_longStringJapanese : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                valid(_longJapanese);
            });
        };
    }
function benchmarkValidStringTenASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                validString(("0123456789" : stdgo.GoString));
            });
        };
    }
function benchmarkValidString100KASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                validString(_ascii100000?.__copy__());
            });
        };
    }
function benchmarkValidStringTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                validString(("日本語日本語日本語日" : stdgo.GoString));
            });
        };
    }
function benchmarkValidStringLongMostlyASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                validString(_longStringMostlyASCII?.__copy__());
            });
        };
    }
function benchmarkValidStringLongJapanese(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                validString(_longStringJapanese?.__copy__());
            });
        };
    }
function benchmarkEncodeASCIIRune(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                encodeRune(_buf, (97 : stdgo.GoInt32));
            });
        };
    }
function benchmarkEncodeJapaneseRune(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                encodeRune(_buf, (26412 : stdgo.GoInt32));
            });
        };
    }
function benchmarkAppendASCIIRune(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                appendRune((_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (97 : stdgo.GoInt32));
            });
        };
    }
function benchmarkAppendJapaneseRune(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                appendRune((_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (26412 : stdgo.GoInt32));
            });
        };
    }
function benchmarkDecodeASCIIRune(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _a = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                decodeRune(_a);
            });
        };
    }
function benchmarkDecodeJapaneseRune(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _nihon = (("本" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                decodeRune(_nihon);
            });
        };
    }
function benchmarkFullRune(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _benchmarks = (new stdgo.Slice<T__struct_0>(3, 3, ...[({ _name : ("ASCII" : stdgo.GoString), _data : (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>) } : T__struct_0), ({ _name : ("Incomplete" : stdgo.GoString), _data : (stdgo.Go.str(240, 144, 128) : stdgo.Slice<stdgo.GoByte>) } : T__struct_0), ({ _name : ("Japanese" : stdgo.GoString), _data : (("本" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>) } : T__struct_0)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _data : (null : stdgo.Slice<stdgo.GoUInt8>) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
        for (__0 => _bm in _benchmarks) {
            _b.run(_bm._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _boolSink = fullRune(_bm._data);
                    });
                };
            });
        };
    }
@:keep var _ = {
        try {
            if (false) {
                throw stdgo.Go.toInterface(("utf8.MaxRune is wrong" : stdgo.GoString));
            };
            if (false) {
                throw stdgo.Go.toInterface(("utf8.RuneError is wrong" : stdgo.GoString));
            };
            {};
            var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_b.len() < (100000 : stdgo.GoInt) : Bool), _i++, {
                    if ((_i % (100 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        _b.writeString(("日本語日本語日本語日" : stdgo.GoString));
                    } else {
                        _b.writeString(("0123456789" : stdgo.GoString));
                    };
                });
            };
            _longStringMostlyASCII = (_b.string() : stdgo.GoString)?.__copy__();
            _longStringJapanese = stdgo._internal.strings.Strings.repeat(("日本語日本語日本語日" : stdgo.GoString), (3333 : stdgo.GoInt))?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
