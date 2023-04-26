package stdgo.flag_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.flag.Flag;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
22,
22,
(new stdgo.testing.Testing.InternalTest(("TestEverything" : GoString), stdgo.flag_test.Flag_test.testEverything) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGet" : GoString), stdgo.flag_test.Flag_test.testGet) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUsage" : GoString), stdgo.flag_test.Flag_test.testUsage) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParse" : GoString), stdgo.flag_test.Flag_test.testParse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFlagSetParse" : GoString), stdgo.flag_test.Flag_test.testFlagSetParse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUserDefined" : GoString), stdgo.flag_test.Flag_test.testUserDefined) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUserDefinedFunc" : GoString), stdgo.flag_test.Flag_test.testUserDefinedFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUserDefinedForCommandLine" : GoString), stdgo.flag_test.Flag_test.testUserDefinedForCommandLine) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUserDefinedBool" : GoString), stdgo.flag_test.Flag_test.testUserDefinedBool) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUserDefinedBoolUsage" : GoString), stdgo.flag_test.Flag_test.testUserDefinedBoolUsage) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSetOutput" : GoString), stdgo.flag_test.Flag_test.testSetOutput) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChangingArgs" : GoString), stdgo.flag_test.Flag_test.testChangingArgs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHelp" : GoString), stdgo.flag_test.Flag_test.testHelp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPrintDefaults" : GoString), stdgo.flag_test.Flag_test.testPrintDefaults) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIntFlagOverflow" : GoString), stdgo.flag_test.Flag_test.testIntFlagOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUsageOutput" : GoString), stdgo.flag_test.Flag_test.testUsageOutput) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGetters" : GoString), stdgo.flag_test.Flag_test.testGetters) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseError" : GoString), stdgo.flag_test.Flag_test.testParseError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRangeError" : GoString), stdgo.flag_test.Flag_test.testRangeError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExitCode" : GoString), stdgo.flag_test.Flag_test.testExitCode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInvalidFlags" : GoString), stdgo.flag_test.Flag_test.testInvalidFlags) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRedefinedFlags" : GoString), stdgo.flag_test.Flag_test.testRedefinedFlags) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(3, 3, (new stdgo.testing.Testing.InternalExample(("ExampleFunc" : GoString), stdgo.flag_test.Flag_test.exampleFunc, ("{ip: 127.0.0.1, loopback: true}\n\ninvalid value \"256.0.0.1\" for flag -ip: could not parse IP\nUsage of ExampleFunc:\n  -ip IP address\n    \tIP address to parse\n{ip: <nil>, loopback: false}\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleTextVar" : GoString), stdgo.flag_test.Flag_test.exampleTextVar, ("{ip: 127.0.0.1}\n\ninvalid value \"256.0.0.1\" for flag -ip: invalid IP address: 256.0.0.1\nUsage of ExampleTextVar:\n  -ip IP address\n    \tIP address to parse (default 192.168.0.100)\n{ip: <nil>}\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleValue" : GoString), stdgo.flag_test.Flag_test.exampleValue, ("{scheme: \"https\", host: \"golang.org\", path: \"/pkg/flag/\"}\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("flag" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
