package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
var _islocaltests : stdgo.Slice<_internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest> = (new stdgo.Slice<_internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest>(13, 13, ...[
(new _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest(stdgo.Go.str()?.__copy__(), false) : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest),
(new _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest(("." : stdgo.GoString), true) : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest),
(new _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest((".." : stdgo.GoString), false) : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest),
(new _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest(("../a" : stdgo.GoString), false) : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest),
(new _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest(("/" : stdgo.GoString), false) : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest),
(new _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest(("/a" : stdgo.GoString), false) : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest),
(new _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest(("/a/../.." : stdgo.GoString), false) : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest),
(new _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest(("a" : stdgo.GoString), true) : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest),
(new _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest(("a/../a" : stdgo.GoString), true) : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest),
(new _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest(("a/" : stdgo.GoString), true) : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest),
(new _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest(("a/." : stdgo.GoString), true) : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest),
(new _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest(("a/./b/./c" : stdgo.GoString), true) : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest),
(new _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest(("a/../b:/../../c" : stdgo.GoString), false) : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({} : _internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest)])) : stdgo.Slice<_internal.path.filepath_test.Filepath_test_IsLocalTest.IsLocalTest>);
