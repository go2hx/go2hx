package stdgo.go.constant_test;
import stdgo._internal.go.constant.Constant;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(
9,
9,
(new stdgo._internal.testing.Testing.InternalTest(("TestNumbers" : stdgo.GoString), stdgo._internal.go.constant.Constant.testNumbers) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOps" : stdgo.GoString), stdgo._internal.go.constant.Constant.testOps) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestString" : stdgo.GoString), stdgo._internal.go.constant.Constant.testString) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFractions" : stdgo.GoString), stdgo._internal.go.constant.Constant.testFractions) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBytes" : stdgo.GoString), stdgo._internal.go.constant.Constant.testBytes) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUnknown" : stdgo.GoString), stdgo._internal.go.constant.Constant.testUnknown) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMakeFloat64" : stdgo.GoString), stdgo._internal.go.constant.Constant.testMakeFloat64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMake" : stdgo.GoString), stdgo._internal.go.constant.Constant.testMake) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBitLen" : stdgo.GoString), stdgo._internal.go.constant.Constant.testBitLen) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(1, 1, (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkStringAdd" : stdgo.GoString), stdgo._internal.go.constant.Constant.benchmarkStringAdd) : stdgo._internal.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(6, 6, (new stdgo._internal.testing.Testing.InternalExample(("Example_complexNumbers" : stdgo.GoString), stdgo._internal.go.constant_test.Constant_test.example_complexNumbers, ("\nCould not represent real part 25.3 exactly as float64\nliteral (25.3+55i)\ngo/constant (25.3 + 55i)\ncomplex128 (25.299999999999997+55i)\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleBinaryOp" : stdgo.GoString), stdgo._internal.go.constant_test.Constant_test.exampleBinaryOp, ("22\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleUnaryOp" : stdgo.GoString), stdgo._internal.go.constant_test.Constant_test.exampleUnaryOp, ("\nfalse\n-2.7\n65493\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleCompare" : stdgo.GoString), stdgo._internal.go.constant_test.Constant_test.exampleCompare, ("\nFrame\nZ\na\nbacon\ndefer\ngo\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleSign" : stdgo.GoString), stdgo._internal.go.constant_test.Constant_test.exampleSign, ("\n-1 -1\n-1 (0 + -1i)\n-1 (1 + -1i)\n-1 (-1 + 1i)\n-1 (-1 + -1i)\n 0 0\n 0 (0 + 0i)\n 1 1\n 1 (0 + 1i)\n 1 (1 + 1i)\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleVal" : stdgo.GoString), stdgo._internal.go.constant_test.Constant_test.exampleVal, ("\n9223372036854775807\n6121026514868073/2251799813685248\ntrue\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("go/constant" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
