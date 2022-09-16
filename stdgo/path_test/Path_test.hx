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

private var _matchTests:Slice<stdgo.path_test.Path_test.MatchTest> = (new Slice<stdgo.path_test.Path_test.MatchTest>(0, 0,
	(new stdgo.path_test.Path_test.MatchTest((Go.str("abc") : GoString), (Go.str("abc") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("*") : GoString), (Go.str("abc") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("*c") : GoString), (Go.str("abc") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a*") : GoString), (Go.str("a") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a*") : GoString), (Go.str("abc") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a*") : GoString), (Go.str("ab/c") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a*/b") : GoString), (Go.str("abc/b") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a*/b") : GoString), (Go.str("a/c/b") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a*b*c*d*e*/f") : GoString), (Go.str("axbxcxdxe/f") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a*b*c*d*e*/f") : GoString), (Go.str("axbxcxdxexxx/f") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a*b*c*d*e*/f") : GoString), (Go.str("axbxcxdxe/xxx/f") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a*b*c*d*e*/f") : GoString), (Go.str("axbxcxdxexxx/fff") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a*b?c*x") : GoString), (Go.str("abxbbxdbxebxczzx") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a*b?c*x") : GoString), (Go.str("abxbbxdbxebxczzy") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("ab[c]") : GoString), (Go.str("abc") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("ab[b-d]") : GoString), (Go.str("abc") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("ab[e-g]") : GoString), (Go.str("abc") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("ab[^c]") : GoString), (Go.str("abc") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("ab[^b-d]") : GoString), (Go.str("abc") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("ab[^e-g]") : GoString), (Go.str("abc") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a\\*b") : GoString), (Go.str("a*b") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a\\*b") : GoString), (Go.str("ab") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a?b") : GoString), (Go.str("a☺b") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a[^a]b") : GoString), (Go.str("a☺b") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a???b") : GoString), (Go.str("a☺b") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a[^a][^a][^a]b") : GoString), (Go.str("a☺b") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[a-ζ]*") : GoString), (Go.str("α") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("*[a-ζ]") : GoString), (Go.str("A") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a?b") : GoString), (Go.str("a/b") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a*b") : GoString), (Go.str("a/b") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[\\]a]") : GoString), (Go.str("]") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[\\-]") : GoString), (Go.str("-") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[x\\-]") : GoString), (Go.str("x") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[x\\-]") : GoString), (Go.str("-") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[x\\-]") : GoString), (Go.str("z") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[\\-x]") : GoString), (Go.str("x") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[\\-x]") : GoString), (Go.str("-") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[\\-x]") : GoString), (Go.str("a") : GoString), false,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[]a]") : GoString), (Go.str("]") : GoString), false,
		errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[-]") : GoString), (Go.str("-") : GoString), false,
		errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[x-]") : GoString), (Go.str("x") : GoString), false,
		errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[x-]") : GoString), (Go.str("-") : GoString), false,
		errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[x-]") : GoString), (Go.str("z") : GoString), false,
		errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[-x]") : GoString), (Go.str("x") : GoString), false,
		errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[-x]") : GoString), (Go.str("-") : GoString), false,
		errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[-x]") : GoString), (Go.str("a") : GoString), false,
		errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("\\") : GoString), (Go.str("a") : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[a-b-c]") : GoString), (Go.str("a") : GoString), false,
		errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[") : GoString), (Go.str("a") : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[^") : GoString), (Go.str("a") : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("[^bc") : GoString), (Go.str("a") : GoString), false,
		errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a[") : GoString), (Go.str("a") : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a[") : GoString), (Go.str("ab") : GoString), false,
		errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a[") : GoString), (Go.str("x") : GoString), false, errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("a/b[") : GoString), (Go.str("x") : GoString), false,
		errBadPattern) : stdgo.path_test.Path_test.MatchTest),
	(new stdgo.path_test.Path_test.MatchTest((Go.str("*x") : GoString), (Go.str("xxx") : GoString), true,
		(null : stdgo.Error)) : stdgo.path_test.Path_test.MatchTest)) : Slice<stdgo.path_test.Path_test.MatchTest>);

private var _cleantests:Slice<stdgo.path_test.Path_test.PathTest> = (new Slice<stdgo.path_test.Path_test.PathTest>(0, 0,
	(new stdgo.path_test.Path_test.PathTest((Go.str() : GoString), (Go.str(".") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc") : GoString), (Go.str("abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/def") : GoString), (Go.str("abc/def") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("a/b/c") : GoString), (Go.str("a/b/c") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str(".") : GoString), (Go.str(".") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("..") : GoString), (Go.str("..") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("../..") : GoString), (Go.str("../..") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("../../abc") : GoString), (Go.str("../../abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("/abc") : GoString), (Go.str("/abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("/") : GoString), (Go.str("/") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/") : GoString), (Go.str("abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/def/") : GoString), (Go.str("abc/def") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("a/b/c/") : GoString), (Go.str("a/b/c") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("./") : GoString), (Go.str(".") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("../") : GoString), (Go.str("..") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("../../") : GoString), (Go.str("../..") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("/abc/") : GoString), (Go.str("/abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc//def//ghi") : GoString), (Go.str("abc/def/ghi") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("//abc") : GoString), (Go.str("/abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("///abc") : GoString), (Go.str("/abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("//abc//") : GoString), (Go.str("/abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc//") : GoString), (Go.str("abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/./def") : GoString), (Go.str("abc/def") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("/./abc/def") : GoString), (Go.str("/abc/def") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/.") : GoString), (Go.str("abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/def/ghi/../jkl") : GoString),
		(Go.str("abc/def/jkl") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/def/../ghi/../jkl") : GoString),
		(Go.str("abc/jkl") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/def/..") : GoString), (Go.str("abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/def/../..") : GoString), (Go.str(".") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("/abc/def/../..") : GoString), (Go.str("/") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/def/../../..") : GoString), (Go.str("..") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("/abc/def/../../..") : GoString), (Go.str("/") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/def/../../../ghi/jkl/../../../mno") : GoString),
		(Go.str("../../mno") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/./../def") : GoString), (Go.str("def") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc//./../def") : GoString), (Go.str("def") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/../../././../def") : GoString),
		(Go.str("../../def") : GoString)) : stdgo.path_test.Path_test.PathTest)) : Slice<stdgo.path_test.Path_test.PathTest>);

private var _splittests:Slice<stdgo.path_test.Path_test.SplitTest> = (new Slice<stdgo.path_test.Path_test.SplitTest>(0, 0,
	(new stdgo.path_test.Path_test.SplitTest((Go.str("a/b") : GoString), (Go.str("a/") : GoString),
		(Go.str("b") : GoString)) : stdgo.path_test.Path_test.SplitTest),
	(new stdgo.path_test.Path_test.SplitTest((Go.str("a/b/") : GoString), (Go.str("a/b/") : GoString),
		(Go.str() : GoString)) : stdgo.path_test.Path_test.SplitTest),
	(new stdgo.path_test.Path_test.SplitTest((Go.str("a/") : GoString), (Go.str("a/") : GoString),
		(Go.str() : GoString)) : stdgo.path_test.Path_test.SplitTest),
	(new stdgo.path_test.Path_test.SplitTest((Go.str("a") : GoString), (Go.str() : GoString), (Go.str("a") : GoString)) : stdgo.path_test.Path_test.SplitTest),
	(new stdgo.path_test.Path_test.SplitTest((Go.str("/") : GoString), (Go.str("/") : GoString),
		(Go.str() : GoString)) : stdgo.path_test.Path_test.SplitTest)) : Slice<stdgo.path_test.Path_test.SplitTest>);

private var _jointests:Slice<stdgo.path_test.Path_test.JoinTest> = (new Slice<stdgo.path_test.Path_test.JoinTest>(0, 0,
	(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0) : Slice<GoString>), (Go.str() : GoString)) : stdgo.path_test.Path_test.JoinTest),
	(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, (Go.str() : GoString)) : Slice<GoString>),
		(Go.str() : GoString)) : stdgo.path_test.Path_test.JoinTest),
	(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, (Go.str("a") : GoString)) : Slice<GoString>),
		(Go.str("a") : GoString)) : stdgo.path_test.Path_test.JoinTest),
	(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, (Go.str("a") : GoString), (Go.str("b") : GoString)) : Slice<GoString>),
		(Go.str("a/b") : GoString)) : stdgo.path_test.Path_test.JoinTest),
	(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, (Go.str("a") : GoString), (Go.str() : GoString)) : Slice<GoString>),
		(Go.str("a") : GoString)) : stdgo.path_test.Path_test.JoinTest),
	(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, (Go.str() : GoString), (Go.str("b") : GoString)) : Slice<GoString>),
		(Go.str("b") : GoString)) : stdgo.path_test.Path_test.JoinTest),
	(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, (Go.str("/") : GoString), (Go.str("a") : GoString)) : Slice<GoString>),
		(Go.str("/a") : GoString)) : stdgo.path_test.Path_test.JoinTest),
	(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, (Go.str("/") : GoString), (Go.str() : GoString)) : Slice<GoString>),
		(Go.str("/") : GoString)) : stdgo.path_test.Path_test.JoinTest),
	(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, (Go.str("a/") : GoString), (Go.str("b") : GoString)) : Slice<GoString>),
		(Go.str("a/b") : GoString)) : stdgo.path_test.Path_test.JoinTest),
	(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, (Go.str("a/") : GoString), (Go.str() : GoString)) : Slice<GoString>),
		(Go.str("a") : GoString)) : stdgo.path_test.Path_test.JoinTest),
	(new stdgo.path_test.Path_test.JoinTest((new Slice<GoString>(0, 0, (Go.str() : GoString), (Go.str() : GoString)) : Slice<GoString>),
		(Go.str() : GoString)) : stdgo.path_test.Path_test.JoinTest)) : Slice<stdgo.path_test.Path_test.JoinTest>);

private var _exttests:Slice<stdgo.path_test.Path_test.ExtTest> = (new Slice<stdgo.path_test.Path_test.ExtTest>(0, 0,
	(new stdgo.path_test.Path_test.ExtTest((Go.str("path.go") : GoString), (Go.str(".go") : GoString)) : stdgo.path_test.Path_test.ExtTest),
	(new stdgo.path_test.Path_test.ExtTest((Go.str("path.pb.go") : GoString), (Go.str(".go") : GoString)) : stdgo.path_test.Path_test.ExtTest),
	(new stdgo.path_test.Path_test.ExtTest((Go.str("a.dir/b") : GoString), (Go.str() : GoString)) : stdgo.path_test.Path_test.ExtTest),
	(new stdgo.path_test.Path_test.ExtTest((Go.str("a.dir/b.go") : GoString), (Go.str(".go") : GoString)) : stdgo.path_test.Path_test.ExtTest),
	(new stdgo.path_test.Path_test.ExtTest((Go.str("a.dir/") : GoString),
		(Go.str() : GoString)) : stdgo.path_test.Path_test.ExtTest)) : Slice<stdgo.path_test.Path_test.ExtTest>);

private var _basetests:Slice<stdgo.path_test.Path_test.PathTest> = (new Slice<stdgo.path_test.Path_test.PathTest>(0, 0,
	(new stdgo.path_test.Path_test.PathTest((Go.str() : GoString), (Go.str(".") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str(".") : GoString), (Go.str(".") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("/.") : GoString), (Go.str(".") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("/") : GoString), (Go.str("/") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("////") : GoString), (Go.str("/") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("x/") : GoString), (Go.str("x") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc") : GoString), (Go.str("abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/def") : GoString), (Go.str("def") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("a/b/.x") : GoString), (Go.str(".x") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("a/b/c.") : GoString), (Go.str("c.") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("a/b/c.x") : GoString),
		(Go.str("c.x") : GoString)) : stdgo.path_test.Path_test.PathTest)) : Slice<stdgo.path_test.Path_test.PathTest>);

private var _dirtests:Slice<stdgo.path_test.Path_test.PathTest> = (new Slice<stdgo.path_test.Path_test.PathTest>(0, 0,
	(new stdgo.path_test.Path_test.PathTest((Go.str() : GoString), (Go.str(".") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str(".") : GoString), (Go.str(".") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("/.") : GoString), (Go.str("/") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("/") : GoString), (Go.str("/") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("////") : GoString), (Go.str("/") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("/foo") : GoString), (Go.str("/") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("x/") : GoString), (Go.str("x") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc") : GoString), (Go.str(".") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc/def") : GoString), (Go.str("abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("abc////def") : GoString), (Go.str("abc") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("a/b/.x") : GoString), (Go.str("a/b") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("a/b/c.") : GoString), (Go.str("a/b") : GoString)) : stdgo.path_test.Path_test.PathTest),
	(new stdgo.path_test.Path_test.PathTest((Go.str("a/b/c.x") : GoString),
		(Go.str("a/b") : GoString)) : stdgo.path_test.Path_test.PathTest)) : Slice<stdgo.path_test.Path_test.PathTest>);

private var _isAbsTests:Slice<stdgo.path_test.Path_test.IsAbsTest> = (new Slice<stdgo.path_test.Path_test.IsAbsTest>(0, 0,
	(new stdgo.path_test.Path_test.IsAbsTest((Go.str() : GoString), false) : stdgo.path_test.Path_test.IsAbsTest),
	(new stdgo.path_test.Path_test.IsAbsTest((Go.str("/") : GoString), true) : stdgo.path_test.Path_test.IsAbsTest),
	(new stdgo.path_test.Path_test.IsAbsTest((Go.str("/usr/bin/gcc") : GoString), true) : stdgo.path_test.Path_test.IsAbsTest),
	(new stdgo.path_test.Path_test.IsAbsTest((Go.str("..") : GoString), false) : stdgo.path_test.Path_test.IsAbsTest),
	(new stdgo.path_test.Path_test.IsAbsTest((Go.str("/a/../bb") : GoString), true) : stdgo.path_test.Path_test.IsAbsTest),
	(new stdgo.path_test.Path_test.IsAbsTest((Go.str(".") : GoString), false) : stdgo.path_test.Path_test.IsAbsTest),
	(new stdgo.path_test.Path_test.IsAbsTest((Go.str("./") : GoString), false) : stdgo.path_test.Path_test.IsAbsTest),
	(new stdgo.path_test.Path_test.IsAbsTest((Go.str("lala") : GoString),
		false) : stdgo.path_test.Path_test.IsAbsTest)) : Slice<stdgo.path_test.Path_test.IsAbsTest>);

@:structInit class MatchTest {
	public var _pattern:GoString = "";
	public var _s:GoString = "";
	public var _match:Bool = false;
	public var _err:stdgo.Error = (null : stdgo.Error);

	public function new(?_pattern:GoString, ?_s:GoString, ?_match:Bool, ?_err:stdgo.Error) {
		if (_pattern != null)
			this._pattern = _pattern;
		if (_s != null)
			this._s = _s;
		if (_match != null)
			this._match = _match;
		if (_err != null)
			this._err = _err;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new MatchTest(_pattern, _s, _match, _err);
	}
}

@:structInit class PathTest {
	public var _path:GoString = "";
	public var _result:GoString = "";

	public function new(?_path:GoString, ?_result:GoString) {
		if (_path != null)
			this._path = _path;
		if (_result != null)
			this._result = _result;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new PathTest(_path, _result);
	}
}

@:structInit class SplitTest {
	public var _path:GoString = "";
	public var _dir:GoString = "";
	public var _file:GoString = "";

	public function new(?_path:GoString, ?_dir:GoString, ?_file:GoString) {
		if (_path != null)
			this._path = _path;
		if (_dir != null)
			this._dir = _dir;
		if (_file != null)
			this._file = _file;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SplitTest(_path, _dir, _file);
	}
}

@:structInit class JoinTest {
	public var _elem:Slice<GoString> = (null : Slice<GoString>);
	public var _path:GoString = "";

	public function new(?_elem:Slice<GoString>, ?_path:GoString) {
		if (_elem != null)
			this._elem = _elem;
		if (_path != null)
			this._path = _path;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new JoinTest(_elem, _path);
	}
}

@:structInit class ExtTest {
	public var _path:GoString = "";
	public var _ext:GoString = "";

	public function new(?_path:GoString, ?_ext:GoString) {
		if (_path != null)
			this._path = _path;
		if (_ext != null)
			this._ext = _ext;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ExtTest(_path, _ext);
	}
}

@:structInit class IsAbsTest {
	public var _path:GoString = "";
	public var _isAbs:Bool = false;

	public function new(?_path:GoString, ?_isAbs:Bool) {
		if (_path != null)
			this._path = _path;
		if (_isAbs != null)
			this._isAbs = _isAbs;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new IsAbsTest(_path, _isAbs);
	}
}

function exampleBase():Void {
	stdgo.fmt.Fmt.println(stdgo.path.Path.base((Go.str("/a/b") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.base((Go.str("/") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.base((Go.str() : GoString)));
}

function exampleClean():Void {
	var _paths = (new Slice<GoString>(0, 0, (Go.str("a/c") : GoString), (Go.str("a//c") : GoString), (Go.str("a/c/.") : GoString),
		(Go.str("a/c/b/..") : GoString), (Go.str("/../a/c") : GoString), (Go.str("/../a/b/../././/c") : GoString), (Go.str() : GoString)) : Slice<GoString>);
	for (_0 => _p in _paths) {
		stdgo.fmt.Fmt.printf((Go.str("Clean(%q) = %q\n") : GoString), Go.toInterface(_p), Go.toInterface(stdgo.path.Path.clean(_p)));
	};
}

function exampleDir():Void {
	stdgo.fmt.Fmt.println(stdgo.path.Path.dir((Go.str("/a/b/c") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.dir((Go.str("a/b/c") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.dir((Go.str("/a/") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.dir((Go.str("a/") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.dir((Go.str("/") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.dir((Go.str() : GoString)));
}

function exampleExt():Void {
	stdgo.fmt.Fmt.println(stdgo.path.Path.ext((Go.str("/a/b/c/bar.css") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.ext((Go.str("/") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.ext((Go.str() : GoString)));
}

function exampleIsAbs():Void {
	stdgo.fmt.Fmt.println(stdgo.path.Path.isAbs((Go.str("/dev/null") : GoString)));
}

function exampleJoin():Void {
	stdgo.fmt.Fmt.println(stdgo.path.Path.join((Go.str("a") : GoString), (Go.str("b") : GoString), (Go.str("c") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.join((Go.str("a") : GoString), (Go.str("b/c") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.join((Go.str("a/b") : GoString), (Go.str("c") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.join((Go.str("a/b") : GoString), (Go.str("../../../xyz") : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.join((Go.str() : GoString), (Go.str() : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.join((Go.str("a") : GoString), (Go.str() : GoString)));
	stdgo.fmt.Fmt.println(stdgo.path.Path.join((Go.str() : GoString), (Go.str("a") : GoString)));
}

function exampleMatch():Void {
	{
		var __tmp__ = stdgo.path.Path.match((Go.str("abc") : GoString), (Go.str("abc") : GoString));
		stdgo.fmt.Fmt.println((__tmp__._0 : Bool), (__tmp__._1 : stdgo.Error));
	};
	{
		var __tmp__ = stdgo.path.Path.match((Go.str("a*") : GoString), (Go.str("abc") : GoString));
		stdgo.fmt.Fmt.println((__tmp__._0 : Bool), (__tmp__._1 : stdgo.Error));
	};
	{
		var __tmp__ = stdgo.path.Path.match((Go.str("a*/b") : GoString), (Go.str("a/c/b") : GoString));
		stdgo.fmt.Fmt.println((__tmp__._0 : Bool), (__tmp__._1 : stdgo.Error));
	};
}

function exampleSplit():Void {
	var _split:GoString->Void = function(_s:GoString):Void {
		var __tmp__ = stdgo.path.Path.split(_s), _dir:GoString = __tmp__._0, _file:GoString = __tmp__._1;
		stdgo.fmt.Fmt.printf((Go.str("path.Split(%q) = dir: %q, file: %q\n") : GoString), Go.toInterface(_s), Go.toInterface(_dir), Go.toInterface(_file));
	};
	_split((Go.str("static/myfile.css") : GoString));
	_split((Go.str("myfile.css") : GoString));
	_split((Go.str() : GoString));
}

function testMatch(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _tt in _matchTests) {
		var __tmp__ = match(_tt._pattern, _tt._s),
			_ok:Bool = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if ((_ok != _tt._match) || (_err != _tt._err)) {
			_t.errorf((Go.str("Match(%#q, %#q) = %v, %v want %v, %v") : GoString), Go.toInterface(_tt._pattern), Go.toInterface(_tt._s), Go.toInterface(_ok),
				Go.toInterface(_err), Go.toInterface(_tt._match), Go.toInterface(_tt._err));
		};
	};
}

function testClean(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _cleantests) {
		{
			var _s:GoString = clean(_test._path);
			if (_s != _test._result) {
				_t.errorf((Go.str("Clean(%q) = %q, want %q") : GoString), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
			};
		};
		{
			var _s:GoString = clean(_test._result);
			if (_s != _test._result) {
				_t.errorf((Go.str("Clean(%q) = %q, want %q") : GoString), Go.toInterface(_test._result), Go.toInterface(_s), Go.toInterface(_test._result));
			};
		};
	};
}

function testCleanMallocs(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (stdgo.testing.Testing.short()) {
		_t.skip(Go.toInterface((Go.str("skipping malloc count in short mode") : GoString)));
	};
	if (stdgo.runtime.Runtime.gomaxprocs((0 : GoInt)) > (1 : GoInt)) {
		_t.log(Go.toInterface((Go.str("skipping AllocsPerRun checks; GOMAXPROCS>1") : GoString)));
		return;
	};
	for (_0 => _test in _cleantests) {
		var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), function():Void {
			clean(_test._result);
		});
		if (_allocs > (0 : GoFloat64)) {
			_t.errorf((Go.str("Clean(%q): %v allocs, want zero") : GoString), Go.toInterface(_test._result), Go.toInterface(_allocs));
		};
	};
}

function testSplit(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _splittests) {
		{
			var __tmp__ = split(_test._path),
				_d:GoString = __tmp__._0,
				_f:GoString = __tmp__._1;
			if ((_d != _test._dir) || (_f != _test._file)) {
				_t.errorf((Go.str("Split(%q) = %q, %q, want %q, %q") : GoString), Go.toInterface(_test._path), Go.toInterface(_d), Go.toInterface(_f),
					Go.toInterface(_test._dir), Go.toInterface(_test._file));
			};
		};
	};
}

function testJoin(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _jointests) {
		{
			var _p:GoString = join(..._test._elem.__toArray__());
			if (_p != _test._path) {
				_t.errorf((Go.str("Join(%q) = %q, want %q") : GoString), Go.toInterface(_test._elem), Go.toInterface(_p), Go.toInterface(_test._path));
			};
		};
	};
}

function testExt(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _exttests) {
		{
			var _x:GoString = ext(_test._path);
			if (_x != _test._ext) {
				_t.errorf((Go.str("Ext(%q) = %q, want %q") : GoString), Go.toInterface(_test._path), Go.toInterface(_x), Go.toInterface(_test._ext));
			};
		};
	};
}

function testBase(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _basetests) {
		{
			var _s:GoString = base(_test._path);
			if (_s != _test._result) {
				_t.errorf((Go.str("Base(%q) = %q, want %q") : GoString), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
			};
		};
	};
}

function testDir(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _dirtests) {
		{
			var _s:GoString = dir(_test._path);
			if (_s != _test._result) {
				_t.errorf((Go.str("Dir(%q) = %q, want %q") : GoString), Go.toInterface(_test._path), Go.toInterface(_s), Go.toInterface(_test._result));
			};
		};
	};
}

function testIsAbs(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _test in _isAbsTests) {
		{
			var _r:Bool = isAbs(_test._path);
			if (_r != _test._isAbs) {
				_t.errorf((Go.str("IsAbs(%q) = %v, want %v") : GoString), Go.toInterface(_test._path), Go.toInterface(_r), Go.toInterface(_test._isAbs));
			};
		};
	};
}
