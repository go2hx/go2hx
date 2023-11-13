package stdgo.internal.fmtsort_test;
import stdgo.internal.fmtsort.Fmtsort;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(3, 3, (new stdgo.testing.Testing.InternalTest(("TestCompare" : stdgo.GoString)?.__copy__(), stdgo.internal.fmtsort_test.Fmtsort_test.testCompare) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestOrder" : stdgo.GoString)?.__copy__(), stdgo.internal.fmtsort_test.Fmtsort_test.testOrder) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestInterface" : stdgo.GoString)?.__copy__(), stdgo.internal.fmtsort_test.Fmtsort_test.testInterface) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("internal/fmtsort" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
