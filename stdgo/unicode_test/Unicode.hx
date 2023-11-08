package stdgo.unicode_test;
import stdgo.unicode.Unicode;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
28,
28,
(new stdgo.testing.Testing.InternalTest(("TestDigit" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testDigit) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDigitOptimization" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testDigitOptimization) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsControlLatin1" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testIsControlLatin1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsLetterLatin1" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testIsLetterLatin1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsUpperLatin1" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testIsUpperLatin1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsLowerLatin1" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testIsLowerLatin1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNumberLatin1" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testNumberLatin1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsPrintLatin1" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testIsPrintLatin1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsGraphicLatin1" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testIsGraphicLatin1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsPunctLatin1" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testIsPunctLatin1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsSpaceLatin1" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testIsSpaceLatin1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsSymbolLatin1" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testIsSymbolLatin1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsLetter" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testIsLetter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsUpper" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testIsUpper) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTo" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestToUpperCase" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testToUpperCase) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestToLowerCase" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testToLowerCase) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestToTitleCase" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testToTitleCase) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsSpace" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testIsSpace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLetterOptimizations" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testLetterOptimizations) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTurkishCase" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testTurkishCase) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSimpleFold" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testSimpleFold) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCalibrate" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testCalibrate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLatinOffset" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testLatinOffset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSpecialCaseNoMapping" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testSpecialCaseNoMapping) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNegativeRune" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testNegativeRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCategories" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testCategories) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestProperties" : stdgo.GoString), stdgo.unicode_test.Unicode_test.testProperties) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(
14,
14,
(new stdgo.testing.Testing.InternalExample(("Example_is" : stdgo.GoString), stdgo.unicode_test.Unicode_test.example_is, ("For \'\\b\':\n\tis control rune\n\tis not printable rune\nFor \'5\':\n\tis digit rune\n\tis graphic rune\n\tis number rune\n\tis printable rune\nFor \'Ὂ\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis upper case rune\nFor \'g\':\n\tis graphic rune\n\tis letter rune\n\tis lower case rune\n\tis printable rune\nFor \'̀\':\n\tis graphic rune\n\tis mark rune\n\tis printable rune\nFor \'9\':\n\tis digit rune\n\tis graphic rune\n\tis number rune\n\tis printable rune\nFor \'!\':\n\tis graphic rune\n\tis printable rune\n\tis punct rune\nFor \' \':\n\tis graphic rune\n\tis printable rune\n\tis space rune\nFor \'℃\':\n\tis graphic rune\n\tis printable rune\n\tis symbol rune\nFor \'ᾭ\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis title case rune\nFor \'G\':\n\tis graphic rune\n\tis letter rune\n\tis printable rune\n\tis upper case rune\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSimpleFold" : stdgo.GoString), stdgo.unicode_test.Unicode_test.exampleSimpleFold, ("U+0061 \'a\'\nU+0041 \'A\'\nU+006B \'k\'\nU+212A \'K\'\nU+004B \'K\'\nU+0031 \'1\'\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTo" : stdgo.GoString), stdgo.unicode_test.Unicode_test.exampleTo, ("U+0047 \'G\'\nU+0067 \'g\'\nU+0047 \'G\'\nU+0047 \'G\'\nU+0067 \'g\'\nU+0047 \'G\'\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleToLower" : stdgo.GoString), stdgo.unicode_test.Unicode_test.exampleToLower, ("U+0067 \'g\'\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleToTitle" : stdgo.GoString), stdgo.unicode_test.Unicode_test.exampleToTitle, ("U+0047 \'G\'\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleToUpper" : stdgo.GoString), stdgo.unicode_test.Unicode_test.exampleToUpper, ("U+0047 \'G\'\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSpecialCase" : stdgo.GoString), stdgo.unicode_test.Unicode_test.exampleSpecialCase, ("U+0069 \'i\'\nU+0130 \'İ\'\nU+0130 \'İ\'\nU+0069 \'i\'\nU+0130 \'İ\'\nU+0130 \'İ\'\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsDigit" : stdgo.GoString), stdgo.unicode_test.Unicode_test.exampleIsDigit, ("true\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsNumber" : stdgo.GoString), stdgo.unicode_test.Unicode_test.exampleIsNumber, ("true\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsLetter" : stdgo.GoString), stdgo.unicode_test.Unicode_test.exampleIsLetter, ("true\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsLower" : stdgo.GoString), stdgo.unicode_test.Unicode_test.exampleIsLower, ("true\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsUpper" : stdgo.GoString), stdgo.unicode_test.Unicode_test.exampleIsUpper, ("true\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsTitle" : stdgo.GoString), stdgo.unicode_test.Unicode_test.exampleIsTitle, ("true\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsSpace" : stdgo.GoString), stdgo.unicode_test.Unicode_test.exampleIsSpace, ("true\ntrue\ntrue\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("unicode" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
