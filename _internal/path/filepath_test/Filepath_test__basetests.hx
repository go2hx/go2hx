package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
var _basetests : stdgo.Slice<_internal.path.filepath_test.Filepath_test_PathTest.PathTest> = (new stdgo.Slice<_internal.path.filepath_test.Filepath_test_PathTest.PathTest>(11, 11, ...[
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(stdgo.Go.str()?.__copy__(), ("." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("." : stdgo.GoString), ("." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("/." : stdgo.GoString), ("." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("/" : stdgo.GoString), ("/" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("////" : stdgo.GoString), ("/" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("x/" : stdgo.GoString), ("x" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("abc/def" : stdgo.GoString), ("def" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("a/b/.x" : stdgo.GoString), (".x" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("a/b/c." : stdgo.GoString), ("c." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("a/b/c.x" : stdgo.GoString), ("c.x" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : _internal.path.filepath_test.Filepath_test_PathTest.PathTest)])) : stdgo.Slice<_internal.path.filepath_test.Filepath_test_PathTest.PathTest>);
