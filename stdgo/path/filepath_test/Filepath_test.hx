package stdgo.path.filepath_test;
import stdgo.path.filepath.Filepath;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _matchTests : Slice<stdgo.path.filepath_test.Filepath_test.MatchTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.MatchTest>(
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("abc" : GoString))), ((("abc" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("*" : GoString))), ((("abc" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("*c" : GoString))), ((("abc" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a*" : GoString))), ((("a" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a*" : GoString))), ((("abc" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a*" : GoString))), ((("ab/c" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a*/b" : GoString))), ((("abc/b" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a*/b" : GoString))), ((("a/c/b" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a*b*c*d*e*/f" : GoString))), ((("axbxcxdxe/f" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a*b*c*d*e*/f" : GoString))), ((("axbxcxdxexxx/f" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a*b*c*d*e*/f" : GoString))), ((("axbxcxdxe/xxx/f" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a*b*c*d*e*/f" : GoString))), ((("axbxcxdxexxx/fff" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a*b?c*x" : GoString))), ((("abxbbxdbxebxczzx" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a*b?c*x" : GoString))), ((("abxbbxdbxebxczzy" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("ab[c]" : GoString))), ((("abc" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("ab[b-d]" : GoString))), ((("abc" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("ab[e-g]" : GoString))), ((("abc" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("ab[^c]" : GoString))), ((("abc" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("ab[^b-d]" : GoString))), ((("abc" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("ab[^e-g]" : GoString))), ((("abc" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a\\*b" : GoString))), ((("a*b" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a\\*b" : GoString))), ((("ab" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a?b" : GoString))), ((("a☺b" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a[^a]b" : GoString))), ((("a☺b" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a???b" : GoString))), ((("a☺b" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a[^a][^a][^a]b" : GoString))), ((("a☺b" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[a-ζ]*" : GoString))), ((("α" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("*[a-ζ]" : GoString))), ((("A" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a?b" : GoString))), ((("a/b" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a*b" : GoString))), ((("a/b" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[\\]a]" : GoString))), ((("]" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[\\-]" : GoString))), ((("-" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[x\\-]" : GoString))), ((("x" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[x\\-]" : GoString))), ((("-" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[x\\-]" : GoString))), ((("z" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[\\-x]" : GoString))), ((("x" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[\\-x]" : GoString))), ((("-" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[\\-x]" : GoString))), ((("a" : GoString))), false, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[]a]" : GoString))), ((("]" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[-]" : GoString))), ((("-" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[x-]" : GoString))), ((("x" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[x-]" : GoString))), ((("-" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[x-]" : GoString))), ((("z" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[-x]" : GoString))), ((("x" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[-x]" : GoString))), ((("-" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[-x]" : GoString))), ((("a" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("\\" : GoString))), ((("a" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[a-b-c]" : GoString))), ((("a" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[" : GoString))), ((("a" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[^" : GoString))), ((("a" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("[^bc" : GoString))), ((("a" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a[" : GoString))), ((("a" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a[" : GoString))), ((("ab" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a[" : GoString))), ((("x" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("a/b[" : GoString))), ((("x" : GoString))), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest)),
((new stdgo.path.filepath_test.Filepath_test.MatchTest(((("*x" : GoString))), ((("xxx" : GoString))), true, ((null : stdgo.Error))) : stdgo.path.filepath_test.Filepath_test.MatchTest))) : Slice<stdgo.path.filepath_test.Filepath_test.MatchTest>));
var _globTests : Slice<stdgo.path.filepath_test.Filepath_test.T__struct_0> = ((new Slice<stdgo.path.filepath_test.Filepath_test.T__struct_0>(((new stdgo.path.filepath_test.Filepath_test.T__struct_0(((("match.go" : GoString))), ((("match.go" : GoString)))) : stdgo.path.filepath_test.Filepath_test.T__struct_0)), ((new stdgo.path.filepath_test.Filepath_test.T__struct_0(((("mat?h.go" : GoString))), ((("match.go" : GoString)))) : stdgo.path.filepath_test.Filepath_test.T__struct_0)), ((new stdgo.path.filepath_test.Filepath_test.T__struct_0(((("*" : GoString))), ((("match.go" : GoString)))) : stdgo.path.filepath_test.Filepath_test.T__struct_0)), ((new stdgo.path.filepath_test.Filepath_test.T__struct_0(((("../*/match.go" : GoString))), ((("../filepath/match.go" : GoString)))) : stdgo.path.filepath_test.Filepath_test.T__struct_0))) : Slice<stdgo.path.filepath_test.Filepath_test.T__struct_0>));
var _globSymlinkTests : Slice<stdgo.path.filepath_test.Filepath_test.T__struct_1> = ((new Slice<stdgo.path.filepath_test.Filepath_test.T__struct_1>(((new stdgo.path.filepath_test.Filepath_test.T__struct_1(((("test1" : GoString))), ((("link1" : GoString))), false) : stdgo.path.filepath_test.Filepath_test.T__struct_1)), ((new stdgo.path.filepath_test.Filepath_test.T__struct_1(((("test2" : GoString))), ((("link2" : GoString))), true) : stdgo.path.filepath_test.Filepath_test.T__struct_1))) : Slice<stdgo.path.filepath_test.Filepath_test.T__struct_1>));
var _cleantests : Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc" : GoString))), ((("abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/def" : GoString))), ((("abc/def" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("a/b/c" : GoString))), ((("a/b/c" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("." : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest((((".." : GoString))), (((".." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("../.." : GoString))), ((("../.." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("../../abc" : GoString))), ((("../../abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/abc" : GoString))), ((("/abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/" : GoString))), ((("/" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest((""), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/" : GoString))), ((("abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/def/" : GoString))), ((("abc/def" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("a/b/c/" : GoString))), ((("a/b/c" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("./" : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("../" : GoString))), (((".." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("../../" : GoString))), ((("../.." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/abc/" : GoString))), ((("/abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc//def//ghi" : GoString))), ((("abc/def/ghi" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("//abc" : GoString))), ((("/abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("///abc" : GoString))), ((("/abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("//abc//" : GoString))), ((("/abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc//" : GoString))), ((("abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/./def" : GoString))), ((("abc/def" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/./abc/def" : GoString))), ((("/abc/def" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/." : GoString))), ((("abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/def/ghi/../jkl" : GoString))), ((("abc/def/jkl" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/def/../ghi/../jkl" : GoString))), ((("abc/jkl" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/def/.." : GoString))), ((("abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/def/../.." : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/abc/def/../.." : GoString))), ((("/" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/def/../../.." : GoString))), (((".." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/abc/def/../../.." : GoString))), ((("/" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/def/../../../ghi/jkl/../../../mno" : GoString))), ((("../../mno" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/../abc" : GoString))), ((("/abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/./../def" : GoString))), ((("def" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc//./../def" : GoString))), ((("def" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/../../././../def" : GoString))), ((("../../def" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest))) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>));
var _wincleantests : Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
((new stdgo.path.filepath_test.Filepath_test.PathTest("c:", "c:.") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("c:\\", "c:\\") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("c:\\abc", "c:\\abc") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("c:abc\\..\\..\\.\\.\\..\\def", "c:..\\..\\def") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("c:\\abc\\def\\..\\..", "c:\\") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("c:\\..\\abc", "c:\\abc") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("c:..\\abc", "c:..\\abc") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("\\", "\\") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("/", "\\") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("\\\\i\\..\\c$", "\\c$") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("\\\\i\\..\\i\\c$", "\\i\\c$") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("\\\\i\\..\\I\\c$", "\\I\\c$") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("\\\\host\\share\\foo\\..\\bar", "\\\\host\\share\\bar") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("//host/share/foo/../baz", "\\\\host\\share\\baz") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("\\\\a\\b\\..\\c", "\\\\a\\b\\c") : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest("\\\\a\\b", "\\\\a\\b") : stdgo.path.filepath_test.Filepath_test.PathTest))) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>));
var _slashtests : Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(((new stdgo.path.filepath_test.Filepath_test.PathTest((""), ("")) : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/" : GoString))), ((((47 : GoInt32)) : GoString))) : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/a/b" : GoString))), ((((new Slice<GoUInt8>(((47 : GoUInt8)), ((((("a" : GoString))).code : GoRune)), ((47 : GoUInt8)), ((((("b" : GoString))).code : GoRune))) : Slice<GoUInt8>)) : GoString))) : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest(((("a//b" : GoString))), ((((new Slice<GoUInt8>(((((("a" : GoString))).code : GoRune)), ((47 : GoUInt8)), ((47 : GoUInt8)), ((((("b" : GoString))).code : GoRune))) : Slice<GoUInt8>)) : GoString))) : stdgo.path.filepath_test.Filepath_test.PathTest))) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>));
var _splitlisttests : Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest>(((new stdgo.path.filepath_test.Filepath_test.SplitListTest((""), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitListTest(((((new Slice<GoUInt8>(((((("a" : GoString))).code : GoRune)), ((58 : GoUInt8)), ((((("b" : GoString))).code : GoRune))) : Slice<GoUInt8>)) : GoString)), ((new Slice<GoString>(((("a" : GoString))), ((("b" : GoString)))) : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitListTest(((((new Slice<GoUInt8>(((58 : GoUInt8)), ((((("a" : GoString))).code : GoRune)), ((58 : GoUInt8)), ((((("b" : GoString))).code : GoRune))) : Slice<GoUInt8>)) : GoString)), ((new Slice<GoString>((""), ((("a" : GoString))), ((("b" : GoString)))) : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest))) : Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest>));
var _winsplitlisttests : Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest>(
((new stdgo.path.filepath_test.Filepath_test.SplitListTest("\"a\"", ((new Slice<GoString>("a") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)),
((new stdgo.path.filepath_test.Filepath_test.SplitListTest("\";\"", ((new Slice<GoString>(";") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)),
((new stdgo.path.filepath_test.Filepath_test.SplitListTest("\"a;b\"", ((new Slice<GoString>("a;b") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)),
((new stdgo.path.filepath_test.Filepath_test.SplitListTest("\";\";", ((new Slice<GoString>(";", "") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)),
((new stdgo.path.filepath_test.Filepath_test.SplitListTest(";\";\"", ((new Slice<GoString>("", ";") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)),
((new stdgo.path.filepath_test.Filepath_test.SplitListTest("a\";\"b", ((new Slice<GoString>("a;b") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)),
((new stdgo.path.filepath_test.Filepath_test.SplitListTest("a; \"\"b", ((new Slice<GoString>("a", " b") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)),
((new stdgo.path.filepath_test.Filepath_test.SplitListTest("\"a;b", ((new Slice<GoString>("a;b") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)),
((new stdgo.path.filepath_test.Filepath_test.SplitListTest("\"\"a;b", ((new Slice<GoString>("a", "b") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)),
((new stdgo.path.filepath_test.Filepath_test.SplitListTest("\"\"\"a;b", ((new Slice<GoString>("a;b") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)),
((new stdgo.path.filepath_test.Filepath_test.SplitListTest("\"\"\"\"a;b", ((new Slice<GoString>("a", "b") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)),
((new stdgo.path.filepath_test.Filepath_test.SplitListTest("a\";b", ((new Slice<GoString>("a;b") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)),
((new stdgo.path.filepath_test.Filepath_test.SplitListTest("a;b\";c", ((new Slice<GoString>("a", "b;c") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest)),
((new stdgo.path.filepath_test.Filepath_test.SplitListTest("\"a\";b\";c", ((new Slice<GoString>("a", "b;c") : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.SplitListTest))) : Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest>));
var _unixsplittests : Slice<stdgo.path.filepath_test.Filepath_test.SplitTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>(((new stdgo.path.filepath_test.Filepath_test.SplitTest(((("a/b" : GoString))), ((("a/" : GoString))), ((("b" : GoString)))) : stdgo.path.filepath_test.Filepath_test.SplitTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitTest(((("a/b/" : GoString))), ((("a/b/" : GoString))), ("")) : stdgo.path.filepath_test.Filepath_test.SplitTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitTest(((("a/" : GoString))), ((("a/" : GoString))), ("")) : stdgo.path.filepath_test.Filepath_test.SplitTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitTest(((("a" : GoString))), (""), ((("a" : GoString)))) : stdgo.path.filepath_test.Filepath_test.SplitTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitTest(((("/" : GoString))), ((("/" : GoString))), ("")) : stdgo.path.filepath_test.Filepath_test.SplitTest))) : Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>));
var _winsplittests : Slice<stdgo.path.filepath_test.Filepath_test.SplitTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>(((new stdgo.path.filepath_test.Filepath_test.SplitTest("c:", "c:", "") : stdgo.path.filepath_test.Filepath_test.SplitTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitTest("c:/", "c:/", "") : stdgo.path.filepath_test.Filepath_test.SplitTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitTest("c:/foo", "c:/", "foo") : stdgo.path.filepath_test.Filepath_test.SplitTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitTest("c:/foo/bar", "c:/foo/", "bar") : stdgo.path.filepath_test.Filepath_test.SplitTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitTest("//host/share", "//host/share", "") : stdgo.path.filepath_test.Filepath_test.SplitTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitTest("//host/share/", "//host/share/", "") : stdgo.path.filepath_test.Filepath_test.SplitTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitTest("//host/share/foo", "//host/share/", "foo") : stdgo.path.filepath_test.Filepath_test.SplitTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitTest("\\\\host\\share", "\\\\host\\share", "") : stdgo.path.filepath_test.Filepath_test.SplitTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitTest("\\\\host\\share\\", "\\\\host\\share\\", "") : stdgo.path.filepath_test.Filepath_test.SplitTest)), ((new stdgo.path.filepath_test.Filepath_test.SplitTest("\\\\host\\share\\foo", "\\\\host\\share\\", "foo") : stdgo.path.filepath_test.Filepath_test.SplitTest))) : Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>));
var _jointests : Slice<stdgo.path.filepath_test.Filepath_test.JoinTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>(
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>() : Slice<GoString>)), ("")) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>(("")) : Slice<GoString>)), ("")) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>(((("/" : GoString)))) : Slice<GoString>)), ((("/" : GoString)))) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>(((("a" : GoString)))) : Slice<GoString>)), ((("a" : GoString)))) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>(((("a" : GoString))), ((("b" : GoString)))) : Slice<GoString>)), ((("a/b" : GoString)))) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>(((("a" : GoString))), ("")) : Slice<GoString>)), ((("a" : GoString)))) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>((""), ((("b" : GoString)))) : Slice<GoString>)), ((("b" : GoString)))) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>(((("/" : GoString))), ((("a" : GoString)))) : Slice<GoString>)), ((("/a" : GoString)))) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>(((("/" : GoString))), ((("a/b" : GoString)))) : Slice<GoString>)), ((("/a/b" : GoString)))) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>(((("/" : GoString))), ("")) : Slice<GoString>)), ((("/" : GoString)))) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>(((("//" : GoString))), ((("a" : GoString)))) : Slice<GoString>)), ((("/a" : GoString)))) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>(((("/a" : GoString))), ((("b" : GoString)))) : Slice<GoString>)), ((("/a/b" : GoString)))) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>(((("a/" : GoString))), ((("b" : GoString)))) : Slice<GoString>)), ((("a/b" : GoString)))) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>(((("a/" : GoString))), ("")) : Slice<GoString>)), ((("a" : GoString)))) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>((""), ("")) : Slice<GoString>)), ("")) : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>(((("/" : GoString))), ((("a" : GoString))), ((("b" : GoString)))) : Slice<GoString>)), ((("/a/b" : GoString)))) : stdgo.path.filepath_test.Filepath_test.JoinTest))) : Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>));
var _winjointests : Slice<stdgo.path.filepath_test.Filepath_test.JoinTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>(
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("directory", "file") : Slice<GoString>)), "directory\\file") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("C:\\Windows\\", "System32") : Slice<GoString>)), "C:\\Windows\\System32") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("C:\\Windows\\", "") : Slice<GoString>)), "C:\\Windows") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("C:\\", "Windows") : Slice<GoString>)), "C:\\Windows") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("C:", "a") : Slice<GoString>)), "C:a") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("C:", "a\\b") : Slice<GoString>)), "C:a\\b") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("C:", "a", "b") : Slice<GoString>)), "C:a\\b") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("C:", "", "b") : Slice<GoString>)), "C:b") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("C:", "", "", "b") : Slice<GoString>)), "C:b") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("C:", "") : Slice<GoString>)), "C:.") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("C:", "", "") : Slice<GoString>)), "C:.") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("C:.", "a") : Slice<GoString>)), "C:a") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("C:a", "b") : Slice<GoString>)), "C:a\\b") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("C:a", "b", "d") : Slice<GoString>)), "C:a\\b\\d") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("\\\\host\\share", "foo") : Slice<GoString>)), "\\\\host\\share\\foo") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("\\\\host\\share\\foo") : Slice<GoString>)), "\\\\host\\share\\foo") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("//host/share", "foo/bar") : Slice<GoString>)), "\\\\host\\share\\foo\\bar") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("\\") : Slice<GoString>)), "\\") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("\\", "") : Slice<GoString>)), "\\") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("\\", "a") : Slice<GoString>)), "\\a") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("\\\\", "a") : Slice<GoString>)), "\\a") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("\\", "a", "b") : Slice<GoString>)), "\\a\\b") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("\\\\", "a", "b") : Slice<GoString>)), "\\a\\b") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("\\", "\\\\a\\b", "c") : Slice<GoString>)), "\\a\\b\\c") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("\\\\a", "b", "c") : Slice<GoString>)), "\\a\\b\\c") : stdgo.path.filepath_test.Filepath_test.JoinTest)),
((new stdgo.path.filepath_test.Filepath_test.JoinTest(((new Slice<GoString>("\\\\a\\", "b", "c") : Slice<GoString>)), "\\a\\b\\c") : stdgo.path.filepath_test.Filepath_test.JoinTest))) : Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>));
var _exttests : Slice<stdgo.path.filepath_test.Filepath_test.ExtTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.ExtTest>(((new stdgo.path.filepath_test.Filepath_test.ExtTest(((("path.go" : GoString))), (((".go" : GoString)))) : stdgo.path.filepath_test.Filepath_test.ExtTest)), ((new stdgo.path.filepath_test.Filepath_test.ExtTest(((("path.pb.go" : GoString))), (((".go" : GoString)))) : stdgo.path.filepath_test.Filepath_test.ExtTest)), ((new stdgo.path.filepath_test.Filepath_test.ExtTest(((("a.dir/b" : GoString))), ("")) : stdgo.path.filepath_test.Filepath_test.ExtTest)), ((new stdgo.path.filepath_test.Filepath_test.ExtTest(((("a.dir/b.go" : GoString))), (((".go" : GoString)))) : stdgo.path.filepath_test.Filepath_test.ExtTest)), ((new stdgo.path.filepath_test.Filepath_test.ExtTest(((("a.dir/" : GoString))), ("")) : stdgo.path.filepath_test.Filepath_test.ExtTest))) : Slice<stdgo.path.filepath_test.Filepath_test.ExtTest>));
var _tree : stdgo.path.filepath_test.Filepath_test.Node = ((new stdgo.path.filepath_test.Filepath_test.Node(((("testdata" : GoString))), ((new Slice<stdgo.path.filepath_test.Filepath_test.Node>(((new stdgo.path.filepath_test.Filepath_test.Node(((("a" : GoString))), ((null : Slice<stdgo.path.filepath_test.Filepath_test.Node>)), ((0 : GoInt))) : stdgo.path.filepath_test.Filepath_test.Node)), ((new stdgo.path.filepath_test.Filepath_test.Node(((("b" : GoString))), ((new Slice<stdgo.path.filepath_test.Filepath_test.Node>() : Slice<stdgo.path.filepath_test.Filepath_test.Node>)), ((0 : GoInt))) : stdgo.path.filepath_test.Filepath_test.Node)), ((new stdgo.path.filepath_test.Filepath_test.Node(((("c" : GoString))), ((null : Slice<stdgo.path.filepath_test.Filepath_test.Node>)), ((0 : GoInt))) : stdgo.path.filepath_test.Filepath_test.Node)), ((new stdgo.path.filepath_test.Filepath_test.Node(((("d" : GoString))), ((new Slice<stdgo.path.filepath_test.Filepath_test.Node>(((new stdgo.path.filepath_test.Filepath_test.Node(((("x" : GoString))), ((null : Slice<stdgo.path.filepath_test.Filepath_test.Node>)), ((0 : GoInt))) : stdgo.path.filepath_test.Filepath_test.Node)), ((new stdgo.path.filepath_test.Filepath_test.Node(((("y" : GoString))), ((new Slice<stdgo.path.filepath_test.Filepath_test.Node>() : Slice<stdgo.path.filepath_test.Filepath_test.Node>)), ((0 : GoInt))) : stdgo.path.filepath_test.Filepath_test.Node)), ((new stdgo.path.filepath_test.Filepath_test.Node(((("z" : GoString))), ((new Slice<stdgo.path.filepath_test.Filepath_test.Node>(((new stdgo.path.filepath_test.Filepath_test.Node(((("u" : GoString))), ((null : Slice<stdgo.path.filepath_test.Filepath_test.Node>)), ((0 : GoInt))) : stdgo.path.filepath_test.Filepath_test.Node)), ((new stdgo.path.filepath_test.Filepath_test.Node(((("v" : GoString))), ((null : Slice<stdgo.path.filepath_test.Filepath_test.Node>)), ((0 : GoInt))) : stdgo.path.filepath_test.Filepath_test.Node))) : Slice<stdgo.path.filepath_test.Filepath_test.Node>)), ((0 : GoInt))) : stdgo.path.filepath_test.Filepath_test.Node))) : Slice<stdgo.path.filepath_test.Filepath_test.Node>)), ((0 : GoInt))) : stdgo.path.filepath_test.Filepath_test.Node))) : Slice<stdgo.path.filepath_test.Filepath_test.Node>)), ((0 : GoInt))) : stdgo.path.filepath_test.Filepath_test.Node));
var _basetests : Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
((new stdgo.path.filepath_test.Filepath_test.PathTest((""), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("." : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/." : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/" : GoString))), ((("/" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("////" : GoString))), ((("/" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("x/" : GoString))), ((("x" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc" : GoString))), ((("abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/def" : GoString))), ((("def" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("a/b/.x" : GoString))), (((".x" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("a/b/c." : GoString))), ((("c." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("a/b/c.x" : GoString))), ((("c.x" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest))) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>));
var _winbasetests : Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(((new stdgo.path.filepath_test.Filepath_test.PathTest("c:\\", "\\") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("c:.", ".") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("c:\\a\\b", "b") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("c:a\\b", "b") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("c:a\\b\\c", "c") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("\\\\host\\share\\", "\\") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("\\\\host\\share\\a", "a") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("\\\\host\\share\\a\\b", "b") : stdgo.path.filepath_test.Filepath_test.PathTest))) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>));
var _dirtests : Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
((new stdgo.path.filepath_test.Filepath_test.PathTest((""), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("." : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/." : GoString))), ((("/" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/" : GoString))), ((("/" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("////" : GoString))), ((("/" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("/foo" : GoString))), ((("/" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("x/" : GoString))), ((("x" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc" : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("abc/def" : GoString))), ((("abc" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("a/b/.x" : GoString))), ((("a/b" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("a/b/c." : GoString))), ((("a/b" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest)),
((new stdgo.path.filepath_test.Filepath_test.PathTest(((("a/b/c.x" : GoString))), ((("a/b" : GoString)))) : stdgo.path.filepath_test.Filepath_test.PathTest))) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>));
var _windirtests : Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(((new stdgo.path.filepath_test.Filepath_test.PathTest("c:\\", "c:\\") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("c:.", "c:.") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("c:\\a\\b", "c:\\a") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("c:a\\b", "c:a") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("c:a\\b\\c", "c:a\\b") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("\\\\host\\share", "\\\\host\\share") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("\\\\host\\share\\", "\\\\host\\share\\") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("\\\\host\\share\\a", "\\\\host\\share\\") : stdgo.path.filepath_test.Filepath_test.PathTest)), ((new stdgo.path.filepath_test.Filepath_test.PathTest("\\\\host\\share\\a\\b", "\\\\host\\share\\a") : stdgo.path.filepath_test.Filepath_test.PathTest))) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>));
var _isabstests : Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>(((new stdgo.path.filepath_test.Filepath_test.IsAbsTest((""), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)), ((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("/" : GoString))), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)), ((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("/usr/bin/gcc" : GoString))), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)), ((new stdgo.path.filepath_test.Filepath_test.IsAbsTest((((".." : GoString))), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)), ((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("/a/../bb" : GoString))), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)), ((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("." : GoString))), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)), ((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("./" : GoString))), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)), ((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("lala" : GoString))), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))) : Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>));
var _winisabstests : Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>(
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("C:\\", true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)),
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("c\\", false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)),
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("c::", false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)),
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("c:", false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)),
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("/", false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)),
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("\\", false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)),
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("\\Windows", false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)),
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("c:a\\b", false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)),
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("c:\\a\\b", true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)),
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("c:/a/b", true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)),
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("\\\\host\\share", true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)),
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("\\\\host\\share\\", true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)),
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("\\\\host\\share\\foo", true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)),
((new stdgo.path.filepath_test.Filepath_test.IsAbsTest("//host/share/foo/bar", true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))) : Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>));
var evalSymlinksTestDirs : Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest>(
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test" : GoString))), ("")) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/dir" : GoString))), ("")) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/dir/link3" : GoString))), ((("../../" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/link1" : GoString))), ((("../test" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/link2" : GoString))), ((("dir" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/linkabs" : GoString))), ((("/" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/link4" : GoString))), ((("../test2" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test2" : GoString))), ((("test/dir" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("src" : GoString))), ("")) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("src/pool" : GoString))), ("")) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("src/pool/test" : GoString))), ("")) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("src/versions" : GoString))), ("")) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("src/versions/current" : GoString))), ((("../../version" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("src/versions/v1" : GoString))), ("")) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("src/versions/v1/modules" : GoString))), ("")) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("src/versions/v1/modules/test" : GoString))), ((("../../../pool/test" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("version" : GoString))), ((("src/versions/v1" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest))) : Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest>));
var evalSymlinksTests : Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest>(
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test" : GoString))), ((("test" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/dir" : GoString))), ((("test/dir" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/dir/../.." : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/link1" : GoString))), ((("test" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/link2" : GoString))), ((("test/dir" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/link1/dir" : GoString))), ((("test/dir" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/link2/.." : GoString))), ((("test" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/dir/link3" : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/link2/link3/test" : GoString))), ((("test" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/linkabs" : GoString))), ((("/" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("test/link4/.." : GoString))), ((("test" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)),
((new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(((("src/versions/current/modules/test" : GoString))), ((("src/pool/test" : GoString)))) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest))) : Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest>));
var _absTestDirs : Slice<GoString> = ((new Slice<GoString>(((("a" : GoString))), ((("a/b" : GoString))), ((("a/b/c" : GoString)))) : Slice<GoString>));
var _absTests : Slice<GoString> = ((new Slice<GoString>(
((("." : GoString))),
((("b" : GoString))),
((("b/" : GoString))),
((("../a" : GoString))),
((("../a/b" : GoString))),
((("../a/b/./c/../../.././a" : GoString))),
((("../a/b/./c/../../.././a/" : GoString))),
((("$$" : GoString))),
((("$$/." : GoString))),
((("$$/a/../a/b" : GoString))),
((("$$/a/b/c/../../.././a" : GoString))),
((("$$/a/b/c/../../.././a/" : GoString)))) : Slice<GoString>));
var _reltests : Slice<stdgo.path.filepath_test.Filepath_test.RelTests> = ((new Slice<stdgo.path.filepath_test.Filepath_test.RelTests>(
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a/b" : GoString))), ((("a/b" : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a/b/." : GoString))), ((("a/b" : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a/b" : GoString))), ((("a/b/." : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("./a/b" : GoString))), ((("a/b" : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a/b" : GoString))), ((("./a/b" : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("ab/cd" : GoString))), ((("ab/cde" : GoString))), ((("../cde" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("ab/cd" : GoString))), ((("ab/c" : GoString))), ((("../c" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a/b" : GoString))), ((("a/b/c/d" : GoString))), ((("c/d" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a/b" : GoString))), ((("a/b/../c" : GoString))), ((("../c" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a/b/../c" : GoString))), ((("a/b" : GoString))), ((("../b" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a/b/c" : GoString))), ((("a/c/d" : GoString))), ((("../../c/d" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a/b" : GoString))), ((("c/d" : GoString))), ((("../../c/d" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a/b/c/d" : GoString))), ((("a/b" : GoString))), ((("../.." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a/b/c/d" : GoString))), ((("a/b/" : GoString))), ((("../.." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a/b/c/d/" : GoString))), ((("a/b" : GoString))), ((("../.." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a/b/c/d/" : GoString))), ((("a/b/" : GoString))), ((("../.." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("../../a/b" : GoString))), ((("../../a/b/c/d" : GoString))), ((("c/d" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/a/b" : GoString))), ((("/a/b" : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/a/b/." : GoString))), ((("/a/b" : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/a/b" : GoString))), ((("/a/b/." : GoString))), ((("." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/ab/cd" : GoString))), ((("/ab/cde" : GoString))), ((("../cde" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/ab/cd" : GoString))), ((("/ab/c" : GoString))), ((("../c" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/a/b" : GoString))), ((("/a/b/c/d" : GoString))), ((("c/d" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/a/b" : GoString))), ((("/a/b/../c" : GoString))), ((("../c" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/a/b/../c" : GoString))), ((("/a/b" : GoString))), ((("../b" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/a/b/c" : GoString))), ((("/a/c/d" : GoString))), ((("../../c/d" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/a/b" : GoString))), ((("/c/d" : GoString))), ((("../../c/d" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/a/b/c/d" : GoString))), ((("/a/b" : GoString))), ((("../.." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/a/b/c/d" : GoString))), ((("/a/b/" : GoString))), ((("../.." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/a/b/c/d/" : GoString))), ((("/a/b" : GoString))), ((("../.." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/a/b/c/d/" : GoString))), ((("/a/b/" : GoString))), ((("../.." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/../../a/b" : GoString))), ((("/../../a/b/c/d" : GoString))), ((("c/d" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("." : GoString))), ((("a/b" : GoString))), ((("a/b" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("." : GoString))), (((".." : GoString))), (((".." : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests((((".." : GoString))), ((("." : GoString))), ((("err" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests((((".." : GoString))), ((("a" : GoString))), ((("err" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("../.." : GoString))), (((".." : GoString))), ((("err" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("a" : GoString))), ((("/a" : GoString))), ((("err" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests)),
((new stdgo.path.filepath_test.Filepath_test.RelTests(((("/a" : GoString))), ((("a" : GoString))), ((("err" : GoString)))) : stdgo.path.filepath_test.Filepath_test.RelTests))) : Slice<stdgo.path.filepath_test.Filepath_test.RelTests>));
var _winreltests : Slice<stdgo.path.filepath_test.Filepath_test.RelTests> = ((new Slice<stdgo.path.filepath_test.Filepath_test.RelTests>(((new stdgo.path.filepath_test.Filepath_test.RelTests("C:a\\b\\c", "C:a/b/d", "..\\d") : stdgo.path.filepath_test.Filepath_test.RelTests)), ((new stdgo.path.filepath_test.Filepath_test.RelTests("C:\\", "D:\\", "err") : stdgo.path.filepath_test.Filepath_test.RelTests)), ((new stdgo.path.filepath_test.Filepath_test.RelTests("C:", "D:", "err") : stdgo.path.filepath_test.Filepath_test.RelTests)), ((new stdgo.path.filepath_test.Filepath_test.RelTests("C:\\Projects", "c:\\projects\\src", "src") : stdgo.path.filepath_test.Filepath_test.RelTests)), ((new stdgo.path.filepath_test.Filepath_test.RelTests("C:\\Projects", "c:\\projects", ".") : stdgo.path.filepath_test.Filepath_test.RelTests)), ((new stdgo.path.filepath_test.Filepath_test.RelTests("C:\\Projects\\a\\..", "c:\\projects", ".") : stdgo.path.filepath_test.Filepath_test.RelTests)), ((new stdgo.path.filepath_test.Filepath_test.RelTests("\\\\host\\share", "\\\\host\\share\\file.txt", "file.txt") : stdgo.path.filepath_test.Filepath_test.RelTests))) : Slice<stdgo.path.filepath_test.Filepath_test.RelTests>));
var _volumenametests : Slice<stdgo.path.filepath_test.Filepath_test.VolumeNameTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.VolumeNameTest>(
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("c:/foo/bar", "c:") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("c:", "c:") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("2:", "") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("", "") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("\\\\\\host", "") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("\\\\\\host\\", "") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("\\\\\\host\\share", "") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("\\\\\\host\\\\share", "") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("\\\\host", "") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("//host", "") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("\\\\host\\", "") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("//host/", "") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("\\\\host\\share", "\\\\host\\share") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("//host/share", "//host/share") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("\\\\host\\share\\", "\\\\host\\share") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("//host/share/", "//host/share") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("\\\\host\\share\\foo", "\\\\host\\share") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("//host/share/foo", "//host/share") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("\\\\host\\share\\\\foo\\\\\\bar\\\\\\\\baz", "\\\\host\\share") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("//host/share//foo///bar////baz", "//host/share") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("\\\\host\\share\\foo\\..\\bar", "\\\\host\\share") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)),
((new stdgo.path.filepath_test.Filepath_test.VolumeNameTest("//host/share/foo/../bar", "//host/share") : stdgo.path.filepath_test.Filepath_test.VolumeNameTest))) : Slice<stdgo.path.filepath_test.Filepath_test.VolumeNameTest>));
@:structInit class MatchTest {
    public var _pattern : GoString = (("" : GoString));
    public var _s : GoString = (("" : GoString));
    public var _match : Bool = false;
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_pattern:GoString, ?_s:GoString, ?_match:Bool, ?_err:stdgo.Error) {
        if (_pattern != null) this._pattern = _pattern;
        if (_s != null) this._s = _s;
        if (_match != null) this._match = _match;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new MatchTest(_pattern, _s, _match, _err);
    }
}
@:structInit @:using(stdgo.path.filepath_test.Filepath_test.T_globTest_static_extension) class T_globTest {
    @:keep
    public function _globRel(_root:GoString):Error {
        var _test = this;
        _test;
        var _p:GoString = _root + fromSlash(_test._pattern);
        var __tmp__ = glob(_p), _have:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        stdgo.sort.Sort.strings(_have);
        var _want:Slice<GoString> = _test._buildWant(_root);
        if (stdgo.strings.Strings.join(_want, ((("_" : GoString)))) == stdgo.strings.Strings.join(_have, ((("_" : GoString))))) {
            return ((null : stdgo.Error));
        };
        var _wantWithNoRoot:Slice<GoString> = _test._buildWant((""));
        if (stdgo.strings.Strings.join(_wantWithNoRoot, ((("_" : GoString)))) == stdgo.strings.Strings.join(_have, ((("_" : GoString))))) {
            return ((null : stdgo.Error));
        };
        return stdgo.fmt.Fmt.errorf(((("Glob(%q) returns %q, but %q expected" : GoString))), Go.toInterface(_p), Go.toInterface(_have), Go.toInterface(_want));
    }
    @:keep
    public function _globAbs(_root:GoString, _rootPattern:GoString):Error {
        var _test = this;
        _test;
        var _p:GoString = fromSlash((_rootPattern + (("\\" : GoString))) + _test._pattern);
        var __tmp__ = glob(_p), _have:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        stdgo.sort.Sort.strings(_have);
        var _want:Slice<GoString> = _test._buildWant(_root + (("\\" : GoString)));
        if (stdgo.strings.Strings.join(_want, ((("_" : GoString)))) == stdgo.strings.Strings.join(_have, ((("_" : GoString))))) {
            return ((null : stdgo.Error));
        };
        return stdgo.fmt.Fmt.errorf(((("Glob(%q) returns %q, but %q expected" : GoString))), Go.toInterface(_p), Go.toInterface(_have), Go.toInterface(_want));
    }
    @:keep
    public function _buildWant(_root:GoString):Slice<GoString> {
        var _test = this;
        _test;
        var _want:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]);
        for (_0 => _m in _test._matches) {
            _want = (_want != null ? _want.__append__(_root + fromSlash(_m)) : new Slice<GoString>(_root + fromSlash(_m)));
        };
        stdgo.sort.Sort.strings(_want);
        return _want;
    }
    public var _pattern : GoString = (("" : GoString));
    public var _matches : Slice<GoString> = ((null : Slice<GoString>));
    public function new(?_pattern:GoString, ?_matches:Slice<GoString>) {
        if (_pattern != null) this._pattern = _pattern;
        if (_matches != null) this._matches = _matches;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_globTest(_pattern, _matches);
    }
}
@:structInit class PathTest {
    public var _path : GoString = (("" : GoString));
    public var _result : GoString = (("" : GoString));
    public function new(?_path:GoString, ?_result:GoString) {
        if (_path != null) this._path = _path;
        if (_result != null) this._result = _result;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PathTest(_path, _result);
    }
}
@:structInit class SplitListTest {
    public var _list : GoString = (("" : GoString));
    public var _result : Slice<GoString> = ((null : Slice<GoString>));
    public function new(?_list:GoString, ?_result:Slice<GoString>) {
        if (_list != null) this._list = _list;
        if (_result != null) this._result = _result;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SplitListTest(_list, _result);
    }
}
@:structInit class SplitTest {
    public var _path : GoString = (("" : GoString));
    public var _dir : GoString = (("" : GoString));
    public var _file : GoString = (("" : GoString));
    public function new(?_path:GoString, ?_dir:GoString, ?_file:GoString) {
        if (_path != null) this._path = _path;
        if (_dir != null) this._dir = _dir;
        if (_file != null) this._file = _file;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SplitTest(_path, _dir, _file);
    }
}
@:structInit class JoinTest {
    public var _elem : Slice<GoString> = ((null : Slice<GoString>));
    public var _path : GoString = (("" : GoString));
    public function new(?_elem:Slice<GoString>, ?_path:GoString) {
        if (_elem != null) this._elem = _elem;
        if (_path != null) this._path = _path;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new JoinTest(_elem, _path);
    }
}
@:structInit class ExtTest {
    public var _path : GoString = (("" : GoString));
    public var _ext : GoString = (("" : GoString));
    public function new(?_path:GoString, ?_ext:GoString) {
        if (_path != null) this._path = _path;
        if (_ext != null) this._ext = _ext;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ExtTest(_path, _ext);
    }
}
@:structInit class Node {
    public var _name : GoString = (("" : GoString));
    public var _entries : Slice<stdgo.path.filepath_test.Filepath_test.Node> = ((null : Slice<stdgo.path.filepath_test.Filepath_test.Node>));
    public var _mark : GoInt = ((0 : GoInt));
    public function new(?_name:GoString, ?_entries:Slice<stdgo.path.filepath_test.Filepath_test.Node>, ?_mark:GoInt) {
        if (_name != null) this._name = _name;
        if (_entries != null) this._entries = _entries;
        if (_mark != null) this._mark = _mark;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Node(_name, _entries, _mark);
    }
}
@:structInit @:using(stdgo.path.filepath_test.Filepath_test.T_statDirEntry_static_extension) class T_statDirEntry {
    @:keep
    public function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        var _d = this;
        _d;
        return { _0 : _d._info, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function type():stdgo.io.fs.Fs.FileMode {
        var _d = this;
        _d;
        return _d._info.mode().type();
    }
    @:keep
    public function isDir():Bool {
        var _d = this;
        _d;
        return _d._info.isDir();
    }
    @:keep
    public function name():GoString {
        var _d = this;
        _d;
        return _d._info.name();
    }
    public var _info : stdgo.io.fs.Fs.FileInfo = ((null : stdgo.io.fs.Fs.FileInfo));
    public function new(?_info:stdgo.io.fs.Fs.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}
@:structInit class IsAbsTest {
    public var _path : GoString = (("" : GoString));
    public var _isAbs : Bool = false;
    public function new(?_path:GoString, ?_isAbs:Bool) {
        if (_path != null) this._path = _path;
        if (_isAbs != null) this._isAbs = _isAbs;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new IsAbsTest(_path, _isAbs);
    }
}
@:structInit class EvalSymlinksTest {
    public var _path : GoString = (("" : GoString));
    public var _dest : GoString = (("" : GoString));
    public function new(?_path:GoString, ?_dest:GoString) {
        if (_path != null) this._path = _path;
        if (_dest != null) this._dest = _dest;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new EvalSymlinksTest(_path, _dest);
    }
}
@:structInit class RelTests {
    public var _root : GoString = (("" : GoString));
    public var _path : GoString = (("" : GoString));
    public var _want : GoString = (("" : GoString));
    public function new(?_root:GoString, ?_path:GoString, ?_want:GoString) {
        if (_root != null) this._root = _root;
        if (_path != null) this._path = _path;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new RelTests(_root, _path, _want);
    }
}
@:structInit class VolumeNameTest {
    public var _path : GoString = (("" : GoString));
    public var _vol : GoString = (("" : GoString));
    public function new(?_path:GoString, ?_vol:GoString) {
        if (_path != null) this._path = _path;
        if (_vol != null) this._vol = _vol;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new VolumeNameTest(_path, _vol);
    }
}
@:structInit @:local class T__struct_0 {
    public var _pattern : GoString = (("" : GoString));
    public var _result : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_pattern) + " " + Go.string(_result) + "}";
    public function new(?_pattern:GoString, ?_result:GoString, ?toString) {
        if (_pattern != null) this._pattern = _pattern;
        if (_result != null) this._result = _result;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_pattern, _result);
    }
}
@:structInit @:local class T__struct_1 {
    public var _path : GoString = (("" : GoString));
    public var _dest : GoString = (("" : GoString));
    public var _brokenLink : Bool = false;
    public function toString():String return "{" + Go.string(_path) + " " + Go.string(_dest) + " " + Go.string(_brokenLink) + "}";
    public function new(?_path:GoString, ?_dest:GoString, ?_brokenLink:Bool, ?toString) {
        if (_path != null) this._path = _path;
        if (_dest != null) this._dest = _dest;
        if (_brokenLink != null) this._brokenLink = _brokenLink;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_path, _dest, _brokenLink);
    }
}
@:structInit @:local class T__struct_2 {
    public var _path : GoString = (("" : GoString));
    public var _want : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_path) + " " + Go.string(_want) + "}";
    public function new(?_path:GoString, ?_want:GoString, ?toString) {
        if (_path != null) this._path = _path;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_path, _want);
    }
}
function exampleExt():Void {
        stdgo.fmt.Fmt.printf(((("No dots: %q\n" : GoString))), Go.toInterface(stdgo.path.filepath.Filepath.ext(((("index" : GoString))))));
        stdgo.fmt.Fmt.printf(((("One dot: %q\n" : GoString))), Go.toInterface(stdgo.path.filepath.Filepath.ext(((("index.js" : GoString))))));
        stdgo.fmt.Fmt.printf(((("Two dots: %q\n" : GoString))), Go.toInterface(stdgo.path.filepath.Filepath.ext(((("main.test.js" : GoString))))));
    }
function exampleSplitList():Void {
        stdgo.fmt.Fmt.println(((("On Unix:" : GoString))), stdgo.path.filepath.Filepath.splitList(((("/a/b/c:/usr/bin" : GoString)))));
    }
function exampleRel():Void {
        var _paths:Slice<GoString> = ((new Slice<GoString>(((("/a/b/c" : GoString))), ((("/b/c" : GoString))), ((("./b/c" : GoString)))) : Slice<GoString>));
        var _base:GoString = ((("/a" : GoString)));
        stdgo.fmt.Fmt.println(((("On Unix:" : GoString))));
        for (_0 => _p in _paths) {
            var __tmp__ = stdgo.path.filepath.Filepath.rel(_base, _p), _rel:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            stdgo.fmt.Fmt.printf(((("%q: %q %v\n" : GoString))), Go.toInterface(_p), Go.toInterface(_rel), Go.toInterface(_err));
        };
    }
function exampleSplit():Void {
        var _paths:Slice<GoString> = ((new Slice<GoString>(((("/home/arnie/amelia.jpg" : GoString))), ((("/mnt/photos/" : GoString))), ((("rabbit.jpg" : GoString))), ((("/usr/local//go" : GoString)))) : Slice<GoString>));
        stdgo.fmt.Fmt.println(((("On Unix:" : GoString))));
        for (_0 => _p in _paths) {
            var __tmp__ = stdgo.path.filepath.Filepath.split(_p), _dir:GoString = __tmp__._0, _file:GoString = __tmp__._1;
            stdgo.fmt.Fmt.printf(((("input: %q\n\tdir: %q\n\tfile: %q\n" : GoString))), Go.toInterface(_p), Go.toInterface(_dir), Go.toInterface(_file));
        };
    }
function exampleJoin():Void {
        stdgo.fmt.Fmt.println(((("On Unix:" : GoString))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.join(((("a" : GoString))), ((("b" : GoString))), ((("c" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.join(((("a" : GoString))), ((("b/c" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.join(((("a/b" : GoString))), ((("c" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.join(((("a/b" : GoString))), ((("/c" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.join(((("a/b" : GoString))), ((("../../../xyz" : GoString)))));
    }
function exampleMatch():Void {
        stdgo.fmt.Fmt.println(((("On Unix:" : GoString))));
        {
            var __tmp__ = stdgo.path.filepath.Filepath.match(((("/home/catch/*" : GoString))), ((("/home/catch/foo" : GoString))));
            stdgo.fmt.Fmt.println(((__tmp__._0 : Bool)), ((__tmp__._1 : stdgo.Error)));
        };
        {
            var __tmp__ = stdgo.path.filepath.Filepath.match(((("/home/catch/*" : GoString))), ((("/home/catch/foo/bar" : GoString))));
            stdgo.fmt.Fmt.println(((__tmp__._0 : Bool)), ((__tmp__._1 : stdgo.Error)));
        };
        {
            var __tmp__ = stdgo.path.filepath.Filepath.match(((("/home/?opher" : GoString))), ((("/home/gopher" : GoString))));
            stdgo.fmt.Fmt.println(((__tmp__._0 : Bool)), ((__tmp__._1 : stdgo.Error)));
        };
        {
            var __tmp__ = stdgo.path.filepath.Filepath.match(((("/home/\\*" : GoString))), ((("/home/*" : GoString))));
            stdgo.fmt.Fmt.println(((__tmp__._0 : Bool)), ((__tmp__._1 : stdgo.Error)));
        };
    }
function exampleBase():Void {
        stdgo.fmt.Fmt.println(((("On Unix:" : GoString))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.base(((("/foo/bar/baz.js" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.base(((("/foo/bar/baz" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.base(((("/foo/bar/baz/" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.base(((("dev.txt" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.base(((("../todo.txt" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.base((((".." : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.base(((("." : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.base(((("/" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.base(("")));
    }
function exampleDir():Void {
        stdgo.fmt.Fmt.println(((("On Unix:" : GoString))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.dir(((("/foo/bar/baz.js" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.dir(((("/foo/bar/baz" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.dir(((("/foo/bar/baz/" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.dir(((("/dirty//path///" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.dir(((("dev.txt" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.dir(((("../todo.txt" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.dir((((".." : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.dir(((("." : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.dir(((("/" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.dir(("")));
    }
function exampleIsAbs():Void {
        stdgo.fmt.Fmt.println(((("On Unix:" : GoString))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.isAbs(((("/home/gopher" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.isAbs((((".bashrc" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.isAbs((((".." : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.isAbs(((("." : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.isAbs(((("/" : GoString)))));
        stdgo.fmt.Fmt.println(stdgo.path.filepath.Filepath.isAbs(("")));
    }
function _prepareTestDirTree(_tree:GoString):{ var _0 : GoString; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.mkdirTemp((""), ("")), _tmpDir:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (""), _1 : stdgo.fmt.Fmt.errorf(((("error creating temp directory: %v\n" : GoString))), Go.toInterface(_err)) };
        };
        _err = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_tmpDir, _tree), ((493 : GoUInt32)));
        if (_err != null) {
            stdgo.os.Os.removeAll(_tmpDir);
            return { _0 : (""), _1 : _err };
        };
        return { _0 : _tmpDir, _1 : ((null : stdgo.Error)) };
    }
function exampleWalk():Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = _prepareTestDirTree(((("dir/to/walk/skip" : GoString)))), _tmpDir:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.fmt.Fmt.printf(((("unable to create test dir tree: %v\n" : GoString))), Go.toInterface(_err));
                return;
            };
            {
                var _a0 = _tmpDir;
                __deferstack__.unshift(() -> stdgo.os.Os.removeAll(_a0));
            };
            stdgo.os.Os.chdir(_tmpDir);
            var _subDirToSkip:GoString = ((("skip" : GoString)));
            stdgo.fmt.Fmt.println(((("On Unix:" : GoString))));
            _err = stdgo.path.filepath.Filepath.walk(((("." : GoString))), function(_path:GoString, _info:stdgo.io.fs.Fs.FileInfo, _err:Error):Error {
                if (_err != null) {
                    stdgo.fmt.Fmt.printf(((("prevent panic by handling failure accessing a path %q: %v\n" : GoString))), Go.toInterface(_path), Go.toInterface(_err));
                    return _err;
                };
                if (_info.isDir() && (_info.name() == _subDirToSkip)) {
                    stdgo.fmt.Fmt.printf(((("skipping a dir without errors: %+v \n" : GoString))), Go.toInterface(_info.name()));
                    return stdgo.path.filepath.Filepath.skipDir;
                };
                stdgo.fmt.Fmt.printf(((("visited file or dir: %q\n" : GoString))), Go.toInterface(_path));
                return ((null : stdgo.Error));
            });
            if (_err != null) {
                stdgo.fmt.Fmt.printf(((("error walking the path %q: %v\n" : GoString))), Go.toInterface(_tmpDir), Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function _errp(_e:Error):GoString {
        if (_e == null) {
            return ((("<nil>" : GoString)));
        };
        return _e.error();
    }
function testMatch(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _matchTests) {
            var _pattern:GoString = _tt._pattern;
            var _s:GoString = _tt._s;
            if (false) {
                if (stdgo.strings.Strings.contains(_pattern, ((("\\" : GoString))))) {
                    continue;
                };
                _pattern = clean(_pattern);
                _s = clean(_s);
            };
            var __tmp__ = match(_pattern, _s), _ok:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_ok != _tt._match) || (_err != _tt._err)) {
                _t.errorf(((("Match(%#q, %#q) = %v, %q want %v, %q" : GoString))), Go.toInterface(_pattern), Go.toInterface(_s), Go.toInterface(_ok), Go.toInterface(_errp(_err)), Go.toInterface(_tt._match), Go.toInterface(_errp(_tt._err)));
            };
        };
    }
function _contains(_vector:Slice<GoString>, _s:GoString):Bool {
        for (_0 => _elem in _vector) {
            if (_elem == _s) {
                return true;
            };
        };
        return false;
    }
function testGlob(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _globTests) {
            var _pattern:GoString = _tt._pattern;
            var _result:GoString = _tt._result;
            if (false) {
                _pattern = clean(_pattern);
                _result = clean(_result);
            };
            var __tmp__ = glob(_pattern), _matches:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("Glob error for %q: %s" : GoString))), Go.toInterface(_pattern), Go.toInterface(_err));
                continue;
            };
            if (!_contains(_matches, _result)) {
                _t.errorf(((("Glob(%#q) = %#v want %v" : GoString))), Go.toInterface(_pattern), Go.toInterface(_matches), Go.toInterface(_result));
            };
        };
        for (_1 => _pattern in ((new Slice<GoString>(((("no_match" : GoString))), ((("../*/no_match" : GoString)))) : Slice<GoString>))) {
            var __tmp__ = glob(_pattern), _matches:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("Glob error for %q: %s" : GoString))), Go.toInterface(_pattern), Go.toInterface(_err));
                continue;
            };
            if ((_matches != null ? _matches.length : ((0 : GoInt))) != ((0 : GoInt))) {
                _t.errorf(((("Glob(%#q) = %#v want []" : GoString))), Go.toInterface(_pattern), Go.toInterface(_matches));
            };
        };
    }
function testGlobError(_t:stdgo.testing.Testing.T_):Void {
        var _bad:Slice<GoString> = ((new Slice<GoString>("[]", "nonexist/[]") : Slice<GoString>));
        for (_0 => _pattern in _bad) {
            {
                var __tmp__ = glob(_pattern), _1:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != errBadPattern) {
                    _t.errorf(((("Glob(%#q) returned err=%v, want ErrBadPattern" : GoString))), Go.toInterface(_pattern), Go.toInterface(_err));
                };
            };
        };
    }
function testGlobUNC(_t:stdgo.testing.Testing.T_):Void {
        glob("\\\\?\\C:\\*");
    }
function testGlobSymlink(_t:stdgo.testing.Testing.T_):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(_t);
        var _tmpDir:GoString = _t.tempDir();
        for (_0 => _tt in _globSymlinkTests) {
            var _path:GoString = join(_tmpDir, _tt._path);
            var _dest:GoString = join(_tmpDir, _tt._dest);
            var __tmp__ = stdgo.os.Os.create(_path), _f:stdgo.os.Os.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            {
                var _err:stdgo.Error = _f.close();
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            _err = stdgo.os.Os.symlink(_path, _dest);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_tt._brokenLink) {
                stdgo.os.Os.remove(_path);
            };
            var __tmp__ = glob(_dest), _matches:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("GlobSymlink error for %q: %s" : GoString))), Go.toInterface(_dest), Go.toInterface(_err));
            };
            if (!_contains(_matches, _dest)) {
                _t.errorf(((("Glob(%#q) = %#v want %v" : GoString))), Go.toInterface(_dest), Go.toInterface(_matches), Go.toInterface(_dest));
            };
        };
    }
function testWindowsGlob(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                _t.skipf(((("skipping windows specific test" : GoString))));
            };
            var _tmpDir:GoString = _tempDirCanonical(_t);
            if ((_tmpDir != null ? _tmpDir.length : ((0 : GoInt))) < ((3 : GoInt))) {
                _t.fatalf(((("tmpDir path %q is too short" : GoString))), Go.toInterface(_tmpDir));
            };
            if ((_tmpDir != null ? _tmpDir[((1 : GoInt))] : ((0 : GoUInt8))) != (((((":" : GoString))).code : GoRune))) {
                _t.fatalf(((("tmpDir path %q must have drive letter in it" : GoString))), Go.toInterface(_tmpDir));
            };
            var _dirs:Slice<GoString> = ((new Slice<GoString>(((("a" : GoString))), ((("b" : GoString))), ((("dir/d/bin" : GoString)))) : Slice<GoString>));
            var _files:Slice<GoString> = ((new Slice<GoString>(((("dir/d/bin/git.exe" : GoString)))) : Slice<GoString>));
            for (_0 => _dir in _dirs) {
                var _err:stdgo.Error = stdgo.os.Os.mkdirAll(join(_tmpDir, _dir), ((511 : GoUInt32)));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            for (_1 => _file in _files) {
                var _err:stdgo.Error = stdgo.os.Os.writeFile(join(_tmpDir, _file), ((null : Slice<GoUInt8>)), ((438 : GoUInt32)));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            var _tests:Slice<stdgo.path.filepath_test.Filepath_test.T_globTest> = ((new Slice<stdgo.path.filepath_test.Filepath_test.T_globTest>(((new stdgo.path.filepath_test.Filepath_test.T_globTest(((("a" : GoString))), ((new Slice<GoString>(((("a" : GoString)))) : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.T_globTest)), ((new stdgo.path.filepath_test.Filepath_test.T_globTest(((("b" : GoString))), ((new Slice<GoString>(((("b" : GoString)))) : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.T_globTest)), ((new stdgo.path.filepath_test.Filepath_test.T_globTest(((("c" : GoString))), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.T_globTest)), ((new stdgo.path.filepath_test.Filepath_test.T_globTest(((("*" : GoString))), ((new Slice<GoString>(((("a" : GoString))), ((("b" : GoString))), ((("dir" : GoString)))) : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.T_globTest)), ((new stdgo.path.filepath_test.Filepath_test.T_globTest(((("d*" : GoString))), ((new Slice<GoString>(((("dir" : GoString)))) : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.T_globTest)), ((new stdgo.path.filepath_test.Filepath_test.T_globTest(((("*i*" : GoString))), ((new Slice<GoString>(((("dir" : GoString)))) : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.T_globTest)), ((new stdgo.path.filepath_test.Filepath_test.T_globTest(((("*r" : GoString))), ((new Slice<GoString>(((("dir" : GoString)))) : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.T_globTest)), ((new stdgo.path.filepath_test.Filepath_test.T_globTest(((("?ir" : GoString))), ((new Slice<GoString>(((("dir" : GoString)))) : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.T_globTest)), ((new stdgo.path.filepath_test.Filepath_test.T_globTest(((("?r" : GoString))), ((new Slice<GoString>() : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.T_globTest)), ((new stdgo.path.filepath_test.Filepath_test.T_globTest(((("d*/*/bin/git.exe" : GoString))), ((new Slice<GoString>(((("dir/d/bin/git.exe" : GoString)))) : Slice<GoString>))) : stdgo.path.filepath_test.Filepath_test.T_globTest))) : Slice<stdgo.path.filepath_test.Filepath_test.T_globTest>));
            for (_2 => _test in _tests) {
                var _p:GoString = (("" : GoString));
                {
                    var _err:stdgo.Error = _test._globAbs(_tmpDir, _tmpDir);
                    if (_err != null) {
                        _t.error(Go.toInterface(_err));
                    };
                };
                _p = _tmpDir;
                _p = stdgo.strings.Strings.replace(_p, ":\\", ":\\*", ((1 : GoInt)));
                {
                    var _err:stdgo.Error = _test._globAbs(_tmpDir, _p);
                    if (_err != null) {
                        _t.error(Go.toInterface(_err));
                    };
                };
                _p = _tmpDir;
                _p = stdgo.strings.Strings.replace(_p, ":\\", ":", ((1 : GoInt)));
                _p = stdgo.strings.Strings.replace(_p, "\\", "*\\", ((1 : GoInt)));
                _p = stdgo.strings.Strings.replace(_p, ":", ":\\", ((1 : GoInt)));
                {
                    var _err:stdgo.Error = _test._globAbs(_tmpDir, _p);
                    if (_err != null) {
                        _t.error(Go.toInterface(_err));
                    };
                };
            };
            var __tmp__ = stdgo.os.Os.getwd(), _wd:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            _err = stdgo.os.Os.chdir(_tmpDir);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:stdgo.Error = stdgo.os.Os.chdir(_wd);
                    if (_err != null) {
                        _t.fatal(Go.toInterface(_err));
                    };
                };
                a();
            });
            for (_3 => _test in _tests) {
                var _err:stdgo.Error = _test._globRel((""));
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                };
                _err = _test._globRel(".\\");
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                };
                _err = _test._globRel(_tmpDir.__slice__(0, ((2 : GoInt))));
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testNonWindowsGlobEscape(_t:stdgo.testing.Testing.T_):Void {
        if (false) {
            _t.skipf(((("skipping non-windows specific test" : GoString))));
        };
        var _pattern:GoString = "\\match.go";
        var _want:Slice<GoString> = ((new Slice<GoString>(((("match.go" : GoString)))) : Slice<GoString>));
        var __tmp__ = glob(_pattern), _matches:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("Glob error for %q: %s" : GoString))), Go.toInterface(_pattern), Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_matches), Go.toInterface(_want))) {
            _t.fatalf(((("Glob(%#q) = %v want %v" : GoString))), Go.toInterface(_pattern), Go.toInterface(_matches), Go.toInterface(_want));
        };
    }
function testClean(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = _cleantests;
        if (false) {
            for (_i => _ in _tests) {
                (_tests != null ? _tests[_i] : new stdgo.path.filepath_test.Filepath_test.PathTest())._result = stdgo.path.filepath.Filepath.fromSlash((_tests != null ? _tests[_i] : new stdgo.path.filepath_test.Filepath_test.PathTest())._result);
            };
            _tests = (_tests != null ? _tests.__append__(..._wincleantests.__toArray__()) : new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(..._wincleantests.__toArray__()));
        };
        for (_0 => _test in _tests) {
            {
                var _s:GoString = stdgo.path.filepath.Filepath.clean(_test._path);
                if (_s != _test._result) {
                    _t.errorf(((("Clean(%q) = %q, want %q" : GoString))), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
            {
                var _s:GoString = stdgo.path.filepath.Filepath.clean(_test._result);
                if (_s != _test._result) {
                    _t.errorf(((("Clean(%q) = %q, want %q" : GoString))), Go.toInterface(_test._result), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
        };
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(((("skipping malloc count in short mode" : GoString)))));
        };
        if (stdgo.runtime.Runtime.gomaxprocs(((0 : GoInt))) > ((1 : GoInt))) {
            _t.log(Go.toInterface(((("skipping AllocsPerRun checks; GOMAXPROCS>1" : GoString)))));
            return;
        };
        for (_1 => _test in _tests) {
            var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((100 : GoInt)), function():Void {
                stdgo.path.filepath.Filepath.clean(_test._result);
            });
            if (_allocs > ((0 : GoFloat64))) {
                _t.errorf(((("Clean(%q): %v allocs, want zero" : GoString))), Go.toInterface(_test._result), Go.toInterface(_allocs));
            };
        };
    }
function testFromAndToSlash(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _slashtests) {
            {
                var _s:GoString = stdgo.path.filepath.Filepath.fromSlash(_test._path);
                if (_s != _test._result) {
                    _t.errorf(((("FromSlash(%q) = %q, want %q" : GoString))), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
            {
                var _s:GoString = stdgo.path.filepath.Filepath.toSlash(_test._result);
                if (_s != _test._path) {
                    _t.errorf(((("ToSlash(%q) = %q, want %q" : GoString))), Go.toInterface(_test._result), Go.toInterface(_s), Go.toInterface(_test._path));
                };
            };
        };
    }
function testSplitList(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest> = _splitlisttests;
        if (false) {
            _tests = (_tests != null ? _tests.__append__(..._winsplitlisttests.__toArray__()) : new Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest>(..._winsplitlisttests.__toArray__()));
        };
        for (_0 => _test in _tests) {
            {
                var _l:Slice<GoString> = stdgo.path.filepath.Filepath.splitList(_test._list);
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_l), Go.toInterface(_test._result))) {
                    _t.errorf(((("SplitList(%#q) = %#q, want %#q" : GoString))), Go.toInterface(_test._list), Go.toInterface(_l), Go.toInterface(_test._result));
                };
            };
        };
    }
function testSplit(_t:stdgo.testing.Testing.T_):Void {
        var _splittests:Slice<SplitTest> = ((null : Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>));
        _splittests = _unixsplittests;
        if (false) {
            _splittests = (_splittests != null ? _splittests.__append__(..._winsplittests.__toArray__()) : new Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>(..._winsplittests.__toArray__()));
        };
        for (_0 => _test in _splittests) {
            {
                var __tmp__ = stdgo.path.filepath.Filepath.split(_test._path), _d:GoString = __tmp__._0, _f:GoString = __tmp__._1;
                if ((_d != _test._dir) || (_f != _test._file)) {
                    _t.errorf(((("Split(%q) = %q, %q, want %q, %q" : GoString))), Go.toInterface(_test._path), Go.toInterface(_d), Go.toInterface(_f), Go.toInterface(_test._dir), Go.toInterface(_test._file));
                };
            };
        };
    }
function testJoin(_t:stdgo.testing.Testing.T_):Void {
        if (false) {
            _jointests = (_jointests != null ? _jointests.__append__(..._winjointests.__toArray__()) : new Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>(..._winjointests.__toArray__()));
        };
        for (_0 => _test in _jointests) {
            var _expected:GoString = stdgo.path.filepath.Filepath.fromSlash(_test._path);
            {
                var _p:GoString = stdgo.path.filepath.Filepath.join(..._test._elem.__toArray__());
                if (_p != _expected) {
                    _t.errorf(((("join(%q) = %q, want %q" : GoString))), Go.toInterface(_test._elem), Go.toInterface(_p), Go.toInterface(_expected));
                };
            };
        };
    }
function testExt(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _exttests) {
            {
                var _x:GoString = stdgo.path.filepath.Filepath.ext(_test._path);
                if (_x != _test._ext) {
                    _t.errorf(((("Ext(%q) = %q, want %q" : GoString))), Go.toInterface(_test._path), Go.toInterface(_x), Go.toInterface(_test._ext));
                };
            };
        };
    }
function _walkTree(_n:Node, _path:GoString, _f:(_path:GoString, _n:Node) -> Void):Void {
        _f(_path, _n);
        for (_0 => _e in _n._entries) {
            _walkTree(_e, stdgo.path.filepath.Filepath.join(_path, _e._name), _f);
        };
    }
function _makeTree(_t:stdgo.testing.Testing.T_):Void {
        _walkTree(_tree, _tree._name, function(_path:GoString, _n:Node):Void {
            if (_n._entries == null) {
                var __tmp__ = stdgo.os.Os.create(_path), _fd:stdgo.os.Os.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(((("makeTree: %v" : GoString))), Go.toInterface(_err));
                    return;
                };
                _fd.close();
            } else {
                stdgo.os.Os.mkdir(_path, ((504 : GoUInt32)));
            };
        });
    }
function _markTree(_n:Node):Void {
        _walkTree(_n, (""), function(_path:GoString, _n:Node):Void {
            _n._mark++;
        });
    }
function _checkMarks(_t:stdgo.testing.Testing.T_, _report:Bool):Void {
        _walkTree(_tree, _tree._name, function(_path:GoString, _n:Node):Void {
            if ((_n._mark != ((1 : GoInt))) && _report) {
                _t.errorf(((("node %s mark = %d; expected 1" : GoString))), Go.toInterface(_path), Go.toInterface(_n._mark));
            };
            _n._mark = ((0 : GoInt));
        });
    }
function _mark(_d:stdgo.io.fs.Fs.DirEntry, _err:Error, _errors:Slice<Error>, _clear:Bool):Error {
        var _name:GoString = _d.name();
        _walkTree(_tree, _tree._name, function(_path:GoString, _n:Node):Void {
            if (_n._name == _name) {
                _n._mark++;
            };
        });
        if (_err != null) {
            _errors = (_errors != null ? _errors.__append__(_err) : new Slice<stdgo.Error>(_err));
            if (_clear) {
                return ((null : stdgo.Error));
            };
            return _err;
        };
        return ((null : stdgo.Error));
    }
function _chdir(_t:stdgo.testing.Testing.T_, _dir:GoString):Void {
        var __tmp__ = stdgo.os.Os.getwd(), _olddir:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("getwd %s: %v" : GoString))), Go.toInterface(_dir), Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = stdgo.os.Os.chdir(_dir);
            if (_err != null) {
                _t.fatalf(((("chdir %s: %v" : GoString))), Go.toInterface(_dir), Go.toInterface(_err));
            };
        };
        _t.cleanup(function():Void {
            {
                var _err:stdgo.Error = stdgo.os.Os.chdir(_olddir);
                if (_err != null) {
                    _t.errorf(((("restore original working directory %s: %v" : GoString))), Go.toInterface(_olddir), Go.toInterface(_err));
                    stdgo.os.Os.exit(((1 : GoInt)));
                };
            };
        });
    }
function _chtmpdir(_t:stdgo.testing.Testing.T_):() -> Void {
        var _restore:() -> Void = null;
        var __tmp__ = stdgo.os.Os.getwd(), _oldwd:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("chtmpdir: %v" : GoString))), Go.toInterface(_err));
        };
        var __tmp__ = stdgo.os.Os.mkdirTemp((""), ((("test" : GoString)))), _d:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("chtmpdir: %v" : GoString))), Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = stdgo.os.Os.chdir(_d);
            if (_err != null) {
                _t.fatalf(((("chtmpdir: %v" : GoString))), Go.toInterface(_err));
            };
        };
        return function():Void {
            {
                var _err:stdgo.Error = stdgo.os.Os.chdir(_oldwd);
                if (_err != null) {
                    _t.fatalf(((("chtmpdir: %v" : GoString))), Go.toInterface(_err));
                };
            };
            stdgo.os.Os.removeAll(_d);
        };
    }
function _tempDirCanonical(_t:stdgo.testing.Testing.T_):GoString {
        var _dir:GoString = _t.tempDir();
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_dir), _cdir:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("tempDirCanonical: %v" : GoString))), Go.toInterface(_err));
        };
        return _cdir;
    }
function testWalk(_t:stdgo.testing.Testing.T_):Void {
        var _walk:(GoString, stdgo.io.fs.Fs.WalkDirFunc) -> stdgo.Error = function(_root:GoString, _fn:stdgo.io.fs.Fs.WalkDirFunc):Error {
            return stdgo.path.filepath.Filepath.walk(_root, function(_path:GoString, _info:stdgo.io.fs.Fs.FileInfo, _err:Error):Error {
                return _fn(_path, ((new stdgo.path.filepath_test.Filepath_test.T_statDirEntry(_info) : stdgo.path.filepath_test.Filepath_test.T_statDirEntry)), _err);
            });
        };
        _testWalk(_t, _walk, ((1 : GoInt)));
    }
function testWalkDir(_t:stdgo.testing.Testing.T_):Void {
        _testWalk(_t, stdgo.path.filepath.Filepath.walkDir, ((2 : GoInt)));
    }
function _testWalk(_t:stdgo.testing.Testing.T_, _walk:(GoString, stdgo.io.fs.Fs.WalkDirFunc) -> Error, _errVisit:GoInt):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                var _restore:() -> Void = _chtmpdir(_t);
                __deferstack__.unshift(() -> _restore());
            };
            var _tmpDir:GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _origDir:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(((("finding working dir:" : GoString)))), Go.toInterface(_err));
            };
            {
                _err = stdgo.os.Os.chdir(_tmpDir);
                if (_err != null) {
                    _t.fatal(Go.toInterface(((("entering temp dir:" : GoString)))), Go.toInterface(_err));
                };
            };
            {
                var _a0 = _origDir;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            _makeTree(_t);
            var _errors:Slice<stdgo.Error> = new Slice<stdgo.Error>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : stdgo.Error))]).__setCap__(((((10 : GoInt)) : GoInt)).toBasic());
            var _clear:Bool = true;
            var _markFn:(GoString, stdgo.io.fs.Fs.DirEntry, stdgo.Error) -> stdgo.Error = function(_path:GoString, _d:stdgo.io.fs.Fs.DirEntry, _err:Error):Error {
                return _mark(_d, _err, _errors, _clear);
            };
            _err = _walk(_tree._name, _markFn);
            if (_err != null) {
                _t.fatalf(((("no error expected, found: %s" : GoString))), Go.toInterface(_err));
            };
            if ((_errors != null ? _errors.length : ((0 : GoInt))) != ((0 : GoInt))) {
                _t.fatalf(((("unexpected errors: %s" : GoString))), Go.toInterface(_errors));
            };
            _checkMarks(_t, true);
            _errors = _errors.__slice__(((0 : GoInt)), ((0 : GoInt)));
            _t.run(((("PermErr" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
                if (false) {
                    _t.skip(Go.toInterface(((("skipping on Windows" : GoString)))));
                };
                if (stdgo.os.Os.getuid() == ((0 : GoInt))) {
                    _t.skip(Go.toInterface(((("skipping as root" : GoString)))));
                };
                if (stdgo.testing.Testing.short()) {
                    _t.skip(Go.toInterface(((("skipping in short mode" : GoString)))));
                };
                stdgo.os.Os.chmod(stdgo.path.filepath.Filepath.join(_tree._name, (_tree._entries != null ? _tree._entries[((1 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node)))._name), ((0 : GoUInt32)));
                stdgo.os.Os.chmod(stdgo.path.filepath.Filepath.join(_tree._name, (_tree._entries != null ? _tree._entries[((3 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node)))._name), ((0 : GoUInt32)));
                _markTree((_tree._entries != null ? _tree._entries[((1 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node))));
                _markTree((_tree._entries != null ? _tree._entries[((3 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node))));
                (_tree._entries != null ? _tree._entries[((1 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node)))._mark = (_tree._entries != null ? _tree._entries[((1 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node)))._mark - (_errVisit);
                (_tree._entries != null ? _tree._entries[((3 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node)))._mark = (_tree._entries != null ? _tree._entries[((3 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node)))._mark - (_errVisit);
                var _err:stdgo.Error = _walk(_tree._name, _markFn);
                if (_err != null) {
                    _t.fatalf(((("expected no error return from Walk, got %s" : GoString))), Go.toInterface(_err));
                };
                if ((_errors != null ? _errors.length : ((0 : GoInt))) != ((2 : GoInt))) {
                    _t.errorf(((("expected 2 errors, got %d: %s" : GoString))), Go.toInterface((_errors != null ? _errors.length : ((0 : GoInt)))), Go.toInterface(_errors));
                };
                _checkMarks(_t, true);
                _errors = _errors.__slice__(((0 : GoInt)), ((0 : GoInt)));
                _markTree((_tree._entries != null ? _tree._entries[((1 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node))));
                _markTree((_tree._entries != null ? _tree._entries[((3 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node))));
                (_tree._entries != null ? _tree._entries[((1 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node)))._mark = (_tree._entries != null ? _tree._entries[((1 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node)))._mark - (_errVisit);
                (_tree._entries != null ? _tree._entries[((3 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node)))._mark = (_tree._entries != null ? _tree._entries[((3 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node)))._mark - (_errVisit);
                _clear = false;
                _err = _walk(_tree._name, _markFn);
                if (_err == null) {
                    _t.fatalf(((("expected error return from Walk" : GoString))));
                };
                if ((_errors != null ? _errors.length : ((0 : GoInt))) != ((1 : GoInt))) {
                    _t.errorf(((("expected 1 error, got %d: %s" : GoString))), Go.toInterface((_errors != null ? _errors.length : ((0 : GoInt)))), Go.toInterface(_errors));
                };
                _checkMarks(_t, false);
                _errors = _errors.__slice__(((0 : GoInt)), ((0 : GoInt)));
                stdgo.os.Os.chmod(stdgo.path.filepath.Filepath.join(_tree._name, (_tree._entries != null ? _tree._entries[((1 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node)))._name), ((504 : GoUInt32)));
                stdgo.os.Os.chmod(stdgo.path.filepath.Filepath.join(_tree._name, (_tree._entries != null ? _tree._entries[((3 : GoInt))] : ((null : stdgo.path.filepath_test.Filepath_test.Node)))._name), ((504 : GoUInt32)));
            });
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function _touch(_t:stdgo.testing.Testing.T_, _name:GoString):Void {
        var __tmp__ = stdgo.os.Os.create(_name), _f:stdgo.os.Os.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = _f.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
    }
function testWalkSkipDirOnFile(_t:stdgo.testing.Testing.T_):Void {
        var _td:GoString = _t.tempDir();
        {
            var _err:stdgo.Error = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_td, ((("dir" : GoString)))), ((493 : GoUInt32)));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ((("dir/foo1" : GoString)))));
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ((("dir/foo2" : GoString)))));
        var _sawFoo2:Bool = false;
        var _walker:GoString -> stdgo.Error = function(_path:GoString):Error {
            if (stdgo.strings.Strings.hasSuffix(_path, ((("foo2" : GoString))))) {
                _sawFoo2 = true;
            };
            if (stdgo.strings.Strings.hasSuffix(_path, ((("foo1" : GoString))))) {
                return stdgo.path.filepath.Filepath.skipDir;
            };
            return ((null : stdgo.Error));
        };
        var _walkFn:(GoString, stdgo.io.fs.Fs.FileInfo, stdgo.Error) -> stdgo.Error = function(_path:GoString, _0:stdgo.io.fs.Fs.FileInfo, _1:Error):Error {
            return _walker(_path);
        };
        var _walkDirFn:(GoString, stdgo.io.fs.Fs.DirEntry, stdgo.Error) -> stdgo.Error = function(_path:GoString, _0:stdgo.io.fs.Fs.DirEntry, _1:Error):Error {
            return _walker(_path);
        };
        var _check:(stdgo.testing.Testing.T_, GoString -> stdgo.Error, GoString) -> Void = function(_t:stdgo.testing.Testing.T_, _walk:(_root:GoString) -> Error, _root:GoString):Void {
            _t.helper();
            _sawFoo2 = false;
            var _err:stdgo.Error = _walk(_root);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_sawFoo2) {
                _t.errorf(((("SkipDir on file foo1 did not block processing of foo2" : GoString))));
            };
        };
        _t.run(((("Walk" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var walk:GoString -> stdgo.Error = function(_root:GoString):Error {
                return stdgo.path.filepath.Filepath.walk(_td, _walkFn);
            };
            _check(_t, walk, _td);
            _check(_t, walk, stdgo.path.filepath.Filepath.join(_td, ((("dir" : GoString)))));
        });
        _t.run(((("WalkDir" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var walkDir:GoString -> stdgo.Error = function(_root:GoString):Error {
                return stdgo.path.filepath.Filepath.walkDir(_td, _walkDirFn);
            };
            _check(_t, walkDir, _td);
            _check(_t, walkDir, stdgo.path.filepath.Filepath.join(_td, ((("dir" : GoString)))));
        });
    }
function testWalkFileError(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _td:GoString = _t.tempDir();
            _touch(_t, stdgo.path.filepath.Filepath.join(_td, ((("foo" : GoString)))));
            _touch(_t, stdgo.path.filepath.Filepath.join(_td, ((("bar" : GoString)))));
            var _dir:GoString = stdgo.path.filepath.Filepath.join(_td, ((("dir" : GoString))));
            {
                var _err:stdgo.Error = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_td, ((("dir" : GoString)))), ((493 : GoUInt32)));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            _touch(_t, stdgo.path.filepath.Filepath.join(_dir, ((("baz" : GoString)))));
            _touch(_t, stdgo.path.filepath.Filepath.join(_dir, ((("stat-error" : GoString)))));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo.path.filepath.Filepath.lstatP = stdgo.os.Os.lstat;
                };
                a();
            });
            var _statErr:stdgo.Error = stdgo.errors.Errors.new_(((("some stat error" : GoString))));
            stdgo.path.filepath.Filepath.lstatP = function(_path:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
                if (stdgo.strings.Strings.hasSuffix(_path, ((("stat-error" : GoString))))) {
                    return { _0 : ((null : stdgo.io.fs.Fs.FileInfo)), _1 : _statErr };
                };
                return stdgo.os.Os.lstat(_path);
            };
            var _got:GoMap<GoString, stdgo.Error> = Go.map();
            var _err:stdgo.Error = stdgo.path.filepath.Filepath.walk(_td, function(_path:GoString, _fi:stdgo.io.fs.Fs.FileInfo, _err:Error):Error {
                var __tmp__ = stdgo.path.filepath.Filepath.rel(_td, _path), _rel:GoString = __tmp__._0, _0:stdgo.Error = __tmp__._1;
                if (_got != null) _got[stdgo.path.filepath.Filepath.toSlash(_rel)] = _err;
                return ((null : stdgo.Error));
            });
            if (_err != null) {
                _t.errorf(((("Walk error: %v" : GoString))), Go.toInterface(_err));
            };
            var _want:GoMap<GoString, stdgo.Error> = Go.map(((("." : GoString))) => ((null : stdgo.Error)), ((("foo" : GoString))) => ((null : stdgo.Error)), ((("bar" : GoString))) => ((null : stdgo.Error)), ((("dir" : GoString))) => ((null : stdgo.Error)), ((("dir/baz" : GoString))) => ((null : stdgo.Error)), ((("dir/stat-error" : GoString))) => _statErr);
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_got), Go.toInterface(_want))) {
                _t.errorf(((("Walked %#v; want %#v" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testBase(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = _basetests;
        if (false) {
            for (_i => _ in _tests) {
                (_tests != null ? _tests[_i] : new stdgo.path.filepath_test.Filepath_test.PathTest())._result = stdgo.path.filepath.Filepath.clean((_tests != null ? _tests[_i] : new stdgo.path.filepath_test.Filepath_test.PathTest())._result);
            };
            _tests = (_tests != null ? _tests.__append__(..._winbasetests.__toArray__()) : new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(..._winbasetests.__toArray__()));
        };
        for (_0 => _test in _tests) {
            {
                var _s:GoString = stdgo.path.filepath.Filepath.base(_test._path);
                if (_s != _test._result) {
                    _t.errorf(((("Base(%q) = %q, want %q" : GoString))), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
        };
    }
function testDir(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = _dirtests;
        if (false) {
            for (_i => _ in _tests) {
                (_tests != null ? _tests[_i] : new stdgo.path.filepath_test.Filepath_test.PathTest())._result = stdgo.path.filepath.Filepath.clean((_tests != null ? _tests[_i] : new stdgo.path.filepath_test.Filepath_test.PathTest())._result);
            };
            _tests = (_tests != null ? _tests.__append__(..._windirtests.__toArray__()) : new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(..._windirtests.__toArray__()));
        };
        for (_0 => _test in _tests) {
            {
                var _s:GoString = stdgo.path.filepath.Filepath.dir(_test._path);
                if (_s != _test._result) {
                    _t.errorf(((("Dir(%q) = %q, want %q" : GoString))), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
        };
    }
function testIsAbs(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<IsAbsTest> = ((null : Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>));
        if (false) {
            _tests = (_tests != null ? _tests.__append__(..._winisabstests.__toArray__()) : new Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>(..._winisabstests.__toArray__()));
            for (_0 => _test in _isabstests) {
                _tests = (_tests != null ? _tests.__append__(((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(_test._path, false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))) : new Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>(((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(_test._path, false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))));
            };
            for (_1 => _test in _isabstests) {
                _tests = (_tests != null ? _tests.__append__(((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("c:" : GoString))) + _test._path, _test._isAbs) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))) : new Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>(((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("c:" : GoString))) + _test._path, _test._isAbs) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))));
            };
            _tests = (_tests != null ? _tests.__append__(((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("/dev/null" : GoString))), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))) : new Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>(((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("/dev/null" : GoString))), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))));
            _tests = (_tests != null ? _tests.__append__(((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("NUL" : GoString))), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))) : new Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>(((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("NUL" : GoString))), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))));
            _tests = (_tests != null ? _tests.__append__(((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("nul" : GoString))), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))) : new Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>(((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("nul" : GoString))), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))));
            _tests = (_tests != null ? _tests.__append__(((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("CON" : GoString))), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))) : new Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>(((new stdgo.path.filepath_test.Filepath_test.IsAbsTest(((("CON" : GoString))), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest))));
        } else {
            _tests = _isabstests;
        };
        for (_2 => _test in _tests) {
            {
                var _r:Bool = stdgo.path.filepath.Filepath.isAbs(_test._path);
                if (_r != _test._isAbs) {
                    _t.errorf(((("IsAbs(%q) = %v, want %v" : GoString))), Go.toInterface(_test._path), Go.toInterface(_r), Go.toInterface(_test._isAbs));
                };
            };
        };
    }
function _simpleJoin(_dir:GoString, _path:GoString):GoString {
        return (_dir + ((((47 : GoInt32)) : GoString))) + _path;
    }
function _testEvalSymlinks(_t:stdgo.testing.Testing.T_, _path:GoString, _want:GoString):Void {
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_path), _have:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("EvalSymlinks(%q) error: %v" : GoString))), Go.toInterface(_path), Go.toInterface(_err));
            return;
        };
        if (stdgo.path.filepath.Filepath.clean(_have) != stdgo.path.filepath.Filepath.clean(_want)) {
            _t.errorf(((("EvalSymlinks(%q) returns %q, want %q" : GoString))), Go.toInterface(_path), Go.toInterface(_have), Go.toInterface(_want));
        };
    }
function _testEvalSymlinksAfterChdir(_t:stdgo.testing.Testing.T_, _wd:GoString, _path:GoString, _want:GoString):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo.os.Os.getwd(), _cwd:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:stdgo.Error = stdgo.os.Os.chdir(_cwd);
                    if (_err != null) {
                        _t.fatal(Go.toInterface(_err));
                    };
                };
                a();
            });
            _err = stdgo.os.Os.chdir(_wd);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_path), _have:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("EvalSymlinks(%q) in %q directory error: %v" : GoString))), Go.toInterface(_path), Go.toInterface(_wd), Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (stdgo.path.filepath.Filepath.clean(_have) != stdgo.path.filepath.Filepath.clean(_want)) {
                _t.errorf(((("EvalSymlinks(%q) in %q directory returns %q, want %q" : GoString))), Go.toInterface(_path), Go.toInterface(_wd), Go.toInterface(_have), Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testEvalSymlinks(_t:stdgo.testing.Testing.T_):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(_t);
        var _tmpDir:GoString = _t.tempDir();
        var _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_tmpDir);
            _tmpDir = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(((("eval symlink for tmp dir:" : GoString)))), Go.toInterface(_err));
        };
        for (_0 => _d in evalSymlinksTestDirs) {
            var _err:Error = ((null : stdgo.Error));
            var _path:GoString = _simpleJoin(_tmpDir, _d._path);
            if (_d._dest == ("")) {
                _err = stdgo.os.Os.mkdir(_path, ((493 : GoUInt32)));
            } else {
                _err = stdgo.os.Os.symlink(_d._dest, _path);
            };
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        for (_1 => _test in evalSymlinksTests) {
            var _path:GoString = _simpleJoin(_tmpDir, _test._path);
            var _dest:GoString = _simpleJoin(_tmpDir, _test._dest);
            if (stdgo.path.filepath.Filepath.isAbs(_test._dest) || stdgo.os.Os.isPathSeparator((_test._dest != null ? _test._dest[((0 : GoInt))] : ((0 : GoUInt8))))) {
                _dest = _test._dest;
            };
            _testEvalSymlinks(_t, _path, _dest);
            _testEvalSymlinksAfterChdir(_t, _path, ((("." : GoString))), ((("." : GoString))));
            if (false) {
                var _volDot:GoString = stdgo.path.filepath.Filepath.volumeName(_tmpDir) + ((("." : GoString)));
                _testEvalSymlinksAfterChdir(_t, _path, _volDot, _volDot);
            };
            var _dotdotPath:GoString = _simpleJoin((((".." : GoString))), _test._dest);
            if (stdgo.path.filepath.Filepath.isAbs(_test._dest) || stdgo.os.Os.isPathSeparator((_test._dest != null ? _test._dest[((0 : GoInt))] : ((0 : GoUInt8))))) {
                _dotdotPath = _test._dest;
            };
            _testEvalSymlinksAfterChdir(_t, _simpleJoin(_tmpDir, ((("test" : GoString)))), _simpleJoin((((".." : GoString))), _test._path), _dotdotPath);
            _testEvalSymlinksAfterChdir(_t, _tmpDir, _test._path, _test._dest);
        };
    }
function testEvalSymlinksIsNotExist(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo.internal.testenv.Testenv.mustHaveSymlink(_t);
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(((("notexist" : GoString)))), _0:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!stdgo.os.Os.isNotExist(_err)) {
                _t.errorf(((("expected the file is not found, got %v\n" : GoString))), Go.toInterface(_err));
            };
            _err = stdgo.os.Os.symlink(((("notexist" : GoString))), ((("link" : GoString))));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            {
                var _a0 = ((("link" : GoString)));
                __deferstack__.unshift(() -> stdgo.os.Os.remove(_a0));
            };
            {
                var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(((("link" : GoString))));
                _err = __tmp__._1;
            };
            if (!stdgo.os.Os.isNotExist(_err)) {
                _t.errorf(((("expected the file is not found, got %v\n" : GoString))), Go.toInterface(_err));
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testIssue13582(_t:stdgo.testing.Testing.T_):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(_t);
        var _tmpDir:GoString = _t.tempDir();
        var _dir:GoString = stdgo.path.filepath.Filepath.join(_tmpDir, ((("dir" : GoString))));
        var _err:stdgo.Error = stdgo.os.Os.mkdir(_dir, ((493 : GoUInt32)));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _linkToDir:GoString = stdgo.path.filepath.Filepath.join(_tmpDir, ((("link_to_dir" : GoString))));
        _err = stdgo.os.Os.symlink(_dir, _linkToDir);
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _file:GoString = stdgo.path.filepath.Filepath.join(_linkToDir, ((("file" : GoString))));
        _err = stdgo.os.Os.writeFile(_file, ((null : Slice<GoUInt8>)), ((420 : GoUInt32)));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _link1:GoString = stdgo.path.filepath.Filepath.join(_linkToDir, ((("link1" : GoString))));
        _err = stdgo.os.Os.symlink(_file, _link1);
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _link2:GoString = stdgo.path.filepath.Filepath.join(_linkToDir, ((("link2" : GoString))));
        _err = stdgo.os.Os.symlink(_link1, _link2);
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_tmpDir), _realTmpDir:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _realDir:GoString = stdgo.path.filepath.Filepath.join(_realTmpDir, ((("dir" : GoString))));
        var _realFile:GoString = stdgo.path.filepath.Filepath.join(_realDir, ((("file" : GoString))));
        var _tests:Slice<stdgo.path.filepath_test.Filepath_test.T__struct_2> = ((new Slice<stdgo.path.filepath_test.Filepath_test.T__struct_2>(((new stdgo.path.filepath_test.Filepath_test.T__struct_2(_dir, _realDir) : stdgo.path.filepath_test.Filepath_test.T__struct_2)), ((new stdgo.path.filepath_test.Filepath_test.T__struct_2(_linkToDir, _realDir) : stdgo.path.filepath_test.Filepath_test.T__struct_2)), ((new stdgo.path.filepath_test.Filepath_test.T__struct_2(_file, _realFile) : stdgo.path.filepath_test.Filepath_test.T__struct_2)), ((new stdgo.path.filepath_test.Filepath_test.T__struct_2(_link1, _realFile) : stdgo.path.filepath_test.Filepath_test.T__struct_2)), ((new stdgo.path.filepath_test.Filepath_test.T__struct_2(_link2, _realFile) : stdgo.path.filepath_test.Filepath_test.T__struct_2))) : Slice<stdgo.path.filepath_test.Filepath_test.T__struct_2>));
        for (_i => _test in _tests) {
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_test._path), _have:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_have != _test._want) {
                _t.errorf(((("test#%d: EvalSymlinks(%q) returns %q, want %q" : GoString))), Go.toInterface(_i), Go.toInterface(_test._path), Go.toInterface(_have), Go.toInterface(_test._want));
            };
        };
    }
function testAbs(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _root:GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _wd:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(((("getwd failed: " : GoString)))), Go.toInterface(_err));
            };
            _err = stdgo.os.Os.chdir(_root);
            if (_err != null) {
                _t.fatal(Go.toInterface(((("chdir failed: " : GoString)))), Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            for (_0 => _dir in _absTestDirs) {
                _err = stdgo.os.Os.mkdir(_dir, ((511 : GoUInt32)));
                if (_err != null) {
                    _t.fatal(Go.toInterface(((("Mkdir failed: " : GoString)))), Go.toInterface(_err));
                };
            };
            if (false) {
                var _vol:GoString = stdgo.path.filepath.Filepath.volumeName(_root);
                var _extra:Slice<GoString> = ((null : Slice<GoString>));
                for (_1 => _path in _absTests) {
                    if (stdgo.strings.Strings.contains(_path, ((("$$" : GoString))))) {
                        continue;
                    };
                    _path = _vol + _path;
                    _extra = (_extra != null ? _extra.__append__(_path) : new Slice<GoString>(_path));
                };
                _absTests = (_absTests != null ? _absTests.__append__(..._extra.__toArray__()) : new Slice<GoString>(..._extra.__toArray__()));
            };
            _err = stdgo.os.Os.chdir((_absTestDirs != null ? _absTestDirs[((0 : GoInt))] : (("" : GoString))));
            if (_err != null) {
                _t.fatal(Go.toInterface(((("chdir failed: " : GoString)))), Go.toInterface(_err));
            };
            for (_2 => _path in _absTests) {
                _path = stdgo.strings.Strings.replaceAll(_path, ((("$$" : GoString))), _root);
                var __tmp__ = stdgo.os.Os.stat(_path), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(((("%s: %s" : GoString))), Go.toInterface(_path), Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo.path.filepath.Filepath.abs(_path), _abspath:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(((("Abs(%q) error: %v" : GoString))), Go.toInterface(_path), Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo.os.Os.stat(_abspath), _absinfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_err != null) || !stdgo.os.Os.sameFile(_absinfo, _info)) {
                    _t.errorf(((("Abs(%q)=%q, not the same file" : GoString))), Go.toInterface(_path), Go.toInterface(_abspath));
                };
                if (!stdgo.path.filepath.Filepath.isAbs(_abspath)) {
                    _t.errorf(((("Abs(%q)=%q, not an absolute path" : GoString))), Go.toInterface(_path), Go.toInterface(_abspath));
                };
                if (stdgo.path.filepath.Filepath.isAbs(_abspath) && (_abspath != stdgo.path.filepath.Filepath.clean(_abspath))) {
                    _t.errorf(((("Abs(%q)=%q, isn\'t clean" : GoString))), Go.toInterface(_path), Go.toInterface(_abspath));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testAbsEmptyString(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _root:GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _wd:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(((("getwd failed: " : GoString)))), Go.toInterface(_err));
            };
            _err = stdgo.os.Os.chdir(_root);
            if (_err != null) {
                _t.fatal(Go.toInterface(((("chdir failed: " : GoString)))), Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            var __tmp__ = stdgo.os.Os.stat(_root), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("%s: %s" : GoString))), Go.toInterface(_root), Go.toInterface(_err));
            };
            var __tmp__ = stdgo.path.filepath.Filepath.abs(("")), _abspath:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf("Abs(\"\") error: %v", Go.toInterface(_err));
            };
            var __tmp__ = stdgo.os.Os.stat(_abspath), _absinfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || !stdgo.os.Os.sameFile(_absinfo, _info)) {
                _t.errorf("Abs(\"\")=%q, not the same file", Go.toInterface(_abspath));
            };
            if (!stdgo.path.filepath.Filepath.isAbs(_abspath)) {
                _t.errorf("Abs(\"\")=%q, not an absolute path", Go.toInterface(_abspath));
            };
            if (stdgo.path.filepath.Filepath.isAbs(_abspath) && (_abspath != stdgo.path.filepath.Filepath.clean(_abspath))) {
                _t.errorf("Abs(\"\")=%q, isn\'t clean", Go.toInterface(_abspath));
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testRel(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.path.filepath_test.Filepath_test.RelTests> = (((new Slice<stdgo.path.filepath_test.Filepath_test.RelTests>() : Slice<stdgo.path.filepath_test.Filepath_test.RelTests>)) != null ? ((new Slice<stdgo.path.filepath_test.Filepath_test.RelTests>() : Slice<stdgo.path.filepath_test.Filepath_test.RelTests>)).__append__(..._reltests.__toArray__()) : new Slice<stdgo.path.filepath_test.Filepath_test.RelTests>(..._reltests.__toArray__()));
        if (false) {
            for (_i => _ in _tests) {
                (_tests != null ? _tests[_i] : new stdgo.path.filepath_test.Filepath_test.RelTests())._want = stdgo.path.filepath.Filepath.fromSlash((_tests != null ? _tests[_i] : new stdgo.path.filepath_test.Filepath_test.RelTests())._want);
            };
            _tests = (_tests != null ? _tests.__append__(..._winreltests.__toArray__()) : new Slice<stdgo.path.filepath_test.Filepath_test.RelTests>(..._winreltests.__toArray__()));
        };
        for (_0 => _test in _tests) {
            var __tmp__ = stdgo.path.filepath.Filepath.rel(_test._root, _test._path), _got:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_test._want == ((("err" : GoString)))) {
                if (_err == null) {
                    _t.errorf(((("Rel(%q, %q)=%q, want error" : GoString))), Go.toInterface(_test._root), Go.toInterface(_test._path), Go.toInterface(_got));
                };
                continue;
            };
            if (_err != null) {
                _t.errorf(((("Rel(%q, %q): want %q, got error: %s" : GoString))), Go.toInterface(_test._root), Go.toInterface(_test._path), Go.toInterface(_test._want), Go.toInterface(_err));
            };
            if (_got != _test._want) {
                _t.errorf(((("Rel(%q, %q)=%q, want %q" : GoString))), Go.toInterface(_test._root), Go.toInterface(_test._path), Go.toInterface(_got), Go.toInterface(_test._want));
            };
        };
    }
function testVolumeName(_t:stdgo.testing.Testing.T_):Void {
        if (true) {
            return;
        };
        for (_0 => _v in _volumenametests) {
            {
                var _vol:GoString = stdgo.path.filepath.Filepath.volumeName(_v._path);
                if (_vol != _v._vol) {
                    _t.errorf(((("VolumeName(%q)=%q, want %q" : GoString))), Go.toInterface(_v._path), Go.toInterface(_vol), Go.toInterface(_v._vol));
                };
            };
        };
    }
function testDriveLetterInEvalSymlinks(_t:stdgo.testing.Testing.T_):Void {
        if (true) {
            return;
        };
        var __tmp__ = stdgo.os.Os.getwd(), _wd:GoString = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        if ((_wd != null ? _wd.length : ((0 : GoInt))) < ((3 : GoInt))) {
            _t.errorf(((("Current directory path %q is too short" : GoString))), Go.toInterface(_wd));
        };
        var _lp:GoString = stdgo.strings.Strings.toLower(_wd);
        var _up:GoString = stdgo.strings.Strings.toUpper(_wd);
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_lp), _flp:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("EvalSymlinks(%q) failed: %q" : GoString))), Go.toInterface(_lp), Go.toInterface(_err));
        };
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_up), _fup:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(((("EvalSymlinks(%q) failed: %q" : GoString))), Go.toInterface(_up), Go.toInterface(_err));
        };
        if (_flp != _fup) {
            _t.errorf(((("Results of EvalSymlinks do not match: %q and %q" : GoString))), Go.toInterface(_flp), Go.toInterface(_fup));
        };
    }
function testBug3486(_t:stdgo.testing.Testing.T_):Void {
        if (false) {
            _t.skipf(((("skipping on %s/%s" : GoString))), Go.toInterface(((("js" : GoString)))), Go.toInterface(((("wasm" : GoString)))));
        };
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(stdgo.runtime.Runtime.goroot() + ((("/test" : GoString)))), _root:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _bugs:GoString = stdgo.path.filepath.Filepath.join(_root, ((("fixedbugs" : GoString))));
        var _ken:GoString = stdgo.path.filepath.Filepath.join(_root, ((("ken" : GoString))));
        var _seenBugs:Bool = false;
        var _seenKen:Bool = false;
        _err = stdgo.path.filepath.Filepath.walk(_root, function(_pth:GoString, _info:stdgo.io.fs.Fs.FileInfo, _err:Error):Error {
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_pth == _bugs) {
                _seenBugs = true;
                return stdgo.path.filepath.Filepath.skipDir;
            } else if (_pth == _ken) {
                if (!_seenBugs) {
                    _t.fatal(Go.toInterface(((("filepath.Walk out of order - ken before fixedbugs" : GoString)))));
                };
                _seenKen = true;
            };
            return ((null : stdgo.Error));
        });
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (!_seenKen) {
            _t.fatalf(((("%q not seen" : GoString))), Go.toInterface(_ken));
        };
    }
function _testWalkSymlink(_t:stdgo.testing.Testing.T_, _mklink:(_target:GoString, _link:GoString) -> Error):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpdir:GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _wd:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            _err = stdgo.os.Os.chdir(_tmpdir);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            _err = _mklink(_tmpdir, ((("link" : GoString))));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var _visited:Slice<GoString> = ((null : Slice<GoString>));
            _err = stdgo.path.filepath.Filepath.walk(_tmpdir, function(_path:GoString, _info:stdgo.io.fs.Fs.FileInfo, _err:Error):Error {
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
                var __tmp__ = stdgo.path.filepath.Filepath.rel(_tmpdir, _path), _rel:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
                _visited = (_visited != null ? _visited.__append__(_rel) : new Slice<GoString>(_rel));
                return ((null : stdgo.Error));
            });
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            stdgo.sort.Sort.strings(_visited);
            var _want:Slice<GoString> = ((new Slice<GoString>(((("." : GoString))), ((("link" : GoString)))) : Slice<GoString>));
            if (stdgo.fmt.Fmt.sprintf(((("%q" : GoString))), Go.toInterface(_visited)) != stdgo.fmt.Fmt.sprintf(((("%q" : GoString))), Go.toInterface(_want))) {
                _t.errorf(((("unexpected paths visited %q, want %q" : GoString))), Go.toInterface(_visited), Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testWalkSymlink(_t:stdgo.testing.Testing.T_):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(_t);
        _testWalkSymlink(_t, stdgo.os.Os.symlink);
    }
function testIssue29372(_t:stdgo.testing.Testing.T_):Void {
        var _tmpDir:GoString = _t.tempDir();
        var _path:GoString = stdgo.path.filepath.Filepath.join(_tmpDir, ((("file.txt" : GoString))));
        var _err:stdgo.Error = stdgo.os.Os.writeFile(_path, ((null : Slice<GoUInt8>)), ((420 : GoUInt32)));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _pathSeparator:GoString = ((((47 : GoInt32)) : GoString));
        var _tests:Slice<GoString> = ((new Slice<GoString>(_path + stdgo.strings.Strings.repeat(_pathSeparator, ((1 : GoInt))), _path + stdgo.strings.Strings.repeat(_pathSeparator, ((2 : GoInt))), (_path + stdgo.strings.Strings.repeat(_pathSeparator, ((1 : GoInt)))) + ((("." : GoString))), (_path + stdgo.strings.Strings.repeat(_pathSeparator, ((2 : GoInt)))) + ((("." : GoString))), (_path + stdgo.strings.Strings.repeat(_pathSeparator, ((1 : GoInt)))) + (((".." : GoString))), (_path + stdgo.strings.Strings.repeat(_pathSeparator, ((2 : GoInt)))) + (((".." : GoString)))) : Slice<GoString>));
        for (_i => _test in _tests) {
            {
                var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_test);
                _err = __tmp__._1;
            };
            if (_err != ((20 : GoUIntptr))) {
                _t.fatalf(((("test#%d: want %q, got %q" : GoString))), Go.toInterface(_i), Go.toInterface(((20 : GoUIntptr))), Go.toInterface(_err));
            };
        };
    }
function testEvalSymlinksAboveRoot(_t:stdgo.testing.Testing.T_):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(_t);
        _t.parallel();
        var _tmpDir:GoString = _t.tempDir();
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_tmpDir), _evalTmpDir:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = stdgo.os.Os.mkdir(stdgo.path.filepath.Filepath.join(_evalTmpDir, ((("a" : GoString)))), ((511 : GoUInt32)));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = stdgo.os.Os.symlink(stdgo.path.filepath.Filepath.join(_evalTmpDir, ((("a" : GoString)))), stdgo.path.filepath.Filepath.join(_evalTmpDir, ((("b" : GoString)))));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = stdgo.os.Os.writeFile(stdgo.path.filepath.Filepath.join(_evalTmpDir, ((("a" : GoString))), ((("file" : GoString)))), ((null : Slice<GoUInt8>)), ((438 : GoUInt32)));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _vol:GoString = stdgo.path.filepath.Filepath.volumeName(_evalTmpDir);
        var _c:GoInt = stdgo.strings.Strings.count(_evalTmpDir.__slice__((_vol != null ? _vol.length : ((0 : GoInt)))), ((((47 : GoInt32)) : GoString)));
        var _dd:Slice<GoString> = ((null : Slice<GoString>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_c + ((2 : GoInt))), _i++, {
                _dd = (_dd != null ? _dd.__append__((((".." : GoString)))) : new Slice<GoString>((((".." : GoString)))));
            });
        };
        var _wantSuffix:GoString = stdgo.strings.Strings.join(((new Slice<GoString>(((("a" : GoString))), ((("file" : GoString)))) : Slice<GoString>)), ((((47 : GoInt32)) : GoString)));
        for (_0 => _i in ((new Slice<GoInt>(_c, _c + ((1 : GoInt)), _c + ((2 : GoInt))) : Slice<GoInt>))) {
            var _check:GoString = stdgo.strings.Strings.join(((new Slice<GoString>(_evalTmpDir, stdgo.strings.Strings.join(_dd.__slice__(0, _i), ((((47 : GoInt32)) : GoString))), _evalTmpDir.__slice__((_vol != null ? _vol.length : ((0 : GoInt))) + ((1 : GoInt))), ((("b" : GoString))), ((("file" : GoString)))) : Slice<GoString>)), ((((47 : GoInt32)) : GoString)));
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_check), _resolved:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (false && stdgo.errors.Errors.is_(_err, stdgo.io.fs.Fs.errNotExist)) {
                stdgo.internal.testenv.Testenv.skipFlaky(_t, ((37910 : GoInt)));
            } else if (_err != null) {
                _t.errorf(((("EvalSymlinks(%q) failed: %v" : GoString))), Go.toInterface(_check), Go.toInterface(_err));
            } else if (!stdgo.strings.Strings.hasSuffix(_resolved, _wantSuffix)) {
                _t.errorf(((("EvalSymlinks(%q) = %q does not end with %q" : GoString))), Go.toInterface(_check), Go.toInterface(_resolved), Go.toInterface(_wantSuffix));
            } else {
                _t.logf(((("EvalSymlinks(%q) = %q" : GoString))), Go.toInterface(_check), Go.toInterface(_resolved));
            };
        };
    }
function testEvalSymlinksAboveRootChdir(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo.internal.testenv.Testenv.mustHaveSymlink(_t);
            var __tmp__ = stdgo.os.Os.mkdirTemp((""), ((("TestEvalSymlinksAboveRootChdir" : GoString)))), _tmpDir:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            {
                var _a0 = _tmpDir;
                __deferstack__.unshift(() -> stdgo.os.Os.removeAll(_a0));
            };
            _chdir(_t, _tmpDir);
            var _subdir:GoString = stdgo.path.filepath.Filepath.join(((("a" : GoString))), ((("b" : GoString))));
            {
                var _err:stdgo.Error = stdgo.os.Os.mkdirAll(_subdir, ((511 : GoUInt32)));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = stdgo.os.Os.symlink(_subdir, ((("c" : GoString))));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = stdgo.os.Os.writeFile(stdgo.path.filepath.Filepath.join(_subdir, ((("file" : GoString)))), ((null : Slice<GoUInt8>)), ((438 : GoUInt32)));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            _subdir = stdgo.path.filepath.Filepath.join(((("d" : GoString))), ((("e" : GoString))), ((("f" : GoString))));
            {
                var _err:stdgo.Error = stdgo.os.Os.mkdirAll(_subdir, ((511 : GoUInt32)));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = stdgo.os.Os.chdir(_subdir);
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            var _check:GoString = stdgo.path.filepath.Filepath.join((((".." : GoString))), (((".." : GoString))), (((".." : GoString))), ((("c" : GoString))), ((("file" : GoString))));
            var _wantSuffix:GoString = stdgo.path.filepath.Filepath.join(((("a" : GoString))), ((("b" : GoString))), ((("file" : GoString))));
            {
                var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_check), _resolved:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(((("EvalSymlinks(%q) failed: %v" : GoString))), Go.toInterface(_check), Go.toInterface(_err));
                } else if (!stdgo.strings.Strings.hasSuffix(_resolved, _wantSuffix)) {
                    _t.errorf(((("EvalSymlinks(%q) = %q does not end with %q" : GoString))), Go.toInterface(_check), Go.toInterface(_resolved), Go.toInterface(_wantSuffix));
                } else {
                    _t.logf(((("EvalSymlinks(%q) = %q" : GoString))), Go.toInterface(_check), Go.toInterface(_resolved));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
@:keep class T_globTest_static_extension {

}
class T_globTest_wrapper {
    public var __t__ : T_globTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_statDirEntry_static_extension {

}
class T_statDirEntry_wrapper {
    public var __t__ : T_statDirEntry;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
