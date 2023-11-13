package stdgo.path_test;
import stdgo.path.Path;
import stdgo.path.Path;
import stdgo.path.Path;
/**
    
    
    
**/
var _matchTests : stdgo.Slice<stdgo.path_test.Path_test.MatchTest> = (new stdgo.Slice<stdgo.path_test.Path_test.MatchTest>(
56,
56,
(new stdgo.path_test.Path_test.MatchTest(("abc" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("*" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("*c" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*" : stdgo.GoString)?.__copy__(), ("ab/c" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*/b" : stdgo.GoString)?.__copy__(), ("abc/b" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*/b" : stdgo.GoString)?.__copy__(), ("a/c/b" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString)?.__copy__(), ("axbxcxdxe/f" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString)?.__copy__(), ("axbxcxdxexxx/f" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString)?.__copy__(), ("axbxcxdxe/xxx/f" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString)?.__copy__(), ("axbxcxdxexxx/fff" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b?c*x" : stdgo.GoString)?.__copy__(), ("abxbbxdbxebxczzx" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b?c*x" : stdgo.GoString)?.__copy__(), ("abxbbxdbxebxczzy" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("ab[c]" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("ab[b-d]" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("ab[e-g]" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("ab[^c]" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("ab[^b-d]" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("ab[^e-g]" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a\\*b" : stdgo.GoString)?.__copy__(), ("a*b" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a\\*b" : stdgo.GoString)?.__copy__(), ("ab" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a?b" : stdgo.GoString)?.__copy__(), ("a☺b" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a[^a]b" : stdgo.GoString)?.__copy__(), ("a☺b" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a???b" : stdgo.GoString)?.__copy__(), ("a☺b" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a[^a][^a][^a]b" : stdgo.GoString)?.__copy__(), ("a☺b" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[a-ζ]*" : stdgo.GoString)?.__copy__(), ("α" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("*[a-ζ]" : stdgo.GoString)?.__copy__(), ("A" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a?b" : stdgo.GoString)?.__copy__(), ("a/b" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a*b" : stdgo.GoString)?.__copy__(), ("a/b" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[\\]a]" : stdgo.GoString)?.__copy__(), ("]" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[\\-]" : stdgo.GoString)?.__copy__(), ("-" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[x\\-]" : stdgo.GoString)?.__copy__(), ("x" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[x\\-]" : stdgo.GoString)?.__copy__(), ("-" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[x\\-]" : stdgo.GoString)?.__copy__(), ("z" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[\\-x]" : stdgo.GoString)?.__copy__(), ("x" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[\\-x]" : stdgo.GoString)?.__copy__(), ("-" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[\\-x]" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), false, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[]a]" : stdgo.GoString)?.__copy__(), ("]" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[-]" : stdgo.GoString)?.__copy__(), ("-" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[x-]" : stdgo.GoString)?.__copy__(), ("x" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[x-]" : stdgo.GoString)?.__copy__(), ("-" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[x-]" : stdgo.GoString)?.__copy__(), ("z" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[-x]" : stdgo.GoString)?.__copy__(), ("x" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[-x]" : stdgo.GoString)?.__copy__(), ("-" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[-x]" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("\\" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[a-b-c]" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[^" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("[^bc" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a[" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a[" : stdgo.GoString)?.__copy__(), ("ab" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a[" : stdgo.GoString)?.__copy__(), ("x" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("a/b[" : stdgo.GoString)?.__copy__(), ("x" : stdgo.GoString)?.__copy__(), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
(new stdgo.path_test.Path_test.MatchTest(("*x" : stdgo.GoString)?.__copy__(), ("xxx" : stdgo.GoString)?.__copy__(), true, (null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest)) : stdgo.Slice<stdgo.path_test.Path_test.MatchTest>);
/**
    
    
    
**/
var _cleantests : stdgo.Slice<stdgo.path_test.Path_test.PathTest> = (new stdgo.Slice<stdgo.path_test.Path_test.PathTest>(
36,
36,
(new stdgo.path_test.Path_test.PathTest(stdgo.Go.str()?.__copy__(), ("." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def" : stdgo.GoString)?.__copy__(), ("abc/def" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/c" : stdgo.GoString)?.__copy__(), ("a/b/c" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("." : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest((".." : stdgo.GoString)?.__copy__(), (".." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("../.." : stdgo.GoString)?.__copy__(), ("../.." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("../../abc" : stdgo.GoString)?.__copy__(), ("../../abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/abc" : stdgo.GoString)?.__copy__(), ("/abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/" : stdgo.GoString)?.__copy__(), ("/" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/" : stdgo.GoString)?.__copy__(), ("abc/def" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/c/" : stdgo.GoString)?.__copy__(), ("a/b/c" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("./" : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("../" : stdgo.GoString)?.__copy__(), (".." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("../../" : stdgo.GoString)?.__copy__(), ("../.." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/abc/" : stdgo.GoString)?.__copy__(), ("/abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc//def//ghi" : stdgo.GoString)?.__copy__(), ("abc/def/ghi" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("//abc" : stdgo.GoString)?.__copy__(), ("/abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("///abc" : stdgo.GoString)?.__copy__(), ("/abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("//abc//" : stdgo.GoString)?.__copy__(), ("/abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc//" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/./def" : stdgo.GoString)?.__copy__(), ("abc/def" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/./abc/def" : stdgo.GoString)?.__copy__(), ("/abc/def" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/." : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/ghi/../jkl" : stdgo.GoString)?.__copy__(), ("abc/def/jkl" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/../ghi/../jkl" : stdgo.GoString)?.__copy__(), ("abc/jkl" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/.." : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/../.." : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/abc/def/../.." : stdgo.GoString)?.__copy__(), ("/" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/../../.." : stdgo.GoString)?.__copy__(), (".." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/abc/def/../../.." : stdgo.GoString)?.__copy__(), ("/" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def/../../../ghi/jkl/../../../mno" : stdgo.GoString)?.__copy__(), ("../../mno" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/./../def" : stdgo.GoString)?.__copy__(), ("def" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc//./../def" : stdgo.GoString)?.__copy__(), ("def" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/../../././../def" : stdgo.GoString)?.__copy__(), ("../../def" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest)) : stdgo.Slice<stdgo.path_test.Path_test.PathTest>);
/**
    
    
    
**/
var _splittests : stdgo.Slice<stdgo.path_test.Path_test.SplitTest> = (new stdgo.Slice<stdgo.path_test.Path_test.SplitTest>(5, 5, (new stdgo.path_test.Path_test.SplitTest(("a/b" : stdgo.GoString)?.__copy__(), ("a/" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.SplitTest), (new stdgo.path_test.Path_test.SplitTest(("a/b/" : stdgo.GoString)?.__copy__(), ("a/b/" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.path_test.Path_test.SplitTest), (new stdgo.path_test.Path_test.SplitTest(("a/" : stdgo.GoString)?.__copy__(), ("a/" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.path_test.Path_test.SplitTest), (new stdgo.path_test.Path_test.SplitTest(("a" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.SplitTest), (new stdgo.path_test.Path_test.SplitTest(("/" : stdgo.GoString)?.__copy__(), ("/" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.path_test.Path_test.SplitTest)) : stdgo.Slice<stdgo.path_test.Path_test.SplitTest>);
/**
    
    
    
**/
var _jointests : stdgo.Slice<stdgo.path_test.Path_test.JoinTest> = (new stdgo.Slice<stdgo.path_test.Path_test.JoinTest>(
11,
11,
(new stdgo.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>), stdgo.Go.str()?.__copy__()) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, stdgo.Go.str()?.__copy__()) : stdgo.Slice<stdgo.GoString>), stdgo.Go.str()?.__copy__()) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, ("a" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>), ("a" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>), ("a/b" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("a" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.Slice<stdgo.GoString>), ("a" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, stdgo.Go.str()?.__copy__(), ("b" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>), ("b" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("/" : stdgo.GoString)?.__copy__(), ("a" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>), ("/a" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("/" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.Slice<stdgo.GoString>), ("/" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("a/" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>), ("a/b" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ("a/" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.Slice<stdgo.GoString>), ("a" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.JoinTest),
(new stdgo.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.Slice<stdgo.GoString>), stdgo.Go.str()?.__copy__()) : stdgo.path_test.Path_test.JoinTest)) : stdgo.Slice<stdgo.path_test.Path_test.JoinTest>);
/**
    
    
    
**/
var _exttests : stdgo.Slice<stdgo.path_test.Path_test.ExtTest> = (new stdgo.Slice<stdgo.path_test.Path_test.ExtTest>(5, 5, (new stdgo.path_test.Path_test.ExtTest(("path.go" : stdgo.GoString)?.__copy__(), (".go" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.ExtTest), (new stdgo.path_test.Path_test.ExtTest(("path.pb.go" : stdgo.GoString)?.__copy__(), (".go" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.ExtTest), (new stdgo.path_test.Path_test.ExtTest(("a.dir/b" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.path_test.Path_test.ExtTest), (new stdgo.path_test.Path_test.ExtTest(("a.dir/b.go" : stdgo.GoString)?.__copy__(), (".go" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.ExtTest), (new stdgo.path_test.Path_test.ExtTest(("a.dir/" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.path_test.Path_test.ExtTest)) : stdgo.Slice<stdgo.path_test.Path_test.ExtTest>);
/**
    
    
    
**/
var _basetests : stdgo.Slice<stdgo.path_test.Path_test.PathTest> = (new stdgo.Slice<stdgo.path_test.Path_test.PathTest>(
11,
11,
(new stdgo.path_test.Path_test.PathTest(stdgo.Go.str()?.__copy__(), ("." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("." : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/." : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/" : stdgo.GoString)?.__copy__(), ("/" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("////" : stdgo.GoString)?.__copy__(), ("/" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("x/" : stdgo.GoString)?.__copy__(), ("x" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def" : stdgo.GoString)?.__copy__(), ("def" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/.x" : stdgo.GoString)?.__copy__(), (".x" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/c." : stdgo.GoString)?.__copy__(), ("c." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/c.x" : stdgo.GoString)?.__copy__(), ("c.x" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest)) : stdgo.Slice<stdgo.path_test.Path_test.PathTest>);
/**
    
    
    
**/
var _dirtests : stdgo.Slice<stdgo.path_test.Path_test.PathTest> = (new stdgo.Slice<stdgo.path_test.Path_test.PathTest>(
13,
13,
(new stdgo.path_test.Path_test.PathTest(stdgo.Go.str()?.__copy__(), ("." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("." : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/." : stdgo.GoString)?.__copy__(), ("/" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/" : stdgo.GoString)?.__copy__(), ("/" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("////" : stdgo.GoString)?.__copy__(), ("/" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("/foo" : stdgo.GoString)?.__copy__(), ("/" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("x/" : stdgo.GoString)?.__copy__(), ("x" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc" : stdgo.GoString)?.__copy__(), ("." : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc/def" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("abc////def" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/.x" : stdgo.GoString)?.__copy__(), ("a/b" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/c." : stdgo.GoString)?.__copy__(), ("a/b" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest),
(new stdgo.path_test.Path_test.PathTest(("a/b/c.x" : stdgo.GoString)?.__copy__(), ("a/b" : stdgo.GoString)?.__copy__()) : stdgo.path_test.Path_test.PathTest)) : stdgo.Slice<stdgo.path_test.Path_test.PathTest>);
/**
    
    
    
**/
var _isAbsTests : stdgo.Slice<stdgo.path_test.Path_test.IsAbsTest> = (new stdgo.Slice<stdgo.path_test.Path_test.IsAbsTest>(8, 8, (new stdgo.path_test.Path_test.IsAbsTest(stdgo.Go.str()?.__copy__(), false) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest(("/" : stdgo.GoString)?.__copy__(), true) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest(("/usr/bin/gcc" : stdgo.GoString)?.__copy__(), true) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest((".." : stdgo.GoString)?.__copy__(), false) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest(("/a/../bb" : stdgo.GoString)?.__copy__(), true) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest(("." : stdgo.GoString)?.__copy__(), false) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest(("./" : stdgo.GoString)?.__copy__(), false) : stdgo.path_test.Path_test.IsAbsTest), (new stdgo.path_test.Path_test.IsAbsTest(("lala" : stdgo.GoString)?.__copy__(), false) : stdgo.path_test.Path_test.IsAbsTest)) : stdgo.Slice<stdgo.path_test.Path_test.IsAbsTest>);
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
function exampleBase():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.base(("/a/b" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.base(("/" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.base(stdgo.Go.str()?.__copy__())));
    }
function exampleClean():Void {
        var _paths = (new stdgo.Slice<stdgo.GoString>(7, 7, ("a/c" : stdgo.GoString)?.__copy__(), ("a//c" : stdgo.GoString)?.__copy__(), ("a/c/." : stdgo.GoString)?.__copy__(), ("a/c/b/.." : stdgo.GoString)?.__copy__(), ("/../a/c" : stdgo.GoString)?.__copy__(), ("/../a/b/../././/c" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        for (__0 => _p in _paths) {
            stdgo.fmt.Fmt.printf(("Clean(%q) = %q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(stdgo.path.Path.clean(_p?.__copy__())));
        };
    }
function exampleDir():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.dir(("/a/b/c" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.dir(("a/b/c" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.dir(("/a/" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.dir(("a/" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.dir(("/" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.dir(stdgo.Go.str()?.__copy__())));
    }
function exampleExt():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.ext(("/a/b/c/bar.css" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.ext(("/" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.ext(stdgo.Go.str()?.__copy__())));
    }
function exampleIsAbs():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.isAbs(("/dev/null" : stdgo.GoString)?.__copy__())));
    }
function exampleJoin():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.join(("a" : stdgo.GoString)?.__copy__(), ("b" : stdgo.GoString)?.__copy__(), ("c" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.join(("a" : stdgo.GoString)?.__copy__(), ("b/c" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.join(("a/b" : stdgo.GoString)?.__copy__(), ("c" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.join(("a/b" : stdgo.GoString)?.__copy__(), ("../../../xyz" : stdgo.GoString)?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.join(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.join(("a" : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__())));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.path.Path.join(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString)?.__copy__())));
    }
function exampleMatch():Void {
        {
            var __tmp__ = stdgo.path.Path.match(("abc" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__());
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        };
        {
            var __tmp__ = stdgo.path.Path.match(("a*" : stdgo.GoString)?.__copy__(), ("abc" : stdgo.GoString)?.__copy__());
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        };
        {
            var __tmp__ = stdgo.path.Path.match(("a*/b" : stdgo.GoString)?.__copy__(), ("a/c/b" : stdgo.GoString)?.__copy__());
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        };
    }
function exampleSplit():Void {
        var _split:stdgo.GoString -> Void = function(_s:stdgo.GoString):Void {
            var __tmp__ = stdgo.path.Path.split(_s?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
            stdgo.fmt.Fmt.printf(("path.Split(%q) = dir: %q, file: %q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_file));
        };
        _split(("static/myfile.css" : stdgo.GoString)?.__copy__());
        _split(("myfile.css" : stdgo.GoString)?.__copy__());
        _split(stdgo.Go.str()?.__copy__());
    }
function testMatch(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _matchTests) {
            var __tmp__ = match(_tt._pattern?.__copy__(), _tt._s?.__copy__()), _ok:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_ok != _tt._match) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_tt._err))) {
                _t.errorf(("Match(%#q, %#q) = %v, %v want %v, %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tt._pattern), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._match), stdgo.Go.toInterface(_tt._err));
            };
        };
    }
function testClean(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _cleantests) {
            {
                var _s:stdgo.GoString = clean(_test._path?.__copy__())?.__copy__();
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
            {
                var _s:stdgo.GoString = clean(_test._result?.__copy__())?.__copy__();
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
function testCleanMallocs(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if (stdgo.runtime.Runtime.gomaxprocs((0 : stdgo.StdGoTypes.GoInt)) > (1 : stdgo.StdGoTypes.GoInt)) {
            _t.log(stdgo.Go.toInterface(("skipping AllocsPerRun checks; GOMAXPROCS>1" : stdgo.GoString)));
            return;
        };
        for (__0 => _test in _cleantests) {
            var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : stdgo.StdGoTypes.GoInt), function():Void {
                clean(_test._result?.__copy__());
            });
            if (_allocs > (0 : stdgo.StdGoTypes.GoFloat64)) {
                _t.errorf(("Clean(%q): %v allocs, want zero" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_allocs));
            };
        };
    }
function testSplit(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _splittests) {
            {
                var __tmp__ = split(_test._path?.__copy__()), _d:stdgo.GoString = __tmp__._0, _f:stdgo.GoString = __tmp__._1;
                if ((_d != _test._dir) || (_f != _test._file)) {
                    _t.errorf(("Split(%q) = %q, %q, want %q, %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_test._dir), stdgo.Go.toInterface(_test._file));
                };
            };
        };
    }
function testJoin(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _jointests) {
            {
                var _p:stdgo.GoString = join(..._test._elem.__toArray__())?.__copy__();
                if (_p != (_test._path)) {
                    _t.errorf(("Join(%q) = %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_test._elem), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_test._path));
                };
            };
        };
    }
function testExt(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _exttests) {
            {
                var _x:stdgo.GoString = ext(_test._path?.__copy__())?.__copy__();
                if (_x != (_test._ext)) {
                    _t.errorf(("Ext(%q) = %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._ext));
                };
            };
        };
    }
function testBase(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _basetests) {
            {
                var _s:stdgo.GoString = base(_test._path?.__copy__())?.__copy__();
                if (_s != (_test._result)) {
                    _t.errorf(("Base(%q) = %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
function testDir(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _dirtests) {
            {
                var _s:stdgo.GoString = dir(_test._path?.__copy__())?.__copy__();
                if (_s != (_test._result)) {
                    _t.errorf(("Dir(%q) = %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
function testIsAbs(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _isAbsTests) {
            {
                var _r:Bool = isAbs(_test._path?.__copy__());
                if (_r != (_test._isAbs)) {
                    _t.errorf(("IsAbs(%q) = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_test._isAbs));
                };
            };
        };
    }
