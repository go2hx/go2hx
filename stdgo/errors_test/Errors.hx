package stdgo.errors_test;

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
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNewEqual") : GoString),
		stdgo.errors_test.Errors_test.testNewEqual) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestErrorMethod") : GoString),
		stdgo.errors_test.Errors_test.testErrorMethod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIs") : GoString), stdgo.errors_test.Errors_test.testIs) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAs") : GoString), stdgo.errors_test.Errors_test.testAs) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAsValidation") : GoString),
		stdgo.errors_test.Errors_test.testAsValidation) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestUnwrap") : GoString),
		stdgo.errors_test.Errors_test.testUnwrap) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0,
	0) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleNew") : GoString), stdgo.errors_test.Errors_test.exampleNew,
		(Go.str("emit macho dwarf: elf header corrupted\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleNew_errorf") : GoString), stdgo.errors_test.Errors_test.exampleNew_errorf,
		(Go.str("user \"bimmler\" (id 17) not found\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("Example") : GoString), stdgo.errors_test.Errors_test.example,
		(Go.str("1989-03-15 22:30:00 +0000 UTC: the file system has gone away\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIs") : GoString), stdgo.errors_test.Errors_test.exampleIs,
		(Go.str("file does not exist\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAs") : GoString), stdgo.errors_test.Errors_test.exampleAs,
		(Go.str("Failed at path: non-existing\n") : GoString),
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
		__self__.matchString = #if !macro function(_key:GoString, _value:GoString):{var _0:Bool; var _1:stdgo.Error;}
			return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).matchString(_key,
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
		stdgo.testing.internal.testdeps.Testdeps.importPath = (Go.str("errors") : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
