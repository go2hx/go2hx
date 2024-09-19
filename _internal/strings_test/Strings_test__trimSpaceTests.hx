package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
var _trimSpaceTests : stdgo.Slice<_internal.strings_test.Strings_test_StringTest.StringTest> = (new stdgo.Slice<_internal.strings_test.Strings_test_StringTest.StringTest>(16, 16, ...[
(new _internal.strings_test.Strings_test_StringTest.StringTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest(("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000abc\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString), ("abc" : stdgo.GoString)) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest((" " : stdgo.GoString), stdgo.Go.str()?.__copy__()) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest((" \t\r\n \t\t\r\r\n\n " : stdgo.GoString), stdgo.Go.str()?.__copy__()) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest((" \t\r\n x\t\t\r\r\n\n " : stdgo.GoString), ("x" : stdgo.GoString)) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest((" \u2000\t\r\n x\t\t\r\r\ny\n \u3000" : stdgo.GoString), ("x\t\t\r\r\ny" : stdgo.GoString)) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest(("1 \t\r\n2" : stdgo.GoString), ("1 \t\r\n2" : stdgo.GoString)) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest(stdgo.Go.str(" x", 128)?.__copy__(), stdgo.Go.str("x", 128)?.__copy__()) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest(stdgo.Go.str(" x", 192)?.__copy__(), stdgo.Go.str("x", 192)?.__copy__()) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest(stdgo.Go.str("x ", 192, 192, " ")?.__copy__(), stdgo.Go.str("x ", 192, 192)?.__copy__()) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest(stdgo.Go.str("x ", 192)?.__copy__(), stdgo.Go.str("x ", 192)?.__copy__()) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest(stdgo.Go.str("x ", 192, " ")?.__copy__(), stdgo.Go.str("x ", 192)?.__copy__()) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest(stdgo.Go.str("x ", 192, 192, " ")?.__copy__(), stdgo.Go.str("x ", 192, 192)?.__copy__()) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest(stdgo.Go.str("x ☺", 192, 192, " ")?.__copy__(), stdgo.Go.str("x ☺", 192, 192)?.__copy__()) : _internal.strings_test.Strings_test_StringTest.StringTest),
(new _internal.strings_test.Strings_test_StringTest.StringTest(("x ☺ " : stdgo.GoString), ("x ☺" : stdgo.GoString)) : _internal.strings_test.Strings_test_StringTest.StringTest)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({} : _internal.strings_test.Strings_test_StringTest.StringTest)])) : stdgo.Slice<_internal.strings_test.Strings_test_StringTest.StringTest>);
