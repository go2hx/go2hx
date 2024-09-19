package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
var _winisabstests : stdgo.Slice<_internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest> = (new stdgo.Slice<_internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest>(14, 14, ...[
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("C:\\" : stdgo.GoString), true) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest),
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("c\\" : stdgo.GoString), false) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest),
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("c::" : stdgo.GoString), false) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest),
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("c:" : stdgo.GoString), false) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest),
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("/" : stdgo.GoString), false) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest),
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("\\" : stdgo.GoString), false) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest),
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("\\Windows" : stdgo.GoString), false) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest),
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("c:a\\b" : stdgo.GoString), false) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest),
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("c:\\a\\b" : stdgo.GoString), true) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest),
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("c:/a/b" : stdgo.GoString), true) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest),
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("\\\\host\\share" : stdgo.GoString), true) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest),
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("\\\\host\\share\\" : stdgo.GoString), true) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest),
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("\\\\host\\share\\foo" : stdgo.GoString), true) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest),
(new _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest(("//host/share/foo/bar" : stdgo.GoString), true) : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({} : _internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest)])) : stdgo.Slice<_internal.path.filepath_test.Filepath_test_IsAbsTest.IsAbsTest>);
