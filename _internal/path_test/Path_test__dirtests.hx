package _internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
var _dirtests : stdgo.Slice<_internal.path_test.Path_test_PathTest.PathTest> = (new stdgo.Slice<_internal.path_test.Path_test_PathTest.PathTest>(13, 13, ...[
(new _internal.path_test.Path_test_PathTest.PathTest(stdgo.Go.str()?.__copy__(), ("." : stdgo.GoString)) : _internal.path_test.Path_test_PathTest.PathTest),
(new _internal.path_test.Path_test_PathTest.PathTest(("." : stdgo.GoString), ("." : stdgo.GoString)) : _internal.path_test.Path_test_PathTest.PathTest),
(new _internal.path_test.Path_test_PathTest.PathTest(("/." : stdgo.GoString), ("/" : stdgo.GoString)) : _internal.path_test.Path_test_PathTest.PathTest),
(new _internal.path_test.Path_test_PathTest.PathTest(("/" : stdgo.GoString), ("/" : stdgo.GoString)) : _internal.path_test.Path_test_PathTest.PathTest),
(new _internal.path_test.Path_test_PathTest.PathTest(("////" : stdgo.GoString), ("/" : stdgo.GoString)) : _internal.path_test.Path_test_PathTest.PathTest),
(new _internal.path_test.Path_test_PathTest.PathTest(("/foo" : stdgo.GoString), ("/" : stdgo.GoString)) : _internal.path_test.Path_test_PathTest.PathTest),
(new _internal.path_test.Path_test_PathTest.PathTest(("x/" : stdgo.GoString), ("x" : stdgo.GoString)) : _internal.path_test.Path_test_PathTest.PathTest),
(new _internal.path_test.Path_test_PathTest.PathTest(("abc" : stdgo.GoString), ("." : stdgo.GoString)) : _internal.path_test.Path_test_PathTest.PathTest),
(new _internal.path_test.Path_test_PathTest.PathTest(("abc/def" : stdgo.GoString), ("abc" : stdgo.GoString)) : _internal.path_test.Path_test_PathTest.PathTest),
(new _internal.path_test.Path_test_PathTest.PathTest(("abc////def" : stdgo.GoString), ("abc" : stdgo.GoString)) : _internal.path_test.Path_test_PathTest.PathTest),
(new _internal.path_test.Path_test_PathTest.PathTest(("a/b/.x" : stdgo.GoString), ("a/b" : stdgo.GoString)) : _internal.path_test.Path_test_PathTest.PathTest),
(new _internal.path_test.Path_test_PathTest.PathTest(("a/b/c." : stdgo.GoString), ("a/b" : stdgo.GoString)) : _internal.path_test.Path_test_PathTest.PathTest),
(new _internal.path_test.Path_test_PathTest.PathTest(("a/b/c.x" : stdgo.GoString), ("a/b" : stdgo.GoString)) : _internal.path_test.Path_test_PathTest.PathTest)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({} : _internal.path_test.Path_test_PathTest.PathTest)])) : stdgo.Slice<_internal.path_test.Path_test_PathTest.PathTest>);
