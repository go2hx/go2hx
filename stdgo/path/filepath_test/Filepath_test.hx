package stdgo.path.filepath_test;
import stdgo.path.filepath.Filepath;
import stdgo.path.filepath.Filepath;
/**
    
    
    
**/
var _matchTests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.MatchTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.MatchTest>(
56,
56,
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("*" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("*c" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*" : stdgo.GoString), ("a" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*" : stdgo.GoString), ("ab/c" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*/b" : stdgo.GoString), ("abc/b" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*/b" : stdgo.GoString), ("a/c/b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString), ("axbxcxdxe/f" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString), ("axbxcxdxexxx/f" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString), ("axbxcxdxe/xxx/f" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString), ("axbxcxdxexxx/fff" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b?c*x" : stdgo.GoString), ("abxbbxdbxebxczzx" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b?c*x" : stdgo.GoString), ("abxbbxdbxebxczzy" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("ab[c]" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("ab[b-d]" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("ab[e-g]" : stdgo.GoString), ("abc" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("ab[^c]" : stdgo.GoString), ("abc" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("ab[^b-d]" : stdgo.GoString), ("abc" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("ab[^e-g]" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a\\*b" : stdgo.GoString), ("a*b" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a\\*b" : stdgo.GoString), ("ab" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a?b" : stdgo.GoString), ("a☺b" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a[^a]b" : stdgo.GoString), ("a☺b" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a???b" : stdgo.GoString), ("a☺b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a[^a][^a][^a]b" : stdgo.GoString), ("a☺b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[a-ζ]*" : stdgo.GoString), ("α" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("*[a-ζ]" : stdgo.GoString), ("A" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a?b" : stdgo.GoString), ("a/b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b" : stdgo.GoString), ("a/b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[\\]a]" : stdgo.GoString), ("]" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[\\-]" : stdgo.GoString), ("-" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[x\\-]" : stdgo.GoString), ("x" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[x\\-]" : stdgo.GoString), ("-" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[x\\-]" : stdgo.GoString), ("z" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[\\-x]" : stdgo.GoString), ("x" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[\\-x]" : stdgo.GoString), ("-" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[\\-x]" : stdgo.GoString), ("a" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[]a]" : stdgo.GoString), ("]" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[-]" : stdgo.GoString), ("-" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[x-]" : stdgo.GoString), ("x" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[x-]" : stdgo.GoString), ("-" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[x-]" : stdgo.GoString), ("z" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[-x]" : stdgo.GoString), ("x" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[-x]" : stdgo.GoString), ("-" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[-x]" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("\\" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[a-b-c]" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[^" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[^bc" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a[" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a[" : stdgo.GoString), ("ab" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a[" : stdgo.GoString), ("x" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a/b[" : stdgo.GoString), ("x" : stdgo.GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("*x" : stdgo.GoString), ("xxx" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.MatchTest>);
/**
    
    
    
**/
var _globTests : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(4, 4, ({ _pattern : ("match.go" : stdgo.GoString), _result : ("match.go" : stdgo.GoString) } : T__struct_0), ({ _pattern : ("mat?h.go" : stdgo.GoString), _result : ("match.go" : stdgo.GoString) } : T__struct_0), ({ _pattern : ("*" : stdgo.GoString), _result : ("match.go" : stdgo.GoString) } : T__struct_0), ({ _pattern : ("../*/match.go" : stdgo.GoString), _result : ("../filepath/match.go" : stdgo.GoString) } : T__struct_0)) : stdgo.Slice<T__struct_0>);
/**
    
    
    
**/
var _globSymlinkTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(2, 2, ({ _path : ("test1" : stdgo.GoString), _dest : ("link1" : stdgo.GoString), _brokenLink : false } : T__struct_1), ({ _path : ("test2" : stdgo.GoString), _dest : ("link2" : stdgo.GoString), _brokenLink : true } : T__struct_1)) : stdgo.Slice<T__struct_1>);
/**
    
    
    
**/
var _cleantests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
35,
35,
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def" : stdgo.GoString), ("abc/def" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/c" : stdgo.GoString), ("a/b/c" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest((".." : stdgo.GoString), (".." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("../.." : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("../../abc" : stdgo.GoString), ("../../abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/abc" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(stdgo.Go.str(), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/" : stdgo.GoString), ("abc/def" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/c/" : stdgo.GoString), ("a/b/c" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("./" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("../" : stdgo.GoString), (".." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("../../" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/abc/" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc//def//ghi" : stdgo.GoString), ("abc/def/ghi" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc//" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/./def" : stdgo.GoString), ("abc/def" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/./abc/def" : stdgo.GoString), ("/abc/def" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/." : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/ghi/../jkl" : stdgo.GoString), ("abc/def/jkl" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/../ghi/../jkl" : stdgo.GoString), ("abc/jkl" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/.." : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/../.." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/abc/def/../.." : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/../../.." : stdgo.GoString), (".." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/abc/def/../../.." : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/../../../ghi/jkl/../../../mno" : stdgo.GoString), ("../../mno" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/../abc" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/../b:/../../c" : stdgo.GoString), ("../c" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/./../def" : stdgo.GoString), ("def" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc//./../def" : stdgo.GoString), ("def" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/../../././../def" : stdgo.GoString), ("../../def" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
var _nonwincleantests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(3, 3, (new stdgo.path.filepath_test.Filepath_test.PathTest(("//abc" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("///abc" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("//abc//" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
var _wincleantests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
31,
31,
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:" : stdgo.GoString), ("c:." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\" : stdgo.GoString), ("c:\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\abc" : stdgo.GoString), ("c:\\abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:abc\\..\\..\\.\\.\\..\\def" : stdgo.GoString), ("c:..\\..\\def" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\abc\\def\\..\\.." : stdgo.GoString), ("c:\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\..\\abc" : stdgo.GoString), ("c:\\abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:..\\abc" : stdgo.GoString), ("c:..\\abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\b:\\..\\..\\..\\d" : stdgo.GoString), ("c:\\d" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\" : stdgo.GoString), ("\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/" : stdgo.GoString), ("\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\i\\..\\c$" : stdgo.GoString), ("\\\\i\\..\\c$" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\i\\..\\i\\c$" : stdgo.GoString), ("\\\\i\\..\\i\\c$" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\i\\..\\I\\c$" : stdgo.GoString), ("\\\\i\\..\\I\\c$" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\foo\\..\\bar" : stdgo.GoString), ("\\\\host\\share\\bar" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("//host/share/foo/../baz" : stdgo.GoString), ("\\\\host\\share\\baz" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\foo\\..\\..\\..\\..\\bar" : stdgo.GoString), ("\\\\host\\share\\bar" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\.\\C:\\a\\..\\..\\..\\..\\bar" : stdgo.GoString), ("\\\\.\\C:\\bar" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\.\\C:\\\\\\\\a" : stdgo.GoString), ("\\\\.\\C:\\a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\a\\b\\..\\c" : stdgo.GoString), ("\\\\a\\b\\c" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\a\\b" : stdgo.GoString), ("\\\\a\\b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest((".\\c:" : stdgo.GoString), (".\\c:" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest((".\\c:\\foo" : stdgo.GoString), (".\\c:\\foo" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest((".\\c:foo" : stdgo.GoString), (".\\c:foo" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("//abc" : stdgo.GoString), ("\\\\abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("///abc" : stdgo.GoString), ("\\\\\\abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("//abc//" : stdgo.GoString), ("\\\\abc\\\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/../c:" : stdgo.GoString), (".\\c:" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a\\..\\c:" : stdgo.GoString), (".\\c:" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/../c:/a" : stdgo.GoString), (".\\c:\\a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/../../c:" : stdgo.GoString), ("..\\c:" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("foo:bar" : stdgo.GoString), ("foo:bar" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
var _islocaltests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest>(
13,
13,
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(stdgo.Go.str(), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("." : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest((".." : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("../a" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("/" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("/a" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("/a/../.." : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("a" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("a/../a" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("a/" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("a/." : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("a/./b/./c" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("a/../b:/../../c" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest>);
/**
    
    
    
**/
var _winislocaltests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest>(
16,
16,
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("NUL" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("nul" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("nul." : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("com1" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("./nul" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("\\" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("\\a" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("C:" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("C:\\a" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("..\\a" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("a/../c:" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("CONIN$" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("conin$" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("CONOUT$" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("conout$" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("dollar$" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest>);
/**
    
    
    
**/
var _plan9islocaltests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest>(1, 1, (new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("#a" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest>);
/**
    
    
    
**/
var _slashtests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(4, 4, (new stdgo.path.filepath_test.Filepath_test.PathTest(stdgo.Go.str(), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("/" : stdgo.GoString), ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("/a/b" : stdgo.GoString), ((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(4, 4, (47 : stdgo.StdGoTypes.GoUInt8), (97 : stdgo.StdGoTypes.GoUInt8), (47 : stdgo.StdGoTypes.GoUInt8), (98 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("a//b" : stdgo.GoString), ((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(4, 4, (97 : stdgo.StdGoTypes.GoUInt8), (47 : stdgo.StdGoTypes.GoUInt8), (47 : stdgo.StdGoTypes.GoUInt8), (98 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
var _splitlisttests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest>(3, 3, (new stdgo.path.filepath_test.Filepath_test.SplitListTest(stdgo.Go.str(), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest), (new stdgo.path.filepath_test.Filepath_test.SplitListTest(((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(3, 3, (97 : stdgo.StdGoTypes.GoUInt8), (58 : stdgo.StdGoTypes.GoUInt8), (98 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest), (new stdgo.path.filepath_test.Filepath_test.SplitListTest(((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(4, 4, (58 : stdgo.StdGoTypes.GoUInt8), (97 : stdgo.StdGoTypes.GoUInt8), (58 : stdgo.StdGoTypes.GoUInt8), (98 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, stdgo.Go.str(), ("a" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest>);
/**
    
    
    
**/
var _winsplitlisttests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest>(
14,
14,
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"a\"" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("a" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\";\"" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, (";" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"a;b\"" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("a;b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\";\";" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, (";" : stdgo.GoString), stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest((";\";\"" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, stdgo.Go.str(), (";" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("a\";\"b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("a;b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("a; \"\"b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), (" b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"a;b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("a;b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"\"a;b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"\"\"a;b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("a;b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"\"\"\"a;b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("a\";b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("a;b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("a;b\";c" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), ("b;c" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"a\";b\";c" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), ("b;c" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest>);
/**
    
    
    
**/
var _unixsplittests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.SplitTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>(5, 5, (new stdgo.path.filepath_test.Filepath_test.SplitTest(("a/b" : stdgo.GoString), ("a/" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.SplitTest), (new stdgo.path.filepath_test.Filepath_test.SplitTest(("a/b/" : stdgo.GoString), ("a/b/" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest), (new stdgo.path.filepath_test.Filepath_test.SplitTest(("a/" : stdgo.GoString), ("a/" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest), (new stdgo.path.filepath_test.Filepath_test.SplitTest(("a" : stdgo.GoString), stdgo.Go.str(), ("a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.SplitTest), (new stdgo.path.filepath_test.Filepath_test.SplitTest(("/" : stdgo.GoString), ("/" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>);
/**
    
    
    
**/
var _winsplittests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.SplitTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>(
10,
10,
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("c:" : stdgo.GoString), ("c:" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("c:/" : stdgo.GoString), ("c:/" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("c:/foo" : stdgo.GoString), ("c:/" : stdgo.GoString), ("foo" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("c:/foo/bar" : stdgo.GoString), ("c:/foo/" : stdgo.GoString), ("bar" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("//host/share" : stdgo.GoString), ("//host/share" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("//host/share/" : stdgo.GoString), ("//host/share/" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("//host/share/foo" : stdgo.GoString), ("//host/share/" : stdgo.GoString), ("foo" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("\\\\host\\share" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("\\\\host\\share\\" : stdgo.GoString), ("\\\\host\\share\\" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("\\\\host\\share\\foo" : stdgo.GoString), ("\\\\host\\share\\" : stdgo.GoString), ("foo" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.SplitTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>);
/**
    
    
    
**/
var _jointests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.JoinTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>(
17,
17,
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, ("/" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("/" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, ("a" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("a/b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>), ("a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, stdgo.Go.str(), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("/" : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("/a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("/" : stdgo.GoString), ("a/b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("/a/b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("/" : stdgo.GoString), stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>), ("/" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("/a" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("/a/b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), ("/b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("a/b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("/a" : stdgo.GoString), ("/b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("/a/b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("a/" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("a/b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("a/" : stdgo.GoString), stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>), ("a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, stdgo.Go.str(), stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ("/" : stdgo.GoString), ("a" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("/a/b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>);
/**
    
    
    
**/
var _nonwinjointests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.JoinTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>(1, 1, (new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("//" : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("/a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>);
/**
    
    
    
**/
var _winjointests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.JoinTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>(
30,
30,
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("directory" : stdgo.GoString), ("file" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("directory\\file" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("C:\\Windows\\" : stdgo.GoString), ("System32" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("C:\\Windows\\System32" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("C:\\Windows\\" : stdgo.GoString), stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>), ("C:\\Windows" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("C:\\" : stdgo.GoString), ("Windows" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("C:\\Windows" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("C:" : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("C:a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("C:" : stdgo.GoString), ("a\\b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("C:a\\b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ("C:" : stdgo.GoString), ("a" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("C:a\\b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ("C:" : stdgo.GoString), stdgo.Go.str(), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("C:b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(4, 4, ("C:" : stdgo.GoString), stdgo.Go.str(), stdgo.Go.str(), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("C:b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("C:" : stdgo.GoString), stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>), ("C:." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ("C:" : stdgo.GoString), stdgo.Go.str(), stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>), ("C:." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("C:" : stdgo.GoString), ("\\a" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("C:\\a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ("C:" : stdgo.GoString), stdgo.Go.str(), ("\\a" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("C:\\a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("C:." : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("C:a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("C:a" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("C:a\\b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ("C:a" : stdgo.GoString), ("b" : stdgo.GoString), ("d" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("C:a\\b\\d" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("\\\\host\\share" : stdgo.GoString), ("foo" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("\\\\host\\share\\foo" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, ("\\\\host\\share\\foo" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("\\\\host\\share\\foo" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("//host/share" : stdgo.GoString), ("foo/bar" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("\\\\host\\share\\foo\\bar" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, ("\\" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("\\" : stdgo.GoString), stdgo.Go.str()) : stdgo.Slice<stdgo.GoString>), ("\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("\\" : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("\\a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("\\\\" : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("\\\\a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ("\\" : stdgo.GoString), ("a" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("\\a\\b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ("\\\\" : stdgo.GoString), ("a" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("\\\\a\\b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ("\\" : stdgo.GoString), ("\\\\a\\b" : stdgo.GoString), ("c" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("\\a\\b\\c" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ("\\\\a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("\\\\a\\b\\c" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(3, 3, ("\\\\a\\" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("\\\\a\\b\\c" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("//" : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("\\\\a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("a:\\b\\c" : stdgo.GoString), ("x\\..\\y:\\..\\..\\z" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ("a:\\b\\z" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>);
/**
    
    
    
**/
var _exttests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.ExtTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.ExtTest>(5, 5, (new stdgo.path.filepath_test.Filepath_test.ExtTest(("path.go" : stdgo.GoString), (".go" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.ExtTest), (new stdgo.path.filepath_test.Filepath_test.ExtTest(("path.pb.go" : stdgo.GoString), (".go" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.ExtTest), (new stdgo.path.filepath_test.Filepath_test.ExtTest(("a.dir/b" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.ExtTest), (new stdgo.path.filepath_test.Filepath_test.ExtTest(("a.dir/b.go" : stdgo.GoString), (".go" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.ExtTest), (new stdgo.path.filepath_test.Filepath_test.ExtTest(("a.dir/" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.ExtTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.ExtTest>);
/**
    
    
    
**/
var _tree : stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node> = (stdgo.Go.setRef((new Node(("testdata" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>(4, 4, (new stdgo.path.filepath_test.Filepath_test.Node(("a" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.path.filepath_test.Filepath_test.Node), (new stdgo.path.filepath_test.Filepath_test.Node(("b" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.path.filepath_test.Filepath_test.Node), (new stdgo.path.filepath_test.Filepath_test.Node(("c" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.path.filepath_test.Filepath_test.Node), (new stdgo.path.filepath_test.Filepath_test.Node(("d" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>(3, 3, (new stdgo.path.filepath_test.Filepath_test.Node(("x" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.path.filepath_test.Filepath_test.Node), (new stdgo.path.filepath_test.Filepath_test.Node(("y" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.path.filepath_test.Filepath_test.Node), (new stdgo.path.filepath_test.Filepath_test.Node(("z" : stdgo.GoString), (new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>(2, 2, (new stdgo.path.filepath_test.Filepath_test.Node(("u" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.path.filepath_test.Filepath_test.Node), (new stdgo.path.filepath_test.Filepath_test.Node(("v" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.path.filepath_test.Filepath_test.Node)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.path.filepath_test.Filepath_test.Node)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.path.filepath_test.Filepath_test.Node)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : stdgo.StdGoTypes.GoInt)) : Node)) : stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>);
/**
    
    
    
**/
var _basetests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
11,
11,
(new stdgo.path.filepath_test.Filepath_test.PathTest(stdgo.Go.str(), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("////" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("x/" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def" : stdgo.GoString), ("def" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/.x" : stdgo.GoString), (".x" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/c." : stdgo.GoString), ("c." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/c.x" : stdgo.GoString), ("c.x" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
var _winbasetests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(8, 8, (new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\" : stdgo.GoString), ("\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("c:." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\a\\b" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("c:a\\b" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("c:a\\b\\c" : stdgo.GoString), ("c" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\" : stdgo.GoString), ("\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\a" : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\a\\b" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
var _dirtests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
11,
11,
(new stdgo.path.filepath_test.Filepath_test.PathTest(stdgo.Go.str(), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/." : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/foo" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("x/" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/.x" : stdgo.GoString), ("a/b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/c." : stdgo.GoString), ("a/b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/c.x" : stdgo.GoString), ("a/b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
var _nonwindirtests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(1, 1, (new stdgo.path.filepath_test.Filepath_test.PathTest(("////" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
var _windirtests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
10,
10,
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\" : stdgo.GoString), ("c:\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:." : stdgo.GoString), ("c:." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\a\\b" : stdgo.GoString), ("c:\\a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:a\\b" : stdgo.GoString), ("c:a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:a\\b\\c" : stdgo.GoString), ("c:a\\b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\" : stdgo.GoString), ("\\\\host\\share\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\a" : stdgo.GoString), ("\\\\host\\share\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\a\\b" : stdgo.GoString), ("\\\\host\\share\\a" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\\\\\" : stdgo.GoString), ("\\\\\\\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
var _isabstests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>(8, 8, (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(stdgo.Go.str(), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("/" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("/usr/bin/gcc" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest((".." : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("/a/../bb" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("." : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("./" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("lala" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>);
/**
    
    
    
**/
var _winisabstests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>(
14,
14,
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("C:\\" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("c\\" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("c::" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("c:" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("/" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("\\" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("\\Windows" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("c:a\\b" : stdgo.GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("c:\\a\\b" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("c:/a/b" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("\\\\host\\share" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("\\\\host\\share\\" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("\\\\host\\share\\foo" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("//host/share/foo/bar" : stdgo.GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>);
/**
    
    
    
**/
var evalSymlinksTestDirs : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest>(
17,
17,
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir/link3" : stdgo.GoString), ("../../" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link1" : stdgo.GoString), ("../test" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link2" : stdgo.GoString), ("dir" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/linkabs" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link4" : stdgo.GoString), ("../test2" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test2" : stdgo.GoString), ("test/dir" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/pool" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/pool/test" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/current" : stdgo.GoString), ("../../version" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/v1" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/v1/modules" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/v1/modules/test" : stdgo.GoString), ("../../../pool/test" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("version" : stdgo.GoString), ("src/versions/v1" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest>);
/**
    
    
    
**/
var evalSymlinksTests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest>(
12,
12,
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test" : stdgo.GoString), ("test" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir" : stdgo.GoString), ("test/dir" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir/../.." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link1" : stdgo.GoString), ("test" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link2" : stdgo.GoString), ("test/dir" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link1/dir" : stdgo.GoString), ("test/dir" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link2/.." : stdgo.GoString), ("test" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir/link3" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link2/link3/test" : stdgo.GoString), ("test" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/linkabs" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link4/.." : stdgo.GoString), ("test" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/current/modules/test" : stdgo.GoString), ("src/pool/test" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest>);
/**
    // Test directories relative to temporary directory.
    // The tests are run in absTestDirs[0].
    
    
**/
var _absTestDirs : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(3, 3, ("a" : stdgo.GoString), ("a/b" : stdgo.GoString), ("a/b/c" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    // Test paths relative to temporary directory. $ expands to the directory.
    // The tests are run in absTestDirs[0].
    // We create absTestDirs first.
    
    
**/
var _absTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(
12,
12,
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
("$/a/b/c/../../.././a/" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _reltests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.RelTests> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.RelTests>(
39,
39,
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b" : stdgo.GoString), ("a/b" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/." : stdgo.GoString), ("a/b" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b" : stdgo.GoString), ("a/b/." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("./a/b" : stdgo.GoString), ("a/b" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b" : stdgo.GoString), ("./a/b" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("ab/cd" : stdgo.GoString), ("ab/cde" : stdgo.GoString), ("../cde" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("ab/cd" : stdgo.GoString), ("ab/c" : stdgo.GoString), ("../c" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b" : stdgo.GoString), ("a/b/c/d" : stdgo.GoString), ("c/d" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b" : stdgo.GoString), ("a/b/../c" : stdgo.GoString), ("../c" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/../c" : stdgo.GoString), ("a/b" : stdgo.GoString), ("../b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/c" : stdgo.GoString), ("a/c/d" : stdgo.GoString), ("../../c/d" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b" : stdgo.GoString), ("c/d" : stdgo.GoString), ("../../c/d" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/c/d" : stdgo.GoString), ("a/b" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/c/d" : stdgo.GoString), ("a/b/" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/c/d/" : stdgo.GoString), ("a/b" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/c/d/" : stdgo.GoString), ("a/b/" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("../../a/b" : stdgo.GoString), ("../../a/b/c/d" : stdgo.GoString), ("c/d" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b" : stdgo.GoString), ("/a/b" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/." : stdgo.GoString), ("/a/b" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b" : stdgo.GoString), ("/a/b/." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/ab/cd" : stdgo.GoString), ("/ab/cde" : stdgo.GoString), ("../cde" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/ab/cd" : stdgo.GoString), ("/ab/c" : stdgo.GoString), ("../c" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b" : stdgo.GoString), ("/a/b/c/d" : stdgo.GoString), ("c/d" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b" : stdgo.GoString), ("/a/b/../c" : stdgo.GoString), ("../c" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/../c" : stdgo.GoString), ("/a/b" : stdgo.GoString), ("../b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/c" : stdgo.GoString), ("/a/c/d" : stdgo.GoString), ("../../c/d" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b" : stdgo.GoString), ("/c/d" : stdgo.GoString), ("../../c/d" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/c/d" : stdgo.GoString), ("/a/b" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/c/d" : stdgo.GoString), ("/a/b/" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/c/d/" : stdgo.GoString), ("/a/b" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/c/d/" : stdgo.GoString), ("/a/b/" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/../../a/b" : stdgo.GoString), ("/../../a/b/c/d" : stdgo.GoString), ("c/d" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("." : stdgo.GoString), ("a/b" : stdgo.GoString), ("a/b" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("." : stdgo.GoString), (".." : stdgo.GoString), (".." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests((".." : stdgo.GoString), ("." : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests((".." : stdgo.GoString), ("a" : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("../.." : stdgo.GoString), (".." : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a" : stdgo.GoString), ("/a" : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a" : stdgo.GoString), ("a" : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.RelTests>);
/**
    
    
    
**/
var _winreltests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.RelTests> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.RelTests>(7, 7, (new stdgo.path.filepath_test.Filepath_test.RelTests(("C:a\\b\\c" : stdgo.GoString), ("C:a/b/d" : stdgo.GoString), ("..\\d" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests), (new stdgo.path.filepath_test.Filepath_test.RelTests(("C:\\" : stdgo.GoString), ("D:\\" : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests), (new stdgo.path.filepath_test.Filepath_test.RelTests(("C:" : stdgo.GoString), ("D:" : stdgo.GoString), ("err" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests), (new stdgo.path.filepath_test.Filepath_test.RelTests(("C:\\Projects" : stdgo.GoString), ("c:\\projects\\src" : stdgo.GoString), ("src" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests), (new stdgo.path.filepath_test.Filepath_test.RelTests(("C:\\Projects" : stdgo.GoString), ("c:\\projects" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests), (new stdgo.path.filepath_test.Filepath_test.RelTests(("C:\\Projects\\a\\.." : stdgo.GoString), ("c:\\projects" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests), (new stdgo.path.filepath_test.Filepath_test.RelTests(("\\\\host\\share" : stdgo.GoString), ("\\\\host\\share\\file.txt" : stdgo.GoString), ("file.txt" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.RelTests>);
/**
    
    
    
**/
var _volumenametests : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.VolumeNameTest> = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.VolumeNameTest>(
28,
28,
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("c:/foo/bar" : stdgo.GoString), ("c:" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("c:" : stdgo.GoString), ("c:" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("2:" : stdgo.GoString), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(stdgo.Go.str(), stdgo.Go.str()) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\\\host" : stdgo.GoString), ("\\\\\\host" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\\\host\\" : stdgo.GoString), ("\\\\\\host" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\\\host\\share" : stdgo.GoString), ("\\\\\\host" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\\\host\\\\share" : stdgo.GoString), ("\\\\\\host" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host" : stdgo.GoString), ("\\\\host" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host" : stdgo.GoString), ("\\\\host" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\" : stdgo.GoString), ("\\\\host\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host/" : stdgo.GoString), ("\\\\host\\" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share\\" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share/" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share\\foo" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share/foo" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share\\\\foo\\\\\\bar\\\\\\\\baz" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share//foo///bar////baz" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share\\foo\\..\\bar" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share/foo/../bar" : stdgo.GoString), ("\\\\host\\share" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//./NUL" : stdgo.GoString), ("\\\\.\\NUL" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//?/NUL" : stdgo.GoString), ("\\\\?\\NUL" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//./C:" : stdgo.GoString), ("\\\\.\\C:" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//./C:/a/b/c" : stdgo.GoString), ("\\\\.\\C:" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//./UNC/host/share/a/b/c" : stdgo.GoString), ("\\\\.\\UNC\\host\\share" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//./UNC/host" : stdgo.GoString), ("\\\\.\\UNC\\host" : stdgo.GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.VolumeNameTest>);
/**
    
    
    
**/
final _sep : stdgo.StdGoTypes.GoInt32 = (47 : stdgo.StdGoTypes.GoInt32);
/**
    
    
    
**/
final _lsep : stdgo.StdGoTypes.GoInt32 = (58 : stdgo.StdGoTypes.GoInt32);
/**
    
    
    
**/
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
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.path.filepath_test.Filepath_test.T_globTest_static_extension) class T_globTest {
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
/**
    
    
    
**/
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
/**
    
    
    
**/
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
/**
    
    
    
**/
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
/**
    
    
    
**/
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
/**
    
    
    
**/
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
/**
    
    
    
**/
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
/**
    
    
    
**/
@:structInit class Node {
    public var _name : stdgo.GoString = "";
    public var _entries : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>> = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>);
    public var _mark : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_name:stdgo.GoString, ?_entries:stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.Node>>, ?_mark:stdgo.StdGoTypes.GoInt) {
        if (_name != null) this._name = _name;
        if (_entries != null) this._entries = _entries;
        if (_mark != null) this._mark = _mark;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Node(_name, _entries, _mark);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.path.filepath_test.Filepath_test.T_statDirEntry_static_extension) class T_statDirEntry {
    public var _info : stdgo.io.fs.Fs.FileInfo = (null : stdgo.io.fs.Fs.FileInfo);
    public function new(?_info:stdgo.io.fs.Fs.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}
/**
    
    
    
**/
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
/**
    
    
    
**/
@:structInit class EvalSymlinksTest {
    /**
        // If dest is empty, the path is created; otherwise the dest is symlinked to the path.
    **/
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
/**
    
    
    
**/
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
/**
    
    
    
**/
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath_test.Filepath_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.path.filepath_test.Filepath_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _pattern : stdgo.GoString;
    public var _result : stdgo.GoString;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath_test.Filepath_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.path.filepath_test.Filepath_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _path : stdgo.GoString;
    public var _dest : stdgo.GoString;
    public var _brokenLink : Bool;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath_test.Filepath_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.path.filepath_test.Filepath_test.T__struct_2_static_extension) typedef T__struct_2 = {
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath_test.Filepath_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.path.filepath_test.Filepath_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _path : stdgo.GoString;
    public var _want : stdgo.GoString;
};
function exampleExt():Void {
        stdgo.fmt.Fmt.printf(("No dots: %q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.path.filepath.Filepath.ext(("index" : stdgo.GoString))));
        stdgo.fmt.Fmt.printf(("One dot: %q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.path.filepath.Filepath.ext(("index.js" : stdgo.GoString))));
        stdgo.fmt.Fmt.printf(("Two dots: %q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.path.filepath.Filepath.ext(("main.test.js" : stdgo.GoString))));
    }
function exampleSplitList():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.path.filepath.Filepath.splitList(("/a/b/c:/usr/bin" : stdgo.GoString))));
    }
function exampleRel():Void {
        var _paths = (new stdgo.Slice<stdgo.GoString>(3, 3, ("/a/b/c" : stdgo.GoString), ("/b/c" : stdgo.GoString), ("./b/c" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var _base:stdgo.GoString = ("/a" : stdgo.GoString);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        for (__0 => _p in _paths) {
            var __tmp__ = stdgo.path.filepath.Filepath.rel(_base, _p), _rel:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            stdgo.fmt.Fmt.printf(("%q: %q %v\n" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_rel), stdgo.Go.toInterface(_err));
        };
    }
function exampleSplit():Void {
        var _paths = (new stdgo.Slice<stdgo.GoString>(4, 4, ("/home/arnie/amelia.jpg" : stdgo.GoString), ("/mnt/photos/" : stdgo.GoString), ("rabbit.jpg" : stdgo.GoString), ("/usr/local//go" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        for (__0 => _p in _paths) {
            var __tmp__ = stdgo.path.filepath.Filepath.split(_p), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
            stdgo.fmt.Fmt.printf(("input: %q\n\tdir: %q\n\tfile: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_file));
        };
    }
function exampleJoin():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.join(("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.join(("a" : stdgo.GoString), ("b/c" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.join(("a/b" : stdgo.GoString), ("c" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.join(("a/b" : stdgo.GoString), ("/c" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.join(("a/b" : stdgo.GoString), ("../../../xyz" : stdgo.GoString))));
    }
function exampleMatch():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        {
            var __tmp__ = stdgo.path.filepath.Filepath.match(("/home/catch/*" : stdgo.GoString), ("/home/catch/foo" : stdgo.GoString));
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        };
        {
            var __tmp__ = stdgo.path.filepath.Filepath.match(("/home/catch/*" : stdgo.GoString), ("/home/catch/foo/bar" : stdgo.GoString));
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        };
        {
            var __tmp__ = stdgo.path.filepath.Filepath.match(("/home/?opher" : stdgo.GoString), ("/home/gopher" : stdgo.GoString));
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        };
        {
            var __tmp__ = stdgo.path.filepath.Filepath.match(("/home/\\*" : stdgo.GoString), ("/home/*" : stdgo.GoString));
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        };
    }
function exampleBase():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.base(("/foo/bar/baz.js" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.base(("/foo/bar/baz" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.base(("/foo/bar/baz/" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.base(("dev.txt" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.base(("../todo.txt" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.base((".." : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.base(("." : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.base(("/" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.base(stdgo.Go.str())));
    }
function exampleDir():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.dir(("/foo/bar/baz.js" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.dir(("/foo/bar/baz" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.dir(("/foo/bar/baz/" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.dir(("/dirty//path///" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.dir(("dev.txt" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.dir(("../todo.txt" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.dir((".." : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.dir(("." : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.dir(("/" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.dir(stdgo.Go.str())));
    }
function exampleIsAbs():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.isAbs(("/home/gopher" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.isAbs((".bashrc" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.isAbs((".." : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.isAbs(("." : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.isAbs(("/" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.filepath.Filepath.isAbs(stdgo.Go.str())));
    }
function _prepareTestDirTree(_tree:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo.os.Os.mkdirTemp(stdgo.Go.str(), stdgo.Go.str()), _tmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : stdgo.Go.str(), _1 : stdgo.fmt.Fmt.errorf(("error creating temp directory: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        _err = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_tmpDir, _tree), (493u32 : stdgo.io.fs.Fs.FileMode));
        if (_err != null) {
            stdgo.os.Os.removeAll(_tmpDir);
            return { _0 : stdgo.Go.str(), _1 : _err };
        };
        return { _0 : _tmpDir, _1 : (null : stdgo.Error) };
    }
function exampleWalk():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = _prepareTestDirTree(("dir/to/walk/skip" : stdgo.GoString)), _tmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.fmt.Fmt.printf(("unable to create test dir tree: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return;
            };
            {
                var _a0 = _tmpDir;
                __deferstack__.unshift(() -> stdgo.os.Os.removeAll(_a0));
            };
            stdgo.os.Os.chdir(_tmpDir);
            var _subDirToSkip:stdgo.GoString = ("skip" : stdgo.GoString);
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("On Unix:" : stdgo.GoString)));
            _err = stdgo.path.filepath.Filepath.walk(("." : stdgo.GoString), function(_path:stdgo.GoString, _info:stdgo.io.fs.Fs.FileInfo, _err:stdgo.Error):stdgo.Error {
                if (_err != null) {
                    stdgo.fmt.Fmt.printf(("prevent panic by handling failure accessing a path %q: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                    return _err;
                };
                if (_info.isDir() && (_info.name() == _subDirToSkip)) {
                    stdgo.fmt.Fmt.printf(("skipping a dir without errors: %+v \n" : stdgo.GoString), stdgo.Go.toInterface(_info.name()));
                    return stdgo.path.filepath.Filepath.skipDir;
                };
                stdgo.fmt.Fmt.printf(("visited file or dir: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_path));
                return (null : stdgo.Error);
            });
            if (_err != null) {
                stdgo.fmt.Fmt.printf(("error walking the path %q: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir), stdgo.Go.toInterface(_err));
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
        return _e.error();
    }
function testMatch(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _matchTests) {
            var _pattern:stdgo.GoString = _tt._pattern;
            var _s:stdgo.GoString = _tt._s;
            if (false) {
                if (stdgo.strings.Strings.contains(_pattern, ("\\" : stdgo.GoString))) {
                    continue;
                };
                _pattern = clean(_pattern);
                _s = clean(_s);
            };
            var __tmp__ = match(_pattern, _s), _ok:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_ok != _tt._match) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_tt._err))) {
                _t.errorf(("Match(%#q, %#q) = %v, %q want %v, %q" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_errp(_err)), stdgo.Go.toInterface(_tt._match), stdgo.Go.toInterface(_errp(_tt._err)));
            };
        };
    }
/**
    // contains reports whether vector contains the string s.
**/
function _contains(_vector:stdgo.Slice<stdgo.GoString>, _s:stdgo.GoString):Bool {
        for (__0 => _elem in _vector) {
            if (_elem == (_s)) {
                return true;
            };
        };
        return false;
    }
function testGlob(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _globTests) {
            var _pattern:stdgo.GoString = _tt._pattern;
            var _result:stdgo.GoString = _tt._result;
            if (false) {
                _pattern = clean(_pattern);
                _result = clean(_result);
            };
            var __tmp__ = glob(_pattern), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            if (!_contains(_matches, _result)) {
                _t.errorf(("Glob(%#q) = %#v want %v" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_result));
            };
        };
        for (__1 => _pattern in (new stdgo.Slice<stdgo.GoString>(2, 2, ("no_match" : stdgo.GoString), ("../*/no_match" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) {
            var __tmp__ = glob(_pattern), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((_matches.length) != ((0 : stdgo.StdGoTypes.GoInt))) {
                _t.errorf(("Glob(%#q) = %#v want []" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_matches));
            };
        };
    }
function testCVE202230632(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = glob(("/*" : stdgo.GoString) + stdgo.strings.Strings.repeat(("/" : stdgo.GoString), (10001 : stdgo.StdGoTypes.GoInt))), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(errBadPattern))) {
            _t.fatalf(("Glob returned err=%v, want ErrBadPattern" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testGlobError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _bad = (new stdgo.Slice<stdgo.GoString>(2, 2, ("[]" : stdgo.GoString), ("nonexist/[]" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        for (__0 => _pattern in _bad) {
            {
                var __tmp__ = glob(_pattern), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(errBadPattern))) {
                    _t.errorf(("Glob(%#q) returned err=%v, want ErrBadPattern" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function testGlobUNC(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        glob(("\\\\?\\C:\\*" : stdgo.GoString));
    }
function testGlobSymlink(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmpDir:stdgo.GoString = _t.tempDir();
        for (__0 => _tt in _globSymlinkTests) {
            var _path:stdgo.GoString = join(_tmpDir, _tt._path);
            var _dest:stdgo.GoString = join(_tmpDir, _tt._dest);
            var __tmp__ = stdgo.os.Os.create(_path), _f:stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _err:stdgo.Error = _f.close();
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _err = stdgo.os.Os.symlink(_path, _dest);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (_tt._brokenLink) {
                stdgo.os.Os.remove(_path);
            };
            var __tmp__ = glob(_dest), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("GlobSymlink error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_dest), stdgo.Go.toInterface(_err));
            };
            if (!_contains(_matches, _dest)) {
                _t.errorf(("Glob(%#q) = %#v want %v" : stdgo.GoString), stdgo.Go.toInterface(_dest), stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_dest));
            };
        };
    }
function testWindowsGlob(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                _t.skipf(("skipping windows specific test" : stdgo.GoString));
            };
            var _tmpDir:stdgo.GoString = _tempDirCanonical(_t);
            if ((_tmpDir.length) < (3 : stdgo.StdGoTypes.GoInt)) {
                _t.fatalf(("tmpDir path %q is too short" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir));
            };
            if (_tmpDir[(1 : stdgo.StdGoTypes.GoInt)] != ((58 : stdgo.StdGoTypes.GoUInt8))) {
                _t.fatalf(("tmpDir path %q must have drive letter in it" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir));
            };
            var _dirs = (new stdgo.Slice<stdgo.GoString>(3, 3, ("a" : stdgo.GoString), ("b" : stdgo.GoString), ("dir/d/bin" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
            var _files = (new stdgo.Slice<stdgo.GoString>(1, 1, ("dir/d/bin/git.exe" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
            for (__0 => _dir in _dirs) {
                var _err:stdgo.Error = stdgo.os.Os.mkdirAll(join(_tmpDir, _dir), (511u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            for (__1 => _file in _files) {
                var _err:stdgo.Error = stdgo.os.Os.writeFile(join(_tmpDir, _file), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (438u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _tests = (new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.T_globTest>(
10,
10,
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("a" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("a" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("b" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("b" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("c" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("*" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ("a" : stdgo.GoString), ("b" : stdgo.GoString), ("dir" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("d*" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("dir" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("*i*" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("dir" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("*r" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("dir" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("?ir" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("dir" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("?r" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("d*/*/bin/git.exe" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ("dir/d/bin/git.exe" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest)) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.T_globTest>);
            for (__2 => _test in _tests) {
                var _p:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var _err:stdgo.Error = _test._globAbs(_tmpDir, _tmpDir);
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
                _p = _tmpDir;
                _p = stdgo.strings.Strings.replace(_p, (":\\" : stdgo.GoString), (":\\*" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt));
                {
                    var _err:stdgo.Error = _test._globAbs(_tmpDir, _p);
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
                _p = _tmpDir;
                _p = stdgo.strings.Strings.replace(_p, (":\\" : stdgo.GoString), (":" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt));
                _p = stdgo.strings.Strings.replace(_p, ("\\" : stdgo.GoString), ("*\\" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt));
                _p = stdgo.strings.Strings.replace(_p, (":" : stdgo.GoString), (":\\" : stdgo.GoString), (1 : stdgo.StdGoTypes.GoInt));
                {
                    var _err:stdgo.Error = _test._globAbs(_tmpDir, _p);
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
            };
            var __tmp__ = stdgo.os.Os.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _err = stdgo.os.Os.chdir(_tmpDir);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:stdgo.Error = stdgo.os.Os.chdir(_wd);
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                a();
            });
            for (__3 => _test in _tests) {
                var _err:stdgo.Error = _test._globRel(stdgo.Go.str());
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
                _err = _test._globRel((".\\" : stdgo.GoString));
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
                _err = _test._globRel((_tmpDir.__slice__(0, (2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString));
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
            for (defer in __deferstack__) {
                defer();
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testNonWindowsGlobEscape(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (false) {
            _t.skipf(("skipping non-windows specific test" : stdgo.GoString));
        };
        var _pattern:stdgo.GoString = ("\\match.go" : stdgo.GoString);
        var _want = (new stdgo.Slice<stdgo.GoString>(1, 1, ("match.go" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        var __tmp__ = glob(_pattern), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Glob error for %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_want))) {
            _t.fatalf(("Glob(%#q) = %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_matches), stdgo.Go.toInterface(_want));
        };
    }
function testClean(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = _cleantests;
        if (false) {
            for (_i in 0 ... _tests.length.toBasic()) {
                _tests[(_i : stdgo.StdGoTypes.GoInt)]._result = stdgo.path.filepath.Filepath.fromSlash(_tests[(_i : stdgo.StdGoTypes.GoInt)]._result);
            };
            _tests = (_tests.__append__(..._wincleantests.__toArray__()));
        } else {
            _tests = (_tests.__append__(..._nonwincleantests.__toArray__()));
        };
        for (__0 => _test in _tests) {
            {
                var _s:stdgo.GoString = stdgo.path.filepath.Filepath.clean(_test._path);
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
            {
                var _s:stdgo.GoString = stdgo.path.filepath.Filepath.clean(_test._result);
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
        if (stdgo.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if (stdgo.runtime.Runtime.gomaxprocs((0 : stdgo.StdGoTypes.GoInt)) > (1 : stdgo.StdGoTypes.GoInt)) {
            _t.log(stdgo.Go.toInterface(("skipping AllocsPerRun checks; GOMAXPROCS>1" : stdgo.GoString)));
            return;
        };
        for (__1 => _test in _tests) {
            var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : stdgo.StdGoTypes.GoInt), function():Void {
                stdgo.path.filepath.Filepath.clean(_test._result);
            });
            if (_allocs > (0 : stdgo.StdGoTypes.GoFloat64)) {
                _t.errorf(("Clean(%q): %v allocs, want zero" : stdgo.GoString), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_allocs));
            };
        };
    }
function testIsLocal(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = _islocaltests;
        if (false) {
            _tests = (_tests.__append__(..._winislocaltests.__toArray__()));
        };
        if (false) {
            _tests = (_tests.__append__(..._plan9islocaltests.__toArray__()));
        };
        for (__0 => _test in _tests) {
            {
                var _got:Bool = stdgo.path.filepath.Filepath.isLocal(_test._path);
                if (_got != (_test._isLocal)) {
                    _t.errorf(("IsLocal(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._isLocal));
                };
            };
        };
    }
function testFromAndToSlash(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _slashtests) {
            {
                var _s:stdgo.GoString = stdgo.path.filepath.Filepath.fromSlash(_test._path);
                if (_s != (_test._result)) {
                    _t.errorf(("FromSlash(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
            {
                var _s:stdgo.GoString = stdgo.path.filepath.Filepath.toSlash(_test._result);
                if (_s != (_test._path)) {
                    _t.errorf(("ToSlash(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._path));
                };
            };
        };
    }
function testSplitList(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = _splitlisttests;
        if (false) {
            _tests = (_tests.__append__(..._winsplitlisttests.__toArray__()));
        };
        for (__0 => _test in _tests) {
            {
                var _l = stdgo.path.filepath.Filepath.splitList(_test._list);
                if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_test._result))) {
                    _t.errorf(("SplitList(%#q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_test._list), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
function testSplit(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _splittests:stdgo.Slice<SplitTest> = (null : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>);
        _splittests = _unixsplittests;
        if (false) {
            _splittests = (_splittests.__append__(..._winsplittests.__toArray__()));
        };
        for (__0 => _test in _splittests) {
            {
                var __tmp__ = stdgo.path.filepath.Filepath.split(_test._path), _d:stdgo.GoString = __tmp__._0, _f:stdgo.GoString = __tmp__._1;
                if ((_d != _test._dir) || (_f != _test._file)) {
                    _t.errorf(("Split(%q) = %q, %q, want %q, %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_test._dir), stdgo.Go.toInterface(_test._file));
                };
            };
        };
    }
function testJoin(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (false) {
            _jointests = (_jointests.__append__(..._winjointests.__toArray__()));
        } else {
            _jointests = (_jointests.__append__(..._nonwinjointests.__toArray__()));
        };
        for (__0 => _test in _jointests) {
            var _expected:stdgo.GoString = stdgo.path.filepath.Filepath.fromSlash(_test._path);
            {
                var _p:stdgo.GoString = stdgo.path.filepath.Filepath.join(..._test._elem.__toArray__());
                if (_p != (_expected)) {
                    _t.errorf(("join(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._elem), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_expected));
                };
            };
        };
    }
function testExt(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _exttests) {
            {
                var _x:stdgo.GoString = stdgo.path.filepath.Filepath.ext(_test._path);
                if (_x != (_test._ext)) {
                    _t.errorf(("Ext(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._ext));
                };
            };
        };
    }
function _walkTree(_n:stdgo.StdGoTypes.Ref<Node>, _path:stdgo.GoString, _f:(_path:stdgo.GoString, _n:stdgo.StdGoTypes.Ref<Node>) -> Void):Void {
        _f(_path, _n);
        for (__0 => _e in _n._entries) {
            _walkTree(_e, stdgo.path.filepath.Filepath.join(_path, _e._name), _f);
        };
    }
function _makeTree(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _walkTree(_tree, _tree._name, function(_path:stdgo.GoString, _n:stdgo.StdGoTypes.Ref<Node>):Void {
            if (_n._entries == null) {
                var __tmp__ = stdgo.os.Os.create(_path), _fd:stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("makeTree: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    return;
                };
                _fd.close();
            } else {
                stdgo.os.Os.mkdir(_path, (504u32 : stdgo.io.fs.Fs.FileMode));
            };
        });
    }
function _markTree(_n:stdgo.StdGoTypes.Ref<Node>):Void {
        _walkTree(_n, stdgo.Go.str(), function(_path:stdgo.GoString, _n:stdgo.StdGoTypes.Ref<Node>):Void {
            _n._mark++;
        });
    }
function _checkMarks(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _report:Bool):Void {
        _walkTree(_tree, _tree._name, function(_path:stdgo.GoString, _n:stdgo.StdGoTypes.Ref<Node>):Void {
            if ((_n._mark != (1 : stdgo.StdGoTypes.GoInt)) && _report) {
                _t.errorf(("node %s mark = %d; expected 1" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_n._mark));
            };
            _n._mark = (0 : stdgo.StdGoTypes.GoInt);
        });
    }
/**
    // Assumes that each node name is unique. Good enough for a test.
    // If clear is true, any incoming error is cleared before return. The errors
    // are always accumulated, though.
**/
function _mark(_d:stdgo.io.fs.Fs.DirEntry, _err:stdgo.Error, _errors:stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.Error>>, _clear:Bool):stdgo.Error {
        var _name:stdgo.GoString = _d.name();
        _walkTree(_tree, _tree._name, function(_path:stdgo.GoString, _n:stdgo.StdGoTypes.Ref<Node>):Void {
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
/**
    // chdir changes the current working directory to the named directory,
    // and then restore the original working directory at the end of the test.
**/
function _chdir(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _dir:stdgo.GoString):Void {
        var __tmp__ = stdgo.os.Os.getwd(), _olddir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("getwd %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = stdgo.os.Os.chdir(_dir);
            if (_err != null) {
                _t.fatalf(("chdir %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
            };
        };
        _t.cleanup(function():Void {
            {
                var _err:stdgo.Error = stdgo.os.Os.chdir(_olddir);
                if (_err != null) {
                    _t.errorf(("restore original working directory %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_olddir), stdgo.Go.toInterface(_err));
                    Sys.exit((1 : stdgo.StdGoTypes.GoInt));
                };
            };
        });
    }
function _chtmpdir(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):() -> Void {
        var _restore:() -> Void = null;
        var __tmp__ = stdgo.os.Os.getwd(), _oldwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo.os.Os.mkdirTemp(stdgo.Go.str(), ("test" : stdgo.GoString)), _d:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = stdgo.os.Os.chdir(_d);
            if (_err != null) {
                _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        return function():Void {
            {
                var _err:stdgo.Error = stdgo.os.Os.chdir(_oldwd);
                if (_err != null) {
                    _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            stdgo.os.Os.removeAll(_d);
        };
    }
/**
    // tempDirCanonical returns a temporary directory for the test to use, ensuring
    // that the returned path does not contain symlinks.
**/
function _tempDirCanonical(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):stdgo.GoString {
        var _dir:stdgo.GoString = _t.tempDir();
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_dir), _cdir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("tempDirCanonical: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        return _cdir;
    }
function testWalk(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _walk:(stdgo.GoString, stdgo.io.fs.Fs.WalkDirFunc) -> stdgo.Error = function(_root:stdgo.GoString, _fn:stdgo.io.fs.Fs.WalkDirFunc):stdgo.Error {
            return stdgo.path.filepath.Filepath.walk(_root, function(_path:stdgo.GoString, _info:stdgo.io.fs.Fs.FileInfo, _err:stdgo.Error):stdgo.Error {
                return _fn(_path, stdgo.Go.asInterface((stdgo.Go.setRef((new T_statDirEntry(_info) : T_statDirEntry)) : stdgo.StdGoTypes.Ref<stdgo.path.filepath_test.Filepath_test.T_statDirEntry>)), _err);
            });
        };
        _testWalk(_t, _walk, (1 : stdgo.StdGoTypes.GoInt));
    }
function testWalkDir(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _testWalk(_t, stdgo.path.filepath.Filepath.walkDir, (2 : stdgo.StdGoTypes.GoInt));
    }
function _testWalk(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _walk:(stdgo.GoString, stdgo.io.fs.Fs.WalkDirFunc) -> stdgo.Error, _errVisit:stdgo.StdGoTypes.GoInt):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                var _restore:() -> Void = _chtmpdir(_t);
                __deferstack__.unshift(() -> _restore());
            };
            var _tmpDir:stdgo.GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _origDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("finding working dir:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                _err = stdgo.os.Os.chdir(_tmpDir);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(("entering temp dir:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _origDir;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            _makeTree(_t);
            var _errors = new stdgo.Slice<stdgo.Error>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (10 : stdgo.StdGoTypes.GoInt));
            var _clear:Bool = true;
            var _markFn:(stdgo.GoString, stdgo.io.fs.Fs.DirEntry, stdgo.Error) -> stdgo.Error = function(_path:stdgo.GoString, _d:stdgo.io.fs.Fs.DirEntry, _err:stdgo.Error):stdgo.Error {
                return _mark(_d, _err, (stdgo.Go.setRef(_errors) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.Error>>), _clear);
            };
            _err = _walk(_tree._name, _markFn);
            if (_err != null) {
                _t.fatalf(("no error expected, found: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if ((_errors.length) != ((0 : stdgo.StdGoTypes.GoInt))) {
                _t.fatalf(("unexpected errors: %s" : stdgo.GoString), stdgo.Go.toInterface(_errors));
            };
            _checkMarks(_t, true);
            _errors = (_errors.__slice__((0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.Error>);
            _t.run(("PermErr" : stdgo.GoString), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                if (false) {
                    _t.skip(stdgo.Go.toInterface(("skipping on js" : stdgo.GoString)));
                };
                if (stdgo.os.Os.getuid() == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _t.skip(stdgo.Go.toInterface(("skipping as root" : stdgo.GoString)));
                };
                if (stdgo.testing.Testing.short()) {
                    _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
                };
                stdgo.os.Os.chmod(stdgo.path.filepath.Filepath.join(_tree._name, _tree._entries[(1 : stdgo.StdGoTypes.GoInt)]._name), (0u32 : stdgo.io.fs.Fs.FileMode));
                stdgo.os.Os.chmod(stdgo.path.filepath.Filepath.join(_tree._name, _tree._entries[(3 : stdgo.StdGoTypes.GoInt)]._name), (0u32 : stdgo.io.fs.Fs.FileMode));
                _markTree(_tree._entries[(1 : stdgo.StdGoTypes.GoInt)]);
                _markTree(_tree._entries[(3 : stdgo.StdGoTypes.GoInt)]);
                _tree._entries[(1 : stdgo.StdGoTypes.GoInt)]._mark = _tree._entries[(1 : stdgo.StdGoTypes.GoInt)]._mark - (_errVisit);
                _tree._entries[(3 : stdgo.StdGoTypes.GoInt)]._mark = _tree._entries[(3 : stdgo.StdGoTypes.GoInt)]._mark - (_errVisit);
                var _err:stdgo.Error = _walk(_tree._name, _markFn);
                if (_err != null) {
                    _t.fatalf(("expected no error return from Walk, got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                if ((_errors.length) != ((2 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("expected 2 errors, got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_errors.length)), stdgo.Go.toInterface(_errors));
                };
                _checkMarks(_t, true);
                _errors = (_errors.__slice__((0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.Error>);
                _markTree(_tree._entries[(1 : stdgo.StdGoTypes.GoInt)]);
                _markTree(_tree._entries[(3 : stdgo.StdGoTypes.GoInt)]);
                _tree._entries[(1 : stdgo.StdGoTypes.GoInt)]._mark = _tree._entries[(1 : stdgo.StdGoTypes.GoInt)]._mark - (_errVisit);
                _tree._entries[(3 : stdgo.StdGoTypes.GoInt)]._mark = _tree._entries[(3 : stdgo.StdGoTypes.GoInt)]._mark - (_errVisit);
                _clear = false;
                _err = _walk(_tree._name, _markFn);
                if (_err == null) {
                    _t.fatalf(("expected error return from Walk" : stdgo.GoString));
                };
                if ((_errors.length) != ((1 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("expected 1 error, got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_errors.length)), stdgo.Go.toInterface(_errors));
                };
                _checkMarks(_t, false);
                _errors = (_errors.__slice__((0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.Error>);
                stdgo.os.Os.chmod(stdgo.path.filepath.Filepath.join(_tree._name, _tree._entries[(1 : stdgo.StdGoTypes.GoInt)]._name), (504u32 : stdgo.io.fs.Fs.FileMode));
                stdgo.os.Os.chmod(stdgo.path.filepath.Filepath.join(_tree._name, _tree._entries[(3 : stdgo.StdGoTypes.GoInt)]._name), (504u32 : stdgo.io.fs.Fs.FileMode));
            });
            for (defer in __deferstack__) {
                defer();
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function _touch(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _name:stdgo.GoString):Void {
        var __tmp__ = stdgo.os.Os.create(_name), _f:stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
function testWalkSkipDirOnFile(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _td:stdgo.GoString = _t.tempDir();
        {
            var _err:stdgo.Error = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString)), (493u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir/foo1" : stdgo.GoString)));
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir/foo2" : stdgo.GoString)));
        var _sawFoo2:Bool = false;
        var _walker:stdgo.GoString -> stdgo.Error = function(_path:stdgo.GoString):stdgo.Error {
            if (stdgo.strings.Strings.hasSuffix(_path, ("foo2" : stdgo.GoString))) {
                _sawFoo2 = true;
            };
            if (stdgo.strings.Strings.hasSuffix(_path, ("foo1" : stdgo.GoString))) {
                return stdgo.path.filepath.Filepath.skipDir;
            };
            return (null : stdgo.Error);
        };
        var _walkFn:(stdgo.GoString, stdgo.io.fs.Fs.FileInfo, stdgo.Error) -> stdgo.Error = function(_path:stdgo.GoString, __0:stdgo.io.fs.Fs.FileInfo, __1:stdgo.Error):stdgo.Error {
            return _walker(_path);
        };
        var _walkDirFn:(stdgo.GoString, stdgo.io.fs.Fs.DirEntry, stdgo.Error) -> stdgo.Error = function(_path:stdgo.GoString, __0:stdgo.io.fs.Fs.DirEntry, __1:stdgo.Error):stdgo.Error {
            return _walker(_path);
        };
        var _check = function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _walk:(_root:stdgo.GoString) -> stdgo.Error, _root:stdgo.GoString):Void {
            _t.helper();
            _sawFoo2 = false;
            var _err:stdgo.Error = _walk(_root);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (_sawFoo2) {
                _t.errorf(("SkipDir on file foo1 did not block processing of foo2" : stdgo.GoString));
            };
        };
        _t.run(("Walk" : stdgo.GoString), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
            var walk:stdgo.GoString -> stdgo.Error = function(_root:stdgo.GoString):stdgo.Error {
                return stdgo.path.filepath.Filepath.walk(_td, _walkFn);
            };
            _check(_t, walk, _td);
            _check(_t, walk, stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString)));
        });
        _t.run(("WalkDir" : stdgo.GoString), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
            var walkDir:stdgo.GoString -> stdgo.Error = function(_root:stdgo.GoString):stdgo.Error {
                return stdgo.path.filepath.Filepath.walkDir(_td, _walkDirFn);
            };
            _check(_t, walkDir, _td);
            _check(_t, walkDir, stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString)));
        });
    }
function testWalkSkipAllOnFile(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _td:stdgo.GoString = _t.tempDir();
        {
            var _err:stdgo.Error = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString), ("subdir" : stdgo.GoString)), (493u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_td, ("dir2" : stdgo.GoString)), (493u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString), ("foo1" : stdgo.GoString)));
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString), ("foo2" : stdgo.GoString)));
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString), ("subdir" : stdgo.GoString), ("foo3" : stdgo.GoString)));
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString), ("foo4" : stdgo.GoString)));
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir2" : stdgo.GoString), ("bar" : stdgo.GoString)));
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("last" : stdgo.GoString)));
        var _remainingWereSkipped:Bool = true;
        var _walker:stdgo.GoString -> stdgo.Error = function(_path:stdgo.GoString):stdgo.Error {
            if (stdgo.strings.Strings.hasSuffix(_path, ("foo2" : stdgo.GoString))) {
                return stdgo.path.filepath.Filepath.skipAll;
            };
            if (((stdgo.strings.Strings.hasSuffix(_path, ("foo3" : stdgo.GoString)) || stdgo.strings.Strings.hasSuffix(_path, ("foo4" : stdgo.GoString))) || stdgo.strings.Strings.hasSuffix(_path, ("bar" : stdgo.GoString))) || stdgo.strings.Strings.hasSuffix(_path, ("last" : stdgo.GoString))) {
                _remainingWereSkipped = false;
            };
            return (null : stdgo.Error);
        };
        var _walkFn:(stdgo.GoString, stdgo.io.fs.Fs.FileInfo, stdgo.Error) -> stdgo.Error = function(_path:stdgo.GoString, __0:stdgo.io.fs.Fs.FileInfo, __1:stdgo.Error):stdgo.Error {
            return _walker(_path);
        };
        var _walkDirFn:(stdgo.GoString, stdgo.io.fs.Fs.DirEntry, stdgo.Error) -> stdgo.Error = function(_path:stdgo.GoString, __0:stdgo.io.fs.Fs.DirEntry, __1:stdgo.Error):stdgo.Error {
            return _walker(_path);
        };
        var _check = function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _walk:(_root:stdgo.GoString) -> stdgo.Error, _root:stdgo.GoString):Void {
            _t.helper();
            _remainingWereSkipped = true;
            {
                var _err:stdgo.Error = _walk(_root);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            if (!_remainingWereSkipped) {
                _t.errorf(("SkipAll on file foo2 did not block processing of remaining files and directories" : stdgo.GoString));
            };
        };
        _t.run(("Walk" : stdgo.GoString), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
            var walk:stdgo.GoString -> stdgo.Error = function(__0:stdgo.GoString):stdgo.Error {
                return stdgo.path.filepath.Filepath.walk(_td, _walkFn);
            };
            _check(_t, walk, _td);
            _check(_t, walk, stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString)));
        });
        _t.run(("WalkDir" : stdgo.GoString), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
            var walkDir:stdgo.GoString -> stdgo.Error = function(__0:stdgo.GoString):stdgo.Error {
                return stdgo.path.filepath.Filepath.walkDir(_td, _walkDirFn);
            };
            _check(_t, walkDir, _td);
            _check(_t, walkDir, stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString)));
        });
    }
function testWalkFileError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _td:stdgo.GoString = _t.tempDir();
            _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("foo" : stdgo.GoString)));
            _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("bar" : stdgo.GoString)));
            var _dir:stdgo.GoString = stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString));
            {
                var _err:stdgo.Error = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString)), (493u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _touch(_t, stdgo.path.filepath.Filepath.join(_dir, ("baz" : stdgo.GoString)));
            _touch(_t, stdgo.path.filepath.Filepath.join(_dir, ("stat-error" : stdgo.GoString)));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo.path.filepath.Filepath.lstatP = stdgo.os.Os.lstat;
                };
                a();
            });
            var _statErr:stdgo.Error = stdgo.errors.Errors.new_(("some stat error" : stdgo.GoString));
            stdgo.path.filepath.Filepath.lstatP = function(_path:stdgo.GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } {
                if (stdgo.strings.Strings.hasSuffix(_path, ("stat-error" : stdgo.GoString))) {
                    return { _0 : (null : stdgo.io.fs.Fs.FileInfo), _1 : _statErr };
                };
                return stdgo.os.Os.lstat(_path);
            };
            var _got = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Error>();
                x.__defaultValue__ = () -> (null : stdgo.Error);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Error>);
            var _err:stdgo.Error = stdgo.path.filepath.Filepath.walk(_td, function(_path:stdgo.GoString, _fi:stdgo.io.fs.Fs.FileInfo, _err:stdgo.Error):stdgo.Error {
                var __tmp__ = stdgo.path.filepath.Filepath.rel(_td, _path), _rel:stdgo.GoString = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                _got[stdgo.path.filepath.Filepath.toSlash(_rel)] = _err;
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
            if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
                _t.errorf(("Walked %#v; want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testWalkSymlinkRoot(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _td:stdgo.GoString = _t.tempDir();
        var _dir:stdgo.GoString = stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString));
        {
            var _err:stdgo.Error = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_td, ("dir" : stdgo.GoString)), (493u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _touch(_t, stdgo.path.filepath.Filepath.join(_dir, ("foo" : stdgo.GoString)));
        var _link:stdgo.GoString = stdgo.path.filepath.Filepath.join(_td, ("link" : stdgo.GoString));
        {
            var _err:stdgo.Error = stdgo.os.Os.symlink(("dir" : stdgo.GoString), _link);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _abslink:stdgo.GoString = stdgo.path.filepath.Filepath.join(_td, ("abslink" : stdgo.GoString));
        {
            var _err:stdgo.Error = stdgo.os.Os.symlink(_dir, _abslink);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _linklink:stdgo.GoString = stdgo.path.filepath.Filepath.join(_td, ("linklink" : stdgo.GoString));
        {
            var _err:stdgo.Error = stdgo.os.Os.symlink(("link" : stdgo.GoString), _linklink);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        for (__0 => _tt in (new stdgo.Slice<T__struct_2>(6, 6, ({ _desc : ("no slash" : stdgo.GoString), _root : _link, _want : (new stdgo.Slice<stdgo.GoString>(1, 1, _link) : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : T__struct_2), ({ _desc : ("slash" : stdgo.GoString), _root : _link + ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString), _want : (new stdgo.Slice<stdgo.GoString>(2, 2, _link, stdgo.path.filepath.Filepath.join(_link, ("foo" : stdgo.GoString))) : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : T__struct_2), ({ _desc : ("abs no slash" : stdgo.GoString), _root : _abslink, _want : (new stdgo.Slice<stdgo.GoString>(1, 1, _abslink) : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : T__struct_2), ({ _desc : ("abs with slash" : stdgo.GoString), _root : _abslink + ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString), _want : (new stdgo.Slice<stdgo.GoString>(2, 2, _abslink, stdgo.path.filepath.Filepath.join(_abslink, ("foo" : stdgo.GoString))) : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : T__struct_2), ({ _desc : ("double link no slash" : stdgo.GoString), _root : _linklink, _want : (new stdgo.Slice<stdgo.GoString>(1, 1, _linklink) : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (null : stdgo.Slice<stdgo.GoString>) } : T__struct_2), ({ _desc : ("double link with slash" : stdgo.GoString), _root : _linklink + ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString), _want : (new stdgo.Slice<stdgo.GoString>(2, 2, _linklink, stdgo.path.filepath.Filepath.join(_linklink, ("foo" : stdgo.GoString))) : stdgo.Slice<stdgo.GoString>), _buggyGOOS : (new stdgo.Slice<stdgo.GoString>(2, 2, ("darwin" : stdgo.GoString), ("ios" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>) } : T__struct_2)) : stdgo.Slice<T__struct_2>)) {
            var _tt:T__struct_2 = {
                final x = _tt;
                ({ _desc : x._desc, _root : x._root, _want : x._want, _buggyGOOS : x._buggyGOOS } : T__struct_2);
            };
            _t.run(_tt._desc, function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                var _walked:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                var _err:stdgo.Error = stdgo.path.filepath.Filepath.walk(_tt._root, function(_path:stdgo.GoString, _info:stdgo.io.fs.Fs.FileInfo, _err:stdgo.Error):stdgo.Error {
                    if (_err != null) {
                        return _err;
                    };
                    _t.logf(("%#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(stdgo.Go.asInterface(_info.mode())));
                    _walked = (_walked.__append__(stdgo.path.filepath.Filepath.clean(_path)));
                    return (null : stdgo.Error);
                });
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_walked), stdgo.Go.toInterface(_tt._want))) {
                    _t.logf(("Walk(%#q) visited %#q; want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._root), stdgo.Go.toInterface(_walked), stdgo.Go.toInterface(_tt._want));
                    if (stdgo.slices.Slices.contains((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _tt._buggyGOOS, ("js" : stdgo.GoString))) {
                        _t.logf(("(ignoring known bug on %v)" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
                    } else {
                        _t.fail();
                    };
                };
            });
        };
    }
function testBase(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = _basetests;
        if (false) {
            for (_i in 0 ... _tests.length.toBasic()) {
                _tests[(_i : stdgo.StdGoTypes.GoInt)]._result = stdgo.path.filepath.Filepath.clean(_tests[(_i : stdgo.StdGoTypes.GoInt)]._result);
            };
            _tests = (_tests.__append__(..._winbasetests.__toArray__()));
        };
        for (__0 => _test in _tests) {
            {
                var _s:stdgo.GoString = stdgo.path.filepath.Filepath.base(_test._path);
                if (_s != (_test._result)) {
                    _t.errorf(("Base(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
function testDir(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = _dirtests;
        if (false) {
            for (_i in 0 ... _tests.length.toBasic()) {
                _tests[(_i : stdgo.StdGoTypes.GoInt)]._result = stdgo.path.filepath.Filepath.clean(_tests[(_i : stdgo.StdGoTypes.GoInt)]._result);
            };
            _tests = (_tests.__append__(..._windirtests.__toArray__()));
        } else {
            _tests = (_tests.__append__(..._nonwindirtests.__toArray__()));
        };
        for (__0 => _test in _tests) {
            {
                var _s:stdgo.GoString = stdgo.path.filepath.Filepath.dir(_test._path);
                if (_s != (_test._result)) {
                    _t.errorf(("Dir(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
function testIsAbs(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests:stdgo.Slice<IsAbsTest> = (null : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>);
        if (false) {
            _tests = (_tests.__append__(..._winisabstests.__toArray__()));
            for (__0 => _test in _isabstests) {
                _tests = (_tests.__append__((new IsAbsTest(_test._path, false) : IsAbsTest)));
            };
            for (__1 => _test in _isabstests) {
                _tests = (_tests.__append__((new IsAbsTest(("c:" : stdgo.GoString) + _test._path, _test._isAbs) : IsAbsTest)));
            };
        } else {
            _tests = _isabstests;
        };
        for (__2 => _test in _tests) {
            {
                var _r:Bool = stdgo.path.filepath.Filepath.isAbs(_test._path);
                if (_r != (_test._isAbs)) {
                    _t.errorf(("IsAbs(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_test._isAbs));
                };
            };
        };
    }
/**
    // simpleJoin builds a file name from the directory and path.
    // It does not use Join because we don't want ".." to be evaluated.
**/
function _simpleJoin(_dir:stdgo.GoString, _path:stdgo.GoString):stdgo.GoString {
        return (_dir + ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString)) + _path;
    }
function _testEvalSymlinks(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _path:stdgo.GoString, _want:stdgo.GoString):Void {
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_path), _have:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("EvalSymlinks(%q) error: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            return;
        };
        if (stdgo.path.filepath.Filepath.clean(_have) != (stdgo.path.filepath.Filepath.clean(_want))) {
            _t.errorf(("EvalSymlinks(%q) returns %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
        };
    }
function _testEvalSymlinksAfterChdir(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _wd:stdgo.GoString, _path:stdgo.GoString, _want:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo.os.Os.getwd(), _cwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:stdgo.Error = stdgo.os.Os.chdir(_cwd);
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                a();
            });
            _err = stdgo.os.Os.chdir(_wd);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_path), _have:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("EvalSymlinks(%q) in %q directory error: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_wd), stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (stdgo.path.filepath.Filepath.clean(_have) != (stdgo.path.filepath.Filepath.clean(_want))) {
                _t.errorf(("EvalSymlinks(%q) in %q directory returns %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_wd), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testEvalSymlinks(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmpDir:stdgo.GoString = _t.tempDir();
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_tmpDir);
            _tmpDir = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("eval symlink for tmp dir:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        for (__0 => _d in evalSymlinksTestDirs) {
            var _err:stdgo.Error = (null : stdgo.Error);
            var _path:stdgo.GoString = _simpleJoin(_tmpDir, _d._path);
            if (_d._dest == (stdgo.Go.str())) {
                _err = stdgo.os.Os.mkdir(_path, (493u32 : stdgo.io.fs.Fs.FileMode));
            } else {
                _err = stdgo.os.Os.symlink(_d._dest, _path);
            };
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        for (__1 => _test in evalSymlinksTests) {
            var _path:stdgo.GoString = _simpleJoin(_tmpDir, _test._path);
            var _dest:stdgo.GoString = _simpleJoin(_tmpDir, _test._dest);
            if (stdgo.path.filepath.Filepath.isAbs(_test._dest) || stdgo.os.Os.isPathSeparator(_test._dest[(0 : stdgo.StdGoTypes.GoInt)])) {
                _dest = _test._dest;
            };
            _testEvalSymlinks(_t, _path, _dest);
            _testEvalSymlinksAfterChdir(_t, _path, ("." : stdgo.GoString), ("." : stdgo.GoString));
            if (false) {
                var _volDot:stdgo.GoString = stdgo.path.filepath.Filepath.volumeName(_tmpDir) + ("." : stdgo.GoString);
                _testEvalSymlinksAfterChdir(_t, _path, _volDot, _volDot);
            };
            var _dotdotPath:stdgo.GoString = _simpleJoin((".." : stdgo.GoString), _test._dest);
            if (stdgo.path.filepath.Filepath.isAbs(_test._dest) || stdgo.os.Os.isPathSeparator(_test._dest[(0 : stdgo.StdGoTypes.GoInt)])) {
                _dotdotPath = _test._dest;
            };
            _testEvalSymlinksAfterChdir(_t, _simpleJoin(_tmpDir, ("test" : stdgo.GoString)), _simpleJoin((".." : stdgo.GoString), _test._path), _dotdotPath);
            _testEvalSymlinksAfterChdir(_t, _tmpDir, _test._path, _test._dest);
        };
    }
function testEvalSymlinksIsNotExist(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(("notexist" : stdgo.GoString)), __0:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!stdgo.os.Os.isNotExist(_err)) {
                _t.errorf(("expected the file is not found, got %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = stdgo.os.Os.symlink(("notexist" : stdgo.GoString), ("link" : stdgo.GoString));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = ("link" : stdgo.GoString);
                __deferstack__.unshift(() -> stdgo.os.Os.remove(_a0));
            };
            {
                var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(("link" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (!stdgo.os.Os.isNotExist(_err)) {
                _t.errorf(("expected the file is not found, got %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            for (defer in __deferstack__) {
                defer();
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testIssue13582(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmpDir:stdgo.GoString = _t.tempDir();
        var _dir:stdgo.GoString = stdgo.path.filepath.Filepath.join(_tmpDir, ("dir" : stdgo.GoString));
        var _err:stdgo.Error = stdgo.os.Os.mkdir(_dir, (493u32 : stdgo.io.fs.Fs.FileMode));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _linkToDir:stdgo.GoString = stdgo.path.filepath.Filepath.join(_tmpDir, ("link_to_dir" : stdgo.GoString));
        _err = stdgo.os.Os.symlink(_dir, _linkToDir);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _file:stdgo.GoString = stdgo.path.filepath.Filepath.join(_linkToDir, ("file" : stdgo.GoString));
        _err = stdgo.os.Os.writeFile(_file, (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (420u32 : stdgo.io.fs.Fs.FileMode));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _link1:stdgo.GoString = stdgo.path.filepath.Filepath.join(_linkToDir, ("link1" : stdgo.GoString));
        _err = stdgo.os.Os.symlink(_file, _link1);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _link2:stdgo.GoString = stdgo.path.filepath.Filepath.join(_linkToDir, ("link2" : stdgo.GoString));
        _err = stdgo.os.Os.symlink(_link1, _link2);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_tmpDir), _realTmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _realDir:stdgo.GoString = stdgo.path.filepath.Filepath.join(_realTmpDir, ("dir" : stdgo.GoString));
        var _realFile:stdgo.GoString = stdgo.path.filepath.Filepath.join(_realDir, ("file" : stdgo.GoString));
        var _tests = (new stdgo.Slice<T__struct_3>(5, 5, ({ _path : _dir, _want : _realDir } : T__struct_3), ({ _path : _linkToDir, _want : _realDir } : T__struct_3), ({ _path : _file, _want : _realFile } : T__struct_3), ({ _path : _link1, _want : _realFile } : T__struct_3), ({ _path : _link2, _want : _realFile } : T__struct_3)) : stdgo.Slice<T__struct_3>);
        for (_i => _test in _tests) {
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_test._path), _have:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (_have != (_test._want)) {
                _t.errorf(("test#%d: EvalSymlinks(%q) returns %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_test._want));
            };
        };
    }
/**
    // Issue 57905.
**/
function testRelativeSymlinkToAbsolute(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        var _tmpDir:stdgo.GoString = _t.tempDir();
        _chdir(_t, _tmpDir);
        {
            var _err:stdgo.Error = stdgo.os.Os.symlink(_tmpDir, ("link" : stdgo.GoString));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _t.logf(("os.Symlink(%q, \"link\")" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir));
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(("link" : stdgo.GoString)), _p:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(\"link\"): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_tmpDir), _want:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tmpDir), stdgo.Go.toInterface(_err));
        };
        if (_p != (_want)) {
            _t.errorf(("EvalSymlinks(\"link\") = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_want));
        };
        _t.logf(("EvalSymlinks(\"link\") = %q" : stdgo.GoString), stdgo.Go.toInterface(_p));
    }
function testAbs(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _root:stdgo.GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("getwd failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            _err = stdgo.os.Os.chdir(_root);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("chdir failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            for (__0 => _dir in _absTestDirs) {
                _err = stdgo.os.Os.mkdir(_dir, (511u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(("Mkdir failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            if (false) {
                var _vol:stdgo.GoString = stdgo.path.filepath.Filepath.volumeName(_root);
                var _extra:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                for (__1 => _path in _absTests) {
                    if (stdgo.strings.Strings.contains(_path, ("$" : stdgo.GoString))) {
                        continue;
                    };
                    _path = _vol + _path;
                    _extra = (_extra.__append__(_path));
                };
                _absTests = (_absTests.__append__(..._extra.__toArray__()));
            };
            _err = stdgo.os.Os.chdir(_absTestDirs[(0 : stdgo.StdGoTypes.GoInt)]);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("chdir failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            for (__2 => _path in _absTests) {
                _path = stdgo.strings.Strings.replaceAll(_path, ("$" : stdgo.GoString), _root);
                var __tmp__ = stdgo.os.Os.stat(_path), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo.path.filepath.Filepath.abs(_path), _abspath:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Abs(%q) error: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo.os.Os.stat(_abspath), _absinfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_err != null) || !stdgo.os.Os.sameFile(_absinfo, _info)) {
                    _t.errorf(("Abs(%q)=%q, not the same file" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_abspath));
                };
                if (!stdgo.path.filepath.Filepath.isAbs(_abspath)) {
                    _t.errorf(("Abs(%q)=%q, not an absolute path" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_abspath));
                };
                if (stdgo.path.filepath.Filepath.isAbs(_abspath) && (_abspath != stdgo.path.filepath.Filepath.clean(_abspath))) {
                    _t.errorf(("Abs(%q)=%q, isn\'t clean" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_abspath));
                };
            };
            for (defer in __deferstack__) {
                defer();
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
/**
    // Empty path needs to be special-cased on Windows. See golang.org/issue/24441.
    // We test it separately from all other absTests because the empty string is not
    // a valid path, so it can't be used with os.Stat.
**/
function testAbsEmptyString(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _root:stdgo.GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("getwd failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            _err = stdgo.os.Os.chdir(_root);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("chdir failed: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            var __tmp__ = stdgo.os.Os.stat(_root), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_root), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo.path.filepath.Filepath.abs(stdgo.Go.str()), _abspath:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Abs(\"\") error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo.os.Os.stat(_abspath), _absinfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || !stdgo.os.Os.sameFile(_absinfo, _info)) {
                _t.errorf(("Abs(\"\")=%q, not the same file" : stdgo.GoString), stdgo.Go.toInterface(_abspath));
            };
            if (!stdgo.path.filepath.Filepath.isAbs(_abspath)) {
                _t.errorf(("Abs(\"\")=%q, not an absolute path" : stdgo.GoString), stdgo.Go.toInterface(_abspath));
            };
            if (stdgo.path.filepath.Filepath.isAbs(_abspath) && (_abspath != stdgo.path.filepath.Filepath.clean(_abspath))) {
                _t.errorf(("Abs(\"\")=%q, isn\'t clean" : stdgo.GoString), stdgo.Go.toInterface(_abspath));
            };
            for (defer in __deferstack__) {
                defer();
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testRel(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = ((new stdgo.Slice<stdgo.path.filepath_test.Filepath_test.RelTests>(0, 0) : stdgo.Slice<stdgo.path.filepath_test.Filepath_test.RelTests>).__append__(..._reltests.__toArray__()));
        if (false) {
            for (_i in 0 ... _tests.length.toBasic()) {
                _tests[(_i : stdgo.StdGoTypes.GoInt)]._want = stdgo.path.filepath.Filepath.fromSlash(_tests[(_i : stdgo.StdGoTypes.GoInt)]._want);
            };
            _tests = (_tests.__append__(..._winreltests.__toArray__()));
        };
        for (__0 => _test in _tests) {
            var __tmp__ = stdgo.path.filepath.Filepath.rel(_test._root, _test._path), _got:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
function testVolumeName(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (true) {
            return;
        };
        for (__0 => _v in _volumenametests) {
            {
                var _vol:stdgo.GoString = stdgo.path.filepath.Filepath.volumeName(_v._path);
                if (_vol != (_v._vol)) {
                    _t.errorf(("VolumeName(%q)=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_v._path), stdgo.Go.toInterface(_vol), stdgo.Go.toInterface(_v._vol));
                };
            };
        };
    }
function testDriveLetterInEvalSymlinks(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (true) {
            return;
        };
        var __tmp__ = stdgo.os.Os.getwd(), _wd:stdgo.GoString = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        if ((_wd.length) < (3 : stdgo.StdGoTypes.GoInt)) {
            _t.errorf(("Current directory path %q is too short" : stdgo.GoString), stdgo.Go.toInterface(_wd));
        };
        var _lp:stdgo.GoString = stdgo.strings.Strings.toLower(_wd);
        var _up:stdgo.GoString = stdgo.strings.Strings.toUpper(_wd);
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_lp), _flp:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(%q) failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_lp), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_up), _fup:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(%q) failed: %q" : stdgo.GoString), stdgo.Go.toInterface(_up), stdgo.Go.toInterface(_err));
        };
        if (_flp != (_fup)) {
            _t.errorf(("Results of EvalSymlinks do not match: %q and %q" : stdgo.GoString), stdgo.Go.toInterface(_flp), stdgo.Go.toInterface(_fup));
        };
    }
function testBug3486(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (false) {
            _t.skipf(("skipping on %s/%s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
        var _root:stdgo.GoString = stdgo.path.filepath.Filepath.join(stdgo.internal.testenv.Testenv.goroot(stdgo.Go.asInterface(_t)), ("src" : stdgo.GoString), ("unicode" : stdgo.GoString));
        var _utf16:stdgo.GoString = stdgo.path.filepath.Filepath.join(_root, ("utf16" : stdgo.GoString));
        var _utf8:stdgo.GoString = stdgo.path.filepath.Filepath.join(_root, ("utf8" : stdgo.GoString));
        var _seenUTF16:Bool = false;
        var _seenUTF8:Bool = false;
        var _err:stdgo.Error = stdgo.path.filepath.Filepath.walk(_root, function(_pth:stdgo.GoString, _info:stdgo.io.fs.Fs.FileInfo, _err:stdgo.Error):stdgo.Error {
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                final __value__ = _pth;
                if (__value__ == (_utf16)) {
                    _seenUTF16 = true;
                    return stdgo.path.filepath.Filepath.skipDir;
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
function _testWalkSymlink(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _mklink:(_target:stdgo.GoString, _link:stdgo.GoString) -> stdgo.Error):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpdir:stdgo.GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            _err = stdgo.os.Os.chdir(_tmpdir);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _err = _mklink(_tmpdir, ("link" : stdgo.GoString));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _visited:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            _err = stdgo.path.filepath.Filepath.walk(_tmpdir, function(_path:stdgo.GoString, _info:stdgo.io.fs.Fs.FileInfo, _err:stdgo.Error):stdgo.Error {
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var __tmp__ = stdgo.path.filepath.Filepath.rel(_tmpdir, _path), _rel:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                _visited = (_visited.__append__(_rel));
                return (null : stdgo.Error);
            });
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            stdgo.sort.Sort.strings(_visited);
            var _want = (new stdgo.Slice<stdgo.GoString>(2, 2, ("." : stdgo.GoString), ("link" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
            if (stdgo.fmt.Fmt.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_visited)) != (stdgo.fmt.Fmt.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_want)))) {
                _t.errorf(("unexpected paths visited %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_visited), stdgo.Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testWalkSymlink(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        _testWalkSymlink(_t, stdgo.os.Os.symlink);
    }
function testIssue29372(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tmpDir:stdgo.GoString = _t.tempDir();
        var _path:stdgo.GoString = stdgo.path.filepath.Filepath.join(_tmpDir, ("file.txt" : stdgo.GoString));
        var _err:stdgo.Error = stdgo.os.Os.writeFile(_path, (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (420u32 : stdgo.io.fs.Fs.FileMode));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _pathSeparator:stdgo.GoString = ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString);
        var _tests = (new stdgo.Slice<stdgo.GoString>(6, 6, _path + stdgo.strings.Strings.repeat(_pathSeparator, (1 : stdgo.StdGoTypes.GoInt)), _path + stdgo.strings.Strings.repeat(_pathSeparator, (2 : stdgo.StdGoTypes.GoInt)), (_path + stdgo.strings.Strings.repeat(_pathSeparator, (1 : stdgo.StdGoTypes.GoInt))) + ("." : stdgo.GoString), (_path + stdgo.strings.Strings.repeat(_pathSeparator, (2 : stdgo.StdGoTypes.GoInt))) + ("." : stdgo.GoString), (_path + stdgo.strings.Strings.repeat(_pathSeparator, (1 : stdgo.StdGoTypes.GoInt))) + (".." : stdgo.GoString), (_path + stdgo.strings.Strings.repeat(_pathSeparator, (2 : stdgo.StdGoTypes.GoInt))) + (".." : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        for (_i => _test in _tests) {
            {
                var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_test);
                _err = __tmp__._1;
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface((20 : stdgo.syscall.Syscall.Errno))))) {
                _t.fatalf(("test#%d: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((20 : stdgo.syscall.Syscall.Errno))), stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    // Issue 30520 part 1.
**/
function testEvalSymlinksAboveRoot(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        _t.parallel();
        var _tmpDir:stdgo.GoString = _t.tempDir();
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_tmpDir), _evalTmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err:stdgo.Error = stdgo.os.Os.mkdir(stdgo.path.filepath.Filepath.join(_evalTmpDir, ("a" : stdgo.GoString)), (511u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = stdgo.os.Os.symlink(stdgo.path.filepath.Filepath.join(_evalTmpDir, ("a" : stdgo.GoString)), stdgo.path.filepath.Filepath.join(_evalTmpDir, ("b" : stdgo.GoString)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = stdgo.os.Os.writeFile(stdgo.path.filepath.Filepath.join(_evalTmpDir, ("a" : stdgo.GoString), ("file" : stdgo.GoString)), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (438u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _vol:stdgo.GoString = stdgo.path.filepath.Filepath.volumeName(_evalTmpDir);
        var _c:stdgo.StdGoTypes.GoInt = stdgo.strings.Strings.count((_evalTmpDir.__slice__((_vol.length)) : stdgo.GoString), ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString));
        var _dd:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_c + (2 : stdgo.StdGoTypes.GoInt)), _i++, {
                _dd = (_dd.__append__((".." : stdgo.GoString)));
            });
        };
        var _wantSuffix:stdgo.GoString = stdgo.strings.Strings.join((new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString), ("file" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString));
        for (__0 => _i in (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, _c, _c + (1 : stdgo.StdGoTypes.GoInt), _c + (2 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) {
            var _check:stdgo.GoString = stdgo.strings.Strings.join((new stdgo.Slice<stdgo.GoString>(5, 5, _evalTmpDir, stdgo.strings.Strings.join((_dd.__slice__(0, _i) : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString)), (_evalTmpDir.__slice__((_vol.length) + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString), ("b" : stdgo.GoString), ("file" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), ((47 : stdgo.StdGoTypes.GoInt32) : stdgo.GoString));
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_check), _resolved:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (false && stdgo.errors.Errors.is_(_err, stdgo.io.fs.Fs.errNotExist)) {
                stdgo.internal.testenv.Testenv.skipFlaky(stdgo.Go.asInterface(_t), (37910 : stdgo.StdGoTypes.GoInt));
            } else if (_err != null) {
                _t.errorf(("EvalSymlinks(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_err));
            } else if (!stdgo.strings.Strings.hasSuffix(_resolved, _wantSuffix)) {
                _t.errorf(("EvalSymlinks(%q) = %q does not end with %q" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_resolved), stdgo.Go.toInterface(_wantSuffix));
            } else {
                _t.logf(("EvalSymlinks(%q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_resolved));
            };
        };
    }
/**
    // Issue 30520 part 2.
**/
function testEvalSymlinksAboveRootChdir(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
            var __tmp__ = stdgo.os.Os.mkdirTemp(stdgo.Go.str(), ("TestEvalSymlinksAboveRootChdir" : stdgo.GoString)), _tmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _tmpDir;
                __deferstack__.unshift(() -> stdgo.os.Os.removeAll(_a0));
            };
            _chdir(_t, _tmpDir);
            var _subdir:stdgo.GoString = stdgo.path.filepath.Filepath.join(("a" : stdgo.GoString), ("b" : stdgo.GoString));
            {
                var _err:stdgo.Error = stdgo.os.Os.mkdirAll(_subdir, (511u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = stdgo.os.Os.symlink(_subdir, ("c" : stdgo.GoString));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = stdgo.os.Os.writeFile(stdgo.path.filepath.Filepath.join(_subdir, ("file" : stdgo.GoString)), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (438u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            _subdir = stdgo.path.filepath.Filepath.join(("d" : stdgo.GoString), ("e" : stdgo.GoString), ("f" : stdgo.GoString));
            {
                var _err:stdgo.Error = stdgo.os.Os.mkdirAll(_subdir, (511u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err:stdgo.Error = stdgo.os.Os.chdir(_subdir);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _check:stdgo.GoString = stdgo.path.filepath.Filepath.join((".." : stdgo.GoString), (".." : stdgo.GoString), (".." : stdgo.GoString), ("c" : stdgo.GoString), ("file" : stdgo.GoString));
            var _wantSuffix:stdgo.GoString = stdgo.path.filepath.Filepath.join(("a" : stdgo.GoString), ("b" : stdgo.GoString), ("file" : stdgo.GoString));
            {
                var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_check), _resolved:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("EvalSymlinks(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_err));
                } else if (!stdgo.strings.Strings.hasSuffix(_resolved, _wantSuffix)) {
                    _t.errorf(("EvalSymlinks(%q) = %q does not end with %q" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_resolved), stdgo.Go.toInterface(_wantSuffix));
                } else {
                    _t.logf(("EvalSymlinks(%q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_check), stdgo.Go.toInterface(_resolved));
                };
            };
            for (defer in __deferstack__) {
                defer();
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
function testIssue51617(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dir:stdgo.GoString = _t.tempDir();
            for (__0 => _sub in (new stdgo.Slice<stdgo.GoString>(3, 3, ("a" : stdgo.GoString), stdgo.path.filepath.Filepath.join(("a" : stdgo.GoString), ("bad" : stdgo.GoString)), stdgo.path.filepath.Filepath.join(("a" : stdgo.GoString), ("next" : stdgo.GoString))) : stdgo.Slice<stdgo.GoString>)) {
                {
                    var _err:stdgo.Error = stdgo.os.Os.mkdir(stdgo.path.filepath.Filepath.join(_dir, _sub), (493u32 : stdgo.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
            var _bad:stdgo.GoString = stdgo.path.filepath.Filepath.join(_dir, ("a" : stdgo.GoString), ("bad" : stdgo.GoString));
            {
                var _err:stdgo.Error = stdgo.os.Os.chmod(_bad, (0u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _bad;
                var _a1 = (448u32 : stdgo.io.fs.Fs.FileMode);
                __deferstack__.unshift(() -> stdgo.os.Os.chmod(_a0, _a1));
            };
            var _saw:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _err:stdgo.Error = stdgo.path.filepath.Filepath.walkDir(_dir, function(_path:stdgo.GoString, _d:stdgo.io.fs.Fs.DirEntry, _err:stdgo.Error):stdgo.Error {
                if (_err != null) {
                    return stdgo.path.filepath.Filepath.skipDir;
                };
                if (_d.isDir()) {
                    var __tmp__ = stdgo.path.filepath.Filepath.rel(_dir, _path), _rel:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    _saw = (_saw.__append__(_rel));
                };
                return (null : stdgo.Error);
            });
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _want = (new stdgo.Slice<stdgo.GoString>(4, 4, ("." : stdgo.GoString), ("a" : stdgo.GoString), stdgo.path.filepath.Filepath.join(("a" : stdgo.GoString), ("bad" : stdgo.GoString)), stdgo.path.filepath.Filepath.join(("a" : stdgo.GoString), ("next" : stdgo.GoString))) : stdgo.Slice<stdgo.GoString>);
            if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_saw), stdgo.Go.toInterface(_want))) {
                _t.errorf(("got directories %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_saw), stdgo.Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
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
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_globTest>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath_test.Filepath_test.T_globTest_asInterface) class T_globTest_static_extension {
    @:keep
    static public function _globRel( _test:stdgo.StdGoTypes.Ref<T_globTest>, _root:stdgo.GoString):stdgo.Error {
        var _p:stdgo.GoString = _root + fromSlash(_test._pattern);
        var __tmp__ = glob(_p), _have:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        stdgo.sort.Sort.strings(_have);
        var _want = _test._buildWant(_root);
        if (stdgo.strings.Strings.join(_want, ("_" : stdgo.GoString)) == (stdgo.strings.Strings.join(_have, ("_" : stdgo.GoString)))) {
            return (null : stdgo.Error);
        };
        var _wantWithNoRoot = _test._buildWant(stdgo.Go.str());
        if (stdgo.strings.Strings.join(_wantWithNoRoot, ("_" : stdgo.GoString)) == (stdgo.strings.Strings.join(_have, ("_" : stdgo.GoString)))) {
            return (null : stdgo.Error);
        };
        return stdgo.fmt.Fmt.errorf(("Glob(%q) returns %q, but %q expected" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
    }
    @:keep
    static public function _globAbs( _test:stdgo.StdGoTypes.Ref<T_globTest>, _root:stdgo.GoString, _rootPattern:stdgo.GoString):stdgo.Error {
        var _p:stdgo.GoString = fromSlash((_rootPattern + ("\\" : stdgo.GoString)) + _test._pattern);
        var __tmp__ = glob(_p), _have:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        stdgo.sort.Sort.strings(_have);
        var _want = _test._buildWant(_root + ("\\" : stdgo.GoString));
        if (stdgo.strings.Strings.join(_want, ("_" : stdgo.GoString)) == (stdgo.strings.Strings.join(_have, ("_" : stdgo.GoString)))) {
            return (null : stdgo.Error);
        };
        return stdgo.fmt.Fmt.errorf(("Glob(%q) returns %q, but %q expected" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want));
    }
    @:keep
    static public function _buildWant( _test:stdgo.StdGoTypes.Ref<T_globTest>, _root:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        var _want = new stdgo.Slice<stdgo.GoString>((0 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setString__();
        for (__0 => _m in _test._matches) {
            _want = (_want.__append__(_root + fromSlash(_m)));
        };
        stdgo.sort.Sort.strings(_want);
        return _want;
    }
}
class T_statDirEntry_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function type():stdgo.io.fs.Fs.FileMode return __self__.value.type();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_statDirEntry>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath_test.Filepath_test.T_statDirEntry_asInterface) class T_statDirEntry_static_extension {
    @:keep
    static public function string( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):stdgo.GoString {
        return stdgo.io.fs.Fs.formatDirEntry(stdgo.Go.asInterface(_d));
    }
    @:keep
    static public function info( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } {
        return { _0 : _d._info, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function type( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):stdgo.io.fs.Fs.FileMode {
        return _d._info.mode().type();
    }
    @:keep
    static public function isDir( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):Bool {
        return _d._info.isDir();
    }
    @:keep
    static public function name( _d:stdgo.StdGoTypes.Ref<T_statDirEntry>):stdgo.GoString {
        return _d._info.name();
    }
}
