package stdgo.path_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMatch") : GoString), stdgo.path_test.Path_test.testMatch) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestClean") : GoString), stdgo.path_test.Path_test.testClean) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCleanMallocs") : GoString),
		stdgo.path_test.Path_test.testCleanMallocs) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSplit") : GoString), stdgo.path_test.Path_test.testSplit) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestJoin") : GoString), stdgo.path_test.Path_test.testJoin) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestExt") : GoString), stdgo.path_test.Path_test.testExt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestBase") : GoString), stdgo.path_test.Path_test.testBase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestDir") : GoString), stdgo.path_test.Path_test.testDir) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsAbs") : GoString),
		stdgo.path_test.Path_test.testIsAbs) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0,
	0) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleBase") : GoString), stdgo.path_test.Path_test.exampleBase, (Go.str("b\n/\n.\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleClean") : GoString), stdgo.path_test.Path_test.exampleClean,
		(Go.str("Clean(\"a/c\") = \"a/c\"\nClean(\"a//c\") = \"a/c\"\nClean(\"a/c/.\") = \"a/c\"\nClean(\"a/c/b/..\") = \"a/c\"\nClean(\"/../a/c\") = \"/a/c\"\nClean(\"/../a/b/../././/c\") = \"/a/c\"\nClean(\"\") = \".\"\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleDir") : GoString), stdgo.path_test.Path_test.exampleDir,
		(Go.str("/a/b\na/b\n/a\na\n/\n.\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleExt") : GoString), stdgo.path_test.Path_test.exampleExt, (Go.str(".css\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIsAbs") : GoString), stdgo.path_test.Path_test.exampleIsAbs, (Go.str("true\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleJoin") : GoString), stdgo.path_test.Path_test.exampleJoin,
		(Go.str("a/b/c\na/b/c\na/b/c\n../xyz\n\na\na\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleMatch") : GoString), stdgo.path_test.Path_test.exampleMatch,
		(Go.str("true <nil>\ntrue <nil>\nfalse <nil>\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSplit") : GoString), stdgo.path_test.Path_test.exampleSplit,
		(Go.str("path.Split(\"static/myfile.css\") = dir: \"static/\", file: \"myfile.css\"\npath.Split(\"myfile.css\") = dir: \"\", file: \"myfile.css\"\npath.Split(\"\") = dir: \"\", file: \"\"\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = (Go.str("path") : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
