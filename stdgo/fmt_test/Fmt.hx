package stdgo.fmt_test;
import stdgo.fmt.Fmt;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
51,
51,
(new stdgo.testing.Testing.InternalTest(("TestErrorf" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testErrorf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFmtInterface" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testFmtInterface) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSprintf" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testSprintf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestComplexFormatting" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testComplexFormatting) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReorder" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testReorder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCountMallocs" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testCountMallocs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFlagParser" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testFlagParser) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStructPrinter" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testStructPrinter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSlicePrinter" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testSlicePrinter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMapPrinter" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testMapPrinter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEmptyMap" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testEmptyMap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBlank" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testBlank) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBlankln" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testBlankln) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatterPrintln" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testFormatterPrintln) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWidthAndPrecision" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testWidthAndPrecision) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPanics" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testPanics) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadVerbRecursion" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testBadVerbRecursion) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsSpace" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testIsSpace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNilDoesNotBecomeTyped" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testNilDoesNotBecomeTyped) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatterFlags" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testFormatterFlags) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParsenum" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testParsenum) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppendf" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testAppendf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppend" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testAppend) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppendln" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testAppendln) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScan" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScan) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanln" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanln) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanf" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanOverflow" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNaN" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testNaN) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInf" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testInf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanfMulti" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanfMulti) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanMultiple" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanMultiple) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanEmpty" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanEmpty) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanNotPointer" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanNotPointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanlnNoNewline" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanlnNoNewline) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanlnWithMiddleNewline" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanlnWithMiddleNewline) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEOF" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEOFAtEndOfInput" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testEOFAtEndOfInput) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEOFAllTypes" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testEOFAllTypes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadRuneWithBufio" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testUnreadRuneWithBufio) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiLine" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testMultiLine) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLineByLineFscanf" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testLineByLineFscanf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanStateCount" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanStateCount) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanInts" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanInts) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHexBytes" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testHexBytes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanNewlinesAreSpaces" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanNewlinesAreSpaces) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanlnNewlinesTerminate" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanlnNewlinesTerminate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanfNewlineMatchFormat" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testScanfNewlineMatchFormat) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHexByte" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testHexByte) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatString" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testFormatString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStringer" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.testStringer) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
25,
25,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfPadding" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfPadding) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfEmpty" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfEmpty) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfString" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfTruncateString" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfTruncateString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfTruncateBytes" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfTruncateBytes) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfSlowParsingPath" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfSlowParsingPath) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfQuoteString" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfQuoteString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfInt" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfIntInt" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfIntInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfPrefixedInt" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfPrefixedInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfFloat" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfFloat) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfComplex" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfComplex) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfBoolean" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfBoolean) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfHexString" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfHexString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfHexBytes" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfHexBytes) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfBytes" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfBytes) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfStringer" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfStringer) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSprintfStructure" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkSprintfStructure) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkManyArgs" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkManyArgs) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFprintInt" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkFprintInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFprintfBytes" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkFprintfBytes) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFprintIntNoAlloc" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkFprintIntNoAlloc) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkScanInts" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkScanInts) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkScanRecursiveInt" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkScanRecursiveInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkScanRecursiveIntReaderWrapper" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.benchmarkScanRecursiveIntReaderWrapper) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(
17,
17,
(new stdgo.testing.Testing.InternalExample(("ExampleErrorf" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.exampleErrorf, ("user \"bueller\" (id 17) not found\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFscanf" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.exampleFscanf, ("5 true gophers\n3\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFscanln" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.exampleFscanln, ("3: dmr, 1771, 1.618034\n3: ken, 271828, 3.141590\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSscanf" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.exampleSscanf, ("2: Kim, 22\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExamplePrint" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.examplePrint, ("Kim is 22 years old.\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExamplePrintln" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.examplePrintln, ("Kim is 22 years old.\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExamplePrintf" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.examplePrintf, ("Kim is 22 years old.\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSprint" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.exampleSprint, ("Kim is 22 years old.\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSprintln" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.exampleSprintln, ("Kim is 22 years old.\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSprintf" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.exampleSprintf, ("Kim is 22 years old.\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFprint" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.exampleFprint, ("Kim is 22 years old.\n21 bytes written.\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFprintln" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.exampleFprintln, ("Kim is 22 years old.\n21 bytes written.\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFprintf" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.exampleFprintf, ("Kim is 22 years old.\n21 bytes written.\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("Example_printers" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.example_printers, ("The vector (3 4) has length 5.\nThe vector ( 3 4 ) has length 5 .\nThe vector (3 4) has length 5.\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("Example_formats" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.example_formats, ("23\n23\n23\nint *int\ntrue true\n42 42 2a 52 101010\n3.141592653589793 3.141592653589793 3.14 (  3.14) 3.141593e+00\n(110.7+22.5i) (110.7+22.5i) (110.70+22.50i) (1.11e+02+2.25e+01i)\n128512 128512 😀 \'😀\' U+1F600 U+1F600 \'😀\'\nfoo \"bar\" foo \"bar\" \"foo \\\"bar\\\"\" `foo \"bar\"`\nmap[dachshund:false peanut:true] map[string]bool{\"dachshund\":false, \"peanut\":true}\n{Kim 22} {Name:Kim Age:22} struct { Name string; Age int }{Name:\"Kim\", Age:22}\n&{Kim 22} 0x0\n[Kitano Kobayashi Kurosawa Miyazaki Ozu] [\"Kitano\" \"Kobayashi\" \"Kurosawa\" \"Miyazaki\" \"Ozu\"]\n[Kitano Kobayashi Kurosawa] [\"Kitano\" \"Kobayashi\" \"Kurosawa\"] []string{\"Kitano\", \"Kobayashi\", \"Kurosawa\"}\n[97 226 140 152] [97 226 140 152] a⌘ \"a⌘\" 61e28c98 61 e2 8c 98\n1973-11-29 21:33:09 +0000 UTC \"1973-11-29 21:33:09 +0000 UTC\"\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleGoStringer" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.exampleGoStringer, ("Person{Name: \"Warren\", Age: 31, Addr: &Address{City: \"Denver\", State: \"CO\", Country: \"U.S.A.\"}}\nPerson{Name: \"Theia\", Age: 4}\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleStringer" : stdgo.GoString)?.__copy__(), stdgo.fmt_test.Fmt_test.exampleStringer, ("Gopher (2)\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("fmt" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
