package stdgo.go.constant_test;
import stdgo.go.constant.Constant;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
9,
9,
(new stdgo.testing.Testing.InternalTest(("TestNumbers" : stdgo.GoString)?.__copy__(), stdgo.go.constant.Constant.testNumbers) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOps" : stdgo.GoString)?.__copy__(), stdgo.go.constant.Constant.testOps) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestString" : stdgo.GoString)?.__copy__(), stdgo.go.constant.Constant.testString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFractions" : stdgo.GoString)?.__copy__(), stdgo.go.constant.Constant.testFractions) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBytes" : stdgo.GoString)?.__copy__(), stdgo.go.constant.Constant.testBytes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnknown" : stdgo.GoString)?.__copy__(), stdgo.go.constant.Constant.testUnknown) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMakeFloat64" : stdgo.GoString)?.__copy__(), stdgo.go.constant.Constant.testMakeFloat64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMake" : stdgo.GoString)?.__copy__(), stdgo.go.constant.Constant.testMake) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBitLen" : stdgo.GoString)?.__copy__(), stdgo.go.constant.Constant.testBitLen) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(1, 1, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStringAdd" : stdgo.GoString)?.__copy__(), stdgo.go.constant.Constant.benchmarkStringAdd) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(6, 6, (new stdgo.testing.Testing.InternalExample(("Example_complexNumbers" : stdgo.GoString)?.__copy__(), stdgo.go.constant_test.Constant_test.example_complexNumbers, ("\nCould not represent real part 25.3 exactly as float64\nliteral (25.3+55i)\ngo/constant (25.3 + 55i)\ncomplex128 (25.299999999999997+55i)\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleBinaryOp" : stdgo.GoString)?.__copy__(), stdgo.go.constant_test.Constant_test.exampleBinaryOp, ("22\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleUnaryOp" : stdgo.GoString)?.__copy__(), stdgo.go.constant_test.Constant_test.exampleUnaryOp, ("\nfalse\n-2.7\n65493\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleCompare" : stdgo.GoString)?.__copy__(), stdgo.go.constant_test.Constant_test.exampleCompare, ("\nFrame\nZ\na\nbacon\ndefer\ngo\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleSign" : stdgo.GoString)?.__copy__(), stdgo.go.constant_test.Constant_test.exampleSign, ("\n-1 -1\n-1 (0 + -1i)\n-1 (1 + -1i)\n-1 (-1 + 1i)\n-1 (-1 + -1i)\n 0 0\n 0 (0 + 0i)\n 1 1\n 1 (0 + 1i)\n 1 (1 + 1i)\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleVal" : stdgo.GoString)?.__copy__(), stdgo.go.constant_test.Constant_test.exampleVal, ("\n9223372036854775807\n6121026514868073/2251799813685248\ntrue\nfalse\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("go/constant" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
