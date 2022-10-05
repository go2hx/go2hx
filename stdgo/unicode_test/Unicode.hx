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
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDigit"), stdgo.unicode_test.Unicode_test.testDigit) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDigitOptimization"),
		stdgo.unicode_test.Unicode_test.testDigitOptimization) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsControlLatin1"),
		stdgo.unicode_test.Unicode_test.testIsControlLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsLetterLatin1"),
		stdgo.unicode_test.Unicode_test.testIsLetterLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsUpperLatin1"),
		stdgo.unicode_test.Unicode_test.testIsUpperLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsLowerLatin1"),
		stdgo.unicode_test.Unicode_test.testIsLowerLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestNumberLatin1"),
		stdgo.unicode_test.Unicode_test.testNumberLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsPrintLatin1"),
		stdgo.unicode_test.Unicode_test.testIsPrintLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsGraphicLatin1"),
		stdgo.unicode_test.Unicode_test.testIsGraphicLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsPunctLatin1"),
		stdgo.unicode_test.Unicode_test.testIsPunctLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsSpaceLatin1"),
		stdgo.unicode_test.Unicode_test.testIsSpaceLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsSymbolLatin1"),
		stdgo.unicode_test.Unicode_test.testIsSymbolLatin1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsLetter"), stdgo.unicode_test.Unicode_test.testIsLetter) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsUpper"), stdgo.unicode_test.Unicode_test.testIsUpper) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestTo"), stdgo.unicode_test.Unicode_test.testTo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestToUpperCase"), stdgo.unicode_test.Unicode_test.testToUpperCase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestToLowerCase"), stdgo.unicode_test.Unicode_test.testToLowerCase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestToTitleCase"), stdgo.unicode_test.Unicode_test.testToTitleCase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsSpace"), stdgo.unicode_test.Unicode_test.testIsSpace) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLetterOptimizations"),
		stdgo.unicode_test.Unicode_test.testLetterOptimizations) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestTurkishCase"), stdgo.unicode_test.Unicode_test.testTurkishCase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSimpleFold"), stdgo.unicode_test.Unicode_test.testSimpleFold) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCalibrate"), stdgo.unicode_test.Unicode_test.testCalibrate) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLatinOffset"), stdgo.unicode_test.Unicode_test.testLatinOffset) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSpecialCaseNoMapping"),
		stdgo.unicode_test.Unicode_test.testSpecialCaseNoMapping) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestNegativeRune"),
		stdgo.unicode_test.Unicode_test.testNegativeRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCategories"), stdgo.unicode_test.Unicode_test.testCategories) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestProperties"),
		stdgo.unicode_test.Unicode_test.testProperties) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0,
	0) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(Go.str("Example_is"), stdgo.unicode_test.Unicode_test.example_is,
		Go.str("For \'\\b\':\n\tis control rune\n\tis not printable rune\nFor \'5\':\n\tis digit rune\n\tis graphic rune\n\tis number rune\n\tis printable rune\nFor \'Ὂ\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis upper case rune\nFor \'g\':\n\tis graphic rune\n\tis letter rune\n\tis lower case rune\n\tis printable rune\nFor \'̀\':\n\tis graphic rune\n\tis mark rune\n\tis printable rune\nFor \'9\':\n\tis digit rune\n\tis graphic rune\n\tis number rune\n\tis printable rune\nFor \'!\':\n\tis graphic rune\n\tis printable rune\n\tis punct rune\nFor \' \':\n\tis graphic rune\n\tis printable rune\n\tis space rune\nFor \'℃\':\n\tis graphic rune\n\tis printable rune\n\tis symbol rune\nFor \'ᾭ\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis title case rune\nFor \'G\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis upper case rune\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSimpleFold"), stdgo.unicode_test.Unicode_test.exampleSimpleFold,
		Go.str("U+0061 \'a\'\nU+0041 \'A\'\nU+006B \'k\'\nU+212A \'K\'\nU+004B \'K\'\nU+0031 \'1\'\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleTo"), stdgo.unicode_test.Unicode_test.exampleTo,
		Go.str("U+0047 \'G\'\nU+0067 \'g\'\nU+0047 \'G\'\nU+0047 \'G\'\nU+0067 \'g\'\nU+0047 \'G\'\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleToLower"), stdgo.unicode_test.Unicode_test.exampleToLower, Go.str("U+0067 \'g\'\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleToTitle"), stdgo.unicode_test.Unicode_test.exampleToTitle, Go.str("U+0047 \'G\'\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleToUpper"), stdgo.unicode_test.Unicode_test.exampleToUpper, Go.str("U+0047 \'G\'\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSpecialCase"), stdgo.unicode_test.Unicode_test.exampleSpecialCase,
		Go.str("U+0069 \'i\'\nU+0130 \'İ\'\nU+0130 \'İ\'\nU+0069 \'i\'\nU+0130 \'İ\'\nU+0130 \'İ\'\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleIsDigit"), stdgo.unicode_test.Unicode_test.exampleIsDigit, Go.str("true\nfalse\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleIsNumber"), stdgo.unicode_test.Unicode_test.exampleIsNumber, Go.str("true\nfalse\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleIsLetter"), stdgo.unicode_test.Unicode_test.exampleIsLetter, Go.str("true\nfalse\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleIsLower"), stdgo.unicode_test.Unicode_test.exampleIsLower, Go.str("true\nfalse\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleIsUpper"), stdgo.unicode_test.Unicode_test.exampleIsUpper, Go.str("true\nfalse\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleIsTitle"), stdgo.unicode_test.Unicode_test.exampleIsTitle, Go.str("true\nfalse\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleIsSpace"), stdgo.unicode_test.Unicode_test.exampleIsSpace, Go.str("true\ntrue\ntrue\nfalse\n"),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("unicode");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
