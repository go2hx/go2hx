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
	var _m = stdgo.testing.Testing.mainStart({
		final __self__ = new stdgo.testing.internal.testdeps.Testdeps.TestDeps_asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps));
		__self__.checkCorpus = #if !macro function(__0:Slice<AnyInterface>,
				__1:Slice<stdgo.reflect.Reflect.Type>):stdgo.Error return
				(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).checkCorpus(__0,
					__1) #else null #end;
		__self__.coordinateFuzzing = #if !macro function(__0:stdgo.time.Time.Duration, __1:GoInt64, __2:stdgo.time.Time.Duration, __3:GoInt64, __4:GoInt,
				__5:Slice<{
				var parent:GoString;
				var path:GoString;
				var data:Slice<GoUInt8>;
				var values:Slice<AnyInterface>;
				var generation:GoInt;
				var isSeed:Bool;
			}>,
				__6:Slice<stdgo.reflect.Reflect.Type>, __7:GoString,
				__8:GoString):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)
				.coordinateFuzzing(__0, __1, __2, __3, __4, __5, __6, __7, __8) #else null #end;
		__self__.importPath = #if !macro function():GoString return
			(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).importPath() #else null #end;
		__self__.matchString = #if !macro function(_name:GoString, _value:GoString):{var _0:Bool; var _1:stdgo.Error;}
			return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).matchString(_name,
				_value) #else null #end;
		__self__.readCorpus = #if !macro function(__0:GoString, __1:Slice<stdgo.reflect.Reflect.Type>):{var _0:Slice<{
			var parent:GoString;
			var path:GoString;
			var data:Slice<GoUInt8>;
			var values:Slice<AnyInterface>;
			var generation:GoInt;
			var isSeed:Bool;
		}>; var _1:stdgo.Error;}
			return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).readCorpus(__0,
				__1) #else null #end;
		__self__.resetCoverage = #if !macro function():Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).resetCoverage() #else null #end;
		__self__.runFuzzWorker = #if !macro function(__0:({
			var parent:GoString;
			var path:GoString;
			var data:Slice<GoUInt8>;
			var values:Slice<AnyInterface>;
			var generation:GoInt;
			var isSeed:Bool;
		}) -> stdgo.Error):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)
			.runFuzzWorker(__0) #else null #end;
		__self__.setPanicOnExit0 = #if !macro function(__0:Bool):Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).setPanicOnExit0(__0) #else null #end;
		__self__.snapshotCoverage = #if !macro function():Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).snapshotCoverage() #else null #end;
		__self__.startCPUProfile = #if !macro function(__0:stdgo.io.Io.Writer):stdgo.Error return
			(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).startCPUProfile(__0) #else null #end;
		__self__.startTestLog = #if !macro function(__0:stdgo.io.Io.Writer):Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).startTestLog(__0) #else null #end;
		__self__.stopCPUProfile = #if !macro function():Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).stopCPUProfile() #else null #end;
		__self__.stopTestLog = #if !macro function():stdgo.Error return
			(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).stopTestLog() #else null #end;
		__self__.writeProfileTo = #if !macro function(__0:GoString, __1:stdgo.io.Io.Writer,
				__2:GoInt):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)
				.writeProfileTo(__0, __1, __2) #else null #end;
		__self__;
	}, _tests, _benchmarks, _fuzzTargets, _examples);
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
