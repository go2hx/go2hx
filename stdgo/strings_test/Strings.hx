package stdgo.strings_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
0,
0,
(new stdgo.testing.Testing.InternalTest(("TestBuilder" : GoString), stdgo.strings_test.Strings_test.testBuilder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBuilderString" : GoString), stdgo.strings_test.Strings_test.testBuilderString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBuilderReset" : GoString), stdgo.strings_test.Strings_test.testBuilderReset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBuilderGrow" : GoString), stdgo.strings_test.Strings_test.testBuilderGrow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBuilderWrite2" : GoString), stdgo.strings_test.Strings_test.testBuilderWrite2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBuilderWriteByte" : GoString), stdgo.strings_test.Strings_test.testBuilderWriteByte) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBuilderAllocs" : GoString), stdgo.strings_test.Strings_test.testBuilderAllocs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBuilderCopyPanic" : GoString), stdgo.strings_test.Strings_test.testBuilderCopyPanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBuilderWriteInvalidRune" : GoString), stdgo.strings_test.Strings_test.testBuilderWriteInvalidRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestClone" : GoString), stdgo.strings_test.Strings_test.testClone) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompare" : GoString), stdgo.strings_test.Strings_test.testCompare) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareIdenticalString" : GoString), stdgo.strings_test.Strings_test.testCompareIdenticalString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareStrings" : GoString), stdgo.strings_test.Strings_test.testCompareStrings) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReader" : GoString), stdgo.strings_test.Strings_test.testReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAfterBigSeek" : GoString), stdgo.strings_test.Strings_test.testReadAfterBigSeek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderAt" : GoString), stdgo.strings_test.Strings_test.testReaderAt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderAtConcurrent" : GoString), stdgo.strings_test.Strings_test.testReaderAtConcurrent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEmptyReaderConcurrent" : GoString), stdgo.strings_test.Strings_test.testEmptyReaderConcurrent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteTo" : GoString), stdgo.strings_test.Strings_test.testWriteTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderLenSize" : GoString), stdgo.strings_test.Strings_test.testReaderLenSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderReset" : GoString), stdgo.strings_test.Strings_test.testReaderReset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderZero" : GoString), stdgo.strings_test.Strings_test.testReaderZero) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReplacer" : GoString), stdgo.strings_test.Strings_test.testReplacer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPickAlgorithm" : GoString), stdgo.strings_test.Strings_test.testPickAlgorithm) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteStringError" : GoString), stdgo.strings_test.Strings_test.testWriteStringError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGenericTrieBuilding" : GoString), stdgo.strings_test.Strings_test.testGenericTrieBuilding) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFinderNext" : GoString), stdgo.strings_test.Strings_test.testFinderNext) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFinderCreation" : GoString), stdgo.strings_test.Strings_test.testFinderCreation) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIndex" : GoString), stdgo.strings_test.Strings_test.testIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLastIndex" : GoString), stdgo.strings_test.Strings_test.testLastIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIndexAny" : GoString), stdgo.strings_test.Strings_test.testIndexAny) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLastIndexAny" : GoString), stdgo.strings_test.Strings_test.testLastIndexAny) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIndexByte" : GoString), stdgo.strings_test.Strings_test.testIndexByte) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLastIndexByte" : GoString), stdgo.strings_test.Strings_test.testLastIndexByte) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIndexRandom" : GoString), stdgo.strings_test.Strings_test.testIndexRandom) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIndexRune" : GoString), stdgo.strings_test.Strings_test.testIndexRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSplit" : GoString), stdgo.strings_test.Strings_test.testSplit) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSplitAfter" : GoString), stdgo.strings_test.Strings_test.testSplitAfter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFields" : GoString), stdgo.strings_test.Strings_test.testFields) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFieldsFunc" : GoString), stdgo.strings_test.Strings_test.testFieldsFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMap" : GoString), stdgo.strings_test.Strings_test.testMap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestToUpper" : GoString), stdgo.strings_test.Strings_test.testToUpper) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestToLower" : GoString), stdgo.strings_test.Strings_test.testToLower) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestToValidUTF8" : GoString), stdgo.strings_test.Strings_test.testToValidUTF8) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSpecialCase" : GoString), stdgo.strings_test.Strings_test.testSpecialCase) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTrimSpace" : GoString), stdgo.strings_test.Strings_test.testTrimSpace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTrim" : GoString), stdgo.strings_test.Strings_test.testTrim) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTrimFunc" : GoString), stdgo.strings_test.Strings_test.testTrimFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIndexFunc" : GoString), stdgo.strings_test.Strings_test.testIndexFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCaseConsistency" : GoString), stdgo.strings_test.Strings_test.testCaseConsistency) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRepeat" : GoString), stdgo.strings_test.Strings_test.testRepeat) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRepeatCatchesOverflow" : GoString), stdgo.strings_test.Strings_test.testRepeatCatchesOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRunes" : GoString), stdgo.strings_test.Strings_test.testRunes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadByte" : GoString), stdgo.strings_test.Strings_test.testReadByte) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadRune" : GoString), stdgo.strings_test.Strings_test.testReadRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadRuneError" : GoString), stdgo.strings_test.Strings_test.testUnreadRuneError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReplace" : GoString), stdgo.strings_test.Strings_test.testReplace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTitle" : GoString), stdgo.strings_test.Strings_test.testTitle) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestContains" : GoString), stdgo.strings_test.Strings_test.testContains) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestContainsAny" : GoString), stdgo.strings_test.Strings_test.testContainsAny) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestContainsRune" : GoString), stdgo.strings_test.Strings_test.testContainsRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEqualFold" : GoString), stdgo.strings_test.Strings_test.testEqualFold) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCount" : GoString), stdgo.strings_test.Strings_test.testCount) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCut" : GoString), stdgo.strings_test.Strings_test.testCut) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCutPrefix" : GoString), stdgo.strings_test.Strings_test.testCutPrefix) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCutSuffix" : GoString), stdgo.strings_test.Strings_test.testCutSuffix) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(
0,
0,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkBuildString_Builder" : GoString), stdgo.strings_test.Strings_test.benchmarkBuildString_Builder) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkBuildString_ByteBuffer" : GoString), stdgo.strings_test.Strings_test.benchmarkBuildString_ByteBuffer) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkClone" : GoString), stdgo.strings_test.Strings_test.benchmarkClone) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkGenericNoMatch" : GoString), stdgo.strings_test.Strings_test.benchmarkGenericNoMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkGenericMatch1" : GoString), stdgo.strings_test.Strings_test.benchmarkGenericMatch1) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkGenericMatch2" : GoString), stdgo.strings_test.Strings_test.benchmarkGenericMatch2) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSingleMaxSkipping" : GoString), stdgo.strings_test.Strings_test.benchmarkSingleMaxSkipping) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSingleLongSuffixFail" : GoString), stdgo.strings_test.Strings_test.benchmarkSingleLongSuffixFail) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSingleMatch" : GoString), stdgo.strings_test.Strings_test.benchmarkSingleMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkByteByteNoMatch" : GoString), stdgo.strings_test.Strings_test.benchmarkByteByteNoMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkByteByteMatch" : GoString), stdgo.strings_test.Strings_test.benchmarkByteByteMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkByteStringMatch" : GoString), stdgo.strings_test.Strings_test.benchmarkByteStringMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkHTMLEscapeNew" : GoString), stdgo.strings_test.Strings_test.benchmarkHTMLEscapeNew) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkHTMLEscapeOld" : GoString), stdgo.strings_test.Strings_test.benchmarkHTMLEscapeOld) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkByteStringReplacerWriteString" : GoString), stdgo.strings_test.Strings_test.benchmarkByteStringReplacerWriteString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkByteReplacerWriteString" : GoString), stdgo.strings_test.Strings_test.benchmarkByteReplacerWriteString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkByteByteReplaces" : GoString), stdgo.strings_test.Strings_test.benchmarkByteByteReplaces) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkByteByteMap" : GoString), stdgo.strings_test.Strings_test.benchmarkByteByteMap) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMap" : GoString), stdgo.strings_test.Strings_test.benchmarkMap) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndexRune" : GoString), stdgo.strings_test.Strings_test.benchmarkIndexRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndexRuneLongString" : GoString), stdgo.strings_test.Strings_test.benchmarkIndexRuneLongString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndexRuneFastPath" : GoString), stdgo.strings_test.Strings_test.benchmarkIndexRuneFastPath) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndex" : GoString), stdgo.strings_test.Strings_test.benchmarkIndex) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLastIndex" : GoString), stdgo.strings_test.Strings_test.benchmarkLastIndex) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndexByte" : GoString), stdgo.strings_test.Strings_test.benchmarkIndexByte) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkToUpper" : GoString), stdgo.strings_test.Strings_test.benchmarkToUpper) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkToLower" : GoString), stdgo.strings_test.Strings_test.benchmarkToLower) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMapNoChanges" : GoString), stdgo.strings_test.Strings_test.benchmarkMapNoChanges) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrim" : GoString), stdgo.strings_test.Strings_test.benchmarkTrim) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkToValidUTF8" : GoString), stdgo.strings_test.Strings_test.benchmarkToValidUTF8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEqualFold" : GoString), stdgo.strings_test.Strings_test.benchmarkEqualFold) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndexHard1" : GoString), stdgo.strings_test.Strings_test.benchmarkIndexHard1) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndexHard2" : GoString), stdgo.strings_test.Strings_test.benchmarkIndexHard2) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndexHard3" : GoString), stdgo.strings_test.Strings_test.benchmarkIndexHard3) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndexHard4" : GoString), stdgo.strings_test.Strings_test.benchmarkIndexHard4) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLastIndexHard1" : GoString), stdgo.strings_test.Strings_test.benchmarkLastIndexHard1) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLastIndexHard2" : GoString), stdgo.strings_test.Strings_test.benchmarkLastIndexHard2) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLastIndexHard3" : GoString), stdgo.strings_test.Strings_test.benchmarkLastIndexHard3) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCountHard1" : GoString), stdgo.strings_test.Strings_test.benchmarkCountHard1) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCountHard2" : GoString), stdgo.strings_test.Strings_test.benchmarkCountHard2) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCountHard3" : GoString), stdgo.strings_test.Strings_test.benchmarkCountHard3) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndexTorture" : GoString), stdgo.strings_test.Strings_test.benchmarkIndexTorture) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCountTorture" : GoString), stdgo.strings_test.Strings_test.benchmarkCountTorture) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCountTortureOverlapping" : GoString), stdgo.strings_test.Strings_test.benchmarkCountTortureOverlapping) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCountByte" : GoString), stdgo.strings_test.Strings_test.benchmarkCountByte) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFields" : GoString), stdgo.strings_test.Strings_test.benchmarkFields) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFieldsFunc" : GoString), stdgo.strings_test.Strings_test.benchmarkFieldsFunc) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSplitEmptySeparator" : GoString), stdgo.strings_test.Strings_test.benchmarkSplitEmptySeparator) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSplitSingleByteSeparator" : GoString), stdgo.strings_test.Strings_test.benchmarkSplitSingleByteSeparator) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSplitMultiByteSeparator" : GoString), stdgo.strings_test.Strings_test.benchmarkSplitMultiByteSeparator) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSplitNSingleByteSeparator" : GoString), stdgo.strings_test.Strings_test.benchmarkSplitNSingleByteSeparator) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSplitNMultiByteSeparator" : GoString), stdgo.strings_test.Strings_test.benchmarkSplitNMultiByteSeparator) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRepeat" : GoString), stdgo.strings_test.Strings_test.benchmarkRepeat) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRepeatLarge" : GoString), stdgo.strings_test.Strings_test.benchmarkRepeatLarge) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndexAnyASCII" : GoString), stdgo.strings_test.Strings_test.benchmarkIndexAnyASCII) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndexAnyUTF8" : GoString), stdgo.strings_test.Strings_test.benchmarkIndexAnyUTF8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLastIndexAnyASCII" : GoString), stdgo.strings_test.Strings_test.benchmarkLastIndexAnyASCII) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLastIndexAnyUTF8" : GoString), stdgo.strings_test.Strings_test.benchmarkLastIndexAnyUTF8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrimASCII" : GoString), stdgo.strings_test.Strings_test.benchmarkTrimASCII) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrimByte" : GoString), stdgo.strings_test.Strings_test.benchmarkTrimByte) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndexPeriodic" : GoString), stdgo.strings_test.Strings_test.benchmarkIndexPeriodic) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkJoin" : GoString), stdgo.strings_test.Strings_test.benchmarkJoin) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrimSpace" : GoString), stdgo.strings_test.Strings_test.benchmarkTrimSpace) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReplaceAll" : GoString), stdgo.strings_test.Strings_test.benchmarkReplaceAll) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(
0,
0,
(new stdgo.testing.Testing.InternalExample(("ExampleBuilder" : GoString), stdgo.strings_test.Strings_test.exampleBuilder, ("3...2...1...ignition\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCompare" : GoString), stdgo.strings_test.Strings_test.exampleCompare, ("-1\n0\n1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleContains" : GoString), stdgo.strings_test.Strings_test.exampleContains, ("true\nfalse\ntrue\ntrue\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleContainsAny" : GoString), stdgo.strings_test.Strings_test.exampleContainsAny, ("false\ntrue\ntrue\ntrue\nfalse\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleContainsRune" : GoString), stdgo.strings_test.Strings_test.exampleContainsRune, ("true\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCount" : GoString), stdgo.strings_test.Strings_test.exampleCount, ("3\n5\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCut" : GoString), stdgo.strings_test.Strings_test.exampleCut, ("Cut(\"Gopher\", \"Go\") = \"\", \"pher\", true\nCut(\"Gopher\", \"ph\") = \"Go\", \"er\", true\nCut(\"Gopher\", \"er\") = \"Goph\", \"\", true\nCut(\"Gopher\", \"Badger\") = \"Gopher\", \"\", false\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleEqualFold" : GoString), stdgo.strings_test.Strings_test.exampleEqualFold, ("true\ntrue\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFields" : GoString), stdgo.strings_test.Strings_test.exampleFields, ("Fields are: [\"foo\" \"bar\" \"baz\"]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFieldsFunc" : GoString), stdgo.strings_test.Strings_test.exampleFieldsFunc, ("Fields are: [\"foo1\" \"bar2\" \"baz3\"]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleHasPrefix" : GoString), stdgo.strings_test.Strings_test.exampleHasPrefix, ("true\nfalse\ntrue\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleHasSuffix" : GoString), stdgo.strings_test.Strings_test.exampleHasSuffix, ("true\nfalse\nfalse\ntrue\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIndex" : GoString), stdgo.strings_test.Strings_test.exampleIndex, ("4\n-1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIndexFunc" : GoString), stdgo.strings_test.Strings_test.exampleIndexFunc, ("7\n-1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIndexAny" : GoString), stdgo.strings_test.Strings_test.exampleIndexAny, ("2\n-1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIndexByte" : GoString), stdgo.strings_test.Strings_test.exampleIndexByte, ("0\n3\n-1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIndexRune" : GoString), stdgo.strings_test.Strings_test.exampleIndexRune, ("4\n-1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLastIndex" : GoString), stdgo.strings_test.Strings_test.exampleLastIndex, ("0\n3\n-1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLastIndexAny" : GoString), stdgo.strings_test.Strings_test.exampleLastIndexAny, ("4\n8\n-1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLastIndexByte" : GoString), stdgo.strings_test.Strings_test.exampleLastIndexByte, ("10\n8\n-1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLastIndexFunc" : GoString), stdgo.strings_test.Strings_test.exampleLastIndexFunc, ("5\n2\n-1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleJoin" : GoString), stdgo.strings_test.Strings_test.exampleJoin, ("foo, bar, baz\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRepeat" : GoString), stdgo.strings_test.Strings_test.exampleRepeat, ("banana\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReplace" : GoString), stdgo.strings_test.Strings_test.exampleReplace, ("oinky oinky oink\nmoo moo moo\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReplaceAll" : GoString), stdgo.strings_test.Strings_test.exampleReplaceAll, ("moo moo moo\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSplit" : GoString), stdgo.strings_test.Strings_test.exampleSplit, ("[\"a\" \"b\" \"c\"]\n[\"\" \"man \" \"plan \" \"canal panama\"]\n[\" \" \"x\" \"y\" \"z\" \" \"]\n[\"\"]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSplitN" : GoString), stdgo.strings_test.Strings_test.exampleSplitN, ("[\"a\" \"b,c\"]\n[] (nil = true)\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSplitAfter" : GoString), stdgo.strings_test.Strings_test.exampleSplitAfter, ("[\"a,\" \"b,\" \"c\"]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSplitAfterN" : GoString), stdgo.strings_test.Strings_test.exampleSplitAfterN, ("[\"a,\" \"b,c\"]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTitle" : GoString), stdgo.strings_test.Strings_test.exampleTitle, ("Her Royal Highness\nLoud Noises\nХлеб\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleToTitle" : GoString), stdgo.strings_test.Strings_test.exampleToTitle, ("HER ROYAL HIGHNESS\nLOUD NOISES\nХЛЕБ\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleToTitleSpecial" : GoString), stdgo.strings_test.Strings_test.exampleToTitleSpecial, ("DÜNYANIN İLK BORSA YAPISI AİZONAİ KABUL EDİLİR\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMap" : GoString), stdgo.strings_test.Strings_test.exampleMap, ("\'Gjnf oevyyvt naq gur fyvgul tbcure...\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleNewReplacer" : GoString), stdgo.strings_test.Strings_test.exampleNewReplacer, ("This is &lt;b&gt;HTML&lt;/b&gt;!\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleToUpper" : GoString), stdgo.strings_test.Strings_test.exampleToUpper, ("GOPHER\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleToUpperSpecial" : GoString), stdgo.strings_test.Strings_test.exampleToUpperSpecial, ("ÖRNEK İŞ\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleToLower" : GoString), stdgo.strings_test.Strings_test.exampleToLower, ("gopher\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleToLowerSpecial" : GoString), stdgo.strings_test.Strings_test.exampleToLowerSpecial, ("önnek iş\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrim" : GoString), stdgo.strings_test.Strings_test.exampleTrim, ("Hello, Gophers\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrimSpace" : GoString), stdgo.strings_test.Strings_test.exampleTrimSpace, ("Hello, Gophers\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrimPrefix" : GoString), stdgo.strings_test.Strings_test.exampleTrimPrefix, ("Gophers!!!\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrimSuffix" : GoString), stdgo.strings_test.Strings_test.exampleTrimSuffix, ("¡¡¡Hello\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrimFunc" : GoString), stdgo.strings_test.Strings_test.exampleTrimFunc, ("Hello, Gophers\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrimLeft" : GoString), stdgo.strings_test.Strings_test.exampleTrimLeft, ("Hello, Gophers!!!\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrimLeftFunc" : GoString), stdgo.strings_test.Strings_test.exampleTrimLeftFunc, ("Hello, Gophers!!!\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrimRight" : GoString), stdgo.strings_test.Strings_test.exampleTrimRight, ("¡¡¡Hello, Gophers\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrimRightFunc" : GoString), stdgo.strings_test.Strings_test.exampleTrimRightFunc, ("¡¡¡Hello, Gophers\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("strings" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
