package stdgo._internal.flag_test;
import stdgo._internal.flag.Flag;
import stdgo._internal.flag.Flag;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(24, 24, ...[
(new stdgo._internal.testing.Testing.InternalTest(("TestEverything" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testEverything) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestGet" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testGet) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUsage" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testUsage) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestParse" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testParse) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFlagSetParse" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testFlagSetParse) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUserDefined" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testUserDefined) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUserDefinedFunc" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testUserDefinedFunc) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUserDefinedForCommandLine" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testUserDefinedForCommandLine) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUserDefinedBool" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testUserDefinedBool) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUserDefinedBoolUsage" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testUserDefinedBoolUsage) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSetOutput" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testSetOutput) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestChangingArgs" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testChangingArgs) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestHelp" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testHelp) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPrintDefaults" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testPrintDefaults) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIntFlagOverflow" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testIntFlagOverflow) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUsageOutput" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testUsageOutput) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestGetters" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testGetters) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestParseError" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testParseError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRangeError" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testRangeError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestExitCode" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testExitCode) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestInvalidFlags" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testInvalidFlags) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRedefinedFlags" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testRedefinedFlags) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUserDefinedBoolFunc" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testUserDefinedBoolFunc) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDefineAfterSet" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.testDefineAfterSet) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 24 ... (24 > 24 ? 24 : 24 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalBenchmark)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalFuzzTarget)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(4, 4, ...[(new stdgo._internal.testing.Testing.InternalExample(("ExampleFunc" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.exampleFunc, ("{ip: 127.0.0.1, loopback: true}\n\ninvalid value \"256.0.0.1\" for flag -ip: could not parse IP\nUsage of ExampleFunc:\n  -ip IP address\n    \tIP address to parse\n{ip: <nil>, loopback: false}\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleBoolFunc" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.exampleBoolFunc, ("dummy message: true\ndummy message: 0\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleTextVar" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.exampleTextVar, ("{ip: 127.0.0.1}\n\ninvalid value \"256.0.0.1\" for flag -ip: invalid IP address: 256.0.0.1\nUsage of ExampleTextVar:\n  -ip IP address\n    \tIP address to parse (default 192.168.0.100)\n{ip: <nil>}\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleValue" : stdgo.GoString), stdgo._internal.flag_test.Flag_test.exampleValue, ("{scheme: \"https\", host: \"golang.org\", path: \"/pkg/flag/\"}\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("flag" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
