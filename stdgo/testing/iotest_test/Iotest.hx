package stdgo.testing.iotest_test;

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
	(new stdgo.testing.Testing.InternalTest(("TestWriteLogger" : GoString), stdgo.testing.iotest.Iotest.testWriteLogger) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestWriteLogger_errorOnWrite" : GoString),
		stdgo.testing.iotest.Iotest.testWriteLogger_errorOnWrite) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestReadLogger" : GoString), stdgo.testing.iotest.Iotest.testReadLogger) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestReadLogger_errorOnRead" : GoString),
		stdgo.testing.iotest.Iotest.testReadLogger_errorOnRead) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestOneByteReader_nonEmptyReader" : GoString),
		stdgo.testing.iotest.Iotest.testOneByteReader_nonEmptyReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestOneByteReader_emptyReader" : GoString),
		stdgo.testing.iotest.Iotest.testOneByteReader_emptyReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestHalfReader_nonEmptyReader" : GoString),
		stdgo.testing.iotest.Iotest.testHalfReader_nonEmptyReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestHalfReader_emptyReader" : GoString),
		stdgo.testing.iotest.Iotest.testHalfReader_emptyReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTimeOutReader_nonEmptyReader" : GoString),
		stdgo.testing.iotest.Iotest.testTimeOutReader_nonEmptyReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTimeOutReader_emptyReader" : GoString),
		stdgo.testing.iotest.Iotest.testTimeOutReader_emptyReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestDataErrReader_nonEmptyReader" : GoString),
		stdgo.testing.iotest.Iotest.testDataErrReader_nonEmptyReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestDataErrReader_emptyReader" : GoString),
		stdgo.testing.iotest.Iotest.testDataErrReader_emptyReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestErrReader" : GoString), stdgo.testing.iotest.Iotest.testErrReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestStringsReader" : GoString),
		stdgo.testing.iotest.Iotest.testStringsReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTruncateWriter" : GoString),
		stdgo.testing.iotest.Iotest.testTruncateWriter) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0,
	0) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(("ExampleErrReader" : GoString), stdgo.testing.iotest_test.Iotest_test.exampleErrReader,
		("n:   0\nerr: \"custom error\"\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

private function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = ("testing/iotest" : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
