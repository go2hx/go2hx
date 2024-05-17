package stdgo._internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.path.filepath.Filepath;
final _sep : stdgo.GoInt32 = (47 : stdgo.GoInt32);
final _lsep : stdgo.GoInt32 = (58 : stdgo.GoInt32);
var _matchTests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.MatchTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.MatchTest>(56, 56, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("*" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("*c" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a*" : stdgo.GoString), ("a" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a*" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a*" : stdgo.GoString), ("ab/c" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a*/b" : stdgo.GoString), ("abc/b" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a*/b" : stdgo.GoString), ("a/c/b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString), ("axbxcxdxe/f" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString), ("axbxcxdxexxx/f" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString), ("axbxcxdxe/xxx/f" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString), ("axbxcxdxexxx/fff" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a*b?c*x" : stdgo.GoString), ("abxbbxdbxebxczzx" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a*b?c*x" : stdgo.GoString), ("abxbbxdbxebxczzy" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("ab[c]" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("ab[b-d]" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("ab[e-g]" : stdgo.GoString), ("abc" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("ab[^c]" : stdgo.GoString), ("abc" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("ab[^b-d]" : stdgo.GoString), ("abc" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("ab[^e-g]" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a\\*b" : stdgo.GoString), ("a*b" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a\\*b" : stdgo.GoString), ("ab" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a?b" : stdgo.GoString), ("a☺b" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a[^a]b" : stdgo.GoString), ("a☺b" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a???b" : stdgo.GoString), ("a☺b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a[^a][^a][^a]b" : stdgo.GoString), ("a☺b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[a-ζ]*" : stdgo.GoString), ("α" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("*[a-ζ]" : stdgo.GoString), ("A" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a?b" : stdgo.GoString), ("a/b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a*b" : stdgo.GoString), ("a/b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[\\]a]" : stdgo.GoString), ("]" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[\\-]" : stdgo.GoString), ("-" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[x\\-]" : stdgo.GoString), ("x" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[x\\-]" : stdgo.GoString), ("-" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[x\\-]" : stdgo.GoString), ("z" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[\\-x]" : stdgo.GoString), ("x" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[\\-x]" : stdgo.GoString), ("-" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[\\-x]" : stdgo.GoString), ("a" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[]a]" : stdgo.GoString), ("]" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[-]" : stdgo.GoString), ("-" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[x-]" : stdgo.GoString), ("x" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[x-]" : stdgo.GoString), ("-" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[x-]" : stdgo.GoString), ("z" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[-x]" : stdgo.GoString), ("x" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[-x]" : stdgo.GoString), ("-" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[-x]" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("\\" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[a-b-c]" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[^" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("[^bc" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a[" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a[" : stdgo.GoString), ("ab" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a[" : stdgo.GoString), ("x" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("a/b[" : stdgo.GoString), ("x" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest),
(new stdgo._internal.path.filepath_test.Filepath_test.MatchTest(("*x" : stdgo.GoString), ("xxx" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path.filepath_test.Filepath_test.MatchTest)].concat([for (i in 56 ... (56 > 56 ? 56 : 56 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.MatchTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.MatchTest>);
var _globTests : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(4, 4, ...[({ _pattern : ("match.go" : stdgo.GoString), _result : ("match.go" : stdgo.GoString) } : T__struct_0), ({ _pattern : ("mat?h.go" : stdgo.GoString), _result : ("match.go" : stdgo.GoString) } : T__struct_0), ({ _pattern : ("*" : stdgo.GoString), _result : ("match.go" : stdgo.GoString) } : T__struct_0), ({ _pattern : ("../*/match.go" : stdgo.GoString), _result : ("../filepath/match.go" : stdgo.GoString) } : T__struct_0)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _pattern : ("" : stdgo.GoString), _result : ("" : stdgo.GoString) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
var _globSymlinkTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(2, 2, ...[({ _path : ("test1" : stdgo.GoString), _dest : ("link1" : stdgo.GoString), _brokenLink : false } : T__struct_1), ({ _path : ("test2" : stdgo.GoString), _dest : ("link2" : stdgo.GoString), _brokenLink : true } : T__struct_1)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _path : ("" : stdgo.GoString), _dest : ("" : stdgo.GoString), _brokenLink : false } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
var _cleantests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>(35, 35, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/def" : stdgo.GoString), ("abc/def" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a/b/c" : stdgo.GoString), ("a/b/c" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest((".." : stdgo.GoString), (".." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("../.." : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("../../abc" : stdgo.GoString), ("../../abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/abc" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(stdgo.Go.str()?.__copy__(), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/def/" : stdgo.GoString), ("abc/def" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a/b/c/" : stdgo.GoString), ("a/b/c" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("./" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("../" : stdgo.GoString), (".." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("../../" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/abc/" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc//def//ghi" : stdgo.GoString), ("abc/def/ghi" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc//" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/./def" : stdgo.GoString), ("abc/def" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/./abc/def" : stdgo.GoString), ("/abc/def" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/." : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/def/ghi/../jkl" : stdgo.GoString), ("abc/def/jkl" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/def/../ghi/../jkl" : stdgo.GoString), ("abc/jkl" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/def/.." : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/def/../.." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/abc/def/../.." : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/def/../../.." : stdgo.GoString), (".." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/abc/def/../../.." : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/def/../../../ghi/jkl/../../../mno" : stdgo.GoString), ("../../mno" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/../abc" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a/../b:/../../c" : stdgo.GoString), ("../c" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/./../def" : stdgo.GoString), ("def" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc//./../def" : stdgo.GoString), ("def" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/../../././../def" : stdgo.GoString), ("../../def" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest)].concat([for (i in 35 ... (35 > 35 ? 35 : 35 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.PathTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>);
var _nonwincleantests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>(3, 3, ...[(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("//abc" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("///abc" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("//abc//" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.PathTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>);
var _wincleantests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>(31, 31, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:" : stdgo.GoString), ("c:." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:\\" : stdgo.GoString), ("c:\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:\\abc" : stdgo.GoString), ("c:\\abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:abc\\..\\..\\.\\.\\..\\def" : stdgo.GoString), ("c:..\\..\\def" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:\\abc\\def\\..\\.." : stdgo.GoString), ("c:\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:\\..\\abc" : stdgo.GoString), ("c:\\abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:..\\abc" : stdgo.GoString), ("c:..\\abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:\\b:\\..\\..\\..\\d" : stdgo.GoString), ("c:\\d" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\" : stdgo.GoString), ("\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/" : stdgo.GoString), ("\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\i\\..\\c$" : stdgo.GoString), ("\\\\i\\..\\c$" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\i\\..\\i\\c$" : stdgo.GoString), ("\\\\i\\..\\i\\c$" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\i\\..\\I\\c$" : stdgo.GoString), ("\\\\i\\..\\I\\c$" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\foo\\..\\bar" : stdgo.GoString), ("\\\\host\\share\\bar" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("//host/share/foo/../baz" : stdgo.GoString), ("\\\\host\\share\\baz" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\foo\\..\\..\\..\\..\\bar" : stdgo.GoString), ("\\\\host\\share\\bar" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\.\\C:\\a\\..\\..\\..\\..\\bar" : stdgo.GoString), ("\\\\.\\C:\\bar" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\.\\C:\\\\\\\\a" : stdgo.GoString), ("\\\\.\\C:\\a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\a\\b\\..\\c" : stdgo.GoString), ("\\\\a\\b\\c" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\a\\b" : stdgo.GoString), ("\\\\a\\b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest((".\\c:" : stdgo.GoString), (".\\c:" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest((".\\c:\\foo" : stdgo.GoString), (".\\c:\\foo" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest((".\\c:foo" : stdgo.GoString), (".\\c:foo" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("//abc" : stdgo.GoString), ("\\\\abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("///abc" : stdgo.GoString), ("\\\\\\abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("//abc//" : stdgo.GoString), ("\\\\abc\\\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a/../c:" : stdgo.GoString), (".\\c:" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a\\..\\c:" : stdgo.GoString), (".\\c:" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a/../c:/a" : stdgo.GoString), (".\\c:\\a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a/../../c:" : stdgo.GoString), ("..\\c:" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("foo:bar" : stdgo.GoString), ("foo:bar" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest)].concat([for (i in 31 ... (31 > 31 ? 31 : 31 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.PathTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>);
var _islocaltests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest>(13, 13, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(stdgo.Go.str()?.__copy__(), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("." : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest((".." : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("../a" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("/" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("/a" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("/a/../.." : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("a" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("a/../a" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("a/" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("a/." : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("a/./b/./c" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("a/../b:/../../c" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest>);
var _winislocaltests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest>(16, 16, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("NUL" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("nul" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("nul." : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("com1" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("./nul" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("\\" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("\\a" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("C:" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("C:\\a" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("..\\a" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("a/../c:" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("CONIN$" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("conin$" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("CONOUT$" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("conout$" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("dollar$" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest>);
var _plan9islocaltests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest>(1, 1, ...[(new stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest(("#a" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest>);
var _slashtests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>(4, 4, ...[(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/" : stdgo.GoString), ((47 : stdgo.GoInt32) : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/a/b" : stdgo.GoString), ((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(47 : stdgo.GoUInt8), (97 : stdgo.GoUInt8), (47 : stdgo.GoUInt8), (98 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a//b" : stdgo.GoString), ((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(97 : stdgo.GoUInt8), (47 : stdgo.GoUInt8), (47 : stdgo.GoUInt8), (98 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.PathTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.PathTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>);
var _splitlisttests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.SplitListTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.SplitListTest>(3, 3, ...[(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(97 : stdgo.GoUInt8), (58 : stdgo.GoUInt8), (98 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(58 : stdgo.GoUInt8), (97 : stdgo.GoUInt8), (58 : stdgo.GoUInt8), (98 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.SplitListTest>);
var _winsplitlisttests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.SplitListTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.SplitListTest>(14, 14, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(("\"a\"" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(("\";\"" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(";" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(("\"a;b\"" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("a;b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(("\";\";" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[(";" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest((";\";\"" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), (";" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(("a\";\"b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("a;b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(("a; \"\"b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), (" b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(("\"a;b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("a;b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(("\"\"a;b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(("\"\"\"a;b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("a;b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(("\"\"\"\"a;b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(("a\";b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("a;b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(("a;b\";c" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b;c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo._internal.path.filepath_test.Filepath_test.SplitListTest(("\"a\";b\";c" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b;c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.SplitListTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.SplitListTest>);
var _unixsplittests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.SplitTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.SplitTest>(5, 5, ...[(new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("a/b" : stdgo.GoString), ("a/" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("a/b/" : stdgo.GoString), ("a/b/" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("a/" : stdgo.GoString), ("a/" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("a" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("/" : stdgo.GoString), ("/" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.SplitTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.SplitTest>);
var _winsplittests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.SplitTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.SplitTest>(10, 10, ...[(new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("c:" : stdgo.GoString), ("c:" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("c:/" : stdgo.GoString), ("c:/" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("c:/foo" : stdgo.GoString), ("c:/" : stdgo.GoString), ("foo" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("c:/foo/bar" : stdgo.GoString), ("c:/foo/" : stdgo.GoString), ("bar" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("//host/share" : stdgo.GoString), ("//host/share" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("//host/share/" : stdgo.GoString), ("//host/share/" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("//host/share/foo" : stdgo.GoString), ("//host/share/" : stdgo.GoString), ("foo" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("\\\\host\\share" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("\\\\host\\share\\" : stdgo.GoString), ("\\\\host\\share\\" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest), (new stdgo._internal.path.filepath_test.Filepath_test.SplitTest(("\\\\host\\share\\foo" : stdgo.GoString), ("\\\\host\\share\\" : stdgo.GoString), ("foo" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.SplitTest)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.SplitTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.SplitTest>);
var _jointests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.JoinTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.JoinTest>(17, 17, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("/" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("/" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("a/b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), ("a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("/" : stdgo.GoString), ("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("/a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("/" : stdgo.GoString), ("a/b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("/a/b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("/" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), ("/" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("/a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("/a/b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("/b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("a/b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("/a" : stdgo.GoString), ("/b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("/a/b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a/" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("a/b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a/" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), ("a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("/" : stdgo.GoString), ("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("/a/b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.JoinTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.JoinTest>);
var _nonwinjointests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.JoinTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.JoinTest>(1, 1, ...[(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("//" : stdgo.GoString), ("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("/a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.JoinTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.JoinTest>);
var _winjointests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.JoinTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.JoinTest>(30, 30, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("directory" : stdgo.GoString), ("file" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("directory\\file" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("C:\\Windows\\" : stdgo.GoString), ("System32" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:\\Windows\\System32" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("C:\\Windows\\" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:\\Windows" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("C:\\" : stdgo.GoString), ("Windows" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:\\Windows" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("C:" : stdgo.GoString), ("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("C:" : stdgo.GoString), ("a\\b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:a\\b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("C:" : stdgo.GoString), ("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:a\\b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("C:" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(4, 4, ...[("C:" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("C:" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("C:" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("C:" : stdgo.GoString), ("\\a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:\\a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("C:" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("\\a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:\\a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("C:." : stdgo.GoString), ("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("C:a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:a\\b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("C:a" : stdgo.GoString), ("b" : stdgo.GoString), ("d" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("C:a\\b\\d" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("\\\\host\\share" : stdgo.GoString), ("foo" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("\\\\host\\share\\foo" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("\\\\host\\share\\foo" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("\\\\host\\share\\foo" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("//host/share" : stdgo.GoString), ("foo/bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("\\\\host\\share\\foo\\bar" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("\\" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("\\" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), ("\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("\\" : stdgo.GoString), ("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("\\a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("\\\\" : stdgo.GoString), ("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("\\\\a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("\\" : stdgo.GoString), ("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("\\a\\b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("\\\\" : stdgo.GoString), ("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("\\\\a\\b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("\\" : stdgo.GoString), ("\\\\a\\b" : stdgo.GoString), ("c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("\\a\\b\\c" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("\\\\a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("\\\\a\\b\\c" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("\\\\a\\" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("\\\\a\\b\\c" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("//" : stdgo.GoString), ("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("\\\\a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest),
(new stdgo._internal.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a:\\b\\c" : stdgo.GoString), ("x\\..\\y:\\..\\..\\z" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("a:\\b\\z" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.JoinTest)].concat([for (i in 30 ... (30 > 30 ? 30 : 30 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.JoinTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.JoinTest>);
var _exttests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.ExtTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.ExtTest>(5, 5, ...[(new stdgo._internal.path.filepath_test.Filepath_test.ExtTest(("path.go" : stdgo.GoString), (".go" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.ExtTest), (new stdgo._internal.path.filepath_test.Filepath_test.ExtTest(("path.pb.go" : stdgo.GoString), (".go" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.ExtTest), (new stdgo._internal.path.filepath_test.Filepath_test.ExtTest(("a.dir/b" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.ExtTest), (new stdgo._internal.path.filepath_test.Filepath_test.ExtTest(("a.dir/b.go" : stdgo.GoString), (".go" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.ExtTest), (new stdgo._internal.path.filepath_test.Filepath_test.ExtTest(("a.dir/" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.ExtTest)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.ExtTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.ExtTest>);
var _tree : stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node> = (stdgo.Go.setRef((new stdgo._internal.path.filepath_test.Filepath_test.Node(("testdata" : stdgo.GoString), (new stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>(4, 4, ...[(new stdgo._internal.path.filepath_test.Filepath_test.Node(("a" : stdgo.GoString), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.GoInt)) : stdgo._internal.path.filepath_test.Filepath_test.Node), (new stdgo._internal.path.filepath_test.Filepath_test.Node(("b" : stdgo.GoString), (new stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.GoInt)) : stdgo._internal.path.filepath_test.Filepath_test.Node), (new stdgo._internal.path.filepath_test.Filepath_test.Node(("c" : stdgo.GoString), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.GoInt)) : stdgo._internal.path.filepath_test.Filepath_test.Node), (new stdgo._internal.path.filepath_test.Filepath_test.Node(("d" : stdgo.GoString), (new stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>(3, 3, ...[(new stdgo._internal.path.filepath_test.Filepath_test.Node(("x" : stdgo.GoString), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.GoInt)) : stdgo._internal.path.filepath_test.Filepath_test.Node), (new stdgo._internal.path.filepath_test.Filepath_test.Node(("y" : stdgo.GoString), (new stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.GoInt)) : stdgo._internal.path.filepath_test.Filepath_test.Node), (new stdgo._internal.path.filepath_test.Filepath_test.Node(("z" : stdgo.GoString), (new stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>(2, 2, ...[(new stdgo._internal.path.filepath_test.Filepath_test.Node(("u" : stdgo.GoString), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.GoInt)) : stdgo._internal.path.filepath_test.Filepath_test.Node), (new stdgo._internal.path.filepath_test.Filepath_test.Node(("v" : stdgo.GoString), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.GoInt)) : stdgo._internal.path.filepath_test.Filepath_test.Node)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.GoInt)) : stdgo._internal.path.filepath_test.Filepath_test.Node)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.GoInt)) : stdgo._internal.path.filepath_test.Filepath_test.Node)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.GoInt)) : stdgo._internal.path.filepath_test.Filepath_test.Node)) : stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>);
var _basetests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>(11, 11, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(stdgo.Go.str()?.__copy__(), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("////" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("x/" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/def" : stdgo.GoString), ("def" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a/b/.x" : stdgo.GoString), (".x" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a/b/c." : stdgo.GoString), ("c." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a/b/c.x" : stdgo.GoString), ("c.x" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.PathTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>);
var _winbasetests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>(8, 8, ...[(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:\\" : stdgo.GoString), ("\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:\\a\\b" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:a\\b" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:a\\b\\c" : stdgo.GoString), ("c" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\" : stdgo.GoString), ("\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\a" : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\a\\b" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.PathTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>);
var _dirtests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>(11, 11, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(stdgo.Go.str()?.__copy__(), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/." : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("/foo" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("x/" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("abc/def" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a/b/.x" : stdgo.GoString), ("a/b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a/b/c." : stdgo.GoString), ("a/b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest),
(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("a/b/c.x" : stdgo.GoString), ("a/b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.PathTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>);
var _nonwindirtests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>(1, 1, ...[(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("////" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.PathTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>);
var _windirtests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>(10, 10, ...[(new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:\\" : stdgo.GoString), ("c:\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:." : stdgo.GoString), ("c:." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:\\a\\b" : stdgo.GoString), ("c:\\a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:a\\b" : stdgo.GoString), ("c:a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("c:a\\b\\c" : stdgo.GoString), ("c:a\\b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\" : stdgo.GoString), ("\\\\host\\share\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\a" : stdgo.GoString), ("\\\\host\\share\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\a\\b" : stdgo.GoString), ("\\\\host\\share\\a" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest), (new stdgo._internal.path.filepath_test.Filepath_test.PathTest(("\\\\\\\\" : stdgo.GoString), ("\\\\\\\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.PathTest)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.PathTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.PathTest>);
var _isabstests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest>(8, 8, ...[(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(stdgo.Go.str()?.__copy__(), false) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("/" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("/usr/bin/gcc" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest((".." : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("/a/../bb" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("." : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("./" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("lala" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest>);
var _winisabstests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest>(14, 14, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("C:\\" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("c\\" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("c::" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("c:" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("/" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("\\" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("\\Windows" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("c:a\\b" : stdgo.GoString), false) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("c:\\a\\b" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("c:/a/b" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("\\\\host\\share" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("\\\\host\\share\\" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("\\\\host\\share\\foo" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(("//host/share/foo/bar" : stdgo.GoString), true) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest>);
var evalSymlinksTestDirs : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest>(17, 17, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir/link3" : stdgo.GoString), ("../../" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link1" : stdgo.GoString), ("../test" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link2" : stdgo.GoString), ("dir" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/linkabs" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link4" : stdgo.GoString), ("../test2" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test2" : stdgo.GoString), ("test/dir" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("src" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/pool" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/pool/test" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/current" : stdgo.GoString), ("../../version" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/v1" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/v1/modules" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/v1/modules/test" : stdgo.GoString), ("../../../pool/test" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("version" : stdgo.GoString), ("src/versions/v1" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest>);
var evalSymlinksTests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest>(12, 12, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test" : stdgo.GoString), ("test" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir" : stdgo.GoString), ("test/dir" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir/../.." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link1" : stdgo.GoString), ("test" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link2" : stdgo.GoString), ("test/dir" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link1/dir" : stdgo.GoString), ("test/dir" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link2/.." : stdgo.GoString), ("test" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir/link3" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link2/link3/test" : stdgo.GoString), ("test" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/linkabs" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link4/.." : stdgo.GoString), ("test" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/current/modules/test" : stdgo.GoString), ("src/pool/test" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.EvalSymlinksTest>);
var _absTestDirs : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("a/b" : stdgo.GoString), ("a/b/c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _absTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(12, 12, ...[
("." : stdgo.GoString),
("b" : stdgo.GoString),
("b/" : stdgo.GoString),
("../a" : stdgo.GoString),
("../a/b" : stdgo.GoString),
("../a/b/./c/../../.././a" : stdgo.GoString),
("../a/b/./c/../../.././a/" : stdgo.GoString),
("$" : stdgo.GoString),
("$/." : stdgo.GoString),
("$/a/../a/b" : stdgo.GoString),
("$/a/b/c/../../.././a" : stdgo.GoString),
("$/a/b/c/../../.././a/" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _reltests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.RelTests> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.RelTests>(39, 39, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a/b" : stdgo.GoString), ("a/b" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a/b/." : stdgo.GoString), ("a/b" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a/b" : stdgo.GoString), ("a/b/." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("./a/b" : stdgo.GoString), ("a/b" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a/b" : stdgo.GoString), ("./a/b" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("ab/cd" : stdgo.GoString), ("ab/cde" : stdgo.GoString), ("../cde" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("ab/cd" : stdgo.GoString), ("ab/c" : stdgo.GoString), ("../c" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a/b" : stdgo.GoString), ("a/b/c/d" : stdgo.GoString), ("c/d" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a/b" : stdgo.GoString), ("a/b/../c" : stdgo.GoString), ("../c" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a/b/../c" : stdgo.GoString), ("a/b" : stdgo.GoString), ("../b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a/b/c" : stdgo.GoString), ("a/c/d" : stdgo.GoString), ("../../c/d" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a/b" : stdgo.GoString), ("c/d" : stdgo.GoString), ("../../c/d" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a/b/c/d" : stdgo.GoString), ("a/b" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a/b/c/d" : stdgo.GoString), ("a/b/" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a/b/c/d/" : stdgo.GoString), ("a/b" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a/b/c/d/" : stdgo.GoString), ("a/b/" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("../../a/b" : stdgo.GoString), ("../../a/b/c/d" : stdgo.GoString), ("c/d" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/a/b" : stdgo.GoString), ("/a/b" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/a/b/." : stdgo.GoString), ("/a/b" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/a/b" : stdgo.GoString), ("/a/b/." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/ab/cd" : stdgo.GoString), ("/ab/cde" : stdgo.GoString), ("../cde" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/ab/cd" : stdgo.GoString), ("/ab/c" : stdgo.GoString), ("../c" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/a/b" : stdgo.GoString), ("/a/b/c/d" : stdgo.GoString), ("c/d" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/a/b" : stdgo.GoString), ("/a/b/../c" : stdgo.GoString), ("../c" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/a/b/../c" : stdgo.GoString), ("/a/b" : stdgo.GoString), ("../b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/a/b/c" : stdgo.GoString), ("/a/c/d" : stdgo.GoString), ("../../c/d" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/a/b" : stdgo.GoString), ("/c/d" : stdgo.GoString), ("../../c/d" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/a/b/c/d" : stdgo.GoString), ("/a/b" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/a/b/c/d" : stdgo.GoString), ("/a/b/" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/a/b/c/d/" : stdgo.GoString), ("/a/b" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/a/b/c/d/" : stdgo.GoString), ("/a/b/" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/../../a/b" : stdgo.GoString), ("/../../a/b/c/d" : stdgo.GoString), ("c/d" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("." : stdgo.GoString), ("a/b" : stdgo.GoString), ("a/b" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("." : stdgo.GoString), (".." : stdgo.GoString), (".." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests((".." : stdgo.GoString), ("." : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests((".." : stdgo.GoString), ("a" : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("../.." : stdgo.GoString), (".." : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("a" : stdgo.GoString), ("/a" : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests),
(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("/a" : stdgo.GoString), ("a" : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests)].concat([for (i in 39 ... (39 > 39 ? 39 : 39 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.RelTests)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.RelTests>);
var _winreltests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.RelTests> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.RelTests>(7, 7, ...[(new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("C:a\\b\\c" : stdgo.GoString), ("C:a/b/d" : stdgo.GoString), ("..\\d" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests), (new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("C:\\" : stdgo.GoString), ("D:\\" : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests), (new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("C:" : stdgo.GoString), ("D:" : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests), (new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("C:\\Projects" : stdgo.GoString), ("c:\\projects\\src" : stdgo.GoString), ("src" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests), (new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("C:\\Projects" : stdgo.GoString), ("c:\\projects" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests), (new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("C:\\Projects\\a\\.." : stdgo.GoString), ("c:\\projects" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests), (new stdgo._internal.path.filepath_test.Filepath_test.RelTests(("\\\\host\\share" : stdgo.GoString), ("\\\\host\\share\\file.txt" : stdgo.GoString), ("file.txt" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.RelTests)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.RelTests)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.RelTests>);
var _volumenametests : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest> = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest>(28, 28, ...[
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("c:/foo/bar" : stdgo.GoString), ("c:" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("c:" : stdgo.GoString), ("c:" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("2:" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\\\host" : stdgo.GoString), ("\\\\\\host" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\\\host\\" : stdgo.GoString), ("\\\\\\host" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\\\host\\share" : stdgo.GoString), ("\\\\\\host" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\\\host\\\\share" : stdgo.GoString), ("\\\\\\host" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host" : stdgo.GoString), ("\\\\host" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("//host" : stdgo.GoString), ("\\\\host" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\" : stdgo.GoString), ("\\\\host\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("//host/" : stdgo.GoString), ("\\\\host\\" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share\\" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share/" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share\\foo" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share/foo" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share\\\\foo\\\\\\bar\\\\\\\\baz" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share//foo///bar////baz" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share\\foo\\..\\bar" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share/foo/../bar" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("//./NUL" : stdgo.GoString), ("\\\\.\\NUL" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("//?/NUL" : stdgo.GoString), ("\\\\?\\NUL" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("//./C:" : stdgo.GoString), ("\\\\.\\C:" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("//./C:/a/b/c" : stdgo.GoString), ("\\\\.\\C:" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("//./UNC/host/share/a/b/c" : stdgo.GoString), ("\\\\.\\UNC\\host\\share" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest(("//./UNC/host" : stdgo.GoString), ("\\\\.\\UNC\\host" : stdgo.GoString)) : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest)].concat([for (i in 28 ... (28 > 28 ? 28 : 28 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.VolumeNameTest>);
@:structInit class MatchTest {
    public var _pattern : stdgo.GoString = "";
    public var _s : stdgo.GoString = "";
    public var _match : Bool = false;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_pattern:stdgo.GoString, ?_s:stdgo.GoString, ?_match:Bool, ?_err:stdgo.Error) {
        if (_pattern != null) this._pattern = _pattern;
        if (_s != null) this._s = _s;
        if (_match != null) this._match = _match;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MatchTest(_pattern, _s, _match, _err);
    }
}
@:structInit @:private @:using(stdgo._internal.path.filepath_test.Filepath_test.T_globTest_static_extension) class T_globTest {
    public var _pattern : stdgo.GoString = "";
    public var _matches : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_pattern:stdgo.GoString, ?_matches:stdgo.Slice<stdgo.GoString>) {
        if (_pattern != null) this._pattern = _pattern;
        if (_matches != null) this._matches = _matches;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_globTest(_pattern, _matches);
    }
}
@:structInit class PathTest {
    public var _path : stdgo.GoString = "";
    public var _result : stdgo.GoString = "";
    public function new(?_path:stdgo.GoString, ?_result:stdgo.GoString) {
        if (_path != null) this._path = _path;
        if (_result != null) this._result = _result;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PathTest(_path, _result);
    }
}
@:structInit class IsLocalTest {
    public var _path : stdgo.GoString = "";
    public var _isLocal : Bool = false;
    public function new(?_path:stdgo.GoString, ?_isLocal:Bool) {
        if (_path != null) this._path = _path;
        if (_isLocal != null) this._isLocal = _isLocal;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IsLocalTest(_path, _isLocal);
    }
}
@:structInit class SplitListTest {
    public var _list : stdgo.GoString = "";
    public var _result : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_list:stdgo.GoString, ?_result:stdgo.Slice<stdgo.GoString>) {
        if (_list != null) this._list = _list;
        if (_result != null) this._result = _result;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SplitListTest(_list, _result);
    }
}
@:structInit class SplitTest {
    public var _path : stdgo.GoString = "";
    public var _dir : stdgo.GoString = "";
    public var _file : stdgo.GoString = "";
    public function new(?_path:stdgo.GoString, ?_dir:stdgo.GoString, ?_file:stdgo.GoString) {
        if (_path != null) this._path = _path;
        if (_dir != null) this._dir = _dir;
        if (_file != null) this._file = _file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SplitTest(_path, _dir, _file);
    }
}
@:structInit class JoinTest {
    public var _elem : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _path : stdgo.GoString = "";
    public function new(?_elem:stdgo.Slice<stdgo.GoString>, ?_path:stdgo.GoString) {
        if (_elem != null) this._elem = _elem;
        if (_path != null) this._path = _path;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new JoinTest(_elem, _path);
    }
}
@:structInit class ExtTest {
    public var _path : stdgo.GoString = "";
    public var _ext : stdgo.GoString = "";
    public function new(?_path:stdgo.GoString, ?_ext:stdgo.GoString) {
        if (_path != null) this._path = _path;
        if (_ext != null) this._ext = _ext;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ExtTest(_path, _ext);
    }
}
@:structInit class Node {
    public var _name : stdgo.GoString = "";
    public var _entries : stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>);
    public var _mark : stdgo.GoInt = 0;
    public function new(?_name:stdgo.GoString, ?_entries:stdgo.Slice<stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.Node>>, ?_mark:stdgo.GoInt) {
        if (_name != null) this._name = _name;
        if (_entries != null) this._entries = _entries;
        if (_mark != null) this._mark = _mark;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Node(_name, _entries, _mark);
    }
}
@:structInit @:private @:using(stdgo._internal.path.filepath_test.Filepath_test.T_statDirEntry_static_extension) class T_statDirEntry {
    public var _info : stdgo._internal.io.fs.Fs.FileInfo = (null : stdgo._internal.io.fs.Fs.FileInfo);
    public function new(?_info:stdgo._internal.io.fs.Fs.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}
@:structInit class IsAbsTest {
    public var _path : stdgo.GoString = "";
    public var _isAbs : Bool = false;
    public function new(?_path:stdgo.GoString, ?_isAbs:Bool) {
        if (_path != null) this._path = _path;
        if (_isAbs != null) this._isAbs = _isAbs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IsAbsTest(_path, _isAbs);
    }
}
@:structInit class EvalSymlinksTest {
    public var _path : stdgo.GoString = "";
    public var _dest : stdgo.GoString = "";
    public function new(?_path:stdgo.GoString, ?_dest:stdgo.GoString) {
        if (_path != null) this._path = _path;
        if (_dest != null) this._dest = _dest;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new EvalSymlinksTest(_path, _dest);
    }
}
@:structInit class RelTests {
    public var _root : stdgo.GoString = "";
    public var _path : stdgo.GoString = "";
    public var _want : stdgo.GoString = "";
    public function new(?_root:stdgo.GoString, ?_path:stdgo.GoString, ?_want:stdgo.GoString) {
        if (_root != null) this._root = _root;
        if (_path != null) this._path = _path;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RelTests(_root, _path, _want);
    }
}
@:structInit class VolumeNameTest {
    public var _path : stdgo.GoString = "";
    public var _vol : stdgo.GoString = "";
    public function new(?_path:stdgo.GoString, ?_vol:stdgo.GoString) {
        if (_path != null) this._path = _path;
        if (_vol != null) this._vol = _vol;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new VolumeNameTest(_path, _vol);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.path.filepath_test.Filepath_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.path.filepath_test.Filepath_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _pattern : stdgo.GoString;
    public var _result : stdgo.GoString;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.path.filepath_test.Filepath_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.path.filepath_test.Filepath_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _path : stdgo.GoString;
    public var _dest : stdgo.GoString;
    public var _brokenLink : Bool;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.path.filepath_test.Filepath_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.path.filepath_test.Filepath_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _desc : stdgo.GoString;
    public var _root : stdgo.GoString;
    public var _want : stdgo.Slice<stdgo.GoString>;
    public var _buggyGOOS : stdgo.Slice<stdgo.GoString>;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.path.filepath_test.Filepath_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.path.filepath_test.Filepath_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _path : stdgo.GoString;
    public var _want : stdgo.GoString;
};
function exampleExt():Void {
        stdgo._internal.fmt.Fmt.printf(("No dots: %q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.ext(("index" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.printf(("One dot: %q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.ext(("index.js" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.printf(("Two dots: %q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.ext(("main.test.js" : stdgo.GoString))));
    }
function exampleSplitList():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.splitList(("/a/b/c:/usr/bin" : stdgo.GoString))));
    }
function exampleRel():Void {
        var _paths = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("/a/b/c" : stdgo.GoString), ("/b/c" : stdgo.GoString), ("./b/c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _base:stdgo.GoString = ("/a" : stdgo.GoString);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        for (__0 => _p in _paths) {
            var __tmp__ = stdgo._internal.path.filepath.Filepath.rel(_base?.__copy__(), _p?.__copy__()), _rel:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("%q: %q %v\n" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_rel), stdgo.Go.toInterface(_err));
        };
    }
function exampleSplit():Void {
        var _paths = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("/home/arnie/amelia.jpg" : stdgo.GoString), ("/mnt/photos/" : stdgo.GoString), ("rabbit.jpg" : stdgo.GoString), ("/usr/local//go" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        for (__0 => _p in _paths) {
            var __tmp__ = stdgo._internal.path.filepath.Filepath.split(_p?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("input: %q\n\tdir: %q\n\tfile: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_file));
        };
    }
function exampleJoin():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.join(("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.join(("a" : stdgo.GoString), ("b/c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.join(("a/b" : stdgo.GoString), ("c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.join(("a/b" : stdgo.GoString), ("/c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.join(("a/b" : stdgo.GoString), ("../../../xyz" : stdgo.GoString))));
    }
function exampleMatch():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        ({
            var __tmp__ = stdgo._internal.path.filepath.Filepath.match(("/home/catch/*" : stdgo.GoString), ("/home/catch/foo" : stdgo.GoString));
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
        ({
            var __tmp__ = stdgo._internal.path.filepath.Filepath.match(("/home/catch/*" : stdgo.GoString), ("/home/catch/foo/bar" : stdgo.GoString));
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
        ({
            var __tmp__ = stdgo._internal.path.filepath.Filepath.match(("/home/?opher" : stdgo.GoString), ("/home/gopher" : stdgo.GoString));
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
        ({
            var __tmp__ = stdgo._internal.path.filepath.Filepath.match(("/home/\\*" : stdgo.GoString), ("/home/*" : stdgo.GoString));
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
    }
function exampleBase():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.base(("/foo/bar/baz.js" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.base(("/foo/bar/baz" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.base(("/foo/bar/baz/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.base(("dev.txt" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.base(("../todo.txt" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.base((".." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.base(("." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.base(("/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.base(stdgo.Go.str()?.__copy__())));
    }
function exampleDir():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.dir(("/foo/bar/baz.js" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.dir(("/foo/bar/baz" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.dir(("/foo/bar/baz/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.dir(("/dirty//path///" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.dir(("dev.txt" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.dir(("../todo.txt" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.dir((".." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.dir(("." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.dir(("/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.dir(stdgo.Go.str()?.__copy__())));
    }
function exampleIsAbs():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.isAbs(("/home/gopher" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.isAbs((".bashrc" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.isAbs((".." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.isAbs(("." : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.isAbs(("/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.isAbs(stdgo.Go.str()?.__copy__())));
    }
function _prepareTestDirTree(_tree:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os.mkdirTemp(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()), _tmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.fmt.Fmt.errorf(("error creating temp directory: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        _err = stdgo._internal.os.Os.mkdirAll(stdgo._internal.path.filepath.Filepath.join(_tmpDir?.__copy__(), _tree?.__copy__())?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
        if (_err != null) {
            stdgo._internal.os.Os.removeAll(_tmpDir?.__copy__());
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
        };
        return { _0 : _tmpDir?.__copy__(), _1 : (null : stdgo.Error) };
    }
function exampleWalk():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = _prepareTestDirTree(("dir/to/walk/skip" : stdgo.GoString)), _tmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.fmt.Fmt.printf(("unable to create test dir tree: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return;
            };
            {
                var _a0 = _tmpDir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os.removeAll(_a0?.__copy__()));
            };
            stdgo._internal.os.Os.chdir(_tmpDir?.__copy__());
            var _subDirToSkip:stdgo.GoString = ("skip" : stdgo.GoString);
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
            _err = stdgo._internal.path.filepath.Filepath.walk(("." : stdgo.GoString), function(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs.FileInfo, _err:stdgo.Error):stdgo.Error {
                if (_err != null) {
                    stdgo._internal.fmt.Fmt.printf(("prevent panic by handling failure accessing a path %q: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                    return _err;
                };
                if ((_info.isDir() && (_info.name() == _subDirToSkip) : Bool)) {
                    stdgo._internal.fmt.Fmt.printf(("skipping a dir without errors: %+v \n" : stdgo.GoString), stdgo.Go.toInterface(_info.name()));
                    return stdgo._internal.path.filepath.Filepath.skipDir;
                };
                stdgo._internal.fmt.Fmt.printf(("visited file or dir: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_path));
                return (null : stdgo.Error);
            });
            if (_err != null) {
                stdgo._internal.fmt.Fmt.printf(("error walking the path %q: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir), stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _errp(_e:stdgo.Error):stdgo.GoString {
        if (_e == null) {
            return ("<nil>" : stdgo.GoString);
        };
        return _e.error()?.__copy__();
    }
function testMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _matchTests) {
            var _pattern:stdgo.GoString = _tt._pattern?.__copy__();
            var _s:stdgo.GoString = _tt._s?.__copy__();
            if (false) {
                if (stdgo._internal.strings.Strings.contains(_pattern?.__copy__(), ("\\" : stdgo.GoString))) {
                    continue;
                };
                _pattern = clean(_pattern?.__copy__())?.__copy__();
                _s = clean(_s?.__copy__())?.__copy__();
            };
            var __tmp__ = match(_pattern?.__copy__(), _s?.__copy__()), _ok:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_ok != _tt._match) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_tt._err)) : Bool)) {
                _t.errorf(("Match(%#q, %#q) = %v, %q want %v, %q" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_errp(_err)), stdgo.Go.toInterface(_tt._match), stdgo.Go.toInterface(_errp(_tt._err)));
            };
        };
    }
function _contains(_vector:stdgo.Slice<stdgo.GoString>, _s:stdgo.GoString):Bool {
        for (__0 => _elem in _vector) {
            if (_elem == (_s)) {
                return true;
            };
        };
        return false;
    }
function testGlob(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _globTests) {
            var _pattern:stdgo.GoString = _tt._pattern?.__copy__();
            var _result:stdgo.GoString = _tt._result?.__copy__();
            if (false) {
                _pattern = clean(_pattern?.__copy__())?.__copy__();
                _result = clean(_result?.__copy__())?.__copy__();
            };
            var __tmp__ = glob(_pattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            if (!_contains(_matches, _result?.__copy__())) {
                _t.errorf(("Glob(%#q) = %#v want %v" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_result));
            };
        };
        for (__17 => _pattern in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("no_match" : stdgo.GoString), ("../*/no_match" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var __tmp__ = glob(_pattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((_matches.length) != ((0 : stdgo.GoInt))) {
                _t.errorf(("Glob(%#q) = %#v want []" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_matches));
            };
        };
    }
function testCVE202230632(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = glob((("/*" : stdgo.GoString) + stdgo._internal.strings.Strings.repeat(("/" : stdgo.GoString), (10001 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__()), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(errBadPattern))) {
            _t.fatalf(("Glob returned err=%v, want ErrBadPattern" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testGlobError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _bad = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("[]" : stdgo.GoString), ("nonexist/[]" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _pattern in _bad) {
            {
                var __tmp__ = glob(_pattern?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(errBadPattern))) {
                    _t.errorf(("Glob(%#q) returned err=%v, want ErrBadPattern" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function testGlobUNC(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        glob(("\\\\?\\C:\\*" : stdgo.GoString));
    }
function testGlobSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmpDir:stdgo.GoString = _t.tempDir()?.__copy__();
        for (__8 => _tt in _globSymlinkTests) {
            var _path:stdgo.GoString = join(_tmpDir?.__copy__(), _tt._path?.__copy__())?.__copy__();
            var _dest:stdgo.GoString = join(_tmpDir?.__copy__(), _tt._dest?.__copy__())?.__copy__();
            var __tmp__ = stdgo._internal.os.Os.create(_path?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _err:stdgo.Error = _f.close();
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _err = stdgo._internal.os.Os.symlink(_path?.__copy__(), _dest?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (_tt._brokenLink) {
                stdgo._internal.os.Os.remove(_path?.__copy__());
            };
            var __tmp__ = glob(_dest?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("GlobSymlink error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_dest), stdgo.Go.toInterface(_err));
            };
            if (!_contains(_matches, _dest?.__copy__())) {
                _t.errorf(("Glob(%#q) = %#v want %v" : stdgo.GoString), stdgo.Go.toInterface(_dest), stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_dest));
            };
        };
    }
function testWindowsGlob(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                _t.skipf(("skipping windows specific test" : stdgo.GoString));
            };
            var _tmpDir:stdgo.GoString = _tempDirCanonical(_t)?.__copy__();
            if (((_tmpDir.length) < (3 : stdgo.GoInt) : Bool)) {
                _t.fatalf(("tmpDir path %q is too short" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir));
            };
            if (_tmpDir[(1 : stdgo.GoInt)] != ((58 : stdgo.GoUInt8))) {
                _t.fatalf(("tmpDir path %q must have drive letter in it" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir));
            };
            var _dirs = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("dir/d/bin" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _files = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("dir/d/bin/git.exe" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (__24 => _dir in _dirs) {
                var _err:stdgo.Error = stdgo._internal.os.Os.mkdirAll(join(_tmpDir?.__copy__(), _dir?.__copy__())?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            for (__33 => _file in _files) {
                var _err:stdgo.Error = stdgo._internal.os.Os.writeFile(join(_tmpDir?.__copy__(), _file?.__copy__())?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (438u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _tests = (new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.T_globTest>(10, 10, ...[(new stdgo._internal.path.filepath_test.Filepath_test.T_globTest(("a" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.T_globTest), (new stdgo._internal.path.filepath_test.Filepath_test.T_globTest(("b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.T_globTest), (new stdgo._internal.path.filepath_test.Filepath_test.T_globTest(("c" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.T_globTest), (new stdgo._internal.path.filepath_test.Filepath_test.T_globTest(("*" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("dir" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.T_globTest), (new stdgo._internal.path.filepath_test.Filepath_test.T_globTest(("d*" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("dir" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.T_globTest), (new stdgo._internal.path.filepath_test.Filepath_test.T_globTest(("*i*" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("dir" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.T_globTest), (new stdgo._internal.path.filepath_test.Filepath_test.T_globTest(("*r" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("dir" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.T_globTest), (new stdgo._internal.path.filepath_test.Filepath_test.T_globTest(("?ir" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("dir" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.T_globTest), (new stdgo._internal.path.filepath_test.Filepath_test.T_globTest(("?r" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.T_globTest), (new stdgo._internal.path.filepath_test.Filepath_test.T_globTest(("d*/*/bin/git.exe" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("dir/d/bin/git.exe" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.path.filepath_test.Filepath_test.T_globTest)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.T_globTest)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.T_globTest>);
            for (__42 => _test in _tests) {
                var _p:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var _err:stdgo.Error = _test._globAbs(_tmpDir?.__copy__(), _tmpDir?.__copy__());
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
                _p = _tmpDir?.__copy__();
                _p = stdgo._internal.strings.Strings.replace(_p?.__copy__(), (":\\" : stdgo.GoString), (":\\*" : stdgo.GoString), (1 : stdgo.GoInt))?.__copy__();
                {
                    var _err:stdgo.Error = _test._globAbs(_tmpDir?.__copy__(), _p?.__copy__());
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
                _p = _tmpDir?.__copy__();
                _p = stdgo._internal.strings.Strings.replace(_p?.__copy__(), (":\\" : stdgo.GoString), (":" : stdgo.GoString), (1 : stdgo.GoInt))?.__copy__();
                _p = stdgo._internal.strings.Strings.replace(_p?.__copy__(), ("\\" : stdgo.GoString), ("*\\" : stdgo.GoString), (1 : stdgo.GoInt))?.__copy__();
                _p = stdgo._internal.strings.Strings.replace(_p?.__copy__(), (":" : stdgo.GoString), (":\\" : stdgo.GoString), (1 : stdgo.GoInt))?.__copy__();
                {
                    var _err:stdgo.Error = _test._globAbs(_tmpDir?.__copy__(), _p?.__copy__());
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
            };
            var __tmp__ = stdgo._internal.os.Os.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _err = stdgo._internal.os.Os.chdir(_tmpDir?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:stdgo.Error = stdgo._internal.os.Os.chdir(_wd?.__copy__());
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                a();
            });
            for (__83 => _test in _tests) {
                var _err:stdgo.Error = _test._globRel(stdgo.Go.str()?.__copy__());
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
                _err = _test._globRel((".\\" : stdgo.GoString));
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
                _err = _test._globRel((_tmpDir.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testNonWindowsGlobEscape(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _t.skipf(("skipping non-windows specific test" : stdgo.GoString));
        };
        var _pattern:stdgo.GoString = ("\\match.go" : stdgo.GoString);
        var _want = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("match.go" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var __tmp__ = glob(_pattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Glob error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_want))) {
            _t.fatalf(("Glob(%#q) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_want));
        };
    }
function testClean(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = _cleantests;
        if (false) {
            for (_i => _ in _tests) {
                _tests[(_i : stdgo.GoInt)]._result = stdgo._internal.path.filepath.Filepath.fromSlash(_tests[(_i : stdgo.GoInt)]._result?.__copy__())?.__copy__();
            };
            _tests = (_tests.__append__(...(_wincleantests : Array<stdgo._internal.path.filepath_test.Filepath_test.PathTest>)));
        } else {
            _tests = (_tests.__append__(...(_nonwincleantests : Array<stdgo._internal.path.filepath_test.Filepath_test.PathTest>)));
        };
        for (__0 => _test in _tests) {
            {
                var _s:stdgo.GoString = stdgo._internal.path.filepath.Filepath.clean(_test._path?.__copy__())?.__copy__();
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
            {
                var _s:stdgo.GoString = stdgo._internal.path.filepath.Filepath.clean(_test._result?.__copy__())?.__copy__();
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
        if (stdgo._internal.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.log(stdgo.Go.toInterface(("skipping AllocsPerRun checks; GOMAXPROCS>1" : stdgo.GoString)));
            return;
        };
        for (__33 => _test in _tests) {
            var _allocs:stdgo.GoFloat64 = stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
                stdgo._internal.path.filepath.Filepath.clean(_test._result?.__copy__());
            });
            if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("Clean(%q): %v allocs, want zero" : stdgo.GoString), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_allocs));
            };
        };
    }
function testIsLocal(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = _islocaltests;
        if (false) {
            _tests = (_tests.__append__(...(_winislocaltests : Array<stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest>)));
        };
        if (false) {
            _tests = (_tests.__append__(...(_plan9islocaltests : Array<stdgo._internal.path.filepath_test.Filepath_test.IsLocalTest>)));
        };
        for (__0 => _test in _tests) {
            {
                var _got:Bool = stdgo._internal.path.filepath.Filepath.isLocal(_test._path?.__copy__());
                if (_got != (_test._isLocal)) {
                    _t.errorf(("IsLocal(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._isLocal));
                };
            };
        };
    }
function testFromAndToSlash(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _slashtests) {
            {
                var _s:stdgo.GoString = stdgo._internal.path.filepath.Filepath.fromSlash(_test._path?.__copy__())?.__copy__();
                if (_s != (_test._result)) {
                    _t.errorf(("FromSlash(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
            {
                var _s:stdgo.GoString = stdgo._internal.path.filepath.Filepath.toSlash(_test._result?.__copy__())?.__copy__();
                if (_s != (_test._path)) {
                    _t.errorf(("ToSlash(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._path));
                };
            };
        };
    }
function testSplitList(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = _splitlisttests;
        if (false) {
            _tests = (_tests.__append__(...(_winsplitlisttests : Array<stdgo._internal.path.filepath_test.Filepath_test.SplitListTest>)));
        };
        for (__0 => _test in _tests) {
            {
                var _l = stdgo._internal.path.filepath.Filepath.splitList(_test._list?.__copy__());
                if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_test._result))) {
                    _t.errorf(("SplitList(%#q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_test._list), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _splittests:stdgo.Slice<SplitTest> = (null : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.SplitTest>);
        _splittests = _unixsplittests;
        if (false) {
            _splittests = (_splittests.__append__(...(_winsplittests : Array<stdgo._internal.path.filepath_test.Filepath_test.SplitTest>)));
        };
        for (__0 => _test in _splittests) {
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath.split(_test._path?.__copy__()), _d:stdgo.GoString = __tmp__._0, _f:stdgo.GoString = __tmp__._1;
                if (((_d != _test._dir) || (_f != _test._file) : Bool)) {
                    _t.errorf(("Split(%q) = %q, %q, want %q, %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_test._dir), stdgo.Go.toInterface(_test._file));
                };
            };
        };
    }
function testJoin(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _jointests = (_jointests.__append__(...(_winjointests : Array<stdgo._internal.path.filepath_test.Filepath_test.JoinTest>)));
        } else {
            _jointests = (_jointests.__append__(...(_nonwinjointests : Array<stdgo._internal.path.filepath_test.Filepath_test.JoinTest>)));
        };
        for (__0 => _test in _jointests) {
            var _expected:stdgo.GoString = stdgo._internal.path.filepath.Filepath.fromSlash(_test._path?.__copy__())?.__copy__();
            {
                var _p:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(...(_test._elem : Array<stdgo.GoString>))?.__copy__();
                if (_p != (_expected)) {
                    _t.errorf(("join(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._elem), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_expected));
                };
            };
        };
    }
function testExt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _exttests) {
            {
                var _x:stdgo.GoString = stdgo._internal.path.filepath.Filepath.ext(_test._path?.__copy__())?.__copy__();
                if (_x != (_test._ext)) {
                    _t.errorf(("Ext(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._ext));
                };
            };
        };
    }
function _walkTree(_n:stdgo.Ref<Node>, _path:stdgo.GoString, _f:(_path:stdgo.GoString, _n:stdgo.Ref<Node>) -> Void):Void {
        _f(_path?.__copy__(), _n);
        for (__0 => _e in _n._entries) {
            _walkTree(_e, stdgo._internal.path.filepath.Filepath.join(_path?.__copy__(), _e._name?.__copy__())?.__copy__(), _f);
        };
    }
function _makeTree(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _walkTree(_tree, _tree._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.Ref<Node>):Void {
            if (_n._entries == null) {
                var __tmp__ = stdgo._internal.os.Os.create(_path?.__copy__()), _fd:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("makeTree: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    return;
                };
                _fd.close();
            } else {
                stdgo._internal.os.Os.mkdir(_path?.__copy__(), (504u32 : stdgo._internal.io.fs.Fs.FileMode));
            };
        });
    }
function _markTree(_n:stdgo.Ref<Node>):Void {
        _walkTree(_n, stdgo.Go.str()?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.Ref<Node>):Void {
            _n._mark++;
        });
    }
function _checkMarks(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _report:Bool):Void {
        _walkTree(_tree, _tree._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.Ref<Node>):Void {
            if (((_n._mark != (1 : stdgo.GoInt)) && _report : Bool)) {
                _t.errorf(("node %s mark = %d; expected 1" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_n._mark));
            };
            _n._mark = (0 : stdgo.GoInt);
        });
    }
function _mark(_d:stdgo._internal.io.fs.Fs.DirEntry, _err:stdgo.Error, _errors:stdgo.Ref<stdgo.Slice<stdgo.Error>>, _clear:Bool):stdgo.Error {
        var _name:stdgo.GoString = _d.name()?.__copy__();
        _walkTree(_tree, _tree._name?.__copy__(), function(_path:stdgo.GoString, _n:stdgo.Ref<Node>):Void {
            if (_n._name == (_name)) {
                _n._mark++;
            };
        });
        if (_err != null) {
            _errors.__setData__(((_errors : stdgo.Slice<stdgo.Error>).__append__(_err)));
            if (_clear) {
                return (null : stdgo.Error);
            };
            return _err;
        };
        return (null : stdgo.Error);
    }
function _chdir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _dir:stdgo.GoString):Void {
        var __tmp__ = stdgo._internal.os.Os.getwd(), _olddir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("getwd %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = stdgo._internal.os.Os.chdir(_dir?.__copy__());
            if (_err != null) {
                _t.fatalf(("chdir %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
            };
        };
        _t.cleanup(function():Void {
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.chdir(_olddir?.__copy__());
                if (_err != null) {
                    _t.errorf(("restore original working directory %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_olddir), stdgo.Go.toInterface(_err));
                    Sys.exit((1 : stdgo.GoInt));
                };
            };
        });
    }
function _chtmpdir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):() -> Void {
        var _restore:() -> Void = null;
        var __tmp__ = stdgo._internal.os.Os.getwd(), _oldwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.os.Os.mkdirTemp(stdgo.Go.str()?.__copy__(), ("test" : stdgo.GoString)), _d:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = stdgo._internal.os.Os.chdir(_d?.__copy__());
            if (_err != null) {
                _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        return function():Void {
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.chdir(_oldwd?.__copy__());
                if (_err != null) {
                    _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            stdgo._internal.os.Os.removeAll(_d?.__copy__());
        };
    }
function _tempDirCanonical(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):stdgo.GoString {
        var _dir:stdgo.GoString = _t.tempDir()?.__copy__();
        var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_dir?.__copy__()), _cdir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("tempDirCanonical: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        return _cdir?.__copy__();
    }
function testWalk(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _walk:(stdgo.GoString, stdgo._internal.io.fs.Fs.WalkDirFunc) -> stdgo.Error = function(_root:stdgo.GoString, _fn:stdgo._internal.io.fs.Fs.WalkDirFunc):stdgo.Error {
            return stdgo._internal.path.filepath.Filepath.walk(_root?.__copy__(), function(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs.FileInfo, _err:stdgo.Error):stdgo.Error {
                return _fn(_path?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.path.filepath_test.Filepath_test.T_statDirEntry(_info) : stdgo._internal.path.filepath_test.Filepath_test.T_statDirEntry)) : stdgo.Ref<stdgo._internal.path.filepath_test.Filepath_test.T_statDirEntry>)), _err);
            });
        };
        _testWalk(_t, _walk, (1 : stdgo.GoInt));
    }
function testWalkDir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testWalk(_t, stdgo._internal.path.filepath.Filepath.walkDir, (2 : stdgo.GoInt));
    }
function _testWalk(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _walk:(stdgo.GoString, stdgo._internal.io.fs.Fs.WalkDirFunc) -> stdgo.Error, _errVisit:stdgo.GoInt):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                var _restore:() -> Void = _chtmpdir(_t);
                __deferstack__.unshift(() -> _restore());
            };
            var _tmpDir:stdgo.GoString = _t.tempDir()?.__copy__();
            var __tmp__ = stdgo._internal.os.Os.getwd(), _origDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("finding working dir:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                _err = stdgo._internal.os.Os.chdir(_tmpDir?.__copy__());
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(("entering temp dir:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _origDir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os.chdir(_a0?.__copy__()));
            };
            _makeTree(_t);
            var _errors = (new stdgo.Slice<stdgo.Error>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.Error>);
            var _clear:Bool = true;
            var _markFn:(stdgo.GoString, stdgo._internal.io.fs.Fs.DirEntry, stdgo.Error) -> stdgo.Error = function(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs.DirEntry, _err:stdgo.Error):stdgo.Error {
                return _mark(_d, _err, (stdgo.Go.setRef(_errors) : stdgo.Ref<stdgo.Slice<stdgo.Error>>), _clear);
            };
            _err = _walk(_tree._name?.__copy__(), _markFn);
            if (_err != null) {
                _t.fatalf(("no error expected, found: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if ((_errors.length) != ((0 : stdgo.GoInt))) {
                _t.fatalf(("unexpected errors: %s" : stdgo.GoString), stdgo.Go.toInterface(_errors));
            };
            _checkMarks(_t, true);
            _errors = (_errors.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Error>);
            _t.run(("PermErr" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                if (false) {
                    _t.skip(stdgo.Go.toInterface(("skipping on js" : stdgo.GoString)));
                };
                if (stdgo._internal.os.Os.getuid() == ((0 : stdgo.GoInt))) {
                    _t.skip(stdgo.Go.toInterface(("skipping as root" : stdgo.GoString)));
                };
                if (stdgo._internal.testing.Testing.short()) {
                    _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
                };
                stdgo._internal.os.Os.chmod(stdgo._internal.path.filepath.Filepath.join(_tree._name?.__copy__(), _tree._entries[(1 : stdgo.GoInt)]._name?.__copy__())?.__copy__(), (0u32 : stdgo._internal.io.fs.Fs.FileMode));
                stdgo._internal.os.Os.chmod(stdgo._internal.path.filepath.Filepath.join(_tree._name?.__copy__(), _tree._entries[(3 : stdgo.GoInt)]._name?.__copy__())?.__copy__(), (0u32 : stdgo._internal.io.fs.Fs.FileMode));
                _markTree(_tree._entries[(1 : stdgo.GoInt)]);
                _markTree(_tree._entries[(3 : stdgo.GoInt)]);
                _tree._entries[(1 : stdgo.GoInt)]._mark = (_tree._entries[(1 : stdgo.GoInt)]._mark - (_errVisit) : stdgo.GoInt);
                _tree._entries[(3 : stdgo.GoInt)]._mark = (_tree._entries[(3 : stdgo.GoInt)]._mark - (_errVisit) : stdgo.GoInt);
                var _err:stdgo.Error = _walk(_tree._name?.__copy__(), _markFn);
                if (_err != null) {
                    _t.fatalf(("expected no error return from Walk, got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                if ((_errors.length) != ((2 : stdgo.GoInt))) {
                    _t.errorf(("expected 2 errors, got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_errors.length)), stdgo.Go.toInterface(_errors));
                };
                _checkMarks(_t, true);
                _errors = (_errors.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Error>);
                _markTree(_tree._entries[(1 : stdgo.GoInt)]);
                _markTree(_tree._entries[(3 : stdgo.GoInt)]);
                _tree._entries[(1 : stdgo.GoInt)]._mark = (_tree._entries[(1 : stdgo.GoInt)]._mark - (_errVisit) : stdgo.GoInt);
                _tree._entries[(3 : stdgo.GoInt)]._mark = (_tree._entries[(3 : stdgo.GoInt)]._mark - (_errVisit) : stdgo.GoInt);
                _clear = false;
                _err = _walk(_tree._name?.__copy__(), _markFn);
                if (_err == null) {
                    _t.fatalf(("expected error return from Walk" : stdgo.GoString));
                };
                if ((_errors.length) != ((1 : stdgo.GoInt))) {
                    _t.errorf(("expected 1 error, got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_errors.length)), stdgo.Go.toInterface(_errors));
                };
                _checkMarks(_t, false);
                _errors = (_errors.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Error>);
                stdgo._internal.os.Os.chmod(stdgo._internal.path.filepath.Filepath.join(_tree._name?.__copy__(), _tree._entries[(1 : stdgo.GoInt)]._name?.__copy__())?.__copy__(), (504u32 : stdgo._internal.io.fs.Fs.FileMode));
                stdgo._internal.os.Os.chmod(stdgo._internal.path.filepath.Filepath.join(_tree._name?.__copy__(), _tree._entries[(3 : stdgo.GoInt)]._name?.__copy__())?.__copy__(), (504u32 : stdgo._internal.io.fs.Fs.FileMode));
            });
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _touch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _name:stdgo.GoString):Void {
        var __tmp__ = stdgo._internal.os.Os.create(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = _f.close();
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function testWalkSkipDirOnFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _td:stdgo.GoString = _t.tempDir()?.__copy__();
        {
            var _err:stdgo.Error = stdgo._internal.os.Os.mkdirAll(stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _touch(_t, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir/foo1" : stdgo.GoString))?.__copy__());
        _touch(_t, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir/foo2" : stdgo.GoString))?.__copy__());
        var _sawFoo2:Bool = false;
        var _walker:stdgo.GoString -> stdgo.Error = function(_path:stdgo.GoString):stdgo.Error {
            if (stdgo._internal.strings.Strings.hasSuffix(_path?.__copy__(), ("foo2" : stdgo.GoString))) {
                _sawFoo2 = true;
            };
            if (stdgo._internal.strings.Strings.hasSuffix(_path?.__copy__(), ("foo1" : stdgo.GoString))) {
                return stdgo._internal.path.filepath.Filepath.skipDir;
            };
            return (null : stdgo.Error);
        };
        var _walkFn:(stdgo.GoString, stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error) -> stdgo.Error = function(_path:stdgo.GoString, __16:stdgo._internal.io.fs.Fs.FileInfo, __17:stdgo.Error):stdgo.Error {
            return _walker(_path?.__copy__());
        };
        var _walkDirFn:(stdgo.GoString, stdgo._internal.io.fs.Fs.DirEntry, stdgo.Error) -> stdgo.Error = function(_path:stdgo.GoString, __16:stdgo._internal.io.fs.Fs.DirEntry, __17:stdgo.Error):stdgo.Error {
            return _walker(_path?.__copy__());
        };
        var _check = function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _walk:(_root:stdgo.GoString) -> stdgo.Error, _root:stdgo.GoString):Void {
            _t.helper();
            _sawFoo2 = false;
            var _err:stdgo.Error = _walk(_root?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (_sawFoo2) {
                _t.errorf(("SkipDir on file foo1 did not block processing of foo2" : stdgo.GoString));
            };
        };
        _t.run(("Walk" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var walk:stdgo.GoString -> stdgo.Error = function(_root:stdgo.GoString):stdgo.Error {
                return stdgo._internal.path.filepath.Filepath.walk(_td?.__copy__(), _walkFn);
            };
            _check(_t, walk, _td?.__copy__());
            _check(_t, walk, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__());
        });
        _t.run(("WalkDir" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var walkDir:stdgo.GoString -> stdgo.Error = function(_root:stdgo.GoString):stdgo.Error {
                return stdgo._internal.path.filepath.Filepath.walkDir(_td?.__copy__(), _walkDirFn);
            };
            _check(_t, walkDir, _td?.__copy__());
            _check(_t, walkDir, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__());
        });
    }
function testWalkSkipAllOnFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _td:stdgo.GoString = _t.tempDir()?.__copy__();
        {
            var _err:stdgo.Error = stdgo._internal.os.Os.mkdirAll(stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString), ("subdir" : stdgo.GoString))?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = stdgo._internal.os.Os.mkdirAll(stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir2" : stdgo.GoString))?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _touch(_t, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString), ("foo1" : stdgo.GoString))?.__copy__());
        _touch(_t, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString), ("foo2" : stdgo.GoString))?.__copy__());
        _touch(_t, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString), ("subdir" : stdgo.GoString), ("foo3" : stdgo.GoString))?.__copy__());
        _touch(_t, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString), ("foo4" : stdgo.GoString))?.__copy__());
        _touch(_t, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir2" : stdgo.GoString), ("bar" : stdgo.GoString))?.__copy__());
        _touch(_t, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("last" : stdgo.GoString))?.__copy__());
        var _remainingWereSkipped:Bool = true;
        var _walker:stdgo.GoString -> stdgo.Error = function(_path:stdgo.GoString):stdgo.Error {
            if (stdgo._internal.strings.Strings.hasSuffix(_path?.__copy__(), ("foo2" : stdgo.GoString))) {
                return stdgo._internal.path.filepath.Filepath.skipAll;
            };
            if ((((stdgo._internal.strings.Strings.hasSuffix(_path?.__copy__(), ("foo3" : stdgo.GoString)) || stdgo._internal.strings.Strings.hasSuffix(_path?.__copy__(), ("foo4" : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings.hasSuffix(_path?.__copy__(), ("bar" : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings.hasSuffix(_path?.__copy__(), ("last" : stdgo.GoString)) : Bool)) {
                _remainingWereSkipped = false;
            };
            return (null : stdgo.Error);
        };
        var _walkFn:(stdgo.GoString, stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error) -> stdgo.Error = function(_path:stdgo.GoString, __24:stdgo._internal.io.fs.Fs.FileInfo, __25:stdgo.Error):stdgo.Error {
            return _walker(_path?.__copy__());
        };
        var _walkDirFn:(stdgo.GoString, stdgo._internal.io.fs.Fs.DirEntry, stdgo.Error) -> stdgo.Error = function(_path:stdgo.GoString, __24:stdgo._internal.io.fs.Fs.DirEntry, __25:stdgo.Error):stdgo.Error {
            return _walker(_path?.__copy__());
        };
        var _check = function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _walk:(_root:stdgo.GoString) -> stdgo.Error, _root:stdgo.GoString):Void {
            _t.helper();
            _remainingWereSkipped = true;
            {
                var _err:stdgo.Error = _walk(_root?.__copy__());
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            if (!_remainingWereSkipped) {
                _t.errorf(("SkipAll on file foo2 did not block processing of remaining files and directories" : stdgo.GoString));
            };
        };
        _t.run(("Walk" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var walk:stdgo.GoString -> stdgo.Error = function(__32:stdgo.GoString):stdgo.Error {
                return stdgo._internal.path.filepath.Filepath.walk(_td?.__copy__(), _walkFn);
            };
            _check(_t, walk, _td?.__copy__());
            _check(_t, walk, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__());
        });
        _t.run(("WalkDir" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var walkDir:stdgo.GoString -> stdgo.Error = function(__40:stdgo.GoString):stdgo.Error {
                return stdgo._internal.path.filepath.Filepath.walkDir(_td?.__copy__(), _walkDirFn);
            };
            _check(_t, walkDir, _td?.__copy__());
            _check(_t, walkDir, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__());
        });
    }
function testWalkFileError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _td:stdgo.GoString = _t.tempDir()?.__copy__();
            _touch(_t, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("foo" : stdgo.GoString))?.__copy__());
            _touch(_t, stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("bar" : stdgo.GoString))?.__copy__());
            var _dir:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__();
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.mkdirAll(stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _touch(_t, stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("baz" : stdgo.GoString))?.__copy__());
            _touch(_t, stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("stat-error" : stdgo.GoString))?.__copy__());
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo._internal.path.filepath.Filepath.lstatP = stdgo._internal.os.Os.lstat;
                };
                a();
            });
            var _statErr:stdgo.Error = stdgo._internal.errors.Errors.new_(("some stat error" : stdgo.GoString));
            stdgo._internal.path.filepath.Filepath.lstatP = function(_path:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } {
                if (stdgo._internal.strings.Strings.hasSuffix(_path?.__copy__(), ("stat-error" : stdgo.GoString))) {
                    return { _0 : (null : stdgo._internal.io.fs.Fs.FileInfo), _1 : _statErr };
                };
                return stdgo._internal.os.Os.lstat(_path?.__copy__());
            };
            var _got = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Error>();
                x.__defaultValue__ = () -> (null : stdgo.Error);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Error>);
            var _err:stdgo.Error = stdgo._internal.path.filepath.Filepath.walk(_td?.__copy__(), function(_path:stdgo.GoString, _fi:stdgo._internal.io.fs.Fs.FileInfo, _err:stdgo.Error):stdgo.Error {
                var __tmp__ = stdgo._internal.path.filepath.Filepath.rel(_td?.__copy__(), _path?.__copy__()), _rel:stdgo.GoString = __tmp__._0, __16:stdgo.Error = __tmp__._1;
                _got[stdgo._internal.path.filepath.Filepath.toSlash(_rel?.__copy__())] = _err;
                return (null : stdgo.Error);
            });
            if (_err != null) {
                _t.errorf(("Walk error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _want = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Error>();
                x.__defaultValue__ = () -> (null : stdgo.Error);
                @:mergeBlock {
                    x.set(("." : stdgo.GoString), (null : stdgo.Error));
                    x.set(("foo" : stdgo.GoString), (null : stdgo.Error));
                    x.set(("bar" : stdgo.GoString), (null : stdgo.Error));
                    x.set(("dir" : stdgo.GoString), (null : stdgo.Error));
                    x.set(("dir/baz" : stdgo.GoString), (null : stdgo.Error));
                    x.set(("dir/stat-error" : stdgo.GoString), _statErr);
                };
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Error>);
            if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
                _t.errorf(("Walked %#v; want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testWalkSymlinkRoot(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _td:stdgo.GoString = _t.tempDir()?.__copy__();
        var _dir:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__();
        {
            var _err:stdgo.Error = stdgo._internal.os.Os.mkdirAll(stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("dir" : stdgo.GoString))?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _touch(_t, stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("foo" : stdgo.GoString))?.__copy__());
        var _link:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("link" : stdgo.GoString))?.__copy__();
        {
            var _err:stdgo.Error = stdgo._internal.os.Os.symlink(("dir" : stdgo.GoString), _link?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _abslink:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("abslink" : stdgo.GoString))?.__copy__();
        {
            var _err:stdgo.Error = stdgo._internal.os.Os.symlink(_dir?.__copy__(), _abslink?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _linklink:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_td?.__copy__(), ("linklink" : stdgo.GoString))?.__copy__();
        {
            var _err:stdgo.Error = stdgo._internal.os.Os.symlink(("link" : stdgo.GoString), _linklink?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        for (__40 => _tt in (new stdgo.Slice<T__struct_2>(6, 6, ...[({ _desc : ("no slash" : stdgo.GoString), _root : _link?.__copy__(), _want : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_link?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : T__struct_2), ({ _desc : ("slash" : stdgo.GoString), _root : (_link + ((47 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _want : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_link?.__copy__(), stdgo._internal.path.filepath.Filepath.join(_link?.__copy__(), ("foo" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : T__struct_2), ({ _desc : ("abs no slash" : stdgo.GoString), _root : _abslink?.__copy__(), _want : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_abslink?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : T__struct_2), ({ _desc : ("abs with slash" : stdgo.GoString), _root : (_abslink + ((47 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _want : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_abslink?.__copy__(), stdgo._internal.path.filepath.Filepath.join(_abslink?.__copy__(), ("foo" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : T__struct_2), ({ _desc : ("double link no slash" : stdgo.GoString), _root : _linklink?.__copy__(), _want : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_linklink?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : T__struct_2), ({ _desc : ("double link with slash" : stdgo.GoString), _root : (_linklink + ((47 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _want : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_linklink?.__copy__(), stdgo._internal.path.filepath.Filepath.join(_linklink?.__copy__(), ("foo" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("darwin" : stdgo.GoString), ("ios" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : T__struct_2)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _desc : ("" : stdgo.GoString), _root : ("" : stdgo.GoString), _want : (null : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : T__struct_2)])) : stdgo.Slice<T__struct_2>)) {
            var _tt:T__struct_2 = {
                final x = _tt;
                ({ _desc : x._desc?.__copy__(), _root : x._root?.__copy__(), _want : x._want, _buggyGOOS : x._buggyGOOS } : T__struct_2);
            };
            _t.run(_tt._desc?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var _walked:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                var _err:stdgo.Error = stdgo._internal.path.filepath.Filepath.walk(_tt._root?.__copy__(), function(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs.FileInfo, _err:stdgo.Error):stdgo.Error {
                    if (_err != null) {
                        return _err;
                    };
                    _t.logf(("%#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(stdgo.Go.asInterface(_info.mode())));
                    _walked = (_walked.__append__(stdgo._internal.path.filepath.Filepath.clean(_path?.__copy__())?.__copy__()));
                    return (null : stdgo.Error);
                });
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_walked), stdgo.Go.toInterface(_tt._want))) {
                    _t.logf(("Walk(%#q) visited %#q; want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._root), stdgo.Go.toInterface(_walked), stdgo.Go.toInterface(_tt._want));
                    if (stdgo._internal.slices.Slices.contains((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _tt._buggyGOOS, ("js" : stdgo.GoString))) {
                        _t.logf(("(ignoring known bug on %v)" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
                    } else {
                        _t.fail();
                    };
                };
            });
        };
    }
function testBase(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = _basetests;
        if (false) {
            for (_i => _ in _tests) {
                _tests[(_i : stdgo.GoInt)]._result = stdgo._internal.path.filepath.Filepath.clean(_tests[(_i : stdgo.GoInt)]._result?.__copy__())?.__copy__();
            };
            _tests = (_tests.__append__(...(_winbasetests : Array<stdgo._internal.path.filepath_test.Filepath_test.PathTest>)));
        };
        for (__0 => _test in _tests) {
            {
                var _s:stdgo.GoString = stdgo._internal.path.filepath.Filepath.base(_test._path?.__copy__())?.__copy__();
                if (_s != (_test._result)) {
                    _t.errorf(("Base(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
function testDir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = _dirtests;
        if (false) {
            for (_i => _ in _tests) {
                _tests[(_i : stdgo.GoInt)]._result = stdgo._internal.path.filepath.Filepath.clean(_tests[(_i : stdgo.GoInt)]._result?.__copy__())?.__copy__();
            };
            _tests = (_tests.__append__(...(_windirtests : Array<stdgo._internal.path.filepath_test.Filepath_test.PathTest>)));
        } else {
            _tests = (_tests.__append__(...(_nonwindirtests : Array<stdgo._internal.path.filepath_test.Filepath_test.PathTest>)));
        };
        for (__0 => _test in _tests) {
            {
                var _s:stdgo.GoString = stdgo._internal.path.filepath.Filepath.dir(_test._path?.__copy__())?.__copy__();
                if (_s != (_test._result)) {
                    _t.errorf(("Dir(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
function testIsAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests:stdgo.Slice<IsAbsTest> = (null : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest>);
        if (false) {
            _tests = (_tests.__append__(...(_winisabstests : Array<stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest>)));
            for (__0 => _test in _isabstests) {
                _tests = (_tests.__append__((new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest(_test._path?.__copy__(), false) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest)));
            };
            for (__1 => _test in _isabstests) {
                _tests = (_tests.__append__((new stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest((("c:" : stdgo.GoString) + _test._path?.__copy__() : stdgo.GoString)?.__copy__(), _test._isAbs) : stdgo._internal.path.filepath_test.Filepath_test.IsAbsTest)));
            };
        } else {
            _tests = _isabstests;
        };
        for (__2 => _test in _tests) {
            {
                var _r:Bool = stdgo._internal.path.filepath.Filepath.isAbs(_test._path?.__copy__());
                if (_r != (_test._isAbs)) {
                    _t.errorf(("IsAbs(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_test._isAbs));
                };
            };
        };
    }
function _simpleJoin(_dir:stdgo.GoString, _path:stdgo.GoString):stdgo.GoString {
        return ((_dir + ((47 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString) + _path?.__copy__() : stdgo.GoString)?.__copy__();
    }
function _testEvalSymlinks(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _path:stdgo.GoString, _want:stdgo.GoString):Void {
        var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_path?.__copy__()), _have:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("EvalSymlinks(%q) error: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            return;
        };
        if (stdgo._internal.path.filepath.Filepath.clean(_have?.__copy__()) != (stdgo._internal.path.filepath.Filepath.clean(_want?.__copy__()))) {
            _t.errorf(("EvalSymlinks(%q) returns %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
        };
    }
function _testEvalSymlinksAfterChdir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _wd:stdgo.GoString, _path:stdgo.GoString, _want:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os.getwd(), _cwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:stdgo.Error = stdgo._internal.os.Os.chdir(_cwd?.__copy__());
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                a();
            });
            _err = stdgo._internal.os.Os.chdir(_wd?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_path?.__copy__()), _have:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("EvalSymlinks(%q) in %q directory error: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_wd), stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (stdgo._internal.path.filepath.Filepath.clean(_have?.__copy__()) != (stdgo._internal.path.filepath.Filepath.clean(_want?.__copy__()))) {
                _t.errorf(("EvalSymlinks(%q) in %q directory returns %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_wd), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testEvalSymlinks(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmpDir:stdgo.GoString = _t.tempDir()?.__copy__();
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_tmpDir?.__copy__());
            _tmpDir = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("eval symlink for tmp dir:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        for (__16 => _d in evalSymlinksTestDirs) {
            var _err:stdgo.Error = (null : stdgo.Error);
            var _path:stdgo.GoString = _simpleJoin(_tmpDir?.__copy__(), _d._path?.__copy__())?.__copy__();
            if (_d._dest == (stdgo.Go.str())) {
                _err = stdgo._internal.os.Os.mkdir(_path?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
            } else {
                _err = stdgo._internal.os.Os.symlink(_d._dest?.__copy__(), _path?.__copy__());
            };
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        for (__25 => _test in evalSymlinksTests) {
            var _path:stdgo.GoString = _simpleJoin(_tmpDir?.__copy__(), _test._path?.__copy__())?.__copy__();
            var _dest:stdgo.GoString = _simpleJoin(_tmpDir?.__copy__(), _test._dest?.__copy__())?.__copy__();
            if ((stdgo._internal.path.filepath.Filepath.isAbs(_test._dest?.__copy__()) || stdgo._internal.os.Os.isPathSeparator(_test._dest[(0 : stdgo.GoInt)]) : Bool)) {
                _dest = _test._dest?.__copy__();
            };
            _testEvalSymlinks(_t, _path?.__copy__(), _dest?.__copy__());
            _testEvalSymlinksAfterChdir(_t, _path?.__copy__(), ("." : stdgo.GoString), ("." : stdgo.GoString));
            if (false) {
                var _volDot:stdgo.GoString = (stdgo._internal.path.filepath.Filepath.volumeName(_tmpDir?.__copy__()) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                _testEvalSymlinksAfterChdir(_t, _path?.__copy__(), _volDot?.__copy__(), _volDot?.__copy__());
            };
            var _dotdotPath:stdgo.GoString = _simpleJoin((".." : stdgo.GoString), _test._dest?.__copy__())?.__copy__();
            if ((stdgo._internal.path.filepath.Filepath.isAbs(_test._dest?.__copy__()) || stdgo._internal.os.Os.isPathSeparator(_test._dest[(0 : stdgo.GoInt)]) : Bool)) {
                _dotdotPath = _test._dest?.__copy__();
            };
            _testEvalSymlinksAfterChdir(_t, _simpleJoin(_tmpDir?.__copy__(), ("test" : stdgo.GoString))?.__copy__(), _simpleJoin((".." : stdgo.GoString), _test._path?.__copy__())?.__copy__(), _dotdotPath?.__copy__());
            _testEvalSymlinksAfterChdir(_t, _tmpDir?.__copy__(), _test._path?.__copy__(), _test._dest?.__copy__());
        };
    }
function testEvalSymlinksIsNotExist(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(("notexist" : stdgo.GoString)), __0:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!stdgo._internal.os.Os.isNotExist(_err)) {
                _t.errorf(("expected the file is not found, got %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = stdgo._internal.os.Os.symlink(("notexist" : stdgo.GoString), ("link" : stdgo.GoString));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = ("link" : stdgo.GoString);
                __deferstack__.unshift(() -> stdgo._internal.os.Os.remove(_a0?.__copy__()));
            };
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(("link" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (!stdgo._internal.os.Os.isNotExist(_err)) {
                _t.errorf(("expected the file is not found, got %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testIssue13582(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmpDir:stdgo.GoString = _t.tempDir()?.__copy__();
        var _dir:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_tmpDir?.__copy__(), ("dir" : stdgo.GoString))?.__copy__();
        var _err:stdgo.Error = stdgo._internal.os.Os.mkdir(_dir?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _linkToDir:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_tmpDir?.__copy__(), ("link_to_dir" : stdgo.GoString))?.__copy__();
        _err = stdgo._internal.os.Os.symlink(_dir?.__copy__(), _linkToDir?.__copy__());
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _file:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_linkToDir?.__copy__(), ("file" : stdgo.GoString))?.__copy__();
        _err = stdgo._internal.os.Os.writeFile(_file?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs.FileMode));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _link1:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_linkToDir?.__copy__(), ("link1" : stdgo.GoString))?.__copy__();
        _err = stdgo._internal.os.Os.symlink(_file?.__copy__(), _link1?.__copy__());
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _link2:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_linkToDir?.__copy__(), ("link2" : stdgo.GoString))?.__copy__();
        _err = stdgo._internal.os.Os.symlink(_link1?.__copy__(), _link2?.__copy__());
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_tmpDir?.__copy__()), _realTmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _realDir:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_realTmpDir?.__copy__(), ("dir" : stdgo.GoString))?.__copy__();
        var _realFile:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_realDir?.__copy__(), ("file" : stdgo.GoString))?.__copy__();
        var _tests = (new stdgo.Slice<T__struct_3>(5, 5, ...[({ _path : _dir?.__copy__(), _want : _realDir?.__copy__() } : T__struct_3), ({ _path : _linkToDir?.__copy__(), _want : _realDir?.__copy__() } : T__struct_3), ({ _path : _file?.__copy__(), _want : _realFile?.__copy__() } : T__struct_3), ({ _path : _link1?.__copy__(), _want : _realFile?.__copy__() } : T__struct_3), ({ _path : _link2?.__copy__(), _want : _realFile?.__copy__() } : T__struct_3)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _path : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : T__struct_3)])) : stdgo.Slice<T__struct_3>);
        for (_i => _test in _tests) {
            var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_test._path?.__copy__()), _have:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (_have != (_test._want)) {
                _t.errorf(("test#%d: EvalSymlinks(%q) returns %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_test._want));
            };
        };
    }
function testRelativeSymlinkToAbsolute(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmpDir:stdgo.GoString = _t.tempDir()?.__copy__();
        _chdir(_t, _tmpDir?.__copy__());
        {
            var _err:stdgo.Error = stdgo._internal.os.Os.symlink(_tmpDir?.__copy__(), ("link" : stdgo.GoString));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _t.logf(("os.Symlink(%q, \"link\")" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir));
        var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(("link" : stdgo.GoString)), _p:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(\"link\"): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_tmpDir?.__copy__()), _want:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir), stdgo.Go.toInterface(_err));
        };
        if (_p != (_want)) {
            _t.errorf(("EvalSymlinks(\"link\") = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_want));
        };
        _t.logf(("EvalSymlinks(\"link\") = %q" : stdgo.GoString), stdgo.Go.toInterface(_p));
    }
function testAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _root:stdgo.GoString = _t.tempDir()?.__copy__();
            var __tmp__ = stdgo._internal.os.Os.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("getwd failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            _err = stdgo._internal.os.Os.chdir(_root?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("chdir failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo._internal.os.Os.chdir(_a0?.__copy__()));
            };
            for (__24 => _dir in _absTestDirs) {
                _err = stdgo._internal.os.Os.mkdir(_dir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(("Mkdir failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            if (false) {
                var _vol:stdgo.GoString = stdgo._internal.path.filepath.Filepath.volumeName(_root?.__copy__())?.__copy__();
                var _extra:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                for (__33 => _path in _absTests) {
                    if (stdgo._internal.strings.Strings.contains(_path?.__copy__(), ("$" : stdgo.GoString))) {
                        continue;
                    };
                    _path = (_vol + _path?.__copy__() : stdgo.GoString)?.__copy__();
                    _extra = (_extra.__append__(_path?.__copy__()));
                };
                _absTests = (_absTests.__append__(...(_extra : Array<stdgo.GoString>)));
            };
            _err = stdgo._internal.os.Os.chdir(_absTestDirs[(0 : stdgo.GoInt)]?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("chdir failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            for (__42 => _path in _absTests) {
                _path = stdgo._internal.strings.Strings.replaceAll(_path?.__copy__(), ("$" : stdgo.GoString), _root?.__copy__())?.__copy__();
                var __tmp__ = stdgo._internal.os.Os.stat(_path?.__copy__()), _info:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo._internal.path.filepath.Filepath.abs(_path?.__copy__()), _abspath:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Abs(%q) error: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo._internal.os.Os.stat(_abspath?.__copy__()), _absinfo:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) || !stdgo._internal.os.Os.sameFile(_absinfo, _info) : Bool)) {
                    _t.errorf(("Abs(%q)=%q, not the same file" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_abspath));
                };
                if (!stdgo._internal.path.filepath.Filepath.isAbs(_abspath?.__copy__())) {
                    _t.errorf(("Abs(%q)=%q, not an absolute path" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_abspath));
                };
                if ((stdgo._internal.path.filepath.Filepath.isAbs(_abspath?.__copy__()) && (_abspath != stdgo._internal.path.filepath.Filepath.clean(_abspath?.__copy__())) : Bool)) {
                    _t.errorf(("Abs(%q)=%q, isn\'t clean" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_abspath));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testAbsEmptyString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _root:stdgo.GoString = _t.tempDir()?.__copy__();
            var __tmp__ = stdgo._internal.os.Os.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("getwd failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            _err = stdgo._internal.os.Os.chdir(_root?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("chdir failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo._internal.os.Os.chdir(_a0?.__copy__()));
            };
            var __tmp__ = stdgo._internal.os.Os.stat(_root?.__copy__()), _info:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_root), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.path.filepath.Filepath.abs(stdgo.Go.str()?.__copy__()), _abspath:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Abs(\"\") error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.os.Os.stat(_abspath?.__copy__()), _absinfo:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || !stdgo._internal.os.Os.sameFile(_absinfo, _info) : Bool)) {
                _t.errorf(("Abs(\"\")=%q, not the same file" : stdgo.GoString), stdgo.Go.toInterface(_abspath));
            };
            if (!stdgo._internal.path.filepath.Filepath.isAbs(_abspath?.__copy__())) {
                _t.errorf(("Abs(\"\")=%q, not an absolute path" : stdgo.GoString), stdgo.Go.toInterface(_abspath));
            };
            if ((stdgo._internal.path.filepath.Filepath.isAbs(_abspath?.__copy__()) && (_abspath != stdgo._internal.path.filepath.Filepath.clean(_abspath?.__copy__())) : Bool)) {
                _t.errorf(("Abs(\"\")=%q, isn\'t clean" : stdgo.GoString), stdgo.Go.toInterface(_abspath));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testRel(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = ((new stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.RelTests>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path.filepath_test.Filepath_test.RelTests)])) : stdgo.Slice<stdgo._internal.path.filepath_test.Filepath_test.RelTests>).__append__(...(_reltests : Array<stdgo._internal.path.filepath_test.Filepath_test.RelTests>)));
        if (false) {
            for (_i => _ in _tests) {
                _tests[(_i : stdgo.GoInt)]._want = stdgo._internal.path.filepath.Filepath.fromSlash(_tests[(_i : stdgo.GoInt)]._want?.__copy__())?.__copy__();
            };
            _tests = (_tests.__append__(...(_winreltests : Array<stdgo._internal.path.filepath_test.Filepath_test.RelTests>)));
        };
        for (__0 => _test in _tests) {
            var __tmp__ = stdgo._internal.path.filepath.Filepath.rel(_test._root?.__copy__(), _test._path?.__copy__()), _got:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_test._want == (("err" : stdgo.GoString))) {
                if (_err == null) {
                    _t.errorf(("Rel(%q, %q)=%q, want error" : stdgo.GoString), stdgo.Go.toInterface(_test._root), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_got));
                };
                continue;
            };
            if (_err != null) {
                _t.errorf(("Rel(%q, %q): want %q, got error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._root), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_test._want), stdgo.Go.toInterface(_err));
            };
            if (_got != (_test._want)) {
                _t.errorf(("Rel(%q, %q)=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._root), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }
function testVolumeName(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (true) {
            return;
        };
        for (__0 => _v in _volumenametests) {
            {
                var _vol:stdgo.GoString = stdgo._internal.path.filepath.Filepath.volumeName(_v._path?.__copy__())?.__copy__();
                if (_vol != (_v._vol)) {
                    _t.errorf(("VolumeName(%q)=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_v._path), stdgo.Go.toInterface(_vol), stdgo.Go.toInterface(_v._vol));
                };
            };
        };
    }
function testDriveLetterInEvalSymlinks(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (true) {
            return;
        };
        var __tmp__ = stdgo._internal.os.Os.getwd(), _wd:stdgo.GoString = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        if (((_wd.length) < (3 : stdgo.GoInt) : Bool)) {
            _t.errorf(("Current directory path %q is too short" : stdgo.GoString), stdgo.Go.toInterface(_wd));
        };
        var _lp:stdgo.GoString = stdgo._internal.strings.Strings.toLower(_wd?.__copy__())?.__copy__();
        var _up:stdgo.GoString = stdgo._internal.strings.Strings.toUpper(_wd?.__copy__())?.__copy__();
        var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_lp?.__copy__()), _flp:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(%q) failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_lp), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_up?.__copy__()), _fup:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(%q) failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_up), stdgo.Go.toInterface(_err));
        };
        if (_flp != (_fup)) {
            _t.errorf(("Results of EvalSymlinks do not match: %q and %q" : stdgo.GoString), stdgo.Go.toInterface(_flp), stdgo.Go.toInterface(_fup));
        };
    }
function testBug3486(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _t.skipf(("skipping on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
        var _root:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(stdgo._internal.internal.testenv.Testenv.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("src" : stdgo.GoString), ("unicode" : stdgo.GoString))?.__copy__();
        var _utf16:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_root?.__copy__(), ("utf16" : stdgo.GoString))?.__copy__();
        var _utf8:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_root?.__copy__(), ("utf8" : stdgo.GoString))?.__copy__();
        var _seenUTF16:Bool = false;
        var _seenUTF8:Bool = false;
        var _err:stdgo.Error = stdgo._internal.path.filepath.Filepath.walk(_root?.__copy__(), function(_pth:stdgo.GoString, _info:stdgo._internal.io.fs.Fs.FileInfo, _err:stdgo.Error):stdgo.Error {
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                final __value__ = _pth;
                if (__value__ == (_utf16)) {
                    _seenUTF16 = true;
                    return stdgo._internal.path.filepath.Filepath.skipDir;
                } else if (__value__ == (_utf8)) {
                    if (!_seenUTF16) {
                        _t.fatal(stdgo.Go.toInterface(("filepath.Walk out of order - utf8 before utf16" : stdgo.GoString)));
                    };
                    _seenUTF8 = true;
                };
            };
            return (null : stdgo.Error);
        });
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (!_seenUTF8) {
            _t.fatalf(("%q not seen" : stdgo.GoString), stdgo.Go.toInterface(_utf8));
        };
    }
function _testWalkSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _mklink:(_target:stdgo.GoString, _link:stdgo.GoString) -> stdgo.Error):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpdir:stdgo.GoString = _t.tempDir()?.__copy__();
            var __tmp__ = stdgo._internal.os.Os.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo._internal.os.Os.chdir(_a0?.__copy__()));
            };
            _err = stdgo._internal.os.Os.chdir(_tmpdir?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _err = _mklink(_tmpdir?.__copy__(), ("link" : stdgo.GoString));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _visited:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            _err = stdgo._internal.path.filepath.Filepath.walk(_tmpdir?.__copy__(), function(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs.FileInfo, _err:stdgo.Error):stdgo.Error {
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var __tmp__ = stdgo._internal.path.filepath.Filepath.rel(_tmpdir?.__copy__(), _path?.__copy__()), _rel:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                _visited = (_visited.__append__(_rel?.__copy__()));
                return (null : stdgo.Error);
            });
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            stdgo._internal.sort.Sort.strings(_visited);
            var _want = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("." : stdgo.GoString), ("link" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            if (stdgo._internal.fmt.Fmt.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_visited)) != (stdgo._internal.fmt.Fmt.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_want)))) {
                _t.errorf(("unexpected paths visited %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_visited), stdgo.Go.toInterface(_want));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testWalkSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        _testWalkSymlink(_t, stdgo._internal.os.Os.symlink);
    }
function testIssue29372(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tmpDir:stdgo.GoString = _t.tempDir()?.__copy__();
        var _path:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_tmpDir?.__copy__(), ("file.txt" : stdgo.GoString))?.__copy__();
        var _err:stdgo.Error = stdgo._internal.os.Os.writeFile(_path?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs.FileMode));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _pathSeparator:stdgo.GoString = ((47 : stdgo.GoInt32) : stdgo.GoString);
        var _tests = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[(_path + stdgo._internal.strings.Strings.repeat(_pathSeparator?.__copy__(), (1 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), (_path + stdgo._internal.strings.Strings.repeat(_pathSeparator?.__copy__(), (2 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__(), ((_path + stdgo._internal.strings.Strings.repeat(_pathSeparator?.__copy__(), (1 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ((_path + stdgo._internal.strings.Strings.repeat(_pathSeparator?.__copy__(), (2 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ((_path + stdgo._internal.strings.Strings.repeat(_pathSeparator?.__copy__(), (1 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (".." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ((_path + stdgo._internal.strings.Strings.repeat(_pathSeparator?.__copy__(), (2 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (".." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _test in _tests) {
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_test?.__copy__());
                _err = __tmp__._1;
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface((20 : stdgo._internal.syscall.Syscall.Errno))))) {
                _t.fatalf(("test#%d: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((20 : stdgo._internal.syscall.Syscall.Errno))), stdgo.Go.toInterface(_err));
            };
        };
    }
function testEvalSymlinksAboveRoot(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        _t.parallel();
        var _tmpDir:stdgo.GoString = _t.tempDir()?.__copy__();
        var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_tmpDir?.__copy__()), _evalTmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = stdgo._internal.os.Os.mkdir(stdgo._internal.path.filepath.Filepath.join(_evalTmpDir?.__copy__(), ("a" : stdgo.GoString))?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = stdgo._internal.os.Os.symlink(stdgo._internal.path.filepath.Filepath.join(_evalTmpDir?.__copy__(), ("a" : stdgo.GoString))?.__copy__(), stdgo._internal.path.filepath.Filepath.join(_evalTmpDir?.__copy__(), ("b" : stdgo.GoString))?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = stdgo._internal.os.Os.writeFile(stdgo._internal.path.filepath.Filepath.join(_evalTmpDir?.__copy__(), ("a" : stdgo.GoString), ("file" : stdgo.GoString))?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (438u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _vol:stdgo.GoString = stdgo._internal.path.filepath.Filepath.volumeName(_evalTmpDir?.__copy__())?.__copy__();
        var _c:stdgo.GoInt = stdgo._internal.strings.Strings.count((_evalTmpDir.__slice__((_vol.length)) : stdgo.GoString)?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString));
        var _dd:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_c + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                _dd = (_dd.__append__((".." : stdgo.GoString)));
            });
        };
        var _wantSuffix:stdgo.GoString = stdgo._internal.strings.Strings.join((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("file" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__();
        for (__48 => _i in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[_c, (_c + (1 : stdgo.GoInt) : stdgo.GoInt), (_c + (2 : stdgo.GoInt) : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _check:stdgo.GoString = stdgo._internal.strings.Strings.join((new stdgo.Slice<stdgo.GoString>(5, 5, ...[_evalTmpDir?.__copy__(), stdgo._internal.strings.Strings.join((_dd.__slice__(0, _i) : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__(), (_evalTmpDir.__slice__(((_vol.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString), ("file" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__();
            var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_check?.__copy__()), _resolved:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((false && stdgo._internal.errors.Errors.is_(_err, stdgo._internal.io.fs.Fs.errNotExist) : Bool)) {
                stdgo._internal.internal.testenv.Testenv.skipFlaky(stdgo.Go.asInterface(_t), (37910 : stdgo.GoInt));
            } else if (_err != null) {
                _t.errorf(("EvalSymlinks(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_err));
            } else if (!stdgo._internal.strings.Strings.hasSuffix(_resolved?.__copy__(), _wantSuffix?.__copy__())) {
                _t.errorf(("EvalSymlinks(%q) = %q does not end with %q" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_resolved), stdgo.Go.toInterface(_wantSuffix));
            } else {
                _t.logf(("EvalSymlinks(%q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_resolved));
            };
        };
    }
function testEvalSymlinksAboveRootChdir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
            var __tmp__ = stdgo._internal.os.Os.mkdirTemp(stdgo.Go.str()?.__copy__(), ("TestEvalSymlinksAboveRootChdir" : stdgo.GoString)), _tmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _tmpDir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os.removeAll(_a0?.__copy__()));
            };
            _chdir(_t, _tmpDir?.__copy__());
            var _subdir:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(("a" : stdgo.GoString), ("b" : stdgo.GoString))?.__copy__();
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.mkdirAll(_subdir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.symlink(_subdir?.__copy__(), ("c" : stdgo.GoString));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.writeFile(stdgo._internal.path.filepath.Filepath.join(_subdir?.__copy__(), ("file" : stdgo.GoString))?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (438u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _subdir = stdgo._internal.path.filepath.Filepath.join(("d" : stdgo.GoString), ("e" : stdgo.GoString), ("f" : stdgo.GoString))?.__copy__();
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.mkdirAll(_subdir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.chdir(_subdir?.__copy__());
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _check:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join((".." : stdgo.GoString), (".." : stdgo.GoString), (".." : stdgo.GoString), ("c" : stdgo.GoString), ("file" : stdgo.GoString))?.__copy__();
            var _wantSuffix:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(("a" : stdgo.GoString), ("b" : stdgo.GoString), ("file" : stdgo.GoString))?.__copy__();
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_check?.__copy__()), _resolved:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("EvalSymlinks(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_err));
                } else if (!stdgo._internal.strings.Strings.hasSuffix(_resolved?.__copy__(), _wantSuffix?.__copy__())) {
                    _t.errorf(("EvalSymlinks(%q) = %q does not end with %q" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_resolved), stdgo.Go.toInterface(_wantSuffix));
                } else {
                    _t.logf(("EvalSymlinks(%q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_resolved));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testIssue51617(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dir:stdgo.GoString = _t.tempDir()?.__copy__();
            for (__8 => _sub in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), stdgo._internal.path.filepath.Filepath.join(("a" : stdgo.GoString), ("bad" : stdgo.GoString))?.__copy__(), stdgo._internal.path.filepath.Filepath.join(("a" : stdgo.GoString), ("next" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                {
                    var _err:stdgo.Error = stdgo._internal.os.Os.mkdir(stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), _sub?.__copy__())?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
            var _bad:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("a" : stdgo.GoString), ("bad" : stdgo.GoString))?.__copy__();
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.chmod(_bad?.__copy__(), (0u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _bad;
                var _a1 = (448u32 : stdgo._internal.io.fs.Fs.FileMode);
                __deferstack__.unshift(() -> stdgo._internal.os.Os.chmod(_a0?.__copy__(), _a1));
            };
            var _saw:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _err:stdgo.Error = stdgo._internal.path.filepath.Filepath.walkDir(_dir?.__copy__(), function(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs.DirEntry, _err:stdgo.Error):stdgo.Error {
                if (_err != null) {
                    return stdgo._internal.path.filepath.Filepath.skipDir;
                };
                if (_d.isDir()) {
                    var __tmp__ = stdgo._internal.path.filepath.Filepath.rel(_dir?.__copy__(), _path?.__copy__()), _rel:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    _saw = (_saw.__append__(_rel?.__copy__()));
                };
                return (null : stdgo.Error);
            });
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _want = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("." : stdgo.GoString), ("a" : stdgo.GoString), stdgo._internal.path.filepath.Filepath.join(("a" : stdgo.GoString), ("bad" : stdgo.GoString))?.__copy__(), stdgo._internal.path.filepath.Filepath.join(("a" : stdgo.GoString), ("next" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_saw), stdgo.Go.toInterface(_want))) {
                _t.errorf(("got directories %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_saw), stdgo.Go.toInterface(_want));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
class T_globTest_asInterface {
    @:keep
    public dynamic function _globRel(_root:stdgo.GoString):stdgo.Error return __self__.value._globRel(_root);
    @:keep
    public dynamic function _globAbs(_root:stdgo.GoString, _rootPattern:stdgo.GoString):stdgo.Error return __self__.value._globAbs(_root, _rootPattern);
    @:keep
    public dynamic function _buildWant(_root:stdgo.GoString):stdgo.Slice<stdgo.GoString> return __self__.value._buildWant(_root);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_globTest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.path.filepath_test.Filepath_test.T_globTest_asInterface) class T_globTest_static_extension {
    @:keep
    static public function _globRel( _test:stdgo.Ref<T_globTest>, _root:stdgo.GoString):stdgo.Error {
        @:recv var _test:stdgo.Ref<T_globTest> = _test;
        var _p:stdgo.GoString = (_root + fromSlash(_test._pattern?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
        var __tmp__ = glob(_p?.__copy__()), _have:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        stdgo._internal.sort.Sort.strings(_have);
        var _want = _test._buildWant(_root?.__copy__());
        if (stdgo._internal.strings.Strings.join(_want, ("_" : stdgo.GoString)) == (stdgo._internal.strings.Strings.join(_have, ("_" : stdgo.GoString)))) {
            return (null : stdgo.Error);
        };
        var _wantWithNoRoot = _test._buildWant(stdgo.Go.str()?.__copy__());
        if (stdgo._internal.strings.Strings.join(_wantWithNoRoot, ("_" : stdgo.GoString)) == (stdgo._internal.strings.Strings.join(_have, ("_" : stdgo.GoString)))) {
            return (null : stdgo.Error);
        };
        return stdgo._internal.fmt.Fmt.errorf(("Glob(%q) returns %q, but %q expected" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
    }
    @:keep
    static public function _globAbs( _test:stdgo.Ref<T_globTest>, _root:stdgo.GoString, _rootPattern:stdgo.GoString):stdgo.Error {
        @:recv var _test:stdgo.Ref<T_globTest> = _test;
        var _p:stdgo.GoString = fromSlash(((_rootPattern + ("\\" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _test._pattern?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__();
        var __tmp__ = glob(_p?.__copy__()), _have:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        stdgo._internal.sort.Sort.strings(_have);
        var _want = _test._buildWant((_root + ("\\" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        if (stdgo._internal.strings.Strings.join(_want, ("_" : stdgo.GoString)) == (stdgo._internal.strings.Strings.join(_have, ("_" : stdgo.GoString)))) {
            return (null : stdgo.Error);
        };
        return stdgo._internal.fmt.Fmt.errorf(("Glob(%q) returns %q, but %q expected" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
    }
    @:keep
    static public function _buildWant( _test:stdgo.Ref<T_globTest>, _root:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _test:stdgo.Ref<T_globTest> = _test;
        var _want = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _m in _test._matches) {
            _want = (_want.__append__((_root + fromSlash(_m?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()));
        };
        stdgo._internal.sort.Sort.strings(_want);
        return _want;
    }
}
class T_statDirEntry_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function info():{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function type():stdgo._internal.io.fs.Fs.FileMode return __self__.value.type();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_statDirEntry>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.path.filepath_test.Filepath_test.T_statDirEntry_asInterface) class T_statDirEntry_static_extension {
    @:keep
    static public function string( _d:stdgo.Ref<T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<T_statDirEntry> = _d;
        return stdgo._internal.io.fs.Fs.formatDirEntry(stdgo.Go.asInterface(_d))?.__copy__();
    }
    @:keep
    static public function info( _d:stdgo.Ref<T_statDirEntry>):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<T_statDirEntry> = _d;
        return { _0 : _d._info, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function type( _d:stdgo.Ref<T_statDirEntry>):stdgo._internal.io.fs.Fs.FileMode {
        @:recv var _d:stdgo.Ref<T_statDirEntry> = _d;
        return _d._info.mode().type();
    }
    @:keep
    static public function isDir( _d:stdgo.Ref<T_statDirEntry>):Bool {
        @:recv var _d:stdgo.Ref<T_statDirEntry> = _d;
        return _d._info.isDir();
    }
    @:keep
    static public function name( _d:stdgo.Ref<T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<T_statDirEntry> = _d;
        return _d._info.name()?.__copy__();
    }
}
