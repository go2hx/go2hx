package stdgo._internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
var _matchTests : stdgo.Slice<stdgo._internal.path_test.Path_test.MatchTest> = (new stdgo.Slice<stdgo._internal.path_test.Path_test.MatchTest>(56, 56, ...[
(new stdgo._internal.path_test.Path_test.MatchTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("*" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("*c" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a*" : stdgo.GoString), ("a" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a*" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a*" : stdgo.GoString), ("ab/c" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a*/b" : stdgo.GoString), ("abc/b" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a*/b" : stdgo.GoString), ("a/c/b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString), ("axbxcxdxe/f" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString), ("axbxcxdxexxx/f" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString), ("axbxcxdxe/xxx/f" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a*b*c*d*e*/f" : stdgo.GoString), ("axbxcxdxexxx/fff" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a*b?c*x" : stdgo.GoString), ("abxbbxdbxebxczzx" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a*b?c*x" : stdgo.GoString), ("abxbbxdbxebxczzy" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("ab[c]" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("ab[b-d]" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("ab[e-g]" : stdgo.GoString), ("abc" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("ab[^c]" : stdgo.GoString), ("abc" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("ab[^b-d]" : stdgo.GoString), ("abc" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("ab[^e-g]" : stdgo.GoString), ("abc" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a\\*b" : stdgo.GoString), ("a*b" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a\\*b" : stdgo.GoString), ("ab" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a?b" : stdgo.GoString), ("a☺b" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a[^a]b" : stdgo.GoString), ("a☺b" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a???b" : stdgo.GoString), ("a☺b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a[^a][^a][^a]b" : stdgo.GoString), ("a☺b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[a-ζ]*" : stdgo.GoString), ("α" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("*[a-ζ]" : stdgo.GoString), ("A" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a?b" : stdgo.GoString), ("a/b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a*b" : stdgo.GoString), ("a/b" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[\\]a]" : stdgo.GoString), ("]" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[\\-]" : stdgo.GoString), ("-" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[x\\-]" : stdgo.GoString), ("x" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[x\\-]" : stdgo.GoString), ("-" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[x\\-]" : stdgo.GoString), ("z" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[\\-x]" : stdgo.GoString), ("x" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[\\-x]" : stdgo.GoString), ("-" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[\\-x]" : stdgo.GoString), ("a" : stdgo.GoString), false, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[]a]" : stdgo.GoString), ("]" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[-]" : stdgo.GoString), ("-" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[x-]" : stdgo.GoString), ("x" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[x-]" : stdgo.GoString), ("-" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[x-]" : stdgo.GoString), ("z" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[-x]" : stdgo.GoString), ("x" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[-x]" : stdgo.GoString), ("-" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[-x]" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("\\" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[a-b-c]" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[^" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("[^bc" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a[" : stdgo.GoString), ("a" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a[" : stdgo.GoString), ("ab" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a[" : stdgo.GoString), ("x" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("a/b[" : stdgo.GoString), ("x" : stdgo.GoString), false, errBadPattern) : stdgo._internal.path_test.Path_test.MatchTest),
(new stdgo._internal.path_test.Path_test.MatchTest(("*x" : stdgo.GoString), ("xxx" : stdgo.GoString), true, (null : stdgo.Error)) : stdgo._internal.path_test.Path_test.MatchTest)].concat([for (i in 56 ... (56 > 56 ? 56 : 56 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path_test.Path_test.MatchTest)])) : stdgo.Slice<stdgo._internal.path_test.Path_test.MatchTest>);
var _cleantests : stdgo.Slice<stdgo._internal.path_test.Path_test.PathTest> = (new stdgo.Slice<stdgo._internal.path_test.Path_test.PathTest>(36, 36, ...[
(new stdgo._internal.path_test.Path_test.PathTest(stdgo.Go.str()?.__copy__(), ("." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/def" : stdgo.GoString), ("abc/def" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("a/b/c" : stdgo.GoString), ("a/b/c" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest((".." : stdgo.GoString), (".." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("../.." : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("../../abc" : stdgo.GoString), ("../../abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("/abc" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("/" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/def/" : stdgo.GoString), ("abc/def" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("a/b/c/" : stdgo.GoString), ("a/b/c" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("./" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("../" : stdgo.GoString), (".." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("../../" : stdgo.GoString), ("../.." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("/abc/" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc//def//ghi" : stdgo.GoString), ("abc/def/ghi" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("//abc" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("///abc" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("//abc//" : stdgo.GoString), ("/abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc//" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/./def" : stdgo.GoString), ("abc/def" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("/./abc/def" : stdgo.GoString), ("/abc/def" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/." : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/def/ghi/../jkl" : stdgo.GoString), ("abc/def/jkl" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/def/../ghi/../jkl" : stdgo.GoString), ("abc/jkl" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/def/.." : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/def/../.." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("/abc/def/../.." : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/def/../../.." : stdgo.GoString), (".." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("/abc/def/../../.." : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/def/../../../ghi/jkl/../../../mno" : stdgo.GoString), ("../../mno" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/./../def" : stdgo.GoString), ("def" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc//./../def" : stdgo.GoString), ("def" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/../../././../def" : stdgo.GoString), ("../../def" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest)].concat([for (i in 36 ... (36 > 36 ? 36 : 36 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path_test.Path_test.PathTest)])) : stdgo.Slice<stdgo._internal.path_test.Path_test.PathTest>);
var _splittests : stdgo.Slice<stdgo._internal.path_test.Path_test.SplitTest> = (new stdgo.Slice<stdgo._internal.path_test.Path_test.SplitTest>(5, 5, ...[(new stdgo._internal.path_test.Path_test.SplitTest(("a/b" : stdgo.GoString), ("a/" : stdgo.GoString), ("b" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.SplitTest), (new stdgo._internal.path_test.Path_test.SplitTest(("a/b/" : stdgo.GoString), ("a/b/" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path_test.Path_test.SplitTest), (new stdgo._internal.path_test.Path_test.SplitTest(("a/" : stdgo.GoString), ("a/" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path_test.Path_test.SplitTest), (new stdgo._internal.path_test.Path_test.SplitTest(("a" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.SplitTest), (new stdgo._internal.path_test.Path_test.SplitTest(("/" : stdgo.GoString), ("/" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path_test.Path_test.SplitTest)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path_test.Path_test.SplitTest)])) : stdgo.Slice<stdgo._internal.path_test.Path_test.SplitTest>);
var _jointests : stdgo.Slice<stdgo._internal.path_test.Path_test.JoinTest> = (new stdgo.Slice<stdgo._internal.path_test.Path_test.JoinTest>(11, 11, ...[
(new stdgo._internal.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>), stdgo.Go.str()?.__copy__()) : stdgo._internal.path_test.Path_test.JoinTest),
(new stdgo._internal.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), stdgo.Go.str()?.__copy__()) : stdgo._internal.path_test.Path_test.JoinTest),
(new stdgo._internal.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("a" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.JoinTest),
(new stdgo._internal.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("a/b" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.JoinTest),
(new stdgo._internal.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), ("a" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.JoinTest),
(new stdgo._internal.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("b" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.JoinTest),
(new stdgo._internal.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("/" : stdgo.GoString), ("a" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("/a" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.JoinTest),
(new stdgo._internal.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("/" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), ("/" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.JoinTest),
(new stdgo._internal.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a/" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), ("a/b" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.JoinTest),
(new stdgo._internal.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a/" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), ("a" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.JoinTest),
(new stdgo._internal.path_test.Path_test.JoinTest((new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), stdgo.Go.str()?.__copy__()) : stdgo._internal.path_test.Path_test.JoinTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path_test.Path_test.JoinTest)])) : stdgo.Slice<stdgo._internal.path_test.Path_test.JoinTest>);
var _exttests : stdgo.Slice<stdgo._internal.path_test.Path_test.ExtTest> = (new stdgo.Slice<stdgo._internal.path_test.Path_test.ExtTest>(5, 5, ...[(new stdgo._internal.path_test.Path_test.ExtTest(("path.go" : stdgo.GoString), (".go" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.ExtTest), (new stdgo._internal.path_test.Path_test.ExtTest(("path.pb.go" : stdgo.GoString), (".go" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.ExtTest), (new stdgo._internal.path_test.Path_test.ExtTest(("a.dir/b" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path_test.Path_test.ExtTest), (new stdgo._internal.path_test.Path_test.ExtTest(("a.dir/b.go" : stdgo.GoString), (".go" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.ExtTest), (new stdgo._internal.path_test.Path_test.ExtTest(("a.dir/" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.path_test.Path_test.ExtTest)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path_test.Path_test.ExtTest)])) : stdgo.Slice<stdgo._internal.path_test.Path_test.ExtTest>);
var _basetests : stdgo.Slice<stdgo._internal.path_test.Path_test.PathTest> = (new stdgo.Slice<stdgo._internal.path_test.Path_test.PathTest>(11, 11, ...[
(new stdgo._internal.path_test.Path_test.PathTest(stdgo.Go.str()?.__copy__(), ("." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("/." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("/" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("////" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("x/" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/def" : stdgo.GoString), ("def" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("a/b/.x" : stdgo.GoString), (".x" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("a/b/c." : stdgo.GoString), ("c." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("a/b/c.x" : stdgo.GoString), ("c.x" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path_test.Path_test.PathTest)])) : stdgo.Slice<stdgo._internal.path_test.Path_test.PathTest>);
var _dirtests : stdgo.Slice<stdgo._internal.path_test.Path_test.PathTest> = (new stdgo.Slice<stdgo._internal.path_test.Path_test.PathTest>(13, 13, ...[
(new stdgo._internal.path_test.Path_test.PathTest(stdgo.Go.str()?.__copy__(), ("." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("." : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("/." : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("/" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("////" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("/foo" : stdgo.GoString), ("/" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("x/" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc" : stdgo.GoString), ("." : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc/def" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("abc////def" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("a/b/.x" : stdgo.GoString), ("a/b" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("a/b/c." : stdgo.GoString), ("a/b" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest),
(new stdgo._internal.path_test.Path_test.PathTest(("a/b/c.x" : stdgo.GoString), ("a/b" : stdgo.GoString)) : stdgo._internal.path_test.Path_test.PathTest)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path_test.Path_test.PathTest)])) : stdgo.Slice<stdgo._internal.path_test.Path_test.PathTest>);
var _isAbsTests : stdgo.Slice<stdgo._internal.path_test.Path_test.IsAbsTest> = (new stdgo.Slice<stdgo._internal.path_test.Path_test.IsAbsTest>(8, 8, ...[(new stdgo._internal.path_test.Path_test.IsAbsTest(stdgo.Go.str()?.__copy__(), false) : stdgo._internal.path_test.Path_test.IsAbsTest), (new stdgo._internal.path_test.Path_test.IsAbsTest(("/" : stdgo.GoString), true) : stdgo._internal.path_test.Path_test.IsAbsTest), (new stdgo._internal.path_test.Path_test.IsAbsTest(("/usr/bin/gcc" : stdgo.GoString), true) : stdgo._internal.path_test.Path_test.IsAbsTest), (new stdgo._internal.path_test.Path_test.IsAbsTest((".." : stdgo.GoString), false) : stdgo._internal.path_test.Path_test.IsAbsTest), (new stdgo._internal.path_test.Path_test.IsAbsTest(("/a/../bb" : stdgo.GoString), true) : stdgo._internal.path_test.Path_test.IsAbsTest), (new stdgo._internal.path_test.Path_test.IsAbsTest(("." : stdgo.GoString), false) : stdgo._internal.path_test.Path_test.IsAbsTest), (new stdgo._internal.path_test.Path_test.IsAbsTest(("./" : stdgo.GoString), false) : stdgo._internal.path_test.Path_test.IsAbsTest), (new stdgo._internal.path_test.Path_test.IsAbsTest(("lala" : stdgo.GoString), false) : stdgo._internal.path_test.Path_test.IsAbsTest)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.path_test.Path_test.IsAbsTest)])) : stdgo.Slice<stdgo._internal.path_test.Path_test.IsAbsTest>);
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
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.base(("/a/b" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.base(("/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.base(stdgo.Go.str()?.__copy__())));
    }
function exampleClean():Void {
        var _paths = (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("a/c" : stdgo.GoString), ("a//c" : stdgo.GoString), ("a/c/." : stdgo.GoString), ("a/c/b/.." : stdgo.GoString), ("/../a/c" : stdgo.GoString), ("/../a/b/../././/c" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _p in _paths) {
            stdgo._internal.fmt.Fmt.printf(("Clean(%q) = %q\n" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(stdgo._internal.path.Path.clean(_p?.__copy__())));
        };
    }
function exampleDir():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.dir(("/a/b/c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.dir(("a/b/c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.dir(("/a/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.dir(("a/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.dir(("/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.dir(stdgo.Go.str()?.__copy__())));
    }
function exampleExt():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.ext(("/a/b/c/bar.css" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.ext(("/" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.ext(stdgo.Go.str()?.__copy__())));
    }
function exampleIsAbs():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.isAbs(("/dev/null" : stdgo.GoString))));
    }
function exampleJoin():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.join(("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.join(("a" : stdgo.GoString), ("b/c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.join(("a/b" : stdgo.GoString), ("c" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.join(("a/b" : stdgo.GoString), ("../../../xyz" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.join(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.join(("a" : stdgo.GoString), stdgo.Go.str()?.__copy__())));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.path.Path.join(stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString))));
    }
function exampleMatch():Void {
        ({
            var __tmp__ = stdgo._internal.path.Path.match(("abc" : stdgo.GoString), ("abc" : stdgo.GoString));
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
        ({
            var __tmp__ = stdgo._internal.path.Path.match(("a*" : stdgo.GoString), ("abc" : stdgo.GoString));
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
        ({
            var __tmp__ = stdgo._internal.path.Path.match(("a*/b" : stdgo.GoString), ("a/c/b" : stdgo.GoString));
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((__tmp__._0 : Bool)), stdgo.Go.toInterface((__tmp__._1 : stdgo.Error)));
        });
    }
function exampleSplit():Void {
        var _split:stdgo.GoString -> Void = function(_s:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.path.Path.split(_s?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
            stdgo._internal.fmt.Fmt.printf(("path.Split(%q) = dir: %q, file: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_file));
        };
        _split(("static/myfile.css" : stdgo.GoString));
        _split(("myfile.css" : stdgo.GoString));
        _split(stdgo.Go.str()?.__copy__());
    }
function testMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _matchTests) {
            var __tmp__ = match(_tt._pattern?.__copy__(), _tt._s?.__copy__()), _ok:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_ok != _tt._match) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_tt._err)) : Bool)) {
                _t.errorf(("Match(%#q, %#q) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._pattern), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._match), stdgo.Go.toInterface(_tt._err));
            };
        };
    }
function testClean(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _cleantests) {
            {
                var _s:stdgo.GoString = clean(_test._path?.__copy__())?.__copy__();
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
            {
                var _s:stdgo.GoString = clean(_test._result?.__copy__())?.__copy__();
                if (_s != (_test._result)) {
                    _t.errorf(("Clean(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
function testCleanMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        };
        if ((stdgo._internal.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.log(stdgo.Go.toInterface(("skipping AllocsPerRun checks; GOMAXPROCS>1" : stdgo.GoString)));
            return;
        };
        for (__16 => _test in _cleantests) {
            var _allocs:stdgo.GoFloat64 = stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
                clean(_test._result?.__copy__());
            });
            if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("Clean(%q): %v allocs, want zero" : stdgo.GoString), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_allocs));
            };
        };
    }
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _splittests) {
            {
                var __tmp__ = split(_test._path?.__copy__()), _d:stdgo.GoString = __tmp__._0, _f:stdgo.GoString = __tmp__._1;
                if (((_d != _test._dir) || (_f != _test._file) : Bool)) {
                    _t.errorf(("Split(%q) = %q, %q, want %q, %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_test._dir), stdgo.Go.toInterface(_test._file));
                };
            };
        };
    }
function testJoin(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _jointests) {
            {
                var _p:stdgo.GoString = join(...(_test._elem : Array<stdgo.GoString>))?.__copy__();
                if (_p != (_test._path)) {
                    _t.errorf(("Join(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._elem), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_test._path));
                };
            };
        };
    }
function testExt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _exttests) {
            {
                var _x:stdgo.GoString = ext(_test._path?.__copy__())?.__copy__();
                if (_x != (_test._ext)) {
                    _t.errorf(("Ext(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_test._ext));
                };
            };
        };
    }
function testBase(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _basetests) {
            {
                var _s:stdgo.GoString = base(_test._path?.__copy__())?.__copy__();
                if (_s != (_test._result)) {
                    _t.errorf(("Base(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
function testDir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _dirtests) {
            {
                var _s:stdgo.GoString = dir(_test._path?.__copy__())?.__copy__();
                if (_s != (_test._result)) {
                    _t.errorf(("Dir(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._result));
                };
            };
        };
    }
function testIsAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _isAbsTests) {
            {
                var _r:Bool = isAbs(_test._path?.__copy__());
                if (_r != (_test._isAbs)) {
                    _t.errorf(("IsAbs(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._path), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_test._isAbs));
                };
            };
        };
    }
