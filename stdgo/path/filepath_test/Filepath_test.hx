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
import stdgo.path.filepath.Filepath;
/**
    
    
    
**/
private var _matchTests = (new Slice<stdgo.path.filepath_test.Filepath_test.MatchTest>(
56,
56,
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("abc" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("*" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("*c" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*" : GoString), ("a" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*" : GoString), ("ab/c" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*/b" : GoString), ("abc/b" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*/b" : GoString), ("a/c/b" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b*c*d*e*/f" : GoString), ("axbxcxdxe/f" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b*c*d*e*/f" : GoString), ("axbxcxdxexxx/f" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b*c*d*e*/f" : GoString), ("axbxcxdxe/xxx/f" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b*c*d*e*/f" : GoString), ("axbxcxdxexxx/fff" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b?c*x" : GoString), ("abxbbxdbxebxczzx" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b?c*x" : GoString), ("abxbbxdbxebxczzy" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("ab[c]" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("ab[b-d]" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("ab[e-g]" : GoString), ("abc" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("ab[^c]" : GoString), ("abc" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("ab[^b-d]" : GoString), ("abc" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("ab[^e-g]" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a\\*b" : GoString), ("a*b" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a\\*b" : GoString), ("ab" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a?b" : GoString), ("a☺b" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a[^a]b" : GoString), ("a☺b" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a???b" : GoString), ("a☺b" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a[^a][^a][^a]b" : GoString), ("a☺b" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[a-ζ]*" : GoString), ("α" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("*[a-ζ]" : GoString), ("A" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a?b" : GoString), ("a/b" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a*b" : GoString), ("a/b" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[\\]a]" : GoString), ("]" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[\\-]" : GoString), ("-" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[x\\-]" : GoString), ("x" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[x\\-]" : GoString), ("-" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[x\\-]" : GoString), ("z" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[\\-x]" : GoString), ("x" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[\\-x]" : GoString), ("-" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[\\-x]" : GoString), ("a" : GoString), false, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[]a]" : GoString), ("]" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[-]" : GoString), ("-" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[x-]" : GoString), ("x" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[x-]" : GoString), ("-" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[x-]" : GoString), ("z" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[-x]" : GoString), ("x" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[-x]" : GoString), ("-" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[-x]" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("\\" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[a-b-c]" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[^" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("[^bc" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a[" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a[" : GoString), ("ab" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a[" : GoString), ("x" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("a/b[" : GoString), ("x" : GoString), false, errBadPattern) : stdgo.path.filepath_test.Filepath_test.MatchTest),
(new stdgo.path.filepath_test.Filepath_test.MatchTest(("*x" : GoString), ("xxx" : GoString), true, (null : Error)) : stdgo.path.filepath_test.Filepath_test.MatchTest)) : Slice<stdgo.path.filepath_test.Filepath_test.MatchTest>);
/**
    
    
    
**/
private var _globTests = (new Slice<T__struct_0>(4, 4, ({ _pattern : ("match.go" : GoString), _result : ("match.go" : GoString) } : T__struct_0), ({ _pattern : ("mat?h.go" : GoString), _result : ("match.go" : GoString) } : T__struct_0), ({ _pattern : ("*" : GoString), _result : ("match.go" : GoString) } : T__struct_0), ({ _pattern : ("../*/match.go" : GoString), _result : ("../filepath/match.go" : GoString) } : T__struct_0)) : Slice<T__struct_0>);
/**
    
    
    
**/
private var _globSymlinkTests = (new Slice<T__struct_1>(2, 2, ({ _path : ("test1" : GoString), _dest : ("link1" : GoString), _brokenLink : false } : T__struct_1), ({ _path : ("test2" : GoString), _dest : ("link2" : GoString), _brokenLink : true } : T__struct_1)) : Slice<T__struct_1>);
/**
    
    
    
**/
private var _cleantests = (new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
34,
34,
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc" : GoString), ("abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def" : GoString), ("abc/def" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/c" : GoString), ("a/b/c" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("." : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest((".." : GoString), (".." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("../.." : GoString), ("../.." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("../../abc" : GoString), ("../../abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/abc" : GoString), ("/abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/" : GoString), ("/" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(Go.str(), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/" : GoString), ("abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/" : GoString), ("abc/def" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/c/" : GoString), ("a/b/c" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("./" : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("../" : GoString), (".." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("../../" : GoString), ("../.." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/abc/" : GoString), ("/abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc//def//ghi" : GoString), ("abc/def/ghi" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc//" : GoString), ("abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/./def" : GoString), ("abc/def" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/./abc/def" : GoString), ("/abc/def" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/." : GoString), ("abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/ghi/../jkl" : GoString), ("abc/def/jkl" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/../ghi/../jkl" : GoString), ("abc/jkl" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/.." : GoString), ("abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/../.." : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/abc/def/../.." : GoString), ("/" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/../../.." : GoString), (".." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/abc/def/../../.." : GoString), ("/" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def/../../../ghi/jkl/../../../mno" : GoString), ("../../mno" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/../abc" : GoString), ("/abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/./../def" : GoString), ("def" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc//./../def" : GoString), ("def" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/../../././../def" : GoString), ("../../def" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
private var _nonwincleantests = (new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(3, 3, (new stdgo.path.filepath_test.Filepath_test.PathTest(("//abc" : GoString), ("/abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("///abc" : GoString), ("/abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("//abc//" : GoString), ("/abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
private var _wincleantests = (new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
25,
25,
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:" : GoString), ("c:." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\" : GoString), ("c:\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\abc" : GoString), ("c:\\abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:abc\\..\\..\\.\\.\\..\\def" : GoString), ("c:..\\..\\def" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\abc\\def\\..\\.." : GoString), ("c:\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\..\\abc" : GoString), ("c:\\abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:..\\abc" : GoString), ("c:..\\abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\" : GoString), ("\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/" : GoString), ("\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\i\\..\\c$$" : GoString), ("\\\\i\\..\\c$$" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\i\\..\\i\\c$$" : GoString), ("\\\\i\\..\\i\\c$$" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\i\\..\\I\\c$$" : GoString), ("\\\\i\\..\\I\\c$$" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\foo\\..\\bar" : GoString), ("\\\\host\\share\\bar" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("//host/share/foo/../baz" : GoString), ("\\\\host\\share\\baz" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\foo\\..\\..\\..\\..\\bar" : GoString), ("\\\\host\\share\\bar" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\.\\C:\\a\\..\\..\\..\\..\\bar" : GoString), ("\\\\.\\C:\\bar" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\.\\C:\\\\\\\\a" : GoString), ("\\\\.\\C:\\a" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\a\\b\\..\\c" : GoString), ("\\\\a\\b\\c" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\a\\b" : GoString), ("\\\\a\\b" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest((".\\c:" : GoString), (".\\c:" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest((".\\c:\\foo" : GoString), (".\\c:\\foo" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest((".\\c:foo" : GoString), (".\\c:foo" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("//abc" : GoString), ("\\\\abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("///abc" : GoString), ("\\\\\\abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("//abc//" : GoString), ("\\\\abc\\\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
private var _islocaltests = (new Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest>(
12,
12,
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(Go.str(), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("." : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest((".." : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("../a" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("/" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("/a" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("/a/../.." : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("a" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("a/../a" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("a/" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("a/." : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("a/./b/./c" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest)) : Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest>);
/**
    
    
    
**/
private var _winislocaltests = (new Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest>(
15,
15,
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("NUL" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("nul" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("nul." : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("com1" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("./nul" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("\\" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("\\a" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("C:" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("C:\\a" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("..\\a" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("CONIN$$" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("conin$$" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("CONOUT$$" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("conout$$" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest),
(new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("dollar$$" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsLocalTest)) : Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest>);
/**
    
    
    
**/
private var _plan9islocaltests = (new Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest>(1, 1, (new stdgo.path.filepath_test.Filepath_test.IsLocalTest(("#a" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsLocalTest)) : Slice<stdgo.path.filepath_test.Filepath_test.IsLocalTest>);
/**
    
    
    
**/
private var _slashtests = (new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(4, 4, (new stdgo.path.filepath_test.Filepath_test.PathTest(Go.str(), Go.str()) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("/" : GoString), ((47 : GoInt32) : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("/a/b" : GoString), ((new Slice<GoUInt8>(4, 4, (47 : GoUInt8), (97 : GoUInt8), (47 : GoUInt8), (98 : GoUInt8)) : Slice<GoUInt8>) : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("a//b" : GoString), ((new Slice<GoUInt8>(4, 4, (97 : GoUInt8), (47 : GoUInt8), (47 : GoUInt8), (98 : GoUInt8)) : Slice<GoUInt8>) : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
private var _splitlisttests = (new Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest>(3, 3, (new stdgo.path.filepath_test.Filepath_test.SplitListTest(Go.str(), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest), (new stdgo.path.filepath_test.Filepath_test.SplitListTest(((new Slice<GoUInt8>(3, 3, (97 : GoUInt8), (58 : GoUInt8), (98 : GoUInt8)) : Slice<GoUInt8>) : GoString), (new Slice<GoString>(2, 2, ("a" : GoString), ("b" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest), (new stdgo.path.filepath_test.Filepath_test.SplitListTest(((new Slice<GoUInt8>(4, 4, (58 : GoUInt8), (97 : GoUInt8), (58 : GoUInt8), (98 : GoUInt8)) : Slice<GoUInt8>) : GoString), (new Slice<GoString>(3, 3, Go.str(), ("a" : GoString), ("b" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest)) : Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest>);
/**
    
    
    
**/
private var _winsplitlisttests = (new Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest>(
14,
14,
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"a\"" : GoString), (new Slice<GoString>(1, 1, ("a" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\";\"" : GoString), (new Slice<GoString>(1, 1, (";" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"a;b\"" : GoString), (new Slice<GoString>(1, 1, ("a;b" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\";\";" : GoString), (new Slice<GoString>(2, 2, (";" : GoString), Go.str()) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest((";\";\"" : GoString), (new Slice<GoString>(2, 2, Go.str(), (";" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("a\";\"b" : GoString), (new Slice<GoString>(1, 1, ("a;b" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("a; \"\"b" : GoString), (new Slice<GoString>(2, 2, ("a" : GoString), (" b" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"a;b" : GoString), (new Slice<GoString>(1, 1, ("a;b" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"\"a;b" : GoString), (new Slice<GoString>(2, 2, ("a" : GoString), ("b" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"\"\"a;b" : GoString), (new Slice<GoString>(1, 1, ("a;b" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"\"\"\"a;b" : GoString), (new Slice<GoString>(2, 2, ("a" : GoString), ("b" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("a\";b" : GoString), (new Slice<GoString>(1, 1, ("a;b" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("a;b\";c" : GoString), (new Slice<GoString>(2, 2, ("a" : GoString), ("b;c" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest),
(new stdgo.path.filepath_test.Filepath_test.SplitListTest(("\"a\";b\";c" : GoString), (new Slice<GoString>(2, 2, ("a" : GoString), ("b;c" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.SplitListTest)) : Slice<stdgo.path.filepath_test.Filepath_test.SplitListTest>);
/**
    
    
    
**/
private var _unixsplittests = (new Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>(5, 5, (new stdgo.path.filepath_test.Filepath_test.SplitTest(("a/b" : GoString), ("a/" : GoString), ("b" : GoString)) : stdgo.path.filepath_test.Filepath_test.SplitTest), (new stdgo.path.filepath_test.Filepath_test.SplitTest(("a/b/" : GoString), ("a/b/" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest), (new stdgo.path.filepath_test.Filepath_test.SplitTest(("a/" : GoString), ("a/" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest), (new stdgo.path.filepath_test.Filepath_test.SplitTest(("a" : GoString), Go.str(), ("a" : GoString)) : stdgo.path.filepath_test.Filepath_test.SplitTest), (new stdgo.path.filepath_test.Filepath_test.SplitTest(("/" : GoString), ("/" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest)) : Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>);
/**
    
    
    
**/
private var _winsplittests = (new Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>(
10,
10,
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("c:" : GoString), ("c:" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("c:/" : GoString), ("c:/" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("c:/foo" : GoString), ("c:/" : GoString), ("foo" : GoString)) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("c:/foo/bar" : GoString), ("c:/foo/" : GoString), ("bar" : GoString)) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("//host/share" : GoString), ("//host/share" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("//host/share/" : GoString), ("//host/share/" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("//host/share/foo" : GoString), ("//host/share/" : GoString), ("foo" : GoString)) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("\\\\host\\share" : GoString), ("\\\\host\\share" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("\\\\host\\share\\" : GoString), ("\\\\host\\share\\" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.SplitTest),
(new stdgo.path.filepath_test.Filepath_test.SplitTest(("\\\\host\\share\\foo" : GoString), ("\\\\host\\share\\" : GoString), ("foo" : GoString)) : stdgo.path.filepath_test.Filepath_test.SplitTest)) : Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>);
/**
    
    
    
**/
private var _jointests = (new Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>(
17,
17,
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(0, 0) : Slice<GoString>), Go.str()) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(1, 1, Go.str()) : Slice<GoString>), Go.str()) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(1, 1, ("/" : GoString)) : Slice<GoString>), ("/" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(1, 1, ("a" : GoString)) : Slice<GoString>), ("a" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("a" : GoString), ("b" : GoString)) : Slice<GoString>), ("a/b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("a" : GoString), Go.str()) : Slice<GoString>), ("a" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, Go.str(), ("b" : GoString)) : Slice<GoString>), ("b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("/" : GoString), ("a" : GoString)) : Slice<GoString>), ("/a" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("/" : GoString), ("a/b" : GoString)) : Slice<GoString>), ("/a/b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("/" : GoString), Go.str()) : Slice<GoString>), ("/" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("/a" : GoString), ("b" : GoString)) : Slice<GoString>), ("/a/b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("a" : GoString), ("/b" : GoString)) : Slice<GoString>), ("a/b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("/a" : GoString), ("/b" : GoString)) : Slice<GoString>), ("/a/b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("a/" : GoString), ("b" : GoString)) : Slice<GoString>), ("a/b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("a/" : GoString), Go.str()) : Slice<GoString>), ("a" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, Go.str(), Go.str()) : Slice<GoString>), Go.str()) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(3, 3, ("/" : GoString), ("a" : GoString), ("b" : GoString)) : Slice<GoString>), ("/a/b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest)) : Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>);
/**
    
    
    
**/
private var _nonwinjointests = (new Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>(1, 1, (new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("//" : GoString), ("a" : GoString)) : Slice<GoString>), ("/a" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest)) : Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>);
/**
    
    
    
**/
private var _winjointests = (new Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>(
29,
29,
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("directory" : GoString), ("file" : GoString)) : Slice<GoString>), ("directory\\file" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("C:\\Windows\\" : GoString), ("System32" : GoString)) : Slice<GoString>), ("C:\\Windows\\System32" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("C:\\Windows\\" : GoString), Go.str()) : Slice<GoString>), ("C:\\Windows" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("C:\\" : GoString), ("Windows" : GoString)) : Slice<GoString>), ("C:\\Windows" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("C:" : GoString), ("a" : GoString)) : Slice<GoString>), ("C:a" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("C:" : GoString), ("a\\b" : GoString)) : Slice<GoString>), ("C:a\\b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(3, 3, ("C:" : GoString), ("a" : GoString), ("b" : GoString)) : Slice<GoString>), ("C:a\\b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(3, 3, ("C:" : GoString), Go.str(), ("b" : GoString)) : Slice<GoString>), ("C:b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(4, 4, ("C:" : GoString), Go.str(), Go.str(), ("b" : GoString)) : Slice<GoString>), ("C:b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("C:" : GoString), Go.str()) : Slice<GoString>), ("C:." : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(3, 3, ("C:" : GoString), Go.str(), Go.str()) : Slice<GoString>), ("C:." : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("C:" : GoString), ("\\a" : GoString)) : Slice<GoString>), ("C:\\a" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(3, 3, ("C:" : GoString), Go.str(), ("\\a" : GoString)) : Slice<GoString>), ("C:\\a" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("C:." : GoString), ("a" : GoString)) : Slice<GoString>), ("C:a" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("C:a" : GoString), ("b" : GoString)) : Slice<GoString>), ("C:a\\b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(3, 3, ("C:a" : GoString), ("b" : GoString), ("d" : GoString)) : Slice<GoString>), ("C:a\\b\\d" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("\\\\host\\share" : GoString), ("foo" : GoString)) : Slice<GoString>), ("\\\\host\\share\\foo" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(1, 1, ("\\\\host\\share\\foo" : GoString)) : Slice<GoString>), ("\\\\host\\share\\foo" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("//host/share" : GoString), ("foo/bar" : GoString)) : Slice<GoString>), ("\\\\host\\share\\foo\\bar" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(1, 1, ("\\" : GoString)) : Slice<GoString>), ("\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("\\" : GoString), Go.str()) : Slice<GoString>), ("\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("\\" : GoString), ("a" : GoString)) : Slice<GoString>), ("\\a" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("\\\\" : GoString), ("a" : GoString)) : Slice<GoString>), ("\\\\a" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(3, 3, ("\\" : GoString), ("a" : GoString), ("b" : GoString)) : Slice<GoString>), ("\\a\\b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(3, 3, ("\\\\" : GoString), ("a" : GoString), ("b" : GoString)) : Slice<GoString>), ("\\\\a\\b" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(3, 3, ("\\" : GoString), ("\\\\a\\b" : GoString), ("c" : GoString)) : Slice<GoString>), ("\\a\\b\\c" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(3, 3, ("\\\\a" : GoString), ("b" : GoString), ("c" : GoString)) : Slice<GoString>), ("\\\\a\\b\\c" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(3, 3, ("\\\\a\\" : GoString), ("b" : GoString), ("c" : GoString)) : Slice<GoString>), ("\\\\a\\b\\c" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest),
(new stdgo.path.filepath_test.Filepath_test.JoinTest((new Slice<GoString>(2, 2, ("//" : GoString), ("a" : GoString)) : Slice<GoString>), ("\\\\a" : GoString)) : stdgo.path.filepath_test.Filepath_test.JoinTest)) : Slice<stdgo.path.filepath_test.Filepath_test.JoinTest>);
/**
    
    
    
**/
private var _exttests = (new Slice<stdgo.path.filepath_test.Filepath_test.ExtTest>(5, 5, (new stdgo.path.filepath_test.Filepath_test.ExtTest(("path.go" : GoString), (".go" : GoString)) : stdgo.path.filepath_test.Filepath_test.ExtTest), (new stdgo.path.filepath_test.Filepath_test.ExtTest(("path.pb.go" : GoString), (".go" : GoString)) : stdgo.path.filepath_test.Filepath_test.ExtTest), (new stdgo.path.filepath_test.Filepath_test.ExtTest(("a.dir/b" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.ExtTest), (new stdgo.path.filepath_test.Filepath_test.ExtTest(("a.dir/b.go" : GoString), (".go" : GoString)) : stdgo.path.filepath_test.Filepath_test.ExtTest), (new stdgo.path.filepath_test.Filepath_test.ExtTest(("a.dir/" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.ExtTest)) : Slice<stdgo.path.filepath_test.Filepath_test.ExtTest>);
/**
    
    
    
**/
private var _tree = (Go.setRef((new Node(("testdata" : GoString), (new Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>(4, 4, (new stdgo.path.filepath_test.Filepath_test.Node(("a" : GoString), (null : Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : GoInt)) : stdgo.path.filepath_test.Filepath_test.Node), (new stdgo.path.filepath_test.Filepath_test.Node(("b" : GoString), (new Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>(0, 0) : Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : GoInt)) : stdgo.path.filepath_test.Filepath_test.Node), (new stdgo.path.filepath_test.Filepath_test.Node(("c" : GoString), (null : Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : GoInt)) : stdgo.path.filepath_test.Filepath_test.Node), (new stdgo.path.filepath_test.Filepath_test.Node(("d" : GoString), (new Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>(3, 3, (new stdgo.path.filepath_test.Filepath_test.Node(("x" : GoString), (null : Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : GoInt)) : stdgo.path.filepath_test.Filepath_test.Node), (new stdgo.path.filepath_test.Filepath_test.Node(("y" : GoString), (new Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>(0, 0) : Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : GoInt)) : stdgo.path.filepath_test.Filepath_test.Node), (new stdgo.path.filepath_test.Filepath_test.Node(("z" : GoString), (new Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>(2, 2, (new stdgo.path.filepath_test.Filepath_test.Node(("u" : GoString), (null : Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : GoInt)) : stdgo.path.filepath_test.Filepath_test.Node), (new stdgo.path.filepath_test.Filepath_test.Node(("v" : GoString), (null : Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : GoInt)) : stdgo.path.filepath_test.Filepath_test.Node)) : Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : GoInt)) : stdgo.path.filepath_test.Filepath_test.Node)) : Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : GoInt)) : stdgo.path.filepath_test.Filepath_test.Node)) : Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>), (0 : GoInt)) : Node)) : Ref<stdgo.path.filepath_test.Filepath_test.Node>);
/**
    
    
    
**/
private var _basetests = (new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
11,
11,
(new stdgo.path.filepath_test.Filepath_test.PathTest(Go.str(), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("." : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/." : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/" : GoString), ("/" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("////" : GoString), ("/" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("x/" : GoString), ("x" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc" : GoString), ("abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def" : GoString), ("def" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/.x" : GoString), (".x" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/c." : GoString), ("c." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/c.x" : GoString), ("c.x" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
private var _winbasetests = (new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(8, 8, (new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\" : GoString), ("\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("c:." : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\a\\b" : GoString), ("b" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("c:a\\b" : GoString), ("b" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("c:a\\b\\c" : GoString), ("c" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\" : GoString), ("\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\a" : GoString), ("a" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest), (new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\a\\b" : GoString), ("b" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
private var _dirtests = (new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
11,
11,
(new stdgo.path.filepath_test.Filepath_test.PathTest(Go.str(), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("." : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/." : GoString), ("/" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/" : GoString), ("/" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("/foo" : GoString), ("/" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("x/" : GoString), ("x" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc" : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("abc/def" : GoString), ("abc" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/.x" : GoString), ("a/b" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/c." : GoString), ("a/b" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("a/b/c.x" : GoString), ("a/b" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
private var _nonwindirtests = (new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(1, 1, (new stdgo.path.filepath_test.Filepath_test.PathTest(("////" : GoString), ("/" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
private var _windirtests = (new Slice<stdgo.path.filepath_test.Filepath_test.PathTest>(
10,
10,
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\" : GoString), ("c:\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:." : GoString), ("c:." : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:\\a\\b" : GoString), ("c:\\a" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:a\\b" : GoString), ("c:a" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("c:a\\b\\c" : GoString), ("c:a\\b" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share" : GoString), ("\\\\host\\share" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\" : GoString), ("\\\\host\\share\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\a" : GoString), ("\\\\host\\share\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\host\\share\\a\\b" : GoString), ("\\\\host\\share\\a" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest),
(new stdgo.path.filepath_test.Filepath_test.PathTest(("\\\\\\\\" : GoString), ("\\\\\\\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.PathTest)) : Slice<stdgo.path.filepath_test.Filepath_test.PathTest>);
/**
    
    
    
**/
private var _isabstests = (new Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>(8, 8, (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(Go.str(), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("/" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("/usr/bin/gcc" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest((".." : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("/a/../bb" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("." : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("./" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest), (new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("lala" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)) : Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>);
/**
    
    
    
**/
private var _winisabstests = (new Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>(
14,
14,
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("C:\\" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("c\\" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("c::" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("c:" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("/" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("\\" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("\\Windows" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("c:a\\b" : GoString), false) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("c:\\a\\b" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("c:/a/b" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("\\\\host\\share" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("\\\\host\\share\\" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("\\\\host\\share\\foo" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest),
(new stdgo.path.filepath_test.Filepath_test.IsAbsTest(("//host/share/foo/bar" : GoString), true) : stdgo.path.filepath_test.Filepath_test.IsAbsTest)) : Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>);
/**
    
    
    
**/
var evalSymlinksTestDirs = (new Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest>(
17,
17,
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir/link3" : GoString), ("../../" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link1" : GoString), ("../test" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link2" : GoString), ("dir" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/linkabs" : GoString), ("/" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link4" : GoString), ("../test2" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test2" : GoString), ("test/dir" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/pool" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/pool/test" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/current" : GoString), ("../../version" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/v1" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/v1/modules" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/v1/modules/test" : GoString), ("../../../pool/test" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("version" : GoString), ("src/versions/v1" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)) : Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest>);
/**
    
    
    
**/
var evalSymlinksTests = (new Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest>(
12,
12,
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test" : GoString), ("test" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir" : GoString), ("test/dir" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir/../.." : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link1" : GoString), ("test" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link2" : GoString), ("test/dir" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link1/dir" : GoString), ("test/dir" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link2/.." : GoString), ("test" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/dir/link3" : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link2/link3/test" : GoString), ("test" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/linkabs" : GoString), ("/" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("test/link4/.." : GoString), ("test" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest),
(new stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest(("src/versions/current/modules/test" : GoString), ("src/pool/test" : GoString)) : stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest)) : Slice<stdgo.path.filepath_test.Filepath_test.EvalSymlinksTest>);
/**
    // Test directories relative to temporary directory.
    // The tests are run in absTestDirs[0].
    
    
**/
private var _absTestDirs = (new Slice<GoString>(3, 3, ("a" : GoString), ("a/b" : GoString), ("a/b/c" : GoString)) : Slice<GoString>);
/**
    // Test paths relative to temporary directory. $ expands to the directory.
    // The tests are run in absTestDirs[0].
    // We create absTestDirs first.
    
    
**/
private var _absTests = (new Slice<GoString>(
12,
12,
("." : GoString),
("b" : GoString),
("b/" : GoString),
("../a" : GoString),
("../a/b" : GoString),
("../a/b/./c/../../.././a" : GoString),
("../a/b/./c/../../.././a/" : GoString),
("$$" : GoString),
("$$/." : GoString),
("$$/a/../a/b" : GoString),
("$$/a/b/c/../../.././a" : GoString),
("$$/a/b/c/../../.././a/" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _reltests = (new Slice<stdgo.path.filepath_test.Filepath_test.RelTests>(
39,
39,
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b" : GoString), ("a/b" : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/." : GoString), ("a/b" : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b" : GoString), ("a/b/." : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("./a/b" : GoString), ("a/b" : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b" : GoString), ("./a/b" : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("ab/cd" : GoString), ("ab/cde" : GoString), ("../cde" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("ab/cd" : GoString), ("ab/c" : GoString), ("../c" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b" : GoString), ("a/b/c/d" : GoString), ("c/d" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b" : GoString), ("a/b/../c" : GoString), ("../c" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/../c" : GoString), ("a/b" : GoString), ("../b" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/c" : GoString), ("a/c/d" : GoString), ("../../c/d" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b" : GoString), ("c/d" : GoString), ("../../c/d" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/c/d" : GoString), ("a/b" : GoString), ("../.." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/c/d" : GoString), ("a/b/" : GoString), ("../.." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/c/d/" : GoString), ("a/b" : GoString), ("../.." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a/b/c/d/" : GoString), ("a/b/" : GoString), ("../.." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("../../a/b" : GoString), ("../../a/b/c/d" : GoString), ("c/d" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b" : GoString), ("/a/b" : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/." : GoString), ("/a/b" : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b" : GoString), ("/a/b/." : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/ab/cd" : GoString), ("/ab/cde" : GoString), ("../cde" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/ab/cd" : GoString), ("/ab/c" : GoString), ("../c" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b" : GoString), ("/a/b/c/d" : GoString), ("c/d" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b" : GoString), ("/a/b/../c" : GoString), ("../c" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/../c" : GoString), ("/a/b" : GoString), ("../b" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/c" : GoString), ("/a/c/d" : GoString), ("../../c/d" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b" : GoString), ("/c/d" : GoString), ("../../c/d" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/c/d" : GoString), ("/a/b" : GoString), ("../.." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/c/d" : GoString), ("/a/b/" : GoString), ("../.." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/c/d/" : GoString), ("/a/b" : GoString), ("../.." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a/b/c/d/" : GoString), ("/a/b/" : GoString), ("../.." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/../../a/b" : GoString), ("/../../a/b/c/d" : GoString), ("c/d" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("." : GoString), ("a/b" : GoString), ("a/b" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("." : GoString), (".." : GoString), (".." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests((".." : GoString), ("." : GoString), ("err" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests((".." : GoString), ("a" : GoString), ("err" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("../.." : GoString), (".." : GoString), ("err" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("a" : GoString), ("/a" : GoString), ("err" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests),
(new stdgo.path.filepath_test.Filepath_test.RelTests(("/a" : GoString), ("a" : GoString), ("err" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests)) : Slice<stdgo.path.filepath_test.Filepath_test.RelTests>);
/**
    
    
    
**/
private var _winreltests = (new Slice<stdgo.path.filepath_test.Filepath_test.RelTests>(7, 7, (new stdgo.path.filepath_test.Filepath_test.RelTests(("C:a\\b\\c" : GoString), ("C:a/b/d" : GoString), ("..\\d" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests), (new stdgo.path.filepath_test.Filepath_test.RelTests(("C:\\" : GoString), ("D:\\" : GoString), ("err" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests), (new stdgo.path.filepath_test.Filepath_test.RelTests(("C:" : GoString), ("D:" : GoString), ("err" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests), (new stdgo.path.filepath_test.Filepath_test.RelTests(("C:\\Projects" : GoString), ("c:\\projects\\src" : GoString), ("src" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests), (new stdgo.path.filepath_test.Filepath_test.RelTests(("C:\\Projects" : GoString), ("c:\\projects" : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests), (new stdgo.path.filepath_test.Filepath_test.RelTests(("C:\\Projects\\a\\.." : GoString), ("c:\\projects" : GoString), ("." : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests), (new stdgo.path.filepath_test.Filepath_test.RelTests(("\\\\host\\share" : GoString), ("\\\\host\\share\\file.txt" : GoString), ("file.txt" : GoString)) : stdgo.path.filepath_test.Filepath_test.RelTests)) : Slice<stdgo.path.filepath_test.Filepath_test.RelTests>);
/**
    
    
    
**/
private var _volumenametests = (new Slice<stdgo.path.filepath_test.Filepath_test.VolumeNameTest>(
28,
28,
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("c:/foo/bar" : GoString), ("c:" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("c:" : GoString), ("c:" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("2:" : GoString), Go.str()) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(Go.str(), Go.str()) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\\\host" : GoString), ("\\\\\\host" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\\\host\\" : GoString), ("\\\\\\host" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\\\host\\share" : GoString), ("\\\\\\host" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\\\host\\\\share" : GoString), ("\\\\\\host" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host" : GoString), ("\\\\host" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host" : GoString), ("\\\\host" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\" : GoString), ("\\\\host\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host/" : GoString), ("\\\\host\\" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share" : GoString), ("\\\\host\\share" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share" : GoString), ("\\\\host\\share" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share\\" : GoString), ("\\\\host\\share" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share/" : GoString), ("\\\\host\\share" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share\\foo" : GoString), ("\\\\host\\share" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share/foo" : GoString), ("\\\\host\\share" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share\\\\foo\\\\\\bar\\\\\\\\baz" : GoString), ("\\\\host\\share" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share//foo///bar////baz" : GoString), ("\\\\host\\share" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("\\\\host\\share\\foo\\..\\bar" : GoString), ("\\\\host\\share" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//host/share/foo/../bar" : GoString), ("\\\\host\\share" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//./NUL" : GoString), ("\\\\.\\NUL" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//?/NUL" : GoString), ("\\\\?\\NUL" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//./C:" : GoString), ("\\\\.\\C:" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//./C:/a/b/c" : GoString), ("\\\\.\\C:" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//./UNC/host/share/a/b/c" : GoString), ("\\\\.\\UNC\\host\\share" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest),
(new stdgo.path.filepath_test.Filepath_test.VolumeNameTest(("//./UNC/host" : GoString), ("\\\\.\\UNC\\host" : GoString)) : stdgo.path.filepath_test.Filepath_test.VolumeNameTest)) : Slice<stdgo.path.filepath_test.Filepath_test.VolumeNameTest>);
/**
    
    
    
**/
private final _sep = (47 : GoInt32);
/**
    
    
    
**/
private final _lsep = (58 : GoInt32);
/**
    
    
    
**/
@:structInit class MatchTest {
    public var _pattern : GoString = "";
    public var _s : GoString = "";
    public var _match : Bool = false;
    public var _err : Error = (null : Error);
    public function new(?_pattern:GoString, ?_s:GoString, ?_match:Bool, ?_err:Error) {
        if (_pattern != null) this._pattern = _pattern;
        if (_s != null) this._s = _s;
        if (_match != null) this._match = _match;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new MatchTest(_pattern, _s, _match, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.path.filepath_test.Filepath_test.T_globTest_static_extension) class T_globTest {
    public var _pattern : GoString = "";
    public var _matches : Slice<GoString> = (null : Slice<GoString>);
    public function new(?_pattern:GoString, ?_matches:Slice<GoString>) {
        if (_pattern != null) this._pattern = _pattern;
        if (_matches != null) this._matches = _matches;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_globTest(_pattern, _matches);
    }
}
/**
    
    
    
**/
@:structInit class PathTest {
    public var _path : GoString = "";
    public var _result : GoString = "";
    public function new(?_path:GoString, ?_result:GoString) {
        if (_path != null) this._path = _path;
        if (_result != null) this._result = _result;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new PathTest(_path, _result);
    }
}
/**
    
    
    
**/
@:structInit class IsLocalTest {
    public var _path : GoString = "";
    public var _isLocal : Bool = false;
    public function new(?_path:GoString, ?_isLocal:Bool) {
        if (_path != null) this._path = _path;
        if (_isLocal != null) this._isLocal = _isLocal;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new IsLocalTest(_path, _isLocal);
    }
}
/**
    
    
    
**/
@:structInit class SplitListTest {
    public var _list : GoString = "";
    public var _result : Slice<GoString> = (null : Slice<GoString>);
    public function new(?_list:GoString, ?_result:Slice<GoString>) {
        if (_list != null) this._list = _list;
        if (_result != null) this._result = _result;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SplitListTest(_list, _result);
    }
}
/**
    
    
    
**/
@:structInit class SplitTest {
    public var _path : GoString = "";
    public var _dir : GoString = "";
    public var _file : GoString = "";
    public function new(?_path:GoString, ?_dir:GoString, ?_file:GoString) {
        if (_path != null) this._path = _path;
        if (_dir != null) this._dir = _dir;
        if (_file != null) this._file = _file;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SplitTest(_path, _dir, _file);
    }
}
/**
    
    
    
**/
@:structInit class JoinTest {
    public var _elem : Slice<GoString> = (null : Slice<GoString>);
    public var _path : GoString = "";
    public function new(?_elem:Slice<GoString>, ?_path:GoString) {
        if (_elem != null) this._elem = _elem;
        if (_path != null) this._path = _path;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new JoinTest(_elem, _path);
    }
}
/**
    
    
    
**/
@:structInit class ExtTest {
    public var _path : GoString = "";
    public var _ext : GoString = "";
    public function new(?_path:GoString, ?_ext:GoString) {
        if (_path != null) this._path = _path;
        if (_ext != null) this._ext = _ext;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ExtTest(_path, _ext);
    }
}
/**
    
    
    
**/
@:structInit class Node {
    public var _name : GoString = "";
    public var _entries : Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>> = (null : Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>);
    public var _mark : GoInt = 0;
    public function new(?_name:GoString, ?_entries:Slice<Ref<stdgo.path.filepath_test.Filepath_test.Node>>, ?_mark:GoInt) {
        if (_name != null) this._name = _name;
        if (_entries != null) this._entries = _entries;
        if (_mark != null) this._mark = _mark;
    }
    public function __underlying__() return Go.toInterface(this);
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
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}
/**
    
    
    
**/
@:structInit class IsAbsTest {
    public var _path : GoString = "";
    public var _isAbs : Bool = false;
    public function new(?_path:GoString, ?_isAbs:Bool) {
        if (_path != null) this._path = _path;
        if (_isAbs != null) this._isAbs = _isAbs;
    }
    public function __underlying__() return Go.toInterface(this);
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
    public var _path : GoString = "";
    public var _dest : GoString = "";
    public function new(?_path:GoString, ?_dest:GoString) {
        if (_path != null) this._path = _path;
        if (_dest != null) this._dest = _dest;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new EvalSymlinksTest(_path, _dest);
    }
}
/**
    
    
    
**/
@:structInit class RelTests {
    public var _root : GoString = "";
    public var _path : GoString = "";
    public var _want : GoString = "";
    public function new(?_root:GoString, ?_path:GoString, ?_want:GoString) {
        if (_root != null) this._root = _root;
        if (_path != null) this._path = _path;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new RelTests(_root, _path, _want);
    }
}
/**
    
    
    
**/
@:structInit class VolumeNameTest {
    public var _path : GoString = "";
    public var _vol : GoString = "";
    public function new(?_path:GoString, ?_vol:GoString) {
        if (_path != null) this._path = _path;
        if (_vol != null) this._vol = _vol;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new VolumeNameTest(_path, _vol);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath_test.Filepath_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.path.filepath_test.Filepath_test.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _pattern : GoString;
    public var _result : GoString;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath_test.Filepath_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.path.filepath_test.Filepath_test.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var _path : GoString;
    public var _dest : GoString;
    public var _brokenLink : Bool;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath_test.Filepath_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.path.filepath_test.Filepath_test.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _path : GoString;
    public var _want : GoString;
};
function exampleExt():Void {
        stdgo.fmt.Fmt.printf(("No dots: %q\n" : GoString), Go.toInterface(stdgo.path.filepath.Filepath.ext(("index" : GoString))));
        stdgo.fmt.Fmt.printf(("One dot: %q\n" : GoString), Go.toInterface(stdgo.path.filepath.Filepath.ext(("index.js" : GoString))));
        stdgo.fmt.Fmt.printf(("Two dots: %q\n" : GoString), Go.toInterface(stdgo.path.filepath.Filepath.ext(("main.test.js" : GoString))));
    }
function exampleSplitList():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(("On Unix:" : GoString)), Go.toInterface(stdgo.path.filepath.Filepath.splitList(("/a/b/c:/usr/bin" : GoString))));
    }
function exampleRel():Void {
        var _paths = (new Slice<GoString>(3, 3, ("/a/b/c" : GoString), ("/b/c" : GoString), ("./b/c" : GoString)) : Slice<GoString>);
        var _base:GoString = ("/a" : GoString);
        stdgo.fmt.Fmt.println(Go.toInterface(("On Unix:" : GoString)));
        for (__0 => _p in _paths) {
            var __tmp__ = stdgo.path.filepath.Filepath.rel(_base, _p), _rel:GoString = __tmp__._0, _err:Error = __tmp__._1;
            stdgo.fmt.Fmt.printf(("%q: %q %v\n" : GoString), Go.toInterface(_p), Go.toInterface(_rel), Go.toInterface(_err));
        };
    }
function exampleSplit():Void {
        var _paths = (new Slice<GoString>(4, 4, ("/home/arnie/amelia.jpg" : GoString), ("/mnt/photos/" : GoString), ("rabbit.jpg" : GoString), ("/usr/local//go" : GoString)) : Slice<GoString>);
        stdgo.fmt.Fmt.println(Go.toInterface(("On Unix:" : GoString)));
        for (__0 => _p in _paths) {
            var __tmp__ = stdgo.path.filepath.Filepath.split(_p), _dir:GoString = __tmp__._0, _file:GoString = __tmp__._1;
            stdgo.fmt.Fmt.printf(("input: %q\n\tdir: %q\n\tfile: %q\n" : GoString), Go.toInterface(_p), Go.toInterface(_dir), Go.toInterface(_file));
        };
    }
function exampleJoin():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(("On Unix:" : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.join(("a" : GoString), ("b" : GoString), ("c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.join(("a" : GoString), ("b/c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.join(("a/b" : GoString), ("c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.join(("a/b" : GoString), ("/c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.join(("a/b" : GoString), ("../../../xyz" : GoString))));
    }
function exampleMatch():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(("On Unix:" : GoString)));
        {
            var __tmp__ = stdgo.path.filepath.Filepath.match(("/home/catch/*" : GoString), ("/home/catch/foo" : GoString));
            stdgo.fmt.Fmt.println(Go.toInterface((__tmp__._0 : Bool)), Go.toInterface((__tmp__._1 : Error)));
        };
        {
            var __tmp__ = stdgo.path.filepath.Filepath.match(("/home/catch/*" : GoString), ("/home/catch/foo/bar" : GoString));
            stdgo.fmt.Fmt.println(Go.toInterface((__tmp__._0 : Bool)), Go.toInterface((__tmp__._1 : Error)));
        };
        {
            var __tmp__ = stdgo.path.filepath.Filepath.match(("/home/?opher" : GoString), ("/home/gopher" : GoString));
            stdgo.fmt.Fmt.println(Go.toInterface((__tmp__._0 : Bool)), Go.toInterface((__tmp__._1 : Error)));
        };
        {
            var __tmp__ = stdgo.path.filepath.Filepath.match(("/home/\\*" : GoString), ("/home/*" : GoString));
            stdgo.fmt.Fmt.println(Go.toInterface((__tmp__._0 : Bool)), Go.toInterface((__tmp__._1 : Error)));
        };
    }
function exampleBase():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(("On Unix:" : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.base(("/foo/bar/baz.js" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.base(("/foo/bar/baz" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.base(("/foo/bar/baz/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.base(("dev.txt" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.base(("../todo.txt" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.base((".." : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.base(("." : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.base(("/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.base(Go.str())));
    }
function exampleDir():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(("On Unix:" : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.dir(("/foo/bar/baz.js" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.dir(("/foo/bar/baz" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.dir(("/foo/bar/baz/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.dir(("/dirty//path///" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.dir(("dev.txt" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.dir(("../todo.txt" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.dir((".." : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.dir(("." : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.dir(("/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.dir(Go.str())));
    }
function exampleIsAbs():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(("On Unix:" : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.isAbs(("/home/gopher" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.isAbs((".bashrc" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.isAbs((".." : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.isAbs(("." : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.isAbs(("/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.filepath.Filepath.isAbs(Go.str())));
    }
private function _prepareTestDirTree(_tree:GoString):{ var _0 : GoString; var _1 : Error; } {
        var __tmp__ = stdgo.os.Os.mkdirTemp(Go.str(), Go.str()), _tmpDir:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : Go.str(), _1 : stdgo.fmt.Fmt.errorf(("error creating temp directory: %v\n" : GoString), Go.toInterface(_err)) };
        };
        _err = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_tmpDir, _tree), (493u32 : stdgo.io.fs.Fs.FileMode));
        if (_err != null) {
            stdgo.os.Os.removeAll(_tmpDir);
            return { _0 : Go.str(), _1 : _err };
        };
        return { _0 : _tmpDir, _1 : (null : Error) };
    }
function exampleWalk():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = _prepareTestDirTree(("dir/to/walk/skip" : GoString)), _tmpDir:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                stdgo.fmt.Fmt.printf(("unable to create test dir tree: %v\n" : GoString), Go.toInterface(_err));
                return;
            };
            {
                var _a0 = _tmpDir;
                __deferstack__.unshift(() -> stdgo.os.Os.removeAll(_a0));
            };
            stdgo.os.Os.chdir(_tmpDir);
            var _subDirToSkip:GoString = ("skip" : GoString);
            stdgo.fmt.Fmt.println(Go.toInterface(("On Unix:" : GoString)));
            _err = stdgo.path.filepath.Filepath.walk(("." : GoString), function(_path:GoString, _info:stdgo.io.fs.Fs.FileInfo, _err:Error):Error {
                if (_err != null) {
                    stdgo.fmt.Fmt.printf(("prevent panic by handling failure accessing a path %q: %v\n" : GoString), Go.toInterface(_path), Go.toInterface(_err));
                    return _err;
                };
                if (_info.isDir() && (_info.name() == _subDirToSkip)) {
                    stdgo.fmt.Fmt.printf(("skipping a dir without errors: %+v \n" : GoString), Go.toInterface(_info.name()));
                    return stdgo.path.filepath.Filepath.skipDir;
                };
                stdgo.fmt.Fmt.printf(("visited file or dir: %q\n" : GoString), Go.toInterface(_path));
                return (null : Error);
            });
            if (_err != null) {
                stdgo.fmt.Fmt.printf(("error walking the path %q: %v\n" : GoString), Go.toInterface(_tmpDir), Go.toInterface(_err));
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
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
private function _errp(_e:Error):GoString {
        if (_e == null) {
            return ("<nil>" : GoString);
        };
        return _e.error();
    }
function testMatch(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _matchTests) {
            var _pattern:GoString = _tt._pattern;
            var _s:GoString = _tt._s;
            if (false) {
                if (stdgo.strings.Strings.contains(_pattern, ("\\" : GoString))) {
                    continue;
                };
                _pattern = clean(_pattern);
                _s = clean(_s);
            };
            var __tmp__ = match(_pattern, _s), _ok:Bool = __tmp__._0, _err:Error = __tmp__._1;
            if ((_ok != _tt._match) || (Go.toInterface(_err) != Go.toInterface(_tt._err))) {
                _t.errorf(("Match(%#q, %#q) = %v, %q want %v, %q" : GoString), Go.toInterface(_pattern), Go.toInterface(_s), Go.toInterface(_ok), Go.toInterface(_errp(_err)), Go.toInterface(_tt._match), Go.toInterface(_errp(_tt._err)));
            };
        };
    }
/**
    // contains reports whether vector contains the string s.
**/
private function _contains(_vector:Slice<GoString>, _s:GoString):Bool {
        for (__0 => _elem in _vector) {
            if (_elem == (_s)) {
                return true;
            };
        };
        return false;
    }
function testGlob(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _globTests) {
            var _pattern:GoString = _tt._pattern;
            var _result:GoString = _tt._result;
            if (false) {
                _pattern = clean(_pattern);
                _result = clean(_result);
            };
            var __tmp__ = glob(_pattern), _matches:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : GoString), Go.toInterface(_pattern), Go.toInterface(_err));
                continue;
            };
            if (!_contains(_matches, _result)) {
                _t.errorf(("Glob(%#q) = %#v want %v" : GoString), Go.toInterface(_pattern), Go.toInterface(_matches), Go.toInterface(_result));
            };
        };
        for (__1 => _pattern in (new Slice<GoString>(2, 2, ("no_match" : GoString), ("../*/no_match" : GoString)) : Slice<GoString>)) {
            var __tmp__ = glob(_pattern), _matches:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Glob error for %q: %s" : GoString), Go.toInterface(_pattern), Go.toInterface(_err));
                continue;
            };
            if ((_matches.length) != ((0 : GoInt))) {
                _t.errorf(("Glob(%#q) = %#v want []" : GoString), Go.toInterface(_pattern), Go.toInterface(_matches));
            };
        };
    }
function testCVE202230632(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __tmp__ = glob(("/*" : GoString) + stdgo.strings.Strings.repeat(("/" : GoString), (10001 : GoInt))), __0:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
        if (Go.toInterface(_err) != (Go.toInterface(errBadPattern))) {
            _t.fatalf(("Glob returned err=%v, want ErrBadPattern" : GoString), Go.toInterface(_err));
        };
    }
function testGlobError(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _bad = (new Slice<GoString>(2, 2, ("[]" : GoString), ("nonexist/[]" : GoString)) : Slice<GoString>);
        for (__0 => _pattern in _bad) {
            {
                var __tmp__ = glob(_pattern), __1:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
                if (Go.toInterface(_err) != (Go.toInterface(errBadPattern))) {
                    _t.errorf(("Glob(%#q) returned err=%v, want ErrBadPattern" : GoString), Go.toInterface(_pattern), Go.toInterface(_err));
                };
            };
        };
    }
function testGlobUNC(_t:Ref<stdgo.testing.Testing.T>):Void {
        glob(("\\\\?\\C:\\*" : GoString));
    }
function testGlobSymlink(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
        var _tmpDir:GoString = _t.tempDir();
        for (__0 => _tt in _globSymlinkTests) {
            var _path:GoString = join(_tmpDir, _tt._path);
            var _dest:GoString = join(_tmpDir, _tt._dest);
            var __tmp__ = stdgo.os.Os.create(_path), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            {
                var _err:Error = _f.close();
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
            var __tmp__ = glob(_dest), _matches:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("GlobSymlink error for %q: %s" : GoString), Go.toInterface(_dest), Go.toInterface(_err));
            };
            if (!_contains(_matches, _dest)) {
                _t.errorf(("Glob(%#q) = %#v want %v" : GoString), Go.toInterface(_dest), Go.toInterface(_matches), Go.toInterface(_dest));
            };
        };
    }
function testWindowsGlob(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                _t.skipf(("skipping windows specific test" : GoString));
            };
            var _tmpDir:GoString = _tempDirCanonical(_t);
            if ((_tmpDir.length) < (3 : GoInt)) {
                _t.fatalf(("tmpDir path %q is too short" : GoString), Go.toInterface(_tmpDir));
            };
            if (_tmpDir[(1 : GoInt)] != ((58 : GoUInt8))) {
                _t.fatalf(("tmpDir path %q must have drive letter in it" : GoString), Go.toInterface(_tmpDir));
            };
            var _dirs = (new Slice<GoString>(3, 3, ("a" : GoString), ("b" : GoString), ("dir/d/bin" : GoString)) : Slice<GoString>);
            var _files = (new Slice<GoString>(1, 1, ("dir/d/bin/git.exe" : GoString)) : Slice<GoString>);
            for (__0 => _dir in _dirs) {
                var _err:Error = stdgo.os.Os.mkdirAll(join(_tmpDir, _dir), (511u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            for (__1 => _file in _files) {
                var _err:Error = stdgo.os.Os.writeFile(join(_tmpDir, _file), (null : Slice<GoUInt8>), (438u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            var _tests = (new Slice<stdgo.path.filepath_test.Filepath_test.T_globTest>(
10,
10,
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("a" : GoString), (new Slice<GoString>(1, 1, ("a" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("b" : GoString), (new Slice<GoString>(1, 1, ("b" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("c" : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("*" : GoString), (new Slice<GoString>(3, 3, ("a" : GoString), ("b" : GoString), ("dir" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("d*" : GoString), (new Slice<GoString>(1, 1, ("dir" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("*i*" : GoString), (new Slice<GoString>(1, 1, ("dir" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("*r" : GoString), (new Slice<GoString>(1, 1, ("dir" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("?ir" : GoString), (new Slice<GoString>(1, 1, ("dir" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("?r" : GoString), (new Slice<GoString>(0, 0) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest),
(new stdgo.path.filepath_test.Filepath_test.T_globTest(("d*/*/bin/git.exe" : GoString), (new Slice<GoString>(1, 1, ("dir/d/bin/git.exe" : GoString)) : Slice<GoString>)) : stdgo.path.filepath_test.Filepath_test.T_globTest)) : Slice<stdgo.path.filepath_test.Filepath_test.T_globTest>);
            for (__2 => _test in _tests) {
                var _p:GoString = ("" : GoString);
                {
                    var _err:Error = _test._globAbs(_tmpDir, _tmpDir);
                    if (_err != null) {
                        _t.error(Go.toInterface(_err));
                    };
                };
                _p = _tmpDir;
                _p = stdgo.strings.Strings.replace(_p, (":\\" : GoString), (":\\*" : GoString), (1 : GoInt));
                {
                    var _err:Error = _test._globAbs(_tmpDir, _p);
                    if (_err != null) {
                        _t.error(Go.toInterface(_err));
                    };
                };
                _p = _tmpDir;
                _p = stdgo.strings.Strings.replace(_p, (":\\" : GoString), (":" : GoString), (1 : GoInt));
                _p = stdgo.strings.Strings.replace(_p, ("\\" : GoString), ("*\\" : GoString), (1 : GoInt));
                _p = stdgo.strings.Strings.replace(_p, (":" : GoString), (":\\" : GoString), (1 : GoInt));
                {
                    var _err:Error = _test._globAbs(_tmpDir, _p);
                    if (_err != null) {
                        _t.error(Go.toInterface(_err));
                    };
                };
            };
            var __tmp__ = stdgo.os.Os.getwd(), _wd:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            _err = stdgo.os.Os.chdir(_tmpDir);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:Error = stdgo.os.Os.chdir(_wd);
                    if (_err != null) {
                        _t.fatal(Go.toInterface(_err));
                    };
                };
                a();
            });
            for (__3 => _test in _tests) {
                var _err:Error = _test._globRel(Go.str());
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                };
                _err = _test._globRel((".\\" : GoString));
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                };
                _err = _test._globRel((_tmpDir.__slice__(0, (2 : GoInt)) : GoString));
                if (_err != null) {
                    _t.error(Go.toInterface(_err));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testNonWindowsGlobEscape(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (false) {
            _t.skipf(("skipping non-windows specific test" : GoString));
        };
        var _pattern:GoString = ("\\match.go" : GoString);
        var _want = (new Slice<GoString>(1, 1, ("match.go" : GoString)) : Slice<GoString>);
        var __tmp__ = glob(_pattern), _matches:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Glob error for %q: %s" : GoString), Go.toInterface(_pattern), Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_matches), Go.toInterface(_want))) {
            _t.fatalf(("Glob(%#q) = %v want %v" : GoString), Go.toInterface(_pattern), Go.toInterface(_matches), Go.toInterface(_want));
        };
    }
function testClean(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = _cleantests;
        if (false) {
            for (_i in 0 ... _tests.length.toBasic()) {
                _tests[(_i : GoInt)]._result = stdgo.path.filepath.Filepath.fromSlash(_tests[(_i : GoInt)]._result);
            };
            _tests = (_tests.__append__(..._wincleantests.__toArray__()));
        } else {
            _tests = (_tests.__append__(..._nonwincleantests.__toArray__()));
        };
        for (__0 => _test in _tests) {
            {
                var _s:GoString = stdgo.path.filepath.Filepath.clean(_test._path);
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : GoString), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
            {
                var _s:GoString = stdgo.path.filepath.Filepath.clean(_test._result);
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : GoString), Go.toInterface(_test._result), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
        };
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(("skipping malloc count in short mode" : GoString)));
        };
        if (stdgo.runtime.Runtime.gomaxprocs((0 : GoInt)) > (1 : GoInt)) {
            _t.log(Go.toInterface(("skipping AllocsPerRun checks; GOMAXPROCS>1" : GoString)));
            return;
        };
        for (__1 => _test in _tests) {
            var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), function():Void {
                stdgo.path.filepath.Filepath.clean(_test._result);
            });
            if (_allocs > (0 : GoFloat64)) {
                _t.errorf(("Clean(%q): %v allocs, want zero" : GoString), Go.toInterface(_test._result), Go.toInterface(_allocs));
            };
        };
    }
function testIsLocal(_t:Ref<stdgo.testing.Testing.T>):Void {
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
                    _t.errorf(("IsLocal(%q) = %v, want %v" : GoString), Go.toInterface(_test._path), Go.toInterface(_got), Go.toInterface(_test._isLocal));
                };
            };
        };
    }
function testFromAndToSlash(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _slashtests) {
            {
                var _s:GoString = stdgo.path.filepath.Filepath.fromSlash(_test._path);
                if (_s != (_test._result)) {
                    _t.errorf(("FromSlash(%q) = %q, want %q" : GoString), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
            {
                var _s:GoString = stdgo.path.filepath.Filepath.toSlash(_test._result);
                if (_s != (_test._path)) {
                    _t.errorf(("ToSlash(%q) = %q, want %q" : GoString), Go.toInterface(_test._result), Go.toInterface(_s), Go.toInterface(_test._path));
                };
            };
        };
    }
function testSplitList(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = _splitlisttests;
        if (false) {
            _tests = (_tests.__append__(..._winsplitlisttests.__toArray__()));
        };
        for (__0 => _test in _tests) {
            {
                var _l = stdgo.path.filepath.Filepath.splitList(_test._list);
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_l), Go.toInterface(_test._result))) {
                    _t.errorf(("SplitList(%#q) = %#q, want %#q" : GoString), Go.toInterface(_test._list), Go.toInterface(_l), Go.toInterface(_test._result));
                };
            };
        };
    }
function testSplit(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _splittests:Slice<SplitTest> = (null : Slice<stdgo.path.filepath_test.Filepath_test.SplitTest>);
        _splittests = _unixsplittests;
        if (false) {
            _splittests = (_splittests.__append__(..._winsplittests.__toArray__()));
        };
        for (__0 => _test in _splittests) {
            {
                var __tmp__ = stdgo.path.filepath.Filepath.split(_test._path), _d:GoString = __tmp__._0, _f:GoString = __tmp__._1;
                if ((_d != _test._dir) || (_f != _test._file)) {
                    _t.errorf(("Split(%q) = %q, %q, want %q, %q" : GoString), Go.toInterface(_test._path), Go.toInterface(_d), Go.toInterface(_f), Go.toInterface(_test._dir), Go.toInterface(_test._file));
                };
            };
        };
    }
function testJoin(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (false) {
            _jointests = (_jointests.__append__(..._winjointests.__toArray__()));
        } else {
            _jointests = (_jointests.__append__(..._nonwinjointests.__toArray__()));
        };
        for (__0 => _test in _jointests) {
            var _expected:GoString = stdgo.path.filepath.Filepath.fromSlash(_test._path);
            {
                var _p:GoString = stdgo.path.filepath.Filepath.join(..._test._elem.__toArray__());
                if (_p != (_expected)) {
                    _t.errorf(("join(%q) = %q, want %q" : GoString), Go.toInterface(_test._elem), Go.toInterface(_p), Go.toInterface(_expected));
                };
            };
        };
    }
function testExt(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _exttests) {
            {
                var _x:GoString = stdgo.path.filepath.Filepath.ext(_test._path);
                if (_x != (_test._ext)) {
                    _t.errorf(("Ext(%q) = %q, want %q" : GoString), Go.toInterface(_test._path), Go.toInterface(_x), Go.toInterface(_test._ext));
                };
            };
        };
    }
private function _walkTree(_n:Ref<Node>, _path:GoString, _f:(_path:GoString, _n:Ref<Node>) -> Void):Void {
        _f(_path, _n);
        for (__0 => _e in _n._entries) {
            _walkTree(_e, stdgo.path.filepath.Filepath.join(_path, _e._name), _f);
        };
    }
private function _makeTree(_t:Ref<stdgo.testing.Testing.T>):Void {
        _walkTree(_tree, _tree._name, function(_path:GoString, _n:Ref<Node>):Void {
            if (_n._entries == null) {
                var __tmp__ = stdgo.os.Os.create(_path), _fd:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("makeTree: %v" : GoString), Go.toInterface(_err));
                    return;
                };
                _fd.close();
            } else {
                stdgo.os.Os.mkdir(_path, (504u32 : stdgo.io.fs.Fs.FileMode));
            };
        });
    }
private function _markTree(_n:Ref<Node>):Void {
        _walkTree(_n, Go.str(), function(_path:GoString, _n:Ref<Node>):Void {
            _n._mark++;
        });
    }
private function _checkMarks(_t:Ref<stdgo.testing.Testing.T>, _report:Bool):Void {
        _walkTree(_tree, _tree._name, function(_path:GoString, _n:Ref<Node>):Void {
            if ((_n._mark != (1 : GoInt)) && _report) {
                _t.errorf(("node %s mark = %d; expected 1" : GoString), Go.toInterface(_path), Go.toInterface(_n._mark));
            };
            _n._mark = (0 : GoInt);
        });
    }
/**
    // Assumes that each node name is unique. Good enough for a test.
    // If clear is true, any incoming error is cleared before return. The errors
    // are always accumulated, though.
**/
private function _mark(_d:stdgo.io.fs.Fs.DirEntry, _err:Error, _errors:Ref<Slice<Error>>, _clear:Bool):Error {
        var _name:GoString = _d.name();
        _walkTree(_tree, _tree._name, function(_path:GoString, _n:Ref<Node>):Void {
            if (_n._name == (_name)) {
                _n._mark++;
            };
        });
        if (_err != null) {
            _errors.__setData__(((_errors : Slice<Error>).__append__(_err)));
            if (_clear) {
                return (null : Error);
            };
            return _err;
        };
        return (null : Error);
    }
/**
    // chdir changes the current working directory to the named directory,
    // and then restore the original working directory at the end of the test.
**/
private function _chdir(_t:Ref<stdgo.testing.Testing.T>, _dir:GoString):Void {
        var __tmp__ = stdgo.os.Os.getwd(), _olddir:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("getwd %s: %v" : GoString), Go.toInterface(_dir), Go.toInterface(_err));
        };
        {
            var _err:Error = stdgo.os.Os.chdir(_dir);
            if (_err != null) {
                _t.fatalf(("chdir %s: %v" : GoString), Go.toInterface(_dir), Go.toInterface(_err));
            };
        };
        _t.cleanup(function():Void {
            {
                var _err:Error = stdgo.os.Os.chdir(_olddir);
                if (_err != null) {
                    _t.errorf(("restore original working directory %s: %v" : GoString), Go.toInterface(_olddir), Go.toInterface(_err));
                    Sys.exit((1 : GoInt));
                };
            };
        });
    }
private function _chtmpdir(_t:Ref<stdgo.testing.Testing.T>):() -> Void {
        var _restore:() -> Void = null;
        var __tmp__ = stdgo.os.Os.getwd(), _oldwd:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("chtmpdir: %v" : GoString), Go.toInterface(_err));
        };
        var __tmp__ = stdgo.os.Os.mkdirTemp(Go.str(), ("test" : GoString)), _d:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("chtmpdir: %v" : GoString), Go.toInterface(_err));
        };
        {
            var _err:Error = stdgo.os.Os.chdir(_d);
            if (_err != null) {
                _t.fatalf(("chtmpdir: %v" : GoString), Go.toInterface(_err));
            };
        };
        return function():Void {
            {
                var _err:Error = stdgo.os.Os.chdir(_oldwd);
                if (_err != null) {
                    _t.fatalf(("chtmpdir: %v" : GoString), Go.toInterface(_err));
                };
            };
            stdgo.os.Os.removeAll(_d);
        };
    }
/**
    // tempDirCanonical returns a temporary directory for the test to use, ensuring
    // that the returned path does not contain symlinks.
**/
private function _tempDirCanonical(_t:Ref<stdgo.testing.Testing.T>):GoString {
        var _dir:GoString = _t.tempDir();
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_dir), _cdir:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("tempDirCanonical: %v" : GoString), Go.toInterface(_err));
        };
        return _cdir;
    }
function testWalk(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _walk:(GoString, stdgo.io.fs.Fs.WalkDirFunc) -> Error = function(_root:GoString, _fn:stdgo.io.fs.Fs.WalkDirFunc):Error {
            return stdgo.path.filepath.Filepath.walk(_root, function(_path:GoString, _info:stdgo.io.fs.Fs.FileInfo, _err:Error):Error {
                return _fn(_path, Go.asInterface((Go.setRef((new T_statDirEntry(_info) : T_statDirEntry)) : Ref<stdgo.path.filepath_test.Filepath_test.T_statDirEntry>)), _err);
            });
        };
        _testWalk(_t, _walk, (1 : GoInt));
    }
function testWalkDir(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testWalk(_t, stdgo.path.filepath.Filepath.walkDir, (2 : GoInt));
    }
private function _testWalk(_t:Ref<stdgo.testing.Testing.T>, _walk:(GoString, stdgo.io.fs.Fs.WalkDirFunc) -> Error, _errVisit:GoInt):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                var _restore:() -> Void = _chtmpdir(_t);
                __deferstack__.unshift(() -> _restore());
            };
            var _tmpDir:GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _origDir:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(("finding working dir:" : GoString)), Go.toInterface(_err));
            };
            {
                _err = stdgo.os.Os.chdir(_tmpDir);
                if (_err != null) {
                    _t.fatal(Go.toInterface(("entering temp dir:" : GoString)), Go.toInterface(_err));
                };
            };
            {
                var _a0 = _origDir;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            _makeTree(_t);
            var _errors = new Slice<Error>((0 : GoInt).toBasic(), (10 : GoInt));
            var _clear:Bool = true;
            var _markFn:(GoString, stdgo.io.fs.Fs.DirEntry, Error) -> Error = function(_path:GoString, _d:stdgo.io.fs.Fs.DirEntry, _err:Error):Error {
                return _mark(_d, _err, (Go.setRef(_errors) : Ref<Slice<Error>>), _clear);
            };
            _err = _walk(_tree._name, _markFn);
            if (_err != null) {
                _t.fatalf(("no error expected, found: %s" : GoString), Go.toInterface(_err));
            };
            if ((_errors.length) != ((0 : GoInt))) {
                _t.fatalf(("unexpected errors: %s" : GoString), Go.toInterface(_errors));
            };
            _checkMarks(_t, true);
            _errors = (_errors.__slice__((0 : GoInt), (0 : GoInt)) : Slice<Error>);
            _t.run(("PermErr" : GoString), function(_t:Ref<stdgo.testing.Testing.T>):Void {
                if (false) {
                    _t.skip(Go.toInterface(("skipping on Windows" : GoString)));
                };
                if (stdgo.os.Os.getuid() == ((0 : GoInt))) {
                    _t.skip(Go.toInterface(("skipping as root" : GoString)));
                };
                if (stdgo.testing.Testing.short()) {
                    _t.skip(Go.toInterface(("skipping in short mode" : GoString)));
                };
                stdgo.os.Os.chmod(stdgo.path.filepath.Filepath.join(_tree._name, _tree._entries[(1 : GoInt)]._name), (0u32 : stdgo.io.fs.Fs.FileMode));
                stdgo.os.Os.chmod(stdgo.path.filepath.Filepath.join(_tree._name, _tree._entries[(3 : GoInt)]._name), (0u32 : stdgo.io.fs.Fs.FileMode));
                _markTree(_tree._entries[(1 : GoInt)]);
                _markTree(_tree._entries[(3 : GoInt)]);
                _tree._entries[(1 : GoInt)]._mark = _tree._entries[(1 : GoInt)]._mark - (_errVisit);
                _tree._entries[(3 : GoInt)]._mark = _tree._entries[(3 : GoInt)]._mark - (_errVisit);
                var _err:Error = _walk(_tree._name, _markFn);
                if (_err != null) {
                    _t.fatalf(("expected no error return from Walk, got %s" : GoString), Go.toInterface(_err));
                };
                if ((_errors.length) != ((2 : GoInt))) {
                    _t.errorf(("expected 2 errors, got %d: %s" : GoString), Go.toInterface((_errors.length)), Go.toInterface(_errors));
                };
                _checkMarks(_t, true);
                _errors = (_errors.__slice__((0 : GoInt), (0 : GoInt)) : Slice<Error>);
                _markTree(_tree._entries[(1 : GoInt)]);
                _markTree(_tree._entries[(3 : GoInt)]);
                _tree._entries[(1 : GoInt)]._mark = _tree._entries[(1 : GoInt)]._mark - (_errVisit);
                _tree._entries[(3 : GoInt)]._mark = _tree._entries[(3 : GoInt)]._mark - (_errVisit);
                _clear = false;
                _err = _walk(_tree._name, _markFn);
                if (_err == null) {
                    _t.fatalf(("expected error return from Walk" : GoString));
                };
                if ((_errors.length) != ((1 : GoInt))) {
                    _t.errorf(("expected 1 error, got %d: %s" : GoString), Go.toInterface((_errors.length)), Go.toInterface(_errors));
                };
                _checkMarks(_t, false);
                _errors = (_errors.__slice__((0 : GoInt), (0 : GoInt)) : Slice<Error>);
                stdgo.os.Os.chmod(stdgo.path.filepath.Filepath.join(_tree._name, _tree._entries[(1 : GoInt)]._name), (504u32 : stdgo.io.fs.Fs.FileMode));
                stdgo.os.Os.chmod(stdgo.path.filepath.Filepath.join(_tree._name, _tree._entries[(3 : GoInt)]._name), (504u32 : stdgo.io.fs.Fs.FileMode));
            });
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
private function _touch(_t:Ref<stdgo.testing.Testing.T>, _name:GoString):Void {
        var __tmp__ = stdgo.os.Os.create(_name), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var _err:Error = _f.close();
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
    }
function testWalkSkipDirOnFile(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _td:GoString = _t.tempDir();
        {
            var _err:Error = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_td, ("dir" : GoString)), (493u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir/foo1" : GoString)));
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir/foo2" : GoString)));
        var _sawFoo2:Bool = false;
        var _walker:GoString -> Error = function(_path:GoString):Error {
            if (stdgo.strings.Strings.hasSuffix(_path, ("foo2" : GoString))) {
                _sawFoo2 = true;
            };
            if (stdgo.strings.Strings.hasSuffix(_path, ("foo1" : GoString))) {
                return stdgo.path.filepath.Filepath.skipDir;
            };
            return (null : Error);
        };
        var _walkFn:(GoString, stdgo.io.fs.Fs.FileInfo, Error) -> Error = function(_path:GoString, __0:stdgo.io.fs.Fs.FileInfo, __1:Error):Error {
            return _walker(_path);
        };
        var _walkDirFn:(GoString, stdgo.io.fs.Fs.DirEntry, Error) -> Error = function(_path:GoString, __0:stdgo.io.fs.Fs.DirEntry, __1:Error):Error {
            return _walker(_path);
        };
        var _check = function(_t:Ref<stdgo.testing.Testing.T>, _walk:(_root:GoString) -> Error, _root:GoString):Void {
            _t.helper();
            _sawFoo2 = false;
            var _err:Error = _walk(_root);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_sawFoo2) {
                _t.errorf(("SkipDir on file foo1 did not block processing of foo2" : GoString));
            };
        };
        _t.run(("Walk" : GoString), function(_t:Ref<stdgo.testing.Testing.T>):Void {
            var walk:GoString -> Error = function(_root:GoString):Error {
                return stdgo.path.filepath.Filepath.walk(_td, _walkFn);
            };
            _check(_t, walk, _td);
            _check(_t, walk, stdgo.path.filepath.Filepath.join(_td, ("dir" : GoString)));
        });
        _t.run(("WalkDir" : GoString), function(_t:Ref<stdgo.testing.Testing.T>):Void {
            var walkDir:GoString -> Error = function(_root:GoString):Error {
                return stdgo.path.filepath.Filepath.walkDir(_td, _walkDirFn);
            };
            _check(_t, walkDir, _td);
            _check(_t, walkDir, stdgo.path.filepath.Filepath.join(_td, ("dir" : GoString)));
        });
    }
function testWalkSkipAllOnFile(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _td:GoString = _t.tempDir();
        {
            var _err:Error = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_td, ("dir" : GoString), ("subdir" : GoString)), (493u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:Error = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_td, ("dir2" : GoString)), (493u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir" : GoString), ("foo1" : GoString)));
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir" : GoString), ("foo2" : GoString)));
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir" : GoString), ("subdir" : GoString), ("foo3" : GoString)));
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir" : GoString), ("foo4" : GoString)));
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("dir2" : GoString), ("bar" : GoString)));
        _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("last" : GoString)));
        var _remainingWereSkipped:Bool = true;
        var _walker:GoString -> Error = function(_path:GoString):Error {
            if (stdgo.strings.Strings.hasSuffix(_path, ("foo2" : GoString))) {
                return stdgo.path.filepath.Filepath.skipAll;
            };
            if (((stdgo.strings.Strings.hasSuffix(_path, ("foo3" : GoString)) || stdgo.strings.Strings.hasSuffix(_path, ("foo4" : GoString))) || stdgo.strings.Strings.hasSuffix(_path, ("bar" : GoString))) || stdgo.strings.Strings.hasSuffix(_path, ("last" : GoString))) {
                _remainingWereSkipped = false;
            };
            return (null : Error);
        };
        var _walkFn:(GoString, stdgo.io.fs.Fs.FileInfo, Error) -> Error = function(_path:GoString, __0:stdgo.io.fs.Fs.FileInfo, __1:Error):Error {
            return _walker(_path);
        };
        var _walkDirFn:(GoString, stdgo.io.fs.Fs.DirEntry, Error) -> Error = function(_path:GoString, __0:stdgo.io.fs.Fs.DirEntry, __1:Error):Error {
            return _walker(_path);
        };
        var _check = function(_t:Ref<stdgo.testing.Testing.T>, _walk:(_root:GoString) -> Error, _root:GoString):Void {
            _t.helper();
            _remainingWereSkipped = true;
            {
                var _err:Error = _walk(_root);
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            if (!_remainingWereSkipped) {
                _t.errorf(("SkipAll on file foo2 did not block processing of remaining files and directories" : GoString));
            };
        };
        _t.run(("Walk" : GoString), function(_t:Ref<stdgo.testing.Testing.T>):Void {
            var walk:GoString -> Error = function(__0:GoString):Error {
                return stdgo.path.filepath.Filepath.walk(_td, _walkFn);
            };
            _check(_t, walk, _td);
            _check(_t, walk, stdgo.path.filepath.Filepath.join(_td, ("dir" : GoString)));
        });
        _t.run(("WalkDir" : GoString), function(_t:Ref<stdgo.testing.Testing.T>):Void {
            var walkDir:GoString -> Error = function(__0:GoString):Error {
                return stdgo.path.filepath.Filepath.walkDir(_td, _walkDirFn);
            };
            _check(_t, walkDir, _td);
            _check(_t, walkDir, stdgo.path.filepath.Filepath.join(_td, ("dir" : GoString)));
        });
    }
function testWalkFileError(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _td:GoString = _t.tempDir();
            _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("foo" : GoString)));
            _touch(_t, stdgo.path.filepath.Filepath.join(_td, ("bar" : GoString)));
            var _dir:GoString = stdgo.path.filepath.Filepath.join(_td, ("dir" : GoString));
            {
                var _err:Error = stdgo.os.Os.mkdirAll(stdgo.path.filepath.Filepath.join(_td, ("dir" : GoString)), (493u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            _touch(_t, stdgo.path.filepath.Filepath.join(_dir, ("baz" : GoString)));
            _touch(_t, stdgo.path.filepath.Filepath.join(_dir, ("stat-error" : GoString)));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo.path.filepath.Filepath.lstatP = stdgo.os.Os.lstat;
                };
                a();
            });
            var _statErr:Error = stdgo.errors.Errors.new_(("some stat error" : GoString));
            stdgo.path.filepath.Filepath.lstatP = function(_path:GoString):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
                if (stdgo.strings.Strings.hasSuffix(_path, ("stat-error" : GoString))) {
                    return { _0 : (null : stdgo.io.fs.Fs.FileInfo), _1 : _statErr };
                };
                return stdgo.os.Os.lstat(_path);
            };
            var _got = ({
                final x = new GoMap<GoString, Error>();
                @:mergeBlock {};
                x;
            });
            var _err:Error = stdgo.path.filepath.Filepath.walk(_td, function(_path:GoString, _fi:stdgo.io.fs.Fs.FileInfo, _err:Error):Error {
                var __tmp__ = stdgo.path.filepath.Filepath.rel(_td, _path), _rel:GoString = __tmp__._0, __0:Error = __tmp__._1;
                _got[stdgo.path.filepath.Filepath.toSlash(_rel)] = _err;
                return (null : Error);
            });
            if (_err != null) {
                _t.errorf(("Walk error: %v" : GoString), Go.toInterface(_err));
            };
            var _want = ({
                final x = new GoMap<GoString, Error>();
                @:mergeBlock {
                    x.set(("." : GoString), (null : Error));
                    x.set(("foo" : GoString), (null : Error));
                    x.set(("bar" : GoString), (null : Error));
                    x.set(("dir" : GoString), (null : Error));
                    x.set(("dir/baz" : GoString), (null : Error));
                    x.set(("dir/stat-error" : GoString), _statErr);
                };
                x;
            });
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_got), Go.toInterface(_want))) {
                _t.errorf(("Walked %#v; want %#v" : GoString), Go.toInterface(_got), Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testBase(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = _basetests;
        if (false) {
            for (_i in 0 ... _tests.length.toBasic()) {
                _tests[(_i : GoInt)]._result = stdgo.path.filepath.Filepath.clean(_tests[(_i : GoInt)]._result);
            };
            _tests = (_tests.__append__(..._winbasetests.__toArray__()));
        };
        for (__0 => _test in _tests) {
            {
                var _s:GoString = stdgo.path.filepath.Filepath.base(_test._path);
                if (_s != (_test._result)) {
                    _t.errorf(("Base(%q) = %q, want %q" : GoString), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
        };
    }
function testDir(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = _dirtests;
        if (false) {
            for (_i in 0 ... _tests.length.toBasic()) {
                _tests[(_i : GoInt)]._result = stdgo.path.filepath.Filepath.clean(_tests[(_i : GoInt)]._result);
            };
            _tests = (_tests.__append__(..._windirtests.__toArray__()));
        } else {
            _tests = (_tests.__append__(..._nonwindirtests.__toArray__()));
        };
        for (__0 => _test in _tests) {
            {
                var _s:GoString = stdgo.path.filepath.Filepath.dir(_test._path);
                if (_s != (_test._result)) {
                    _t.errorf(("Dir(%q) = %q, want %q" : GoString), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
        };
    }
function testIsAbs(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests:Slice<IsAbsTest> = (null : Slice<stdgo.path.filepath_test.Filepath_test.IsAbsTest>);
        if (false) {
            _tests = (_tests.__append__(..._winisabstests.__toArray__()));
            for (__0 => _test in _isabstests) {
                _tests = (_tests.__append__((new IsAbsTest(_test._path, false) : IsAbsTest)));
            };
            for (__1 => _test in _isabstests) {
                _tests = (_tests.__append__((new IsAbsTest(("c:" : GoString) + _test._path, _test._isAbs) : IsAbsTest)));
            };
        } else {
            _tests = _isabstests;
        };
        for (__2 => _test in _tests) {
            {
                var _r:Bool = stdgo.path.filepath.Filepath.isAbs(_test._path);
                if (_r != (_test._isAbs)) {
                    _t.errorf(("IsAbs(%q) = %v, want %v" : GoString), Go.toInterface(_test._path), Go.toInterface(_r), Go.toInterface(_test._isAbs));
                };
            };
        };
    }
/**
    // simpleJoin builds a file name from the directory and path.
    // It does not use Join because we don't want ".." to be evaluated.
**/
private function _simpleJoin(_dir:GoString, _path:GoString):GoString {
        return (_dir + ((47 : GoInt32) : GoString)) + _path;
    }
private function _testEvalSymlinks(_t:Ref<stdgo.testing.Testing.T>, _path:GoString, _want:GoString):Void {
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_path), _have:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("EvalSymlinks(%q) error: %v" : GoString), Go.toInterface(_path), Go.toInterface(_err));
            return;
        };
        if (stdgo.path.filepath.Filepath.clean(_have) != (stdgo.path.filepath.Filepath.clean(_want))) {
            _t.errorf(("EvalSymlinks(%q) returns %q, want %q" : GoString), Go.toInterface(_path), Go.toInterface(_have), Go.toInterface(_want));
        };
    }
private function _testEvalSymlinksAfterChdir(_t:Ref<stdgo.testing.Testing.T>, _wd:GoString, _path:GoString, _want:GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo.os.Os.getwd(), _cwd:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:Error = stdgo.os.Os.chdir(_cwd);
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
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_path), _have:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("EvalSymlinks(%q) in %q directory error: %v" : GoString), Go.toInterface(_path), Go.toInterface(_wd), Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (stdgo.path.filepath.Filepath.clean(_have) != (stdgo.path.filepath.Filepath.clean(_want))) {
                _t.errorf(("EvalSymlinks(%q) in %q directory returns %q, want %q" : GoString), Go.toInterface(_path), Go.toInterface(_wd), Go.toInterface(_have), Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testEvalSymlinks(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
        var _tmpDir:GoString = _t.tempDir();
        var _err:Error = (null : Error);
        {
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_tmpDir);
            _tmpDir = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(Go.toInterface(("eval symlink for tmp dir:" : GoString)), Go.toInterface(_err));
        };
        for (__0 => _d in evalSymlinksTestDirs) {
            var _err:Error = (null : Error);
            var _path:GoString = _simpleJoin(_tmpDir, _d._path);
            if (_d._dest == (Go.str())) {
                _err = stdgo.os.Os.mkdir(_path, (493u32 : stdgo.io.fs.Fs.FileMode));
            } else {
                _err = stdgo.os.Os.symlink(_d._dest, _path);
            };
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        for (__1 => _test in evalSymlinksTests) {
            var _path:GoString = _simpleJoin(_tmpDir, _test._path);
            var _dest:GoString = _simpleJoin(_tmpDir, _test._dest);
            if (stdgo.path.filepath.Filepath.isAbs(_test._dest) || stdgo.os.Os.isPathSeparator(_test._dest[(0 : GoInt)])) {
                _dest = _test._dest;
            };
            _testEvalSymlinks(_t, _path, _dest);
            _testEvalSymlinksAfterChdir(_t, _path, ("." : GoString), ("." : GoString));
            if (false) {
                var _volDot:GoString = stdgo.path.filepath.Filepath.volumeName(_tmpDir) + ("." : GoString);
                _testEvalSymlinksAfterChdir(_t, _path, _volDot, _volDot);
            };
            var _dotdotPath:GoString = _simpleJoin((".." : GoString), _test._dest);
            if (stdgo.path.filepath.Filepath.isAbs(_test._dest) || stdgo.os.Os.isPathSeparator(_test._dest[(0 : GoInt)])) {
                _dotdotPath = _test._dest;
            };
            _testEvalSymlinksAfterChdir(_t, _simpleJoin(_tmpDir, ("test" : GoString)), _simpleJoin((".." : GoString), _test._path), _dotdotPath);
            _testEvalSymlinksAfterChdir(_t, _tmpDir, _test._path, _test._dest);
        };
    }
function testEvalSymlinksIsNotExist(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(("notexist" : GoString)), __0:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (!stdgo.os.Os.isNotExist(_err)) {
                _t.errorf(("expected the file is not found, got %v\n" : GoString), Go.toInterface(_err));
            };
            _err = stdgo.os.Os.symlink(("notexist" : GoString), ("link" : GoString));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            {
                var _a0 = ("link" : GoString);
                __deferstack__.unshift(() -> stdgo.os.Os.remove(_a0));
            };
            {
                var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(("link" : GoString));
                _err = __tmp__._1;
            };
            if (!stdgo.os.Os.isNotExist(_err)) {
                _t.errorf(("expected the file is not found, got %v\n" : GoString), Go.toInterface(_err));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testIssue13582(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
        var _tmpDir:GoString = _t.tempDir();
        var _dir:GoString = stdgo.path.filepath.Filepath.join(_tmpDir, ("dir" : GoString));
        var _err:Error = stdgo.os.Os.mkdir(_dir, (493u32 : stdgo.io.fs.Fs.FileMode));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _linkToDir:GoString = stdgo.path.filepath.Filepath.join(_tmpDir, ("link_to_dir" : GoString));
        _err = stdgo.os.Os.symlink(_dir, _linkToDir);
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _file:GoString = stdgo.path.filepath.Filepath.join(_linkToDir, ("file" : GoString));
        _err = stdgo.os.Os.writeFile(_file, (null : Slice<GoUInt8>), (420u32 : stdgo.io.fs.Fs.FileMode));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _link1:GoString = stdgo.path.filepath.Filepath.join(_linkToDir, ("link1" : GoString));
        _err = stdgo.os.Os.symlink(_file, _link1);
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _link2:GoString = stdgo.path.filepath.Filepath.join(_linkToDir, ("link2" : GoString));
        _err = stdgo.os.Os.symlink(_link1, _link2);
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_tmpDir), _realTmpDir:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _realDir:GoString = stdgo.path.filepath.Filepath.join(_realTmpDir, ("dir" : GoString));
        var _realFile:GoString = stdgo.path.filepath.Filepath.join(_realDir, ("file" : GoString));
        var _tests = (new Slice<T__struct_2>(5, 5, ({ _path : _dir, _want : _realDir } : T__struct_2), ({ _path : _linkToDir, _want : _realDir } : T__struct_2), ({ _path : _file, _want : _realFile } : T__struct_2), ({ _path : _link1, _want : _realFile } : T__struct_2), ({ _path : _link2, _want : _realFile } : T__struct_2)) : Slice<T__struct_2>);
        for (_i => _test in _tests) {
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_test._path), _have:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (_have != (_test._want)) {
                _t.errorf(("test#%d: EvalSymlinks(%q) returns %q, want %q" : GoString), Go.toInterface(_i), Go.toInterface(_test._path), Go.toInterface(_have), Go.toInterface(_test._want));
            };
        };
    }
function testAbs(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _root:GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _wd:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(("getwd failed: " : GoString)), Go.toInterface(_err));
            };
            _err = stdgo.os.Os.chdir(_root);
            if (_err != null) {
                _t.fatal(Go.toInterface(("chdir failed: " : GoString)), Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            for (__0 => _dir in _absTestDirs) {
                _err = stdgo.os.Os.mkdir(_dir, (511u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(Go.toInterface(("Mkdir failed: " : GoString)), Go.toInterface(_err));
                };
            };
            if (false) {
                var _vol:GoString = stdgo.path.filepath.Filepath.volumeName(_root);
                var _extra:Slice<GoString> = (null : Slice<GoString>);
                for (__1 => _path in _absTests) {
                    if (stdgo.strings.Strings.contains(_path, ("$$" : GoString))) {
                        continue;
                    };
                    _path = _vol + _path;
                    _extra = (_extra.__append__(_path));
                };
                _absTests = (_absTests.__append__(..._extra.__toArray__()));
            };
            _err = stdgo.os.Os.chdir(_absTestDirs[(0 : GoInt)]);
            if (_err != null) {
                _t.fatal(Go.toInterface(("chdir failed: " : GoString)), Go.toInterface(_err));
            };
            for (__2 => _path in _absTests) {
                _path = stdgo.strings.Strings.replaceAll(_path, ("$$" : GoString), _root);
                var __tmp__ = stdgo.os.Os.stat(_path), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("%s: %s" : GoString), Go.toInterface(_path), Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo.path.filepath.Filepath.abs(_path), _abspath:GoString = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Abs(%q) error: %v" : GoString), Go.toInterface(_path), Go.toInterface(_err));
                    continue;
                };
                var __tmp__ = stdgo.os.Os.stat(_abspath), _absinfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
                if ((_err != null) || !stdgo.os.Os.sameFile(_absinfo, _info)) {
                    _t.errorf(("Abs(%q)=%q, not the same file" : GoString), Go.toInterface(_path), Go.toInterface(_abspath));
                };
                if (!stdgo.path.filepath.Filepath.isAbs(_abspath)) {
                    _t.errorf(("Abs(%q)=%q, not an absolute path" : GoString), Go.toInterface(_path), Go.toInterface(_abspath));
                };
                if (stdgo.path.filepath.Filepath.isAbs(_abspath) && (_abspath != stdgo.path.filepath.Filepath.clean(_abspath))) {
                    _t.errorf(("Abs(%q)=%q, isn\'t clean" : GoString), Go.toInterface(_path), Go.toInterface(_abspath));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
/**
    // Empty path needs to be special-cased on Windows. See golang.org/issue/24441.
    // We test it separately from all other absTests because the empty string is not
    // a valid path, so it can't be used with os.Stat.
**/
function testAbsEmptyString(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _root:GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _wd:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(("getwd failed: " : GoString)), Go.toInterface(_err));
            };
            _err = stdgo.os.Os.chdir(_root);
            if (_err != null) {
                _t.fatal(Go.toInterface(("chdir failed: " : GoString)), Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> stdgo.os.Os.chdir(_a0));
            };
            var __tmp__ = stdgo.os.Os.stat(_root), _info:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("%s: %s" : GoString), Go.toInterface(_root), Go.toInterface(_err));
            };
            var __tmp__ = stdgo.path.filepath.Filepath.abs(Go.str()), _abspath:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Abs(\"\") error: %v" : GoString), Go.toInterface(_err));
            };
            var __tmp__ = stdgo.os.Os.stat(_abspath), _absinfo:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
            if ((_err != null) || !stdgo.os.Os.sameFile(_absinfo, _info)) {
                _t.errorf(("Abs(\"\")=%q, not the same file" : GoString), Go.toInterface(_abspath));
            };
            if (!stdgo.path.filepath.Filepath.isAbs(_abspath)) {
                _t.errorf(("Abs(\"\")=%q, not an absolute path" : GoString), Go.toInterface(_abspath));
            };
            if (stdgo.path.filepath.Filepath.isAbs(_abspath) && (_abspath != stdgo.path.filepath.Filepath.clean(_abspath))) {
                _t.errorf(("Abs(\"\")=%q, isn\'t clean" : GoString), Go.toInterface(_abspath));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testRel(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = ((new Slice<stdgo.path.filepath_test.Filepath_test.RelTests>(0, 0) : Slice<stdgo.path.filepath_test.Filepath_test.RelTests>).__append__(..._reltests.__toArray__()));
        if (false) {
            for (_i in 0 ... _tests.length.toBasic()) {
                _tests[(_i : GoInt)]._want = stdgo.path.filepath.Filepath.fromSlash(_tests[(_i : GoInt)]._want);
            };
            _tests = (_tests.__append__(..._winreltests.__toArray__()));
        };
        for (__0 => _test in _tests) {
            var __tmp__ = stdgo.path.filepath.Filepath.rel(_test._root, _test._path), _got:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (_test._want == (("err" : GoString))) {
                if (_err == null) {
                    _t.errorf(("Rel(%q, %q)=%q, want error" : GoString), Go.toInterface(_test._root), Go.toInterface(_test._path), Go.toInterface(_got));
                };
                continue;
            };
            if (_err != null) {
                _t.errorf(("Rel(%q, %q): want %q, got error: %s" : GoString), Go.toInterface(_test._root), Go.toInterface(_test._path), Go.toInterface(_test._want), Go.toInterface(_err));
            };
            if (_got != (_test._want)) {
                _t.errorf(("Rel(%q, %q)=%q, want %q" : GoString), Go.toInterface(_test._root), Go.toInterface(_test._path), Go.toInterface(_got), Go.toInterface(_test._want));
            };
        };
    }
function testVolumeName(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (true) {
            return;
        };
        for (__0 => _v in _volumenametests) {
            {
                var _vol:GoString = stdgo.path.filepath.Filepath.volumeName(_v._path);
                if (_vol != (_v._vol)) {
                    _t.errorf(("VolumeName(%q)=%q, want %q" : GoString), Go.toInterface(_v._path), Go.toInterface(_vol), Go.toInterface(_v._vol));
                };
            };
        };
    }
function testDriveLetterInEvalSymlinks(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (true) {
            return;
        };
        var __tmp__ = stdgo.os.Os.getwd(), _wd:GoString = __tmp__._0, __0:Error = __tmp__._1;
        if ((_wd.length) < (3 : GoInt)) {
            _t.errorf(("Current directory path %q is too short" : GoString), Go.toInterface(_wd));
        };
        var _lp:GoString = stdgo.strings.Strings.toLower(_wd);
        var _up:GoString = stdgo.strings.Strings.toUpper(_wd);
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_lp), _flp:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(%q) failed: %q" : GoString), Go.toInterface(_lp), Go.toInterface(_err));
        };
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_up), _fup:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("EvalSymlinks(%q) failed: %q" : GoString), Go.toInterface(_up), Go.toInterface(_err));
        };
        if (_flp != (_fup)) {
            _t.errorf(("Results of EvalSymlinks do not match: %q and %q" : GoString), Go.toInterface(_flp), Go.toInterface(_fup));
        };
    }
function testBug3486(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (false) {
            _t.skipf(("skipping on %s/%s" : GoString), Go.toInterface(("js" : GoString)), Go.toInterface(("wasm" : GoString)));
        };
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(stdgo.internal.testenv.Testenv.goroot(Go.asInterface(_t)) + ("/test" : GoString)), _root:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _bugs:GoString = stdgo.path.filepath.Filepath.join(_root, ("fixedbugs" : GoString));
        var _ken:GoString = stdgo.path.filepath.Filepath.join(_root, ("ken" : GoString));
        var _seenBugs:Bool = false;
        var _seenKen:Bool = false;
        _err = stdgo.path.filepath.Filepath.walk(_root, function(_pth:GoString, _info:stdgo.io.fs.Fs.FileInfo, _err:Error):Error {
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            {
                final __value__ = _pth;
                if (__value__ == (_bugs)) {
                    _seenBugs = true;
                    return stdgo.path.filepath.Filepath.skipDir;
                } else if (__value__ == (_ken)) {
                    if (!_seenBugs) {
                        _t.fatal(Go.toInterface(("filepath.Walk out of order - ken before fixedbugs" : GoString)));
                    };
                    _seenKen = true;
                };
            };
            return (null : Error);
        });
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (!_seenKen) {
            _t.fatalf(("%q not seen" : GoString), Go.toInterface(_ken));
        };
    }
private function _testWalkSymlink(_t:Ref<stdgo.testing.Testing.T>, _mklink:(_target:GoString, _link:GoString) -> Error):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpdir:GoString = _t.tempDir();
            var __tmp__ = stdgo.os.Os.getwd(), _wd:GoString = __tmp__._0, _err:Error = __tmp__._1;
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
            _err = _mklink(_tmpdir, ("link" : GoString));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var _visited:Slice<GoString> = (null : Slice<GoString>);
            _err = stdgo.path.filepath.Filepath.walk(_tmpdir, function(_path:GoString, _info:stdgo.io.fs.Fs.FileInfo, _err:Error):Error {
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
                var __tmp__ = stdgo.path.filepath.Filepath.rel(_tmpdir, _path), _rel:GoString = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
                _visited = (_visited.__append__(_rel));
                return (null : Error);
            });
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            stdgo.sort.Sort.strings(_visited);
            var _want = (new Slice<GoString>(2, 2, ("." : GoString), ("link" : GoString)) : Slice<GoString>);
            if (stdgo.fmt.Fmt.sprintf(("%q" : GoString), Go.toInterface(_visited)) != (stdgo.fmt.Fmt.sprintf(("%q" : GoString), Go.toInterface(_want)))) {
                _t.errorf(("unexpected paths visited %q, want %q" : GoString), Go.toInterface(_visited), Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testWalkSymlink(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
        _testWalkSymlink(_t, stdgo.os.Os.symlink);
    }
function testIssue29372(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tmpDir:GoString = _t.tempDir();
        var _path:GoString = stdgo.path.filepath.Filepath.join(_tmpDir, ("file.txt" : GoString));
        var _err:Error = stdgo.os.Os.writeFile(_path, (null : Slice<GoUInt8>), (420u32 : stdgo.io.fs.Fs.FileMode));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _pathSeparator:GoString = ((47 : GoInt32) : GoString);
        var _tests = (new Slice<GoString>(6, 6, _path + stdgo.strings.Strings.repeat(_pathSeparator, (1 : GoInt)), _path + stdgo.strings.Strings.repeat(_pathSeparator, (2 : GoInt)), (_path + stdgo.strings.Strings.repeat(_pathSeparator, (1 : GoInt))) + ("." : GoString), (_path + stdgo.strings.Strings.repeat(_pathSeparator, (2 : GoInt))) + ("." : GoString), (_path + stdgo.strings.Strings.repeat(_pathSeparator, (1 : GoInt))) + (".." : GoString), (_path + stdgo.strings.Strings.repeat(_pathSeparator, (2 : GoInt))) + (".." : GoString)) : Slice<GoString>);
        for (_i => _test in _tests) {
            {
                var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_test);
                _err = __tmp__._1;
            };
            if (Go.toInterface(_err) != (Go.toInterface(Go.asInterface((20 : stdgo.syscall.Syscall.Errno))))) {
                _t.fatalf(("test#%d: want %q, got %q" : GoString), Go.toInterface(_i), Go.toInterface(Go.asInterface((20 : stdgo.syscall.Syscall.Errno))), Go.toInterface(_err));
            };
        };
    }
/**
    // Issue 30520 part 1.
**/
function testEvalSymlinksAboveRoot(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
        _t.parallel();
        var _tmpDir:GoString = _t.tempDir();
        var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_tmpDir), _evalTmpDir:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var _err:Error = stdgo.os.Os.mkdir(stdgo.path.filepath.Filepath.join(_evalTmpDir, ("a" : GoString)), (511u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:Error = stdgo.os.Os.symlink(stdgo.path.filepath.Filepath.join(_evalTmpDir, ("a" : GoString)), stdgo.path.filepath.Filepath.join(_evalTmpDir, ("b" : GoString)));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        {
            var _err:Error = stdgo.os.Os.writeFile(stdgo.path.filepath.Filepath.join(_evalTmpDir, ("a" : GoString), ("file" : GoString)), (null : Slice<GoUInt8>), (438u32 : stdgo.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _vol:GoString = stdgo.path.filepath.Filepath.volumeName(_evalTmpDir);
        var _c:GoInt = stdgo.strings.Strings.count((_evalTmpDir.__slice__((_vol.length)) : GoString), ((47 : GoInt32) : GoString));
        var _dd:Slice<GoString> = (null : Slice<GoString>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_c + (2 : GoInt)), _i++, {
                _dd = (_dd.__append__((".." : GoString)));
            });
        };
        var _wantSuffix:GoString = stdgo.strings.Strings.join((new Slice<GoString>(2, 2, ("a" : GoString), ("file" : GoString)) : Slice<GoString>), ((47 : GoInt32) : GoString));
        for (__0 => _i in (new Slice<GoInt>(3, 3, _c, _c + (1 : GoInt), _c + (2 : GoInt)) : Slice<GoInt>)) {
            var _check:GoString = stdgo.strings.Strings.join((new Slice<GoString>(5, 5, _evalTmpDir, stdgo.strings.Strings.join((_dd.__slice__(0, _i) : Slice<GoString>), ((47 : GoInt32) : GoString)), (_evalTmpDir.__slice__((_vol.length) + (1 : GoInt)) : GoString), ("b" : GoString), ("file" : GoString)) : Slice<GoString>), ((47 : GoInt32) : GoString));
            var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_check), _resolved:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (false && stdgo.errors.Errors.is_(_err, stdgo.io.fs.Fs.errNotExist)) {
                stdgo.internal.testenv.Testenv.skipFlaky(Go.asInterface(_t), (37910 : GoInt));
            } else if (_err != null) {
                _t.errorf(("EvalSymlinks(%q) failed: %v" : GoString), Go.toInterface(_check), Go.toInterface(_err));
            } else if (!stdgo.strings.Strings.hasSuffix(_resolved, _wantSuffix)) {
                _t.errorf(("EvalSymlinks(%q) = %q does not end with %q" : GoString), Go.toInterface(_check), Go.toInterface(_resolved), Go.toInterface(_wantSuffix));
            } else {
                _t.logf(("EvalSymlinks(%q) = %q" : GoString), Go.toInterface(_check), Go.toInterface(_resolved));
            };
        };
    }
/**
    // Issue 30520 part 2.
**/
function testEvalSymlinksAboveRootChdir(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo.internal.testenv.Testenv.mustHaveSymlink(Go.asInterface(_t));
            var __tmp__ = stdgo.os.Os.mkdirTemp(Go.str(), ("TestEvalSymlinksAboveRootChdir" : GoString)), _tmpDir:GoString = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            {
                var _a0 = _tmpDir;
                __deferstack__.unshift(() -> stdgo.os.Os.removeAll(_a0));
            };
            _chdir(_t, _tmpDir);
            var _subdir:GoString = stdgo.path.filepath.Filepath.join(("a" : GoString), ("b" : GoString));
            {
                var _err:Error = stdgo.os.Os.mkdirAll(_subdir, (511u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            {
                var _err:Error = stdgo.os.Os.symlink(_subdir, ("c" : GoString));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            {
                var _err:Error = stdgo.os.Os.writeFile(stdgo.path.filepath.Filepath.join(_subdir, ("file" : GoString)), (null : Slice<GoUInt8>), (438u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            _subdir = stdgo.path.filepath.Filepath.join(("d" : GoString), ("e" : GoString), ("f" : GoString));
            {
                var _err:Error = stdgo.os.Os.mkdirAll(_subdir, (511u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            {
                var _err:Error = stdgo.os.Os.chdir(_subdir);
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            var _check:GoString = stdgo.path.filepath.Filepath.join((".." : GoString), (".." : GoString), (".." : GoString), ("c" : GoString), ("file" : GoString));
            var _wantSuffix:GoString = stdgo.path.filepath.Filepath.join(("a" : GoString), ("b" : GoString), ("file" : GoString));
            {
                var __tmp__ = stdgo.path.filepath.Filepath.evalSymlinks(_check), _resolved:GoString = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("EvalSymlinks(%q) failed: %v" : GoString), Go.toInterface(_check), Go.toInterface(_err));
                } else if (!stdgo.strings.Strings.hasSuffix(_resolved, _wantSuffix)) {
                    _t.errorf(("EvalSymlinks(%q) = %q does not end with %q" : GoString), Go.toInterface(_check), Go.toInterface(_resolved), Go.toInterface(_wantSuffix));
                } else {
                    _t.logf(("EvalSymlinks(%q) = %q" : GoString), Go.toInterface(_check), Go.toInterface(_resolved));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testIssue51617(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dir:GoString = _t.tempDir();
            for (__0 => _sub in (new Slice<GoString>(3, 3, ("a" : GoString), stdgo.path.filepath.Filepath.join(("a" : GoString), ("bad" : GoString)), stdgo.path.filepath.Filepath.join(("a" : GoString), ("next" : GoString))) : Slice<GoString>)) {
                {
                    var _err:Error = stdgo.os.Os.mkdir(stdgo.path.filepath.Filepath.join(_dir, _sub), (493u32 : stdgo.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.fatal(Go.toInterface(_err));
                    };
                };
            };
            var _bad:GoString = stdgo.path.filepath.Filepath.join(_dir, ("a" : GoString), ("bad" : GoString));
            {
                var _err:Error = stdgo.os.Os.chmod(_bad, (0u32 : stdgo.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            {
                var _a0 = _bad;
                var _a1 = (448u32 : stdgo.io.fs.Fs.FileMode);
                __deferstack__.unshift(() -> stdgo.os.Os.chmod(_a0, _a1));
            };
            var _saw:Slice<GoString> = (null : Slice<GoString>);
            var _err:Error = stdgo.path.filepath.Filepath.walkDir(_dir, function(_path:GoString, _d:stdgo.io.fs.Fs.DirEntry, _err:Error):Error {
                if (_err != null) {
                    return stdgo.path.filepath.Filepath.skipDir;
                };
                if (_d.isDir()) {
                    var __tmp__ = stdgo.path.filepath.Filepath.rel(_dir, _path), _rel:GoString = __tmp__._0, _err:Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(Go.toInterface(_err));
                    };
                    _saw = (_saw.__append__(_rel));
                };
                return (null : Error);
            });
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var _want = (new Slice<GoString>(4, 4, ("." : GoString), ("a" : GoString), stdgo.path.filepath.Filepath.join(("a" : GoString), ("bad" : GoString)), stdgo.path.filepath.Filepath.join(("a" : GoString), ("next" : GoString))) : Slice<GoString>);
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_saw), Go.toInterface(_want))) {
                _t.errorf(("got directories %v, want %v" : GoString), Go.toInterface(_saw), Go.toInterface(_want));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
class T_globTest_asInterface {
    @:keep
    public dynamic function _globRel(_root:GoString):Error return __self__.value._globRel(_root);
    @:keep
    public dynamic function _globAbs(_root:GoString, _rootPattern:GoString):Error return __self__.value._globAbs(_root, _rootPattern);
    @:keep
    public dynamic function _buildWant(_root:GoString):Slice<GoString> return __self__.value._buildWant(_root);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_globTest>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath_test.Filepath_test.T_globTest_asInterface) class T_globTest_static_extension {
    @:keep
    static public function _globRel( _test:Ref<T_globTest>, _root:GoString):Error {
        var _p:GoString = _root + fromSlash(_test._pattern);
        var __tmp__ = glob(_p), _have:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        stdgo.sort.Sort.strings(_have);
        var _want = _test._buildWant(_root);
        if (stdgo.strings.Strings.join(_want, ("_" : GoString)) == (stdgo.strings.Strings.join(_have, ("_" : GoString)))) {
            return (null : Error);
        };
        var _wantWithNoRoot = _test._buildWant(Go.str());
        if (stdgo.strings.Strings.join(_wantWithNoRoot, ("_" : GoString)) == (stdgo.strings.Strings.join(_have, ("_" : GoString)))) {
            return (null : Error);
        };
        return stdgo.fmt.Fmt.errorf(("Glob(%q) returns %q, but %q expected" : GoString), Go.toInterface(_p), Go.toInterface(_have), Go.toInterface(_want));
    }
    @:keep
    static public function _globAbs( _test:Ref<T_globTest>, _root:GoString, _rootPattern:GoString):Error {
        var _p:GoString = fromSlash((_rootPattern + ("\\" : GoString)) + _test._pattern);
        var __tmp__ = glob(_p), _have:Slice<GoString> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        stdgo.sort.Sort.strings(_have);
        var _want = _test._buildWant(_root + ("\\" : GoString));
        if (stdgo.strings.Strings.join(_want, ("_" : GoString)) == (stdgo.strings.Strings.join(_have, ("_" : GoString)))) {
            return (null : Error);
        };
        return stdgo.fmt.Fmt.errorf(("Glob(%q) returns %q, but %q expected" : GoString), Go.toInterface(_p), Go.toInterface(_have), Go.toInterface(_want));
    }
    @:keep
    static public function _buildWant( _test:Ref<T_globTest>, _root:GoString):Slice<GoString> {
        var _want = new Slice<GoString>((0 : GoInt).toBasic(), 0).__setString__();
        for (__0 => _m in _test._matches) {
            _want = (_want.__append__(_root + fromSlash(_m)));
        };
        stdgo.sort.Sort.strings(_want);
        return _want;
    }
}
class T_statDirEntry_asInterface {
    @:keep
    public dynamic function info():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } return __self__.value.info();
    @:keep
    public dynamic function type():stdgo.io.fs.Fs.FileMode return __self__.value.type();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function name():GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_statDirEntry>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.path.filepath_test.Filepath_test.T_statDirEntry_asInterface) class T_statDirEntry_static_extension {
    @:keep
    static public function info( _d:Ref<T_statDirEntry>):{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : Error; } {
        return { _0 : _d._info, _1 : (null : Error) };
    }
    @:keep
    static public function type( _d:Ref<T_statDirEntry>):stdgo.io.fs.Fs.FileMode {
        return _d._info.mode().type();
    }
    @:keep
    static public function isDir( _d:Ref<T_statDirEntry>):Bool {
        return _d._info.isDir();
    }
    @:keep
    static public function name( _d:Ref<T_statDirEntry>):GoString {
        return _d._info.name();
    }
}
