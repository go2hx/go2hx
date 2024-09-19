package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
var _validTests : stdgo.Slice<_internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest> = (new stdgo.Slice<_internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest>(18, 18, ...[
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest(stdgo.Go.str()?.__copy__(), true) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest(("a" : stdgo.GoString), true) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest(("abc" : stdgo.GoString), true) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest(("Ж" : stdgo.GoString), true) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest(("ЖЖ" : stdgo.GoString), true) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest(("брэд-ЛГТМ" : stdgo.GoString), true) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest(("☺☻☹" : stdgo.GoString), true) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest(stdgo.Go.str("aa", 226)?.__copy__(), false) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest(((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(66 : stdgo.GoUInt8), (250 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), false) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest(((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(66 : stdgo.GoUInt8), (250 : stdgo.GoUInt8), (67 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), false) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest(("a�b" : stdgo.GoString), true) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest(("\u{0010ffff}" : stdgo.GoString), true) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest((stdgo.Go.str(244, 144, 128, 128) : stdgo.GoString)?.__copy__(), false) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest((stdgo.Go.str(247, 191, 191, 191) : stdgo.GoString)?.__copy__(), false) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest((stdgo.Go.str(251, 191, 191, 191, 191) : stdgo.GoString)?.__copy__(), false) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest((stdgo.Go.str(192, 128) : stdgo.GoString)?.__copy__(), false) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest((stdgo.Go.str(237, 160, 128) : stdgo.GoString)?.__copy__(), false) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest),
(new _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest((stdgo.Go.str(237, 191, 191) : stdgo.GoString)?.__copy__(), false) : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({} : _internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest)])) : stdgo.Slice<_internal.unicode.utf8_test.Utf8_test_ValidTest.ValidTest>);
