package stdgo.flag_test;
import stdgo.flag.Flag;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
24,
24,
(new stdgo.testing.Testing.InternalTest(("TestEverything" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testEverything) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGet" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testGet) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUsage" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testUsage) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParse" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testParse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFlagSetParse" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testFlagSetParse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUserDefined" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testUserDefined) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUserDefinedFunc" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testUserDefinedFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUserDefinedForCommandLine" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testUserDefinedForCommandLine) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUserDefinedBool" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testUserDefinedBool) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUserDefinedBoolUsage" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testUserDefinedBoolUsage) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSetOutput" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testSetOutput) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChangingArgs" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testChangingArgs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHelp" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testHelp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPrintDefaults" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testPrintDefaults) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIntFlagOverflow" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testIntFlagOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUsageOutput" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testUsageOutput) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGetters" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testGetters) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseError" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testParseError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRangeError" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testRangeError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExitCode" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testExitCode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInvalidFlags" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testInvalidFlags) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRedefinedFlags" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testRedefinedFlags) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUserDefinedBoolFunc" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testUserDefinedBoolFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDefineAfterSet" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.testDefineAfterSet) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(4, 4, (new stdgo.testing.Testing.InternalExample(("ExampleFunc" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.exampleFunc, ("{ip: 127.0.0.1, loopback: true}\n\ninvalid value \"256.0.0.1\" for flag -ip: could not parse IP\nUsage of ExampleFunc:\n  -ip IP address\n    \tIP address to parse\n{ip: <nil>, loopback: false}\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleBoolFunc" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.exampleBoolFunc, ("dummy message: true\ndummy message: 0\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleTextVar" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.exampleTextVar, ("{ip: 127.0.0.1}\n\ninvalid value \"256.0.0.1\" for flag -ip: invalid IP address: 256.0.0.1\nUsage of ExampleTextVar:\n  -ip IP address\n    \tIP address to parse (default 192.168.0.100)\n{ip: <nil>}\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleValue" : stdgo.GoString)?.__copy__(), stdgo.flag_test.Flag_test.exampleValue, ("{scheme: \"https\", host: \"golang.org\", path: \"/pkg/flag/\"}\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("flag" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
