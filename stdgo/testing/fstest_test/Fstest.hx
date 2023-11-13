package stdgo.testing.fstest_test;
import stdgo.testing.fstest.Fstest;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(5, 5, (new stdgo.testing.Testing.InternalTest(("TestMapFS" : stdgo.GoString)?.__copy__(), stdgo.testing.fstest.Fstest.testMapFS) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestMapFSChmodDot" : stdgo.GoString)?.__copy__(), stdgo.testing.fstest.Fstest.testMapFSChmodDot) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestSymlink" : stdgo.GoString)?.__copy__(), stdgo.testing.fstest.Fstest.testSymlink) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestDash" : stdgo.GoString)?.__copy__(), stdgo.testing.fstest.Fstest.testDash) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestShuffledFS" : stdgo.GoString)?.__copy__(), stdgo.testing.fstest.Fstest.testShuffledFS) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
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
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("testing/fstest" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
