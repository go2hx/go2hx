package stdgo.io.fs_test;

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
	(new stdgo.testing.Testing.InternalTest(("TestValidPath" : GoString), stdgo.io.fs_test.Fs_test.testValidPath) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestGlob" : GoString), stdgo.io.fs_test.Fs_test.testGlob) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestGlobError" : GoString), stdgo.io.fs_test.Fs_test.testGlobError) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestCVE202230630" : GoString), stdgo.io.fs_test.Fs_test.testCVE202230630) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestGlobMethod" : GoString), stdgo.io.fs_test.Fs_test.testGlobMethod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestReadDir" : GoString), stdgo.io.fs_test.Fs_test.testReadDir) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestFileInfoToDirEntry" : GoString),
		stdgo.io.fs_test.Fs_test.testFileInfoToDirEntry) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestReadFile" : GoString), stdgo.io.fs_test.Fs_test.testReadFile) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestStat" : GoString), stdgo.io.fs_test.Fs_test.testStat) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSub" : GoString), stdgo.io.fs_test.Fs_test.testSub) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestWalkDir" : GoString), stdgo.io.fs_test.Fs_test.testWalkDir) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue51617" : GoString),
		stdgo.io.fs_test.Fs_test.testIssue51617) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0,
	0) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0,
	0) : Slice<stdgo.testing.Testing.InternalExample>);

private function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = ("io/fs" : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
