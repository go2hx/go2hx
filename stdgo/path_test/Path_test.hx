package stdgo.path_test;
import stdgo.path.Path;
import stdgo.path.Path;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    
    
    
**/
private var _matchTests = (new Slice<stdgo.path_test.Path_test.MatchTest>(
0,
0,
(new stdgo.path_test.Path_test.MatchTest(("abc" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("*" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("*c" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*" : GoString), ("a" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*" : GoString), ("ab/c" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*/b" : GoString), ("abc/b" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*/b" : GoString), ("a/c/b" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b*c*d*e*/f" : GoString), ("axbxcxdxe/f" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b*c*d*e*/f" : GoString), ("axbxcxdxexxx/f" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b*c*d*e*/f" : GoString), ("axbxcxdxe/xxx/f" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b*c*d*e*/f" : GoString), ("axbxcxdxexxx/fff" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b?c*x" : GoString), ("abxbbxdbxebxczzx" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b?c*x" : GoString), ("abxbbxdbxebxczzy" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("ab[c]" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("ab[b-d]" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("ab[e-g]" : GoString), ("abc" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("ab[^c]" : GoString), ("abc" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("ab[^b-d]" : GoString), ("abc" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("ab[^e-g]" : GoString), ("abc" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a\\*b" : GoString), ("a*b" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a\\*b" : GoString), ("ab" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a?b" : GoString), ("a☺b" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a[^a]b" : GoString), ("a☺b" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a???b" : GoString), ("a☺b" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a[^a][^a][^a]b" : GoString), ("a☺b" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[a-ζ]*" : GoString), ("α" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("*[a-ζ]" : GoString), ("A" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a?b" : GoString), ("a/b" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b" : GoString), ("a/b" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[\\]a]" : GoString), ("]" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[\\-]" : GoString), ("-" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[x\\-]" : GoString), ("x" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[x\\-]" : GoString), ("-" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[x\\-]" : GoString), ("z" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[\\-x]" : GoString), ("x" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[\\-x]" : GoString), ("-" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[\\-x]" : GoString), ("a" : GoString), false, (null : Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[]a]" : GoString), ("]" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[-]" : GoString), ("-" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[x-]" : GoString), ("x" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[x-]" : GoString), ("-" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[x-]" : GoString), ("z" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[-x]" : GoString), ("x" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[-x]" : GoString), ("-" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[-x]" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("\\" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[a-b-c]" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[^" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[^bc" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a[" : GoString), ("a" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a[" : GoString), ("ab" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a[" : GoString), ("x" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a/b[" : GoString), ("x" : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("*x" : GoString), ("xxx" : GoString), true, (null : Error)) : stdgo.path_test.Path_test.MatchTest)) : Slice<stdgo.path_test.Path_test.MatchTest>);
/**
    
    
    
**/
private var _cleantests = (new Slice<stdgo.path_test.Path_test.PathTest>(
0,
0,
(new stdgo.path_test.Path_test.PathTest(Go.str(), ("." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc" : GoString), ("abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def" : GoString), ("abc/def" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/c" : GoString), ("a/b/c" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("." : GoString), ("." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest((".." : GoString), (".." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("../.." : GoString), ("../.." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("../../abc" : GoString), ("../../abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/abc" : GoString), ("/abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/" : GoString), ("/" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/" : GoString), ("abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/" : GoString), ("abc/def" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/c/" : GoString), ("a/b/c" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("./" : GoString), ("." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("../" : GoString), (".." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("../../" : GoString), ("../.." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/abc/" : GoString), ("/abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc//def//ghi" : GoString), ("abc/def/ghi" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("//abc" : GoString), ("/abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("///abc" : GoString), ("/abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("//abc//" : GoString), ("/abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc//" : GoString), ("abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/./def" : GoString), ("abc/def" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/./abc/def" : GoString), ("/abc/def" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/." : GoString), ("abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/ghi/../jkl" : GoString), ("abc/def/jkl" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/../ghi/../jkl" : GoString), ("abc/jkl" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/.." : GoString), ("abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/../.." : GoString), ("." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/abc/def/../.." : GoString), ("/" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/../../.." : GoString), (".." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/abc/def/../../.." : GoString), ("/" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/../../../ghi/jkl/../../../mno" : GoString), ("../../mno" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/./../def" : GoString), ("def" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc//./../def" : GoString), ("def" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/../../././../def" : GoString), ("../../def" : GoString)) : stdgo.path_test.Path_test.PathTest)) : Slice<stdgo.path_test.Path_test.PathTest>);
/**
    
    
    
**/
private var _splittests = (new Slice<stdgo.path_test.Path_test.SplitTest>(0, 0, (new stdgo.path_test.Path_test.SplitTest(("a/b" : GoString), ("a/" : GoString), ("b" : GoString)) : stdgo.path_test.Path_test.SplitTest), (new stdgo.path_test.Path_test.SplitTest(("a/b/" : GoString), ("a/b/" : GoString), Go.str()) : stdgo.path_test.Path_test.SplitTest), (new stdgo.path_test.Path_test.SplitTest(("a/" : GoString), ("a/" : GoString), Go.str()) : stdgo.path_test.Path_test.SplitTest), (new stdgo.path_test.Path_test.SplitTest(("a" : GoString), Go.str(), ("a" : GoString)) : stdgo.path_test.Path_test.SplitTest), (new stdgo.path_test.Path_test.SplitTest(("/" : GoString), ("/" : GoString), Go.str()) : stdgo.path_test.Path_test.SplitTest)) : Slice<stdgo.path_test.Path_test.SplitTest>);
/**
    
    
    
**/
private var _jointests = (new Slice<stdgo.path_test.Path_test.JoinTest>(
0,
0,
(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0) : Slice<GoString>), Go.str()) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, Go.str()) : Slice<GoString>), Go.str()) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, ("a" : GoString)) : Slice<GoString>), ("a" : GoString)) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, ("a" : GoString), ("b" : GoString)) : Slice<GoString>), ("a/b" : GoString)) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, ("a" : GoString), Go.str()) : Slice<GoString>), ("a" : GoString)) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, Go.str(), ("b" : GoString)) : Slice<GoString>), ("b" : GoString)) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, ("/" : GoString), ("a" : GoString)) : Slice<GoString>), ("/a" : GoString)) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, ("/" : GoString), Go.str()) : Slice<GoString>), ("/" : GoString)) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, ("a/" : GoString), ("b" : GoString)) : Slice<GoString>), ("a/b" : GoString)) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, ("a/" : GoString), Go.str()) : Slice<GoString>), ("a" : GoString)) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, Go.str(), Go.str()) : Slice<GoString>), Go.str()) : stdgo.path_test.Path_test.JoinTest)) : Slice<stdgo.path_test.Path_test.JoinTest>);
/**
    
    
    
**/
private var _exttests = (new Slice<stdgo.path_test.Path_test.ExtTest>(0, 0, (new stdgo.path_test.Path_test.ExtTest(("path.go" : GoString), (".go" : GoString)) : stdgo.path_test.Path_test.ExtTest), (new stdgo.path_test.Path_test.ExtTest(("path.pb.go" : GoString), (".go" : GoString)) : stdgo.path_test.Path_test.ExtTest), (new stdgo.path_test.Path_test.ExtTest(("a.dir/b" : GoString), Go.str()) : stdgo.path_test.Path_test.ExtTest), (new stdgo.path_test.Path_test.ExtTest(("a.dir/b.go" : GoString), (".go" : GoString)) : stdgo.path_test.Path_test.ExtTest), (new stdgo.path_test.Path_test.ExtTest(("a.dir/" : GoString), Go.str()) : stdgo.path_test.Path_test.ExtTest)) : Slice<stdgo.path_test.Path_test.ExtTest>);
/**
    
    
    
**/
private var _basetests = (new Slice<stdgo.path_test.Path_test.PathTest>(
0,
0,
(new stdgo.path_test.Path_test.PathTest(Go.str(), ("." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("." : GoString), ("." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/." : GoString), ("." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/" : GoString), ("/" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("////" : GoString), ("/" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("x/" : GoString), ("x" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc" : GoString), ("abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def" : GoString), ("def" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/.x" : GoString), (".x" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/c." : GoString), ("c." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/c.x" : GoString), ("c.x" : GoString)) : stdgo.path_test.Path_test.PathTest)) : Slice<stdgo.path_test.Path_test.PathTest>);
/**
    
    
    
**/
private var _dirtests = (new Slice<stdgo.path_test.Path_test.PathTest>(
0,
0,
(new stdgo.path_test.Path_test.PathTest(Go.str(), ("." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("." : GoString), ("." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/." : GoString), ("/" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/" : GoString), ("/" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("////" : GoString), ("/" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/foo" : GoString), ("/" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("x/" : GoString), ("x" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc" : GoString), ("." : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def" : GoString), ("abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc////def" : GoString), ("abc" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/.x" : GoString), ("a/b" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/c." : GoString), ("a/b" : GoString)) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/c.x" : GoString), ("a/b" : GoString)) : stdgo.path_test.Path_test.PathTest)) : Slice<stdgo.path_test.Path_test.PathTest>);
/**
    
    
    
**/
private var _isAbsTests = (new Slice<stdgo.path_test.Path_test.IsAbsTest>(0, 0, (new stdgo.path_test.Path_test.IsAbsTest(Go.str(), false) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest(("/" : GoString), true) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest(("/usr/bin/gcc" : GoString), true) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest((".." : GoString), false) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest(("/a/../bb" : GoString), true) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest(("." : GoString), false) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest(("./" : GoString), false) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest(("lala" : GoString), false) : stdgo.path_test.Path_test.IsAbsTest)) : Slice<stdgo.path_test.Path_test.IsAbsTest>);
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
function exampleBase():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.base(("/a/b" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.base(("/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.base(Go.str())));
    }
function exampleClean():Void {
        var _paths = (new Slice<GoString>(0, 0, ("a/c" : GoString), ("a//c" : GoString), ("a/c/." : GoString), ("a/c/b/.." : GoString), ("/../a/c" : GoString), ("/../a/b/../././/c" : GoString), Go.str()) : Slice<GoString>);
        for (_0 => _p in _paths) {
            stdgo.fmt.Fmt.printf(("Clean(%q) = %q\n" : GoString), Go.toInterface(_p), Go.toInterface(stdgo.path.Path.clean(_p)));
        };
    }
function exampleDir():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.dir(("/a/b/c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.dir(("a/b/c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.dir(("/a/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.dir(("a/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.dir(("/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.dir(Go.str())));
    }
function exampleExt():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.ext(("/a/b/c/bar.css" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.ext(("/" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.ext(Go.str())));
    }
function exampleIsAbs():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.isAbs(("/dev/null" : GoString))));
    }
function exampleJoin():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(("a" : GoString), ("b" : GoString), ("c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(("a" : GoString), ("b/c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(("a/b" : GoString), ("c" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(("a/b" : GoString), ("../../../xyz" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(Go.str(), Go.str())));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(("a" : GoString), Go.str())));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.path.Path.join(Go.str(), ("a" : GoString))));
    }
function exampleMatch():Void {
        {
            var __tmp__ = stdgo.path.Path.match(("abc" : GoString), ("abc" : GoString));
            stdgo.fmt.Fmt.println(Go.toInterface((__tmp__._0 : Bool)), Go.toInterface((__tmp__._1 : Error)));
        };
        {
            var __tmp__ = stdgo.path.Path.match(("a*" : GoString), ("abc" : GoString));
            stdgo.fmt.Fmt.println(Go.toInterface((__tmp__._0 : Bool)), Go.toInterface((__tmp__._1 : Error)));
        };
        {
            var __tmp__ = stdgo.path.Path.match(("a*/b" : GoString), ("a/c/b" : GoString));
            stdgo.fmt.Fmt.println(Go.toInterface((__tmp__._0 : Bool)), Go.toInterface((__tmp__._1 : Error)));
        };
    }
function exampleSplit():Void {
        var _split:GoString -> Void = function(_s:GoString):Void {
            var __tmp__ = stdgo.path.Path.split(_s), _dir:GoString = __tmp__._0, _file:GoString = __tmp__._1;
            stdgo.fmt.Fmt.printf(("path.Split(%q) = dir: %q, file: %q\n" : GoString), Go.toInterface(_s), Go.toInterface(_dir), Go.toInterface(_file));
        };
        _split(("static/myfile.css" : GoString));
        _split(("myfile.css" : GoString));
        _split(Go.str());
    }
function testMatch(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _matchTests) {
            var __tmp__ = match(_tt._pattern, _tt._s), _ok:Bool = __tmp__._0, _err:Error = __tmp__._1;
            if ((_ok != _tt._match) || (Go.toInterface(_err) != Go.toInterface(_tt._err))) {
                _t.errorf(("Match(%#q, %#q) = %v, %v want %v, %v" : GoString), Go.toInterface(_tt._pattern), Go.toInterface(_tt._s), Go.toInterface(_ok), Go.toInterface(_err), Go.toInterface(_tt._match), Go.toInterface(_tt._err));
            };
        };
    }
function testClean(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _cleantests) {
            {
                var _s:GoString = clean(_test._path);
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : GoString), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
            {
                var _s:GoString = clean(_test._result);
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : GoString), Go.toInterface(_test._result), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
        };
    }
function testCleanMallocs(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(("skipping malloc count in short mode" : GoString)));
        };
        if (stdgo.runtime.Runtime.gomaxprocs((0 : GoInt)) > (1 : GoInt)) {
            _t.log(Go.toInterface(("skipping AllocsPerRun checks; GOMAXPROCS>1" : GoString)));
            return;
        };
        for (_0 => _test in _cleantests) {
            var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), function():Void {
                clean(_test._result);
            });
            if (_allocs > (0 : GoFloat64)) {
                _t.errorf(("Clean(%q): %v allocs, want zero" : GoString), Go.toInterface(_test._result), Go.toInterface(_allocs));
            };
        };
    }
function testSplit(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _splittests) {
            {
                var __tmp__ = split(_test._path), _d:GoString = __tmp__._0, _f:GoString = __tmp__._1;
                if ((_d != _test._dir) || (_f != _test._file)) {
                    _t.errorf(("Split(%q) = %q, %q, want %q, %q" : GoString), Go.toInterface(_test._path), Go.toInterface(_d), Go.toInterface(_f), Go.toInterface(_test._dir), Go.toInterface(_test._file));
                };
            };
        };
    }
function testJoin(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _jointests) {
            {
                var _p:GoString = join(..._test._elem.__toArray__());
                if (_p != (_test._path)) {
                    _t.errorf(("Join(%q) = %q, want %q" : GoString), Go.toInterface(_test._elem), Go.toInterface(_p), Go.toInterface(_test._path));
                };
            };
        };
    }
function testExt(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _exttests) {
            {
                var _x:GoString = ext(_test._path);
                if (_x != (_test._ext)) {
                    _t.errorf(("Ext(%q) = %q, want %q" : GoString), Go.toInterface(_test._path), Go.toInterface(_x), Go.toInterface(_test._ext));
                };
            };
        };
    }
function testBase(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _basetests) {
            {
                var _s:GoString = base(_test._path);
                if (_s != (_test._result)) {
                    _t.errorf(("Base(%q) = %q, want %q" : GoString), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
        };
    }
function testDir(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _dirtests) {
            {
                var _s:GoString = dir(_test._path);
                if (_s != (_test._result)) {
                    _t.errorf(("Dir(%q) = %q, want %q" : GoString), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
                };
            };
        };
    }
function testIsAbs(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _isAbsTests) {
            {
                var _r:Bool = isAbs(_test._path);
                if (_r != (_test._isAbs)) {
                    _t.errorf(("IsAbs(%q) = %v, want %v" : GoString), Go.toInterface(_test._path), Go.toInterface(_r), Go.toInterface(_test._isAbs));
                };
            };
        };
    }
