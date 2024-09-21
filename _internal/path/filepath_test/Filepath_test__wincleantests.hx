package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
var _wincleantests : stdgo.Slice<_internal.path.filepath_test.Filepath_test_PathTest.PathTest> = (new stdgo.Slice<_internal.path.filepath_test.Filepath_test_PathTest.PathTest>(31, 31, ...[
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("c:" : stdgo.GoString), ("c:." : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("c:\\" : stdgo.GoString), ("c:\\" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("c:\\abc" : stdgo.GoString), ("c:\\abc" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("c:abc\\..\\..\\.\\.\\..\\def" : stdgo.GoString), ("c:..\\..\\def" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("c:\\abc\\def\\..\\.." : stdgo.GoString), ("c:\\" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("c:\\..\\abc" : stdgo.GoString), ("c:\\abc" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("c:..\\abc" : stdgo.GoString), ("c:..\\abc" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("c:\\b:\\..\\..\\..\\d" : stdgo.GoString), ("c:\\d" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("\\" : stdgo.GoString), ("\\" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("/" : stdgo.GoString), ("\\" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("\\\\i\\..\\c$" : stdgo.GoString), ("\\\\i\\..\\c$" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("\\\\i\\..\\i\\c$" : stdgo.GoString), ("\\\\i\\..\\i\\c$" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("\\\\i\\..\\I\\c$" : stdgo.GoString), ("\\\\i\\..\\I\\c$" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("\\\\host\\share\\foo\\..\\bar" : stdgo.GoString), ("\\\\host\\share\\bar" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("//host/share/foo/../baz" : stdgo.GoString), ("\\\\host\\share\\baz" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("\\\\host\\share\\foo\\..\\..\\..\\..\\bar" : stdgo.GoString), ("\\\\host\\share\\bar" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("\\\\.\\C:\\a\\..\\..\\..\\..\\bar" : stdgo.GoString), ("\\\\.\\C:\\bar" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("\\\\.\\C:\\\\\\\\a" : stdgo.GoString), ("\\\\.\\C:\\a" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("\\\\a\\b\\..\\c" : stdgo.GoString), ("\\\\a\\b\\c" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("\\\\a\\b" : stdgo.GoString), ("\\\\a\\b" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest((".\\c:" : stdgo.GoString), (".\\c:" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest((".\\c:\\foo" : stdgo.GoString), (".\\c:\\foo" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest((".\\c:foo" : stdgo.GoString), (".\\c:foo" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("//abc" : stdgo.GoString), ("\\\\abc" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("///abc" : stdgo.GoString), ("\\\\\\abc" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("//abc//" : stdgo.GoString), ("\\\\abc\\\\" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("a/../c:" : stdgo.GoString), (".\\c:" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("a\\..\\c:" : stdgo.GoString), (".\\c:" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("a/../c:/a" : stdgo.GoString), (".\\c:\\a" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("a/../../c:" : stdgo.GoString), ("..\\c:" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest),
(new _internal.path.filepath_test.Filepath_test_PathTest.PathTest(("foo:bar" : stdgo.GoString), ("foo:bar" : stdgo.GoString)) : _internal.path.filepath_test.Filepath_test_PathTest.PathTest)].concat([for (i in 31 ... (31 > 31 ? 31 : 31 : stdgo.GoInt).toBasic()) ({} : _internal.path.filepath_test.Filepath_test_PathTest.PathTest)])) : stdgo.Slice<_internal.path.filepath_test.Filepath_test_PathTest.PathTest>);
