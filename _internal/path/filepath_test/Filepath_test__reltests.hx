package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
var _reltests : stdgo.Slice<_internal.path.filepath_test.Filepath_test_RelTests.RelTests> = (new stdgo.Slice<_internal.path.filepath_test.Filepath_test_RelTests.RelTests>(39, 39, ...[
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a/b" : stdgo.GoString), ("a/b" : stdgo.GoString), ("." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a/b/." : stdgo.GoString), ("a/b" : stdgo.GoString), ("." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a/b" : stdgo.GoString), ("a/b/." : stdgo.GoString), ("." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("./a/b" : stdgo.GoString), ("a/b" : stdgo.GoString), ("." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a/b" : stdgo.GoString), ("./a/b" : stdgo.GoString), ("." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("ab/cd" : stdgo.GoString), ("ab/cde" : stdgo.GoString), ("../cde" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("ab/cd" : stdgo.GoString), ("ab/c" : stdgo.GoString), ("../c" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a/b" : stdgo.GoString), ("a/b/c/d" : stdgo.GoString), ("c/d" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a/b" : stdgo.GoString), ("a/b/../c" : stdgo.GoString), ("../c" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a/b/../c" : stdgo.GoString), ("a/b" : stdgo.GoString), ("../b" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a/b/c" : stdgo.GoString), ("a/c/d" : stdgo.GoString), ("../../c/d" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a/b" : stdgo.GoString), ("c/d" : stdgo.GoString), ("../../c/d" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a/b/c/d" : stdgo.GoString), ("a/b" : stdgo.GoString), ("../.." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a/b/c/d" : stdgo.GoString), ("a/b/" : stdgo.GoString), ("../.." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a/b/c/d/" : stdgo.GoString), ("a/b" : stdgo.GoString), ("../.." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a/b/c/d/" : stdgo.GoString), ("a/b/" : stdgo.GoString), ("../.." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("../../a/b" : stdgo.GoString), ("../../a/b/c/d" : stdgo.GoString), ("c/d" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/a/b" : stdgo.GoString), ("/a/b" : stdgo.GoString), ("." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/a/b/." : stdgo.GoString), ("/a/b" : stdgo.GoString), ("." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/a/b" : stdgo.GoString), ("/a/b/." : stdgo.GoString), ("." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/ab/cd" : stdgo.GoString), ("/ab/cde" : stdgo.GoString), ("../cde" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/ab/cd" : stdgo.GoString), ("/ab/c" : stdgo.GoString), ("../c" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/a/b" : stdgo.GoString), ("/a/b/c/d" : stdgo.GoString), ("c/d" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/a/b" : stdgo.GoString), ("/a/b/../c" : stdgo.GoString), ("../c" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/a/b/../c" : stdgo.GoString), ("/a/b" : stdgo.GoString), ("../b" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/a/b/c" : stdgo.GoString), ("/a/c/d" : stdgo.GoString), ("../../c/d" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/a/b" : stdgo.GoString), ("/c/d" : stdgo.GoString), ("../../c/d" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/a/b/c/d" : stdgo.GoString), ("/a/b" : stdgo.GoString), ("../.." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/a/b/c/d" : stdgo.GoString), ("/a/b/" : stdgo.GoString), ("../.." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/a/b/c/d/" : stdgo.GoString), ("/a/b" : stdgo.GoString), ("../.." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/a/b/c/d/" : stdgo.GoString), ("/a/b/" : stdgo.GoString), ("../.." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/../../a/b" : stdgo.GoString), ("/../../a/b/c/d" : stdgo.GoString), ("c/d" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("." : stdgo.GoString), ("a/b" : stdgo.GoString), ("a/b" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("." : stdgo.GoString), (".." : stdgo.GoString), (".." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests((".." : stdgo.GoString), ("." : stdgo.GoString), ("err" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests((".." : stdgo.GoString), ("a" : stdgo.GoString), ("err" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("../.." : stdgo.GoString), (".." : stdgo.GoString), ("err" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("a" : stdgo.GoString), ("/a" : stdgo.GoString), ("err" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests),
(new _internal.path.filepath_test.Filepath_test_RelTests.RelTests(("/a" : stdgo.GoString), ("a" : stdgo.GoString), ("err" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_RelTests.RelTests)].concat([for (i in 39 ... (39 > 39 ? 39 : 39 : stdgo.GoInt).toBasic()) ({} : _internal.path.filepath_test.Filepath_test_RelTests.RelTests)])) : stdgo.Slice<_internal.path.filepath_test.Filepath_test_RelTests.RelTests>);