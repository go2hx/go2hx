package stdgo.errors_test;
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
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
0,
0,
(new stdgo.testing.Testing.InternalTest(("TestNewEqual" : GoString), stdgo.errors_test.Errors_test.testNewEqual) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrorMethod" : GoString), stdgo.errors_test.Errors_test.testErrorMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestJoinReturnsNil" : GoString), stdgo.errors_test.Errors_test.testJoinReturnsNil) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestJoin" : GoString), stdgo.errors_test.Errors_test.testJoin) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestJoinErrorMethod" : GoString), stdgo.errors_test.Errors_test.testJoinErrorMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIs" : GoString), stdgo.errors_test.Errors_test.testIs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAs" : GoString), stdgo.errors_test.Errors_test.testAs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAsValidation" : GoString), stdgo.errors_test.Errors_test.testAsValidation) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnwrap" : GoString), stdgo.errors_test.Errors_test.testUnwrap) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0, (new stdgo.testing.Testing.InternalExample(("ExampleNew" : GoString), stdgo.errors_test.Errors_test.exampleNew, ("emit macho dwarf: elf header corrupted\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleNew_errorf" : GoString), stdgo.errors_test.Errors_test.exampleNew_errorf, ("user \"bimmler\" (id 17) not found\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleJoin" : GoString), stdgo.errors_test.Errors_test.exampleJoin, ("err1\nerr2\nerr is err1\nerr is err2\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("Example" : GoString), stdgo.errors_test.Errors_test.example, ("1989-03-15 22:30:00 +0000 UTC: the file system has gone away\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleIs" : GoString), stdgo.errors_test.Errors_test.exampleIs, ("file does not exist\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleAs" : GoString), stdgo.errors_test.Errors_test.exampleAs, ("Failed at path: non-existing\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("errors" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
