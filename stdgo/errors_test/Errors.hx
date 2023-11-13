package stdgo.errors_test;
import stdgo.errors.Errors;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
9,
9,
(new stdgo.testing.Testing.InternalTest(("TestNewEqual" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.testNewEqual) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrorMethod" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.testErrorMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestJoinReturnsNil" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.testJoinReturnsNil) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestJoin" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.testJoin) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestJoinErrorMethod" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.testJoinErrorMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIs" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.testIs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAs" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.testAs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAsValidation" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.testAsValidation) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnwrap" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.testUnwrap) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(6, 6, (new stdgo.testing.Testing.InternalExample(("Example" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.example, ("1989-03-15 22:30:00 +0000 UTC: the file system has gone away\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleNew" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.exampleNew, ("emit macho dwarf: elf header corrupted\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleNew_errorf" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.exampleNew_errorf, ("user \"bimmler\" (id 17) not found\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleJoin" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.exampleJoin, ("err1\nerr2\nerr is err1\nerr is err2\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleIs" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.exampleIs, ("file does not exist\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleAs" : stdgo.GoString)?.__copy__(), stdgo.errors_test.Errors_test.exampleAs, ("Failed at path: non-existing\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("errors" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
