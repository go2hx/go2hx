package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
var _trimTests : stdgo.Slice<_internal.bytes_test.Bytes_test_TrimTest.TrimTest> = (new stdgo.Slice<_internal.bytes_test.Bytes_test_TrimTest.TrimTest>(29, 29, ...[
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("Trim" : stdgo.GoString), ("abba" : stdgo.GoString), ("a" : stdgo.GoString), ("bb" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("Trim" : stdgo.GoString), ("abba" : stdgo.GoString), ("ab" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimLeft" : stdgo.GoString), ("abba" : stdgo.GoString), ("ab" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimRight" : stdgo.GoString), ("abba" : stdgo.GoString), ("ab" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimLeft" : stdgo.GoString), ("abba" : stdgo.GoString), ("a" : stdgo.GoString), ("bba" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimLeft" : stdgo.GoString), ("abba" : stdgo.GoString), ("b" : stdgo.GoString), ("abba" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimRight" : stdgo.GoString), ("abba" : stdgo.GoString), ("a" : stdgo.GoString), ("abb" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimRight" : stdgo.GoString), ("abba" : stdgo.GoString), ("b" : stdgo.GoString), ("abba" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("Trim" : stdgo.GoString), ("<tag>" : stdgo.GoString), ("<>" : stdgo.GoString), ("tag" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("Trim" : stdgo.GoString), ("* listitem" : stdgo.GoString), (" *" : stdgo.GoString), ("listitem" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("Trim" : stdgo.GoString), ("\"quote\"" : stdgo.GoString), ("\"" : stdgo.GoString), ("quote" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("Trim" : stdgo.GoString), ("ⱯⱯɐɐⱯⱯ" : stdgo.GoString), ("Ɐ" : stdgo.GoString), ("ɐɐ" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("Trim" : stdgo.GoString), stdgo.Go.str(128, "test", 255)?.__copy__(), stdgo.Go.str(255)?.__copy__(), ("test" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("Trim" : stdgo.GoString), (" Ġ " : stdgo.GoString), (" " : stdgo.GoString), ("Ġ" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("Trim" : stdgo.GoString), (" Ġİ0" : stdgo.GoString), ("0 " : stdgo.GoString), ("Ġİ" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("Trim" : stdgo.GoString), ("abba" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("abba" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("Trim" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("123" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("Trim" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimLeft" : stdgo.GoString), ("abba" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("abba" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimLeft" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("123" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimLeft" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimRight" : stdgo.GoString), ("abba" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("abba" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimRight" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("123" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimRight" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimRight" : stdgo.GoString), stdgo.Go.str("☺", 192)?.__copy__(), ("☺" : stdgo.GoString), stdgo.Go.str("☺", 192)?.__copy__()) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimPrefix" : stdgo.GoString), ("aabb" : stdgo.GoString), ("a" : stdgo.GoString), ("abb" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimPrefix" : stdgo.GoString), ("aabb" : stdgo.GoString), ("b" : stdgo.GoString), ("aabb" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimSuffix" : stdgo.GoString), ("aabb" : stdgo.GoString), ("a" : stdgo.GoString), ("aabb" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest),
(new _internal.bytes_test.Bytes_test_TrimTest.TrimTest(("TrimSuffix" : stdgo.GoString), ("aabb" : stdgo.GoString), ("b" : stdgo.GoString), ("aab" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_TrimTest.TrimTest)].concat([for (i in 29 ... (29 > 29 ? 29 : 29 : stdgo.GoInt).toBasic()) ({} : _internal.bytes_test.Bytes_test_TrimTest.TrimTest)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_TrimTest.TrimTest>);
