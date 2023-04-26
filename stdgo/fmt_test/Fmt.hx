package stdgo.fmt_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.fmt.Fmt;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
51,
51,
(new stdgo.testing.Testing.InternalTest(("TestErrorf" : GoString), stdgo.fmt_test.Fmt_test.testErrorf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFmtInterface" : GoString), stdgo.fmt_test.Fmt_test.testFmtInterface) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSprintf" : GoString), stdgo.fmt_test.Fmt_test.testSprintf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestComplexFormatting" : GoString), stdgo.fmt_test.Fmt_test.testComplexFormatting) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReorder" : GoString), stdgo.fmt_test.Fmt_test.testReorder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCountMallocs" : GoString), stdgo.fmt_test.Fmt_test.testCountMallocs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFlagParser" : GoString), stdgo.fmt_test.Fmt_test.testFlagParser) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStructPrinter" : GoString), stdgo.fmt_test.Fmt_test.testStructPrinter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSlicePrinter" : GoString), stdgo.fmt_test.Fmt_test.testSlicePrinter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMapPrinter" : GoString), stdgo.fmt_test.Fmt_test.testMapPrinter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEmptyMap" : GoString), stdgo.fmt_test.Fmt_test.testEmptyMap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBlank" : GoString), stdgo.fmt_test.Fmt_test.testBlank) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBlankln" : GoString), stdgo.fmt_test.Fmt_test.testBlankln) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatterPrintln" : GoString), stdgo.fmt_test.Fmt_test.testFormatterPrintln) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWidthAndPrecision" : GoString), stdgo.fmt_test.Fmt_test.testWidthAndPrecision) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPanics" : GoString), stdgo.fmt_test.Fmt_test.testPanics) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadVerbRecursion" : GoString), stdgo.fmt_test.Fmt_test.testBadVerbRecursion) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsSpace" : GoString), stdgo.fmt_test.Fmt_test.testIsSpace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNilDoesNotBecomeTyped" : GoString), stdgo.fmt_test.Fmt_test.testNilDoesNotBecomeTyped) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatterFlags" : GoString), stdgo.fmt_test.Fmt_test.testFormatterFlags) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParsenum" : GoString), stdgo.fmt_test.Fmt_test.testParsenum) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppendf" : GoString), stdgo.fmt_test.Fmt_test.testAppendf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppend" : GoString), stdgo.fmt_test.Fmt_test.testAppend) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppendln" : GoString), stdgo.fmt_test.Fmt_test.testAppendln) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScan" : GoString), stdgo.fmt_test.Fmt_test.testScan) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanln" : GoString), stdgo.fmt_test.Fmt_test.testScanln) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanf" : GoString), stdgo.fmt_test.Fmt_test.testScanf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanOverflow" : GoString), stdgo.fmt_test.Fmt_test.testScanOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNaN" : GoString), stdgo.fmt_test.Fmt_test.testNaN) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInf" : GoString), stdgo.fmt_test.Fmt_test.testInf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanfMulti" : GoString), stdgo.fmt_test.Fmt_test.testScanfMulti) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanMultiple" : GoString), stdgo.fmt_test.Fmt_test.testScanMultiple) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanEmpty" : GoString), stdgo.fmt_test.Fmt_test.testScanEmpty) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanNotPointer" : GoString), stdgo.fmt_test.Fmt_test.testScanNotPointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanlnNoNewline" : GoString), stdgo.fmt_test.Fmt_test.testScanlnNoNewline) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanlnWithMiddleNewline" : GoString), stdgo.fmt_test.Fmt_test.testScanlnWithMiddleNewline) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEOF" : GoString), stdgo.fmt_test.Fmt_test.testEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEOFAtEndOfInput" : GoString), stdgo.fmt_test.Fmt_test.testEOFAtEndOfInput) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEOFAllTypes" : GoString), stdgo.fmt_test.Fmt_test.testEOFAllTypes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadRuneWithBufio" : GoString), stdgo.fmt_test.Fmt_test.testUnreadRuneWithBufio) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiLine" : GoString), stdgo.fmt_test.Fmt_test.testMultiLine) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLineByLineFscanf" : GoString), stdgo.fmt_test.Fmt_test.testLineByLineFscanf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanStateCount" : GoString), stdgo.fmt_test.Fmt_test.testScanStateCount) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanInts" : GoString), stdgo.fmt_test.Fmt_test.testScanInts) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHexBytes" : GoString), stdgo.fmt_test.Fmt_test.testHexBytes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanNewlinesAreSpaces" : GoString), stdgo.fmt_test.Fmt_test.testScanNewlinesAreSpaces) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanlnNewlinesTerminate" : GoString), stdgo.fmt_test.Fmt_test.testScanlnNewlinesTerminate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanfNewlineMatchFormat" : GoString), stdgo.fmt_test.Fmt_test.testScanfNewlineMatchFormat) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHexByte" : GoString), stdgo.fmt_test.Fmt_test.testHexByte) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatString" : GoString), stdgo.fmt_test.Fmt_test.testFormatString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStringer" : GoString), stdgo.fmt_test.Fmt_test.testStringer) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(
25,
25,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfPadding" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfPadding) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfEmpty" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfEmpty) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfString" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfTruncateString" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfTruncateString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfTruncateBytes" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfTruncateBytes) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfSlowParsingPath" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfSlowParsingPath) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfQuoteString" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfQuoteString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfInt" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfIntInt" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfIntInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfPrefixedInt" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfPrefixedInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfFloat" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfFloat) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfComplex" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfComplex) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfBoolean" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfBoolean) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfHexString" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfHexString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfHexBytes" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfHexBytes) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfBytes" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfBytes) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfStringer" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfStringer) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfStructure" : GoString), stdgo.fmt_test.Fmt_test.benchmarkSprintfStructure) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkManyArgs" : GoString), stdgo.fmt_test.Fmt_test.benchmarkManyArgs) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFprintInt" : GoString), stdgo.fmt_test.Fmt_test.benchmarkFprintInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFprintfBytes" : GoString), stdgo.fmt_test.Fmt_test.benchmarkFprintfBytes) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFprintIntNoAlloc" : GoString), stdgo.fmt_test.Fmt_test.benchmarkFprintIntNoAlloc) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkScanInts" : GoString), stdgo.fmt_test.Fmt_test.benchmarkScanInts) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkScanRecursiveInt" : GoString), stdgo.fmt_test.Fmt_test.benchmarkScanRecursiveInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkScanRecursiveIntReaderWrapper" : GoString), stdgo.fmt_test.Fmt_test.benchmarkScanRecursiveIntReaderWrapper) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(
17,
17,
(new stdgo.testing.Testing.InternalExample(("ExampleErrorf" : GoString), stdgo.fmt_test.Fmt_test.exampleErrorf, ("user \"bueller\" (id 17) not found\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFscanf" : GoString), stdgo.fmt_test.Fmt_test.exampleFscanf, ("5 true gophers\n3\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFscanln" : GoString), stdgo.fmt_test.Fmt_test.exampleFscanln, ("3: dmr, 1771, 1.618034\n3: ken, 271828, 3.141590\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSscanf" : GoString), stdgo.fmt_test.Fmt_test.exampleSscanf, ("2: Kim, 22\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExamplePrint" : GoString), stdgo.fmt_test.Fmt_test.examplePrint, ("Kim is 22 years old.\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExamplePrintln" : GoString), stdgo.fmt_test.Fmt_test.examplePrintln, ("Kim is 22 years old.\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExamplePrintf" : GoString), stdgo.fmt_test.Fmt_test.examplePrintf, ("Kim is 22 years old.\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSprint" : GoString), stdgo.fmt_test.Fmt_test.exampleSprint, ("Kim is 22 years old.\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSprintln" : GoString), stdgo.fmt_test.Fmt_test.exampleSprintln, ("Kim is 22 years old.\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSprintf" : GoString), stdgo.fmt_test.Fmt_test.exampleSprintf, ("Kim is 22 years old.\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFprint" : GoString), stdgo.fmt_test.Fmt_test.exampleFprint, ("Kim is 22 years old.\n21 bytes written.\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFprintln" : GoString), stdgo.fmt_test.Fmt_test.exampleFprintln, ("Kim is 22 years old.\n21 bytes written.\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFprintf" : GoString), stdgo.fmt_test.Fmt_test.exampleFprintf, ("Kim is 22 years old.\n21 bytes written.\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("Example_printers" : GoString), stdgo.fmt_test.Fmt_test.example_printers, ("The vector (3 4) has length 5.\nThe vector ( 3 4 ) has length 5 .\nThe vector (3 4) has length 5.\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("Example_formats" : GoString), stdgo.fmt_test.Fmt_test.example_formats, ("23\n23\n23\nint *int\ntrue true\n42 42 2a 52 101010\n3.141592653589793 3.141592653589793 3.14 (  3.14) 3.141593e+00\n(110.7+22.5i) (110.7+22.5i) (110.70+22.50i) (1.11e+02+2.25e+01i)\n128512 128512 😀 \'😀\' U+1F600 U+1F600 \'😀\'\nfoo \"bar\" foo \"bar\" \"foo \\\"bar\\\"\" `foo \"bar\"`\nmap[dachshund:false peanut:true] map[string]bool{\"dachshund\":false, \"peanut\":true}\n{Kim 22} {Name:Kim Age:22} struct { Name string; Age int }{Name:\"Kim\", Age:22}\n&{Kim 22} 0x0\n[Kitano Kobayashi Kurosawa Miyazaki Ozu] [\"Kitano\" \"Kobayashi\" \"Kurosawa\" \"Miyazaki\" \"Ozu\"]\n[Kitano Kobayashi Kurosawa] [\"Kitano\" \"Kobayashi\" \"Kurosawa\"] []string{\"Kitano\", \"Kobayashi\", \"Kurosawa\"}\n[97 226 140 152] [97 226 140 152] a⌘ \"a⌘\" 61e28c98 61 e2 8c 98\n1973-11-29 21:33:09 +0000 UTC \"1973-11-29 21:33:09 +0000 UTC\"\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleGoStringer" : GoString), stdgo.fmt_test.Fmt_test.exampleGoStringer, ("Person{Name: \"Warren\", Age: 31, Addr: &Address{City: \"Denver\", State: \"CO\", Country: \"U.S.A.\"}}\nPerson{Name: \"Theia\", Age: 4}\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleStringer" : GoString), stdgo.fmt_test.Fmt_test.exampleStringer, ("Gopher (2)\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("fmt" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
