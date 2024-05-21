package stdgo._internal.testing.iotest_test;
import stdgo._internal.testing.iotest.Iotest;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(15, 15, ...[
(new stdgo._internal.testing.Testing.InternalTest(("TestWriteLogger" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testWriteLogger) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriteLogger_errorOnWrite" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testWriteLogger_errorOnWrite) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadLogger" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testReadLogger) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadLogger_errorOnRead" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testReadLogger_errorOnRead) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOneByteReader_nonEmptyReader" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testOneByteReader_nonEmptyReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOneByteReader_emptyReader" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testOneByteReader_emptyReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestHalfReader_nonEmptyReader" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testHalfReader_nonEmptyReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestHalfReader_emptyReader" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testHalfReader_emptyReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestTimeOutReader_nonEmptyReader" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testTimeOutReader_nonEmptyReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestTimeOutReader_emptyReader" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testTimeOutReader_emptyReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDataErrReader_nonEmptyReader" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testDataErrReader_nonEmptyReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDataErrReader_emptyReader" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testDataErrReader_emptyReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestErrReader" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testErrReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStringsReader" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testStringsReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestTruncateWriter" : stdgo.GoString), stdgo._internal.testing.iotest.Iotest.testTruncateWriter) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalBenchmark)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalFuzzTarget)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(1, 1, ...[(new stdgo._internal.testing.Testing.InternalExample(("ExampleErrReader" : stdgo.GoString), stdgo._internal.testing.iotest_test.Iotest_test.exampleErrReader, ("n:   0\nerr: \"custom error\"\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("testing/iotest" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
