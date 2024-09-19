package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
var _lastIndexAnyTests : stdgo.Slice<_internal.strings_test.Strings_test_IndexTest.IndexTest> = (new stdgo.Slice<_internal.strings_test.Strings_test_IndexTest.IndexTest>(17, 17, ...[
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), (-1 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString), (-1 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(("a" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (-1 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(("a" : stdgo.GoString), ("a" : stdgo.GoString), (0 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(stdgo.Go.str(128)?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (0 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(("aaa" : stdgo.GoString), ("a" : stdgo.GoString), (2 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(("abc" : stdgo.GoString), ("xyz" : stdgo.GoString), (-1 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(("abc" : stdgo.GoString), ("ab" : stdgo.GoString), (1 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(("ab☺c" : stdgo.GoString), ("x☺yz" : stdgo.GoString), (2 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(("a☺b☻c☹d" : stdgo.GoString), ("cx" : stdgo.GoString), (("a☺b☻" : stdgo.GoString).length)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(("a☺b☻c☹d" : stdgo.GoString), ("uvw☻xyz" : stdgo.GoString), (("a☺b" : stdgo.GoString).length)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(("a.RegExp*" : stdgo.GoString), (".(|)*+?^$[]" : stdgo.GoString), (8 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(((_internal.strings_test.Strings_test__dots._dots + _internal.strings_test.Strings_test__dots._dots?.__copy__() : stdgo.GoString) + _internal.strings_test.Strings_test__dots._dots?.__copy__() : stdgo.GoString)?.__copy__(), (" " : stdgo.GoString), (-1 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(("012abcba210" : stdgo.GoString), stdgo.Go.str(255, "b")?.__copy__(), (6 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(stdgo.Go.str("012", 128, "bcb", 128, "210")?.__copy__(), stdgo.Go.str(255, "b")?.__copy__(), (7 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest),
(new _internal.strings_test.Strings_test_IndexTest.IndexTest(("0123456πabc" : stdgo.GoString), stdgo.Go.str(207, "b", 128)?.__copy__(), (10 : stdgo.GoInt)) : _internal.strings_test.Strings_test_IndexTest.IndexTest)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({} : _internal.strings_test.Strings_test_IndexTest.IndexTest)])) : stdgo.Slice<_internal.strings_test.Strings_test_IndexTest.IndexTest>);
