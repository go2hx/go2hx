package stdgo.testing.iotest_test;
import stdgo.testing.iotest.Iotest;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
15,
15,
(new stdgo.testing.Testing.InternalTest(("TestWriteLogger" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testWriteLogger) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteLogger_errorOnWrite" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testWriteLogger_errorOnWrite) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadLogger" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testReadLogger) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadLogger_errorOnRead" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testReadLogger_errorOnRead) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOneByteReader_nonEmptyReader" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testOneByteReader_nonEmptyReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOneByteReader_emptyReader" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testOneByteReader_emptyReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHalfReader_nonEmptyReader" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testHalfReader_nonEmptyReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHalfReader_emptyReader" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testHalfReader_emptyReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTimeOutReader_nonEmptyReader" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testTimeOutReader_nonEmptyReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTimeOutReader_emptyReader" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testTimeOutReader_emptyReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDataErrReader_nonEmptyReader" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testDataErrReader_nonEmptyReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDataErrReader_emptyReader" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testDataErrReader_emptyReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrReader" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testErrReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStringsReader" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testStringsReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTruncateWriter" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest.Iotest.testTruncateWriter) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(1, 1, (new stdgo.testing.Testing.InternalExample(("ExampleErrReader" : stdgo.GoString)?.__copy__(), stdgo.testing.iotest_test.Iotest_test.exampleErrReader, ("n:   0\nerr: \"custom error\"\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("testing/iotest" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
