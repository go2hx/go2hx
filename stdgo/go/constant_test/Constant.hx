package stdgo.go.constant_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.go.constant.Constant;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
9,
9,
(new stdgo.testing.Testing.InternalTest(("TestNumbers" : GoString), stdgo.go.constant.Constant.testNumbers) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOps" : GoString), stdgo.go.constant.Constant.testOps) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestString" : GoString), stdgo.go.constant.Constant.testString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFractions" : GoString), stdgo.go.constant.Constant.testFractions) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBytes" : GoString), stdgo.go.constant.Constant.testBytes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnknown" : GoString), stdgo.go.constant.Constant.testUnknown) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMakeFloat64" : GoString), stdgo.go.constant.Constant.testMakeFloat64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMake" : GoString), stdgo.go.constant.Constant.testMake) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBitLen" : GoString), stdgo.go.constant.Constant.testBitLen) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(1, 1, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStringAdd" : GoString), stdgo.go.constant.Constant.benchmarkStringAdd) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(6, 6, (new stdgo.testing.Testing.InternalExample(("Example_complexNumbers" : GoString), stdgo.go.constant_test.Constant_test.example_complexNumbers, ("\nCould not represent real part 25.3 exactly as float64\nliteral (25.3+55i)\ngo/constant (25.3 + 55i)\ncomplex128 (25.299999999999997+55i)\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleBinaryOp" : GoString), stdgo.go.constant_test.Constant_test.exampleBinaryOp, ("22\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleUnaryOp" : GoString), stdgo.go.constant_test.Constant_test.exampleUnaryOp, ("\nfalse\n-2.7\n65493\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleCompare" : GoString), stdgo.go.constant_test.Constant_test.exampleCompare, ("\nFrame\nZ\na\nbacon\ndefer\ngo\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleSign" : GoString), stdgo.go.constant_test.Constant_test.exampleSign, ("\n-1 -1\n-1 (0 + -1i)\n-1 (1 + -1i)\n-1 (-1 + 1i)\n-1 (-1 + -1i)\n 0 0\n 0 (0 + 0i)\n 1 1\n 1 (0 + 1i)\n 1 (1 + 1i)\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleVal" : GoString), stdgo.go.constant_test.Constant_test.exampleVal, ("\n9223372036854775807\n6121026514868073/2251799813685248\ntrue\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("go/constant" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
