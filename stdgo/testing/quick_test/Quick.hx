package stdgo.testing.quick_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.testing.quick.Quick;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0, (new stdgo.testing.Testing.InternalTest(("TestCheckEqual" : GoString), stdgo.testing.quick.Quick.testCheckEqual) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestCheckProperty" : GoString), stdgo.testing.quick.Quick.testCheckProperty) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestFailure" : GoString), stdgo.testing.quick.Quick.testFailure) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestRecursive" : GoString), stdgo.testing.quick.Quick.testRecursive) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestEmptyStruct" : GoString), stdgo.testing.quick.Quick.testEmptyStruct) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestMutuallyRecursive" : GoString), stdgo.testing.quick.Quick.testMutuallyRecursive) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestNonZeroSliceAndMap" : GoString), stdgo.testing.quick.Quick.testNonZeroSliceAndMap) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestInt64" : GoString), stdgo.testing.quick.Quick.testInt64) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("testing/quick" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
