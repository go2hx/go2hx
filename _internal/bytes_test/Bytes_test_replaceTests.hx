package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
var replaceTests : stdgo.Slice<_internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest> = (new stdgo.Slice<_internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest>(19, 19, ...[
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("hello" : stdgo.GoString), ("l" : stdgo.GoString), ("L" : stdgo.GoString), (0 : stdgo.GoInt), ("hello" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("hello" : stdgo.GoString), ("l" : stdgo.GoString), ("L" : stdgo.GoString), (-1 : stdgo.GoInt), ("heLLo" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("hello" : stdgo.GoString), ("x" : stdgo.GoString), ("X" : stdgo.GoString), (-1 : stdgo.GoInt), ("hello" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString), ("X" : stdgo.GoString), (-1 : stdgo.GoInt), stdgo.Go.str()?.__copy__()) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("radar" : stdgo.GoString), ("r" : stdgo.GoString), ("<r>" : stdgo.GoString), (-1 : stdgo.GoInt), ("<r>ada<r>" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (-1 : stdgo.GoInt), ("<>" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("<>" : stdgo.GoString), (-1 : stdgo.GoInt), ("b<>n<>n<>" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("<>" : stdgo.GoString), (1 : stdgo.GoInt), ("b<>nana" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("<>" : stdgo.GoString), (1000 : stdgo.GoInt), ("b<>n<>n<>" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("banana" : stdgo.GoString), ("an" : stdgo.GoString), ("<>" : stdgo.GoString), (-1 : stdgo.GoInt), ("b<><>a" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("banana" : stdgo.GoString), ("ana" : stdgo.GoString), ("<>" : stdgo.GoString), (-1 : stdgo.GoInt), ("b<>na" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (-1 : stdgo.GoInt), ("<>b<>a<>n<>a<>n<>a<>" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (10 : stdgo.GoInt), ("<>b<>a<>n<>a<>n<>a<>" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (6 : stdgo.GoInt), ("<>b<>a<>n<>a<>n<>a" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (5 : stdgo.GoInt), ("<>b<>a<>n<>a<>na" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("banana" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (1 : stdgo.GoInt), ("<>banana" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("a" : stdgo.GoString), (-1 : stdgo.GoInt), ("banana" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("a" : stdgo.GoString), (1 : stdgo.GoInt), ("banana" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest),
(new _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest(("☺☻☹" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("<>" : stdgo.GoString), (-1 : stdgo.GoInt), ("<>☺<>☻<>☹<>" : stdgo.GoString)) : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest)].concat([for (i in 19 ... (19 > 19 ? 19 : 19 : stdgo.GoInt).toBasic()) ({} : _internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_ReplaceTest.ReplaceTest>);