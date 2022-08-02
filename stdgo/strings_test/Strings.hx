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
var _tests : Slice<stdgo.testing.Testing.InternalTest> = ((new Slice<stdgo.testing.Testing.InternalTest>(
((new stdgo.testing.Testing.InternalTest(((((("TestBuilder" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testBuilder) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestBuilderString" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testBuilderString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestBuilderReset" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testBuilderReset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestBuilderGrow" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testBuilderGrow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestBuilderWrite2" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testBuilderWrite2) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestBuilderWriteByte" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testBuilderWriteByte) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestBuilderAllocs" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testBuilderAllocs) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestBuilderCopyPanic" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testBuilderCopyPanic) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestBuilderWriteInvalidRune" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testBuilderWriteInvalidRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestClone" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testClone) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCompare" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testCompare) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCompareIdenticalString" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testCompareIdenticalString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCompareStrings" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testCompareStrings) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReader" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testReader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReadAfterBigSeek" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testReadAfterBigSeek) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReaderAt" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testReaderAt) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReaderAtConcurrent" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testReaderAtConcurrent) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestEmptyReaderConcurrent" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testEmptyReaderConcurrent) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestWriteTo" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testWriteTo) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReaderLenSize" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testReaderLenSize) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReaderReset" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testReaderReset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReaderZero" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testReaderZero) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReplacer" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testReplacer) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestPickAlgorithm" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testPickAlgorithm) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestWriteStringError" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testWriteStringError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestGenericTrieBuilding" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testGenericTrieBuilding) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestFinderNext" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testFinderNext) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestFinderCreation" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testFinderCreation) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIndex" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testIndex) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLastIndex" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testLastIndex) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIndexAny" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testIndexAny) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLastIndexAny" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testLastIndexAny) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIndexByte" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testIndexByte) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLastIndexByte" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testLastIndexByte) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIndexRandom" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testIndexRandom) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIndexRune" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testIndexRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSplit" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testSplit) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSplitAfter" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testSplitAfter) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestFields" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testFields) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestFieldsFunc" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testFieldsFunc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMap" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testMap) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestToUpper" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testToUpper) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestToLower" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testToLower) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestToValidUTF8" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testToValidUTF8) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSpecialCase" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testSpecialCase) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestTrimSpace" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testTrimSpace) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestTrim" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testTrim) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestTrimFunc" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testTrimFunc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIndexFunc" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testIndexFunc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCaseConsistency" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testCaseConsistency) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestRepeat" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testRepeat) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestRepeatCatchesOverflow" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testRepeatCatchesOverflow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestRunes" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testRunes) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReadByte" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testReadByte) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReadRune" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testReadRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestUnreadRuneError" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testUnreadRuneError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReplace" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testReplace) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestTitle" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testTitle) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestContains" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testContains) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestContainsAny" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testContainsAny) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestContainsRune" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testContainsRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestEqualFold" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testEqualFold) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCount" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testCount) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCut" : GoString))) : GoString)), stdgo.strings_test.Strings_test.testCut) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkBuildString_Builder" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkBuildString_Builder) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkBuildString_ByteBuffer" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkBuildString_ByteBuffer) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkClone" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkClone) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkGenericNoMatch" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkGenericNoMatch) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkGenericMatch1" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkGenericMatch1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkGenericMatch2" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkGenericMatch2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSingleMaxSkipping" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkSingleMaxSkipping) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSingleLongSuffixFail" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkSingleLongSuffixFail) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSingleMatch" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkSingleMatch) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkByteByteNoMatch" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkByteByteNoMatch) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkByteByteMatch" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkByteByteMatch) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkByteStringMatch" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkByteStringMatch) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkHTMLEscapeNew" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkHTMLEscapeNew) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkHTMLEscapeOld" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkHTMLEscapeOld) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkByteStringReplacerWriteString" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkByteStringReplacerWriteString) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkByteReplacerWriteString" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkByteReplacerWriteString) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkByteByteReplaces" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkByteByteReplaces) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkByteByteMap" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkByteByteMap) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkMap" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkMap) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIndexRune" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexRune) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIndexRuneLongString" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexRuneLongString) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIndexRuneFastPath" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexRuneFastPath) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIndex" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkIndex) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkLastIndex" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkLastIndex) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIndexByte" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexByte) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkToUpper" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkToUpper) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkToLower" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkToLower) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkMapNoChanges" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkMapNoChanges) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkTrim" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkTrim) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkToValidUTF8" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkToValidUTF8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkEqualFold" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkEqualFold) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIndexHard1" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexHard1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIndexHard2" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexHard2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIndexHard3" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexHard3) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIndexHard4" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexHard4) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkLastIndexHard1" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkLastIndexHard1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkLastIndexHard2" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkLastIndexHard2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkLastIndexHard3" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkLastIndexHard3) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkCountHard1" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkCountHard1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkCountHard2" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkCountHard2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkCountHard3" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkCountHard3) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIndexTorture" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexTorture) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkCountTorture" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkCountTorture) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkCountTortureOverlapping" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkCountTortureOverlapping) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkCountByte" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkCountByte) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkFields" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkFields) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkFieldsFunc" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkFieldsFunc) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSplitEmptySeparator" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkSplitEmptySeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSplitSingleByteSeparator" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkSplitSingleByteSeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSplitMultiByteSeparator" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkSplitMultiByteSeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSplitNSingleByteSeparator" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkSplitNSingleByteSeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSplitNMultiByteSeparator" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkSplitNMultiByteSeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkRepeat" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkRepeat) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIndexAnyASCII" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexAnyASCII) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIndexAnyUTF8" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexAnyUTF8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkLastIndexAnyASCII" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkLastIndexAnyASCII) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkLastIndexAnyUTF8" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkLastIndexAnyUTF8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkTrimASCII" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkTrimASCII) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkTrimByte" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkTrimByte) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIndexPeriodic" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexPeriodic) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkJoin" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkJoin) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkTrimSpace" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkTrimSpace) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkReplaceAll" : GoString))) : GoString)), stdgo.strings_test.Strings_test.benchmarkReplaceAll) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(
((new stdgo.testing.Testing.InternalExample(((((("ExampleBuilder" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleBuilder, ((((("3...2...1...ignition\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleCompare" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleCompare, ((((("-1\n0\n1\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleContains" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleContains, ((((("true\nfalse\ntrue\ntrue\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleContainsAny" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleContainsAny, ((((("false\ntrue\ntrue\ntrue\nfalse\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleContainsRune" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleContainsRune, ((((("true\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleCount" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleCount, ((((("3\n5\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleCut" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleCut, ((((("Cut(\"Gopher\", \"Go\") = \"\", \"pher\", true\nCut(\"Gopher\", \"ph\") = \"Go\", \"er\", true\nCut(\"Gopher\", \"er\") = \"Goph\", \"\", true\nCut(\"Gopher\", \"Badger\") = \"Gopher\", \"\", false\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleEqualFold" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleEqualFold, ((((("true\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleFields" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleFields, ((((("Fields are: [\"foo\" \"bar\" \"baz\"]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleFieldsFunc" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleFieldsFunc, ((((("Fields are: [\"foo1\" \"bar2\" \"baz3\"]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleHasPrefix" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleHasPrefix, ((((("true\nfalse\ntrue\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleHasSuffix" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleHasSuffix, ((((("true\nfalse\nfalse\ntrue\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleIndex" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleIndex, ((((("4\n-1\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleIndexFunc" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleIndexFunc, ((((("7\n-1\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleIndexAny" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleIndexAny, ((((("2\n-1\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleIndexByte" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleIndexByte, ((((("0\n3\n-1\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleIndexRune" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleIndexRune, ((((("4\n-1\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleLastIndex" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleLastIndex, ((((("0\n3\n-1\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleLastIndexAny" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleLastIndexAny, ((((("4\n8\n-1\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleLastIndexByte" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleLastIndexByte, ((((("10\n8\n-1\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleLastIndexFunc" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleLastIndexFunc, ((((("5\n2\n-1\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleJoin" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleJoin, ((((("foo, bar, baz\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleRepeat" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleRepeat, ((((("banana\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleReplace" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleReplace, ((((("oinky oinky oink\nmoo moo moo\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleReplaceAll" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleReplaceAll, ((((("moo moo moo\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSplit" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleSplit, ((((("[\"a\" \"b\" \"c\"]\n[\"\" \"man \" \"plan \" \"canal panama\"]\n[\" \" \"x\" \"y\" \"z\" \" \"]\n[\"\"]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSplitN" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleSplitN, ((((("[\"a\" \"b,c\"]\n[] (nil = true)\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSplitAfter" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleSplitAfter, ((((("[\"a,\" \"b,\" \"c\"]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSplitAfterN" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleSplitAfterN, ((((("[\"a,\" \"b,c\"]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTitle" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleTitle, ((((("Her Royal Highness\nLoud Noises\nХлеб\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleToTitle" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleToTitle, ((((("HER ROYAL HIGHNESS\nLOUD NOISES\nХЛЕБ\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleToTitleSpecial" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleToTitleSpecial, ((((("DÜNYANIN İLK BORSA YAPISI AİZONAİ KABUL EDİLİR\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleMap" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleMap, ((((("\'Gjnf oevyyvt naq gur fyvgul tbcure...\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleNewReplacer" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleNewReplacer, ((((("This is &lt;b&gt;HTML&lt;/b&gt;!\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleToUpper" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleToUpper, ((((("GOPHER\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleToUpperSpecial" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleToUpperSpecial, ((((("ÖRNEK İŞ\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleToLower" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleToLower, ((((("gopher\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleToLowerSpecial" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleToLowerSpecial, ((((("önnek iş\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTrim" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleTrim, ((((("Hello, Gophers\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTrimSpace" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleTrimSpace, ((((("Hello, Gophers\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTrimPrefix" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleTrimPrefix, ((((("Gophers!!!\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTrimSuffix" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleTrimSuffix, ((((("¡¡¡Hello\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTrimFunc" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleTrimFunc, ((((("Hello, Gophers\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTrimLeft" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleTrimLeft, ((((("Hello, Gophers!!!\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTrimLeftFunc" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleTrimLeftFunc, ((((("Hello, Gophers!!!\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTrimRight" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleTrimRight, ((((("¡¡¡Hello, Gophers\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTrimRightFunc" : GoString))) : GoString)), stdgo.strings_test.Strings_test.exampleTrimRightFunc, ((((("¡¡¡Hello, Gophers\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m = stdgo.testing.Testing.mainStart({
            final __self__ = new stdgo.testing.internal.testdeps.Testdeps.TestDeps_wrapper(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)));
            __self__.checkCorpus = #if !macro function(_vals:Slice<AnyInterface>, _types:Slice<stdgo.reflect.Reflect.Type>):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).checkCorpus(_vals, _types) #else null #end;
            __self__.coordinateFuzzing = #if !macro function(_timeout:stdgo.time.Time.Duration, _limit:GoInt64, _minimizeTimeout:stdgo.time.Time.Duration, _minimizeLimit:GoInt64, _parallel:GoInt, _seed:Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>, _types:Slice<stdgo.reflect.Reflect.Type>, _corpusDir:GoString, _cacheDir:GoString):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).coordinateFuzzing(_timeout, _limit, _minimizeTimeout, _minimizeLimit, _parallel, _seed, _types, _corpusDir, _cacheDir) #else null #end;
            __self__.importPath = #if !macro function():GoString return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).importPath() #else null #end;
            __self__.matchString = #if !macro function(_pat:GoString, _str:GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).matchString(_pat, _str) #else null #end;
            __self__.readCorpus = #if !macro function(_dir:GoString, _types:Slice<stdgo.reflect.Reflect.Type>):{ var _0 : Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).readCorpus(_dir, _types) #else null #end;
            __self__.resetCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).resetCoverage() #else null #end;
            __self__.runFuzzWorker = #if !macro function(_fn:({ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).runFuzzWorker(_fn) #else null #end;
            __self__.setPanicOnExit0 = #if !macro function(_v:Bool):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).setPanicOnExit0(_v) #else null #end;
            __self__.snapshotCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).snapshotCoverage() #else null #end;
            __self__.startCPUProfile = #if !macro function(_w:stdgo.io.Io.Writer):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startCPUProfile(_w) #else null #end;
            __self__.startTestLog = #if !macro function(_w:stdgo.io.Io.Writer):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startTestLog(_w) #else null #end;
            __self__.stopCPUProfile = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopCPUProfile() #else null #end;
            __self__.stopTestLog = #if !macro function():stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopTestLog() #else null #end;
            __self__.writeProfileTo = #if !macro function(_name:GoString, _w:stdgo.io.Io.Writer, _debug:GoInt):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).writeProfileTo(_name, _w, _debug) #else null #end;
            __self__;
        }, _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((((("strings" : GoString))) : GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
