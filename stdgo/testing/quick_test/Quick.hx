package stdgo.testing.quick_test;
import stdgo.testing.quick.Quick;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(8, 8, (new stdgo.testing.Testing.InternalTest(("TestCheckEqual" : stdgo.GoString)?.__copy__(), stdgo.testing.quick.Quick.testCheckEqual) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestCheckProperty" : stdgo.GoString)?.__copy__(), stdgo.testing.quick.Quick.testCheckProperty) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestFailure" : stdgo.GoString)?.__copy__(), stdgo.testing.quick.Quick.testFailure) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestRecursive" : stdgo.GoString)?.__copy__(), stdgo.testing.quick.Quick.testRecursive) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestEmptyStruct" : stdgo.GoString)?.__copy__(), stdgo.testing.quick.Quick.testEmptyStruct) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestMutuallyRecursive" : stdgo.GoString)?.__copy__(), stdgo.testing.quick.Quick.testMutuallyRecursive) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestNonZeroSliceAndMap" : stdgo.GoString)?.__copy__(), stdgo.testing.quick.Quick.testNonZeroSliceAndMap) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestInt64" : stdgo.GoString)?.__copy__(), stdgo.testing.quick.Quick.testInt64) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
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
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("testing/quick" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
