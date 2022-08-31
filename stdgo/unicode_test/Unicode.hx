package stdgo.unicode_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest((Go.str("TestDigit") : GoString), stdgo.unicode_test.Unicode_test.testDigit) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestDigitOptimization") : GoString),
		stdgo.unicode_test.Unicode_test.testDigitOptimization) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsControlLatin1") : GoString),
		stdgo.unicode_test.Unicode_test.testIsControlLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsLetterLatin1") : GoString),
		stdgo.unicode_test.Unicode_test.testIsLetterLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsUpperLatin1") : GoString),
		stdgo.unicode_test.Unicode_test.testIsUpperLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsLowerLatin1") : GoString),
		stdgo.unicode_test.Unicode_test.testIsLowerLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNumberLatin1") : GoString),
		stdgo.unicode_test.Unicode_test.testNumberLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsPrintLatin1") : GoString),
		stdgo.unicode_test.Unicode_test.testIsPrintLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsGraphicLatin1") : GoString),
		stdgo.unicode_test.Unicode_test.testIsGraphicLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsPunctLatin1") : GoString),
		stdgo.unicode_test.Unicode_test.testIsPunctLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsSpaceLatin1") : GoString),
		stdgo.unicode_test.Unicode_test.testIsSpaceLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsSymbolLatin1") : GoString),
		stdgo.unicode_test.Unicode_test.testIsSymbolLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsLetter") : GoString),
		stdgo.unicode_test.Unicode_test.testIsLetter) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsUpper") : GoString),
		stdgo.unicode_test.Unicode_test.testIsUpper) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestTo") : GoString), stdgo.unicode_test.Unicode_test.testTo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestToUpperCase") : GoString),
		stdgo.unicode_test.Unicode_test.testToUpperCase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestToLowerCase") : GoString),
		stdgo.unicode_test.Unicode_test.testToLowerCase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestToTitleCase") : GoString),
		stdgo.unicode_test.Unicode_test.testToTitleCase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsSpace") : GoString),
		stdgo.unicode_test.Unicode_test.testIsSpace) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLetterOptimizations") : GoString),
		stdgo.unicode_test.Unicode_test.testLetterOptimizations) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestTurkishCase") : GoString),
		stdgo.unicode_test.Unicode_test.testTurkishCase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSimpleFold") : GoString),
		stdgo.unicode_test.Unicode_test.testSimpleFold) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCalibrate") : GoString),
		stdgo.unicode_test.Unicode_test.testCalibrate) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLatinOffset") : GoString),
		stdgo.unicode_test.Unicode_test.testLatinOffset) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSpecialCaseNoMapping") : GoString),
		stdgo.unicode_test.Unicode_test.testSpecialCaseNoMapping) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNegativeRune") : GoString),
		stdgo.unicode_test.Unicode_test.testNegativeRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCategories") : GoString),
		stdgo.unicode_test.Unicode_test.testCategories) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestProperties") : GoString),
		stdgo.unicode_test.Unicode_test.testProperties) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0,
	0) : Slice<stdgo.testing.Testing.InternalBenchmark>);

var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample((Go.str("Example_is") : GoString), stdgo.unicode_test.Unicode_test.example_is,
		(Go.str("For \'\\b\':\n\tis control rune\n\tis not printable rune\nFor \'5\':\n\tis digit rune\n\tis graphic rune\n\tis number rune\n\tis printable rune\nFor \'Ὂ\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis upper case rune\nFor \'g\':\n\tis graphic rune\n\tis letter rune\n\tis lower case rune\n\tis printable rune\nFor \'̀\':\n\tis graphic rune\n\tis mark rune\n\tis printable rune\nFor \'9\':\n\tis digit rune\n\tis graphic rune\n\tis number rune\n\tis printable rune\nFor \'!\':\n\tis graphic rune\n\tis printable rune\n\tis punct rune\nFor \' \':\n\tis graphic rune\n\tis printable rune\n\tis space rune\nFor \'℃\':\n\tis graphic rune\n\tis printable rune\n\tis symbol rune\nFor \'ᾭ\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis title case rune\nFor \'G\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis upper case rune\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSimpleFold") : GoString), stdgo.unicode_test.Unicode_test.exampleSimpleFold,
		(Go.str("U+0061 \'a\'\nU+0041 \'A\'\nU+006B \'k\'\nU+212A \'K\'\nU+004B \'K\'\nU+0031 \'1\'\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTo") : GoString), stdgo.unicode_test.Unicode_test.exampleTo,
		(Go.str("U+0047 \'G\'\nU+0067 \'g\'\nU+0047 \'G\'\nU+0047 \'G\'\nU+0067 \'g\'\nU+0047 \'G\'\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleToLower") : GoString), stdgo.unicode_test.Unicode_test.exampleToLower,
		(Go.str("U+0067 \'g\'\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleToTitle") : GoString), stdgo.unicode_test.Unicode_test.exampleToTitle,
		(Go.str("U+0047 \'G\'\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleToUpper") : GoString), stdgo.unicode_test.Unicode_test.exampleToUpper,
		(Go.str("U+0047 \'G\'\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSpecialCase") : GoString), stdgo.unicode_test.Unicode_test.exampleSpecialCase,
		(Go.str("U+0069 \'i\'\nU+0130 \'İ\'\nU+0130 \'İ\'\nU+0069 \'i\'\nU+0130 \'İ\'\nU+0130 \'İ\'\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIsDigit") : GoString), stdgo.unicode_test.Unicode_test.exampleIsDigit,
		(Go.str("true\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIsNumber") : GoString), stdgo.unicode_test.Unicode_test.exampleIsNumber,
		(Go.str("true\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIsLetter") : GoString), stdgo.unicode_test.Unicode_test.exampleIsLetter,
		(Go.str("true\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIsLower") : GoString), stdgo.unicode_test.Unicode_test.exampleIsLower,
		(Go.str("true\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIsUpper") : GoString), stdgo.unicode_test.Unicode_test.exampleIsUpper,
		(Go.str("true\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIsTitle") : GoString), stdgo.unicode_test.Unicode_test.exampleIsTitle,
		(Go.str("true\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIsSpace") : GoString), stdgo.unicode_test.Unicode_test.exampleIsSpace,
		(Go.str("true\ntrue\ntrue\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart({
		final __self__ = new stdgo.testing.internal.testdeps.Testdeps.TestDeps_wrapper((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps));
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
		stdgo.testing.internal.testdeps.Testdeps.importPath = (Go.str("unicode") : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
