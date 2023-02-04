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

private var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest(("TestDigit" : GoString), stdgo.unicode_test.Unicode_test.testDigit) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestDigitOptimization" : GoString),
		stdgo.unicode_test.Unicode_test.testDigitOptimization) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIsControlLatin1" : GoString),
		stdgo.unicode_test.Unicode_test.testIsControlLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIsLetterLatin1" : GoString),
		stdgo.unicode_test.Unicode_test.testIsLetterLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIsUpperLatin1" : GoString),
		stdgo.unicode_test.Unicode_test.testIsUpperLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIsLowerLatin1" : GoString),
		stdgo.unicode_test.Unicode_test.testIsLowerLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestNumberLatin1" : GoString),
		stdgo.unicode_test.Unicode_test.testNumberLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIsPrintLatin1" : GoString),
		stdgo.unicode_test.Unicode_test.testIsPrintLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIsGraphicLatin1" : GoString),
		stdgo.unicode_test.Unicode_test.testIsGraphicLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIsPunctLatin1" : GoString),
		stdgo.unicode_test.Unicode_test.testIsPunctLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIsSpaceLatin1" : GoString),
		stdgo.unicode_test.Unicode_test.testIsSpaceLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIsSymbolLatin1" : GoString),
		stdgo.unicode_test.Unicode_test.testIsSymbolLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIsLetter" : GoString), stdgo.unicode_test.Unicode_test.testIsLetter) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIsUpper" : GoString), stdgo.unicode_test.Unicode_test.testIsUpper) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTo" : GoString), stdgo.unicode_test.Unicode_test.testTo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestToUpperCase" : GoString),
		stdgo.unicode_test.Unicode_test.testToUpperCase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestToLowerCase" : GoString),
		stdgo.unicode_test.Unicode_test.testToLowerCase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestToTitleCase" : GoString),
		stdgo.unicode_test.Unicode_test.testToTitleCase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIsSpace" : GoString), stdgo.unicode_test.Unicode_test.testIsSpace) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestLetterOptimizations" : GoString),
		stdgo.unicode_test.Unicode_test.testLetterOptimizations) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTurkishCase" : GoString),
		stdgo.unicode_test.Unicode_test.testTurkishCase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSimpleFold" : GoString),
		stdgo.unicode_test.Unicode_test.testSimpleFold) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestCalibrate" : GoString), stdgo.unicode_test.Unicode_test.testCalibrate) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestLatinOffset" : GoString),
		stdgo.unicode_test.Unicode_test.testLatinOffset) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSpecialCaseNoMapping" : GoString),
		stdgo.unicode_test.Unicode_test.testSpecialCaseNoMapping) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestNegativeRune" : GoString),
		stdgo.unicode_test.Unicode_test.testNegativeRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestCategories" : GoString),
		stdgo.unicode_test.Unicode_test.testCategories) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestProperties" : GoString),
		stdgo.unicode_test.Unicode_test.testProperties) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0,
	0) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(("Example_is" : GoString), stdgo.unicode_test.Unicode_test.example_is,
		("For \'\\b\':\n\tis control rune\n\tis not printable rune\nFor \'5\':\n\tis digit rune\n\tis graphic rune\n\tis number rune\n\tis printable rune\nFor \'Ὂ\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis upper case rune\nFor \'g\':\n\tis graphic rune\n\tis letter rune\n\tis lower case rune\n\tis printable rune\nFor \'̀\':\n\tis graphic rune\n\tis mark rune\n\tis printable rune\nFor \'9\':\n\tis digit rune\n\tis graphic rune\n\tis number rune\n\tis printable rune\nFor \'!\':\n\tis graphic rune\n\tis printable rune\n\tis punct rune\nFor \' \':\n\tis graphic rune\n\tis printable rune\n\tis space rune\nFor \'℃\':\n\tis graphic rune\n\tis printable rune\n\tis symbol rune\nFor \'ᾭ\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis title case rune\nFor \'G\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis upper case rune\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleSimpleFold" : GoString), stdgo.unicode_test.Unicode_test.exampleSimpleFold,
		("U+0061 \'a\'\nU+0041 \'A\'\nU+006B \'k\'\nU+212A \'K\'\nU+004B \'K\'\nU+0031 \'1\'\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleTo" : GoString), stdgo.unicode_test.Unicode_test.exampleTo,
		("U+0047 \'G\'\nU+0067 \'g\'\nU+0047 \'G\'\nU+0047 \'G\'\nU+0067 \'g\'\nU+0047 \'G\'\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleToLower" : GoString), stdgo.unicode_test.Unicode_test.exampleToLower, ("U+0067 \'g\'\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleToTitle" : GoString), stdgo.unicode_test.Unicode_test.exampleToTitle, ("U+0047 \'G\'\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleToUpper" : GoString), stdgo.unicode_test.Unicode_test.exampleToUpper, ("U+0047 \'G\'\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleSpecialCase" : GoString), stdgo.unicode_test.Unicode_test.exampleSpecialCase,
		("U+0069 \'i\'\nU+0130 \'İ\'\nU+0130 \'İ\'\nU+0069 \'i\'\nU+0130 \'İ\'\nU+0130 \'İ\'\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleIsDigit" : GoString), stdgo.unicode_test.Unicode_test.exampleIsDigit, ("true\nfalse\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleIsNumber" : GoString), stdgo.unicode_test.Unicode_test.exampleIsNumber, ("true\nfalse\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleIsLetter" : GoString), stdgo.unicode_test.Unicode_test.exampleIsLetter, ("true\nfalse\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleIsLower" : GoString), stdgo.unicode_test.Unicode_test.exampleIsLower, ("true\nfalse\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleIsUpper" : GoString), stdgo.unicode_test.Unicode_test.exampleIsUpper, ("true\nfalse\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleIsTitle" : GoString), stdgo.unicode_test.Unicode_test.exampleIsTitle, ("true\nfalse\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleIsSpace" : GoString), stdgo.unicode_test.Unicode_test.exampleIsSpace,
		("true\ntrue\ntrue\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

private function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = ("unicode" : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
