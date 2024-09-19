package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
var _trimSpaceTests : stdgo.Slice<_internal.bytes_test.Bytes_test_StringTest.StringTest> = (new stdgo.Slice<_internal.bytes_test.Bytes_test_StringTest.StringTest>(20, 20, ...[
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(stdgo.Go.str()?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(("  a" : stdgo.GoString), (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(("b  " : stdgo.GoString), (("b" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(("abc" : stdgo.GoString), (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(("\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000abc\t\x0B\r\x0C\n\u0085\u00a0\u2000\u3000" : stdgo.GoString), (("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest((" " : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(("\u3000 " : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest((" \u3000" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest((" \t\r\n \t\t\r\r\n\n " : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest((" \t\r\n x\t\t\r\r\n\n " : stdgo.GoString), (("x" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest((" \u2000\t\r\n x\t\t\r\r\ny\n \u3000" : stdgo.GoString), (("x\t\t\r\r\ny" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(("1 \t\r\n2" : stdgo.GoString), (("1 \t\r\n2" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(stdgo.Go.str(" x", 128)?.__copy__(), (stdgo.Go.str("x", 128) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(stdgo.Go.str(" x", 192)?.__copy__(), (stdgo.Go.str("x", 192) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(stdgo.Go.str("x ", 192, 192, " ")?.__copy__(), (stdgo.Go.str("x ", 192, 192) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(stdgo.Go.str("x ", 192)?.__copy__(), (stdgo.Go.str("x ", 192) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(stdgo.Go.str("x ", 192, " ")?.__copy__(), (stdgo.Go.str("x ", 192) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(stdgo.Go.str("x ", 192, 192, " ")?.__copy__(), (stdgo.Go.str("x ", 192, 192) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(stdgo.Go.str("x ☺", 192, 192, " ")?.__copy__(), (stdgo.Go.str("x ☺", 192, 192) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest),
(new _internal.bytes_test.Bytes_test_StringTest.StringTest(("x ☺ " : stdgo.GoString), (("x ☺" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : _internal.bytes_test.Bytes_test_StringTest.StringTest)].concat([for (i in 20 ... (20 > 20 ? 20 : 20 : stdgo.GoInt).toBasic()) ({} : _internal.bytes_test.Bytes_test_StringTest.StringTest)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_StringTest.StringTest>);
