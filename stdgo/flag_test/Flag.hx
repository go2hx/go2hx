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

private var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest((Go.str("TestEverything") : GoString),
		stdgo.flag_test.Flag_test.testEverything) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestGet") : GoString), stdgo.flag_test.Flag_test.testGet) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestUsage") : GoString), stdgo.flag_test.Flag_test.testUsage) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParse") : GoString), stdgo.flag_test.Flag_test.testParse) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFlagSetParse") : GoString),
		stdgo.flag_test.Flag_test.testFlagSetParse) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestUserDefined") : GoString),
		stdgo.flag_test.Flag_test.testUserDefined) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestUserDefinedFunc") : GoString),
		stdgo.flag_test.Flag_test.testUserDefinedFunc) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestUserDefinedForCommandLine") : GoString),
		stdgo.flag_test.Flag_test.testUserDefinedForCommandLine) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestUserDefinedBool") : GoString),
		stdgo.flag_test.Flag_test.testUserDefinedBool) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSetOutput") : GoString),
		stdgo.flag_test.Flag_test.testSetOutput) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestChangingArgs") : GoString),
		stdgo.flag_test.Flag_test.testChangingArgs) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestHelp") : GoString), stdgo.flag_test.Flag_test.testHelp) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestPrintDefaults") : GoString),
		stdgo.flag_test.Flag_test.testPrintDefaults) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIntFlagOverflow") : GoString),
		stdgo.flag_test.Flag_test.testIntFlagOverflow) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestUsageOutput") : GoString),
		stdgo.flag_test.Flag_test.testUsageOutput) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestGetters") : GoString), stdgo.flag_test.Flag_test.testGetters) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseError") : GoString),
		stdgo.flag_test.Flag_test.testParseError) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestRangeError") : GoString),
		stdgo.flag_test.Flag_test.testRangeError) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestExitCode") : GoString), stdgo.flag_test.Flag_test.testExitCode) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestInvalidFlags") : GoString),
		stdgo.flag_test.Flag_test.testInvalidFlags) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestRedefinedFlags") : GoString),
		stdgo.flag_test.Flag_test.testRedefinedFlags) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0,
	0) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleFunc") : GoString), stdgo.flag_test.Flag_test.exampleFunc,
		(Go.str("{ip: 127.0.0.1, loopback: true}\n\ninvalid value \"256.0.0.1\" for flag -ip: could not parse IP\nUsage of ExampleFunc:\n  -ip IP address\n    \tIP address to parse\n{ip: <nil>, loopback: false}\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTextVar") : GoString), stdgo.flag_test.Flag_test.exampleTextVar,
		(Go.str("{ip: 127.0.0.1}\n\ninvalid value \"256.0.0.1\" for flag -ip: invalid IP address: 256.0.0.1\nUsage of ExampleTextVar:\n  -ip IP address\n    \tIP address to parse (default 192.168.0.100)\n{ip: <nil>}\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleValue") : GoString), stdgo.flag_test.Flag_test.exampleValue,
		(Go.str("{scheme: \"https\", host: \"golang.org\", path: \"/pkg/flag/\"}\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = (Go.str("flag") : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
