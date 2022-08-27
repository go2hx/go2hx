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
0,
0,
((new stdgo.testing.Testing.InternalTest(((Go.str("TestBuilder") : GoString)), stdgo.strings_test.Strings_test.testBuilder) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestBuilderString") : GoString)), stdgo.strings_test.Strings_test.testBuilderString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestBuilderReset") : GoString)), stdgo.strings_test.Strings_test.testBuilderReset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestBuilderGrow") : GoString)), stdgo.strings_test.Strings_test.testBuilderGrow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestBuilderWrite2") : GoString)), stdgo.strings_test.Strings_test.testBuilderWrite2) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestBuilderWriteByte") : GoString)), stdgo.strings_test.Strings_test.testBuilderWriteByte) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestBuilderAllocs") : GoString)), stdgo.strings_test.Strings_test.testBuilderAllocs) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestBuilderCopyPanic") : GoString)), stdgo.strings_test.Strings_test.testBuilderCopyPanic) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestBuilderWriteInvalidRune") : GoString)), stdgo.strings_test.Strings_test.testBuilderWriteInvalidRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestClone") : GoString)), stdgo.strings_test.Strings_test.testClone) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestCompare") : GoString)), stdgo.strings_test.Strings_test.testCompare) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestCompareIdenticalString") : GoString)), stdgo.strings_test.Strings_test.testCompareIdenticalString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestCompareStrings") : GoString)), stdgo.strings_test.Strings_test.testCompareStrings) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestReader") : GoString)), stdgo.strings_test.Strings_test.testReader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestReadAfterBigSeek") : GoString)), stdgo.strings_test.Strings_test.testReadAfterBigSeek) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestReaderAt") : GoString)), stdgo.strings_test.Strings_test.testReaderAt) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestReaderAtConcurrent") : GoString)), stdgo.strings_test.Strings_test.testReaderAtConcurrent) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestEmptyReaderConcurrent") : GoString)), stdgo.strings_test.Strings_test.testEmptyReaderConcurrent) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestWriteTo") : GoString)), stdgo.strings_test.Strings_test.testWriteTo) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestReaderLenSize") : GoString)), stdgo.strings_test.Strings_test.testReaderLenSize) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestReaderReset") : GoString)), stdgo.strings_test.Strings_test.testReaderReset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestReaderZero") : GoString)), stdgo.strings_test.Strings_test.testReaderZero) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestReplacer") : GoString)), stdgo.strings_test.Strings_test.testReplacer) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestPickAlgorithm") : GoString)), stdgo.strings_test.Strings_test.testPickAlgorithm) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestWriteStringError") : GoString)), stdgo.strings_test.Strings_test.testWriteStringError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestGenericTrieBuilding") : GoString)), stdgo.strings_test.Strings_test.testGenericTrieBuilding) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestFinderNext") : GoString)), stdgo.strings_test.Strings_test.testFinderNext) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestFinderCreation") : GoString)), stdgo.strings_test.Strings_test.testFinderCreation) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestIndex") : GoString)), stdgo.strings_test.Strings_test.testIndex) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestLastIndex") : GoString)), stdgo.strings_test.Strings_test.testLastIndex) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestIndexAny") : GoString)), stdgo.strings_test.Strings_test.testIndexAny) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestLastIndexAny") : GoString)), stdgo.strings_test.Strings_test.testLastIndexAny) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestIndexByte") : GoString)), stdgo.strings_test.Strings_test.testIndexByte) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestLastIndexByte") : GoString)), stdgo.strings_test.Strings_test.testLastIndexByte) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestIndexRandom") : GoString)), stdgo.strings_test.Strings_test.testIndexRandom) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestIndexRune") : GoString)), stdgo.strings_test.Strings_test.testIndexRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestSplit") : GoString)), stdgo.strings_test.Strings_test.testSplit) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestSplitAfter") : GoString)), stdgo.strings_test.Strings_test.testSplitAfter) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestFields") : GoString)), stdgo.strings_test.Strings_test.testFields) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestFieldsFunc") : GoString)), stdgo.strings_test.Strings_test.testFieldsFunc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestMap") : GoString)), stdgo.strings_test.Strings_test.testMap) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestToUpper") : GoString)), stdgo.strings_test.Strings_test.testToUpper) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestToLower") : GoString)), stdgo.strings_test.Strings_test.testToLower) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestToValidUTF8") : GoString)), stdgo.strings_test.Strings_test.testToValidUTF8) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestSpecialCase") : GoString)), stdgo.strings_test.Strings_test.testSpecialCase) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestTrimSpace") : GoString)), stdgo.strings_test.Strings_test.testTrimSpace) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestTrim") : GoString)), stdgo.strings_test.Strings_test.testTrim) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestTrimFunc") : GoString)), stdgo.strings_test.Strings_test.testTrimFunc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestIndexFunc") : GoString)), stdgo.strings_test.Strings_test.testIndexFunc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestCaseConsistency") : GoString)), stdgo.strings_test.Strings_test.testCaseConsistency) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestRepeat") : GoString)), stdgo.strings_test.Strings_test.testRepeat) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestRepeatCatchesOverflow") : GoString)), stdgo.strings_test.Strings_test.testRepeatCatchesOverflow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestRunes") : GoString)), stdgo.strings_test.Strings_test.testRunes) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestReadByte") : GoString)), stdgo.strings_test.Strings_test.testReadByte) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestReadRune") : GoString)), stdgo.strings_test.Strings_test.testReadRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestUnreadRuneError") : GoString)), stdgo.strings_test.Strings_test.testUnreadRuneError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestReplace") : GoString)), stdgo.strings_test.Strings_test.testReplace) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestTitle") : GoString)), stdgo.strings_test.Strings_test.testTitle) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestContains") : GoString)), stdgo.strings_test.Strings_test.testContains) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestContainsAny") : GoString)), stdgo.strings_test.Strings_test.testContainsAny) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestContainsRune") : GoString)), stdgo.strings_test.Strings_test.testContainsRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestEqualFold") : GoString)), stdgo.strings_test.Strings_test.testEqualFold) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestCount") : GoString)), stdgo.strings_test.Strings_test.testCount) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestCut") : GoString)), stdgo.strings_test.Strings_test.testCut) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(
0,
0,
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkBuildString_Builder") : GoString)), stdgo.strings_test.Strings_test.benchmarkBuildString_Builder) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkBuildString_ByteBuffer") : GoString)), stdgo.strings_test.Strings_test.benchmarkBuildString_ByteBuffer) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkClone") : GoString)), stdgo.strings_test.Strings_test.benchmarkClone) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkGenericNoMatch") : GoString)), stdgo.strings_test.Strings_test.benchmarkGenericNoMatch) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkGenericMatch1") : GoString)), stdgo.strings_test.Strings_test.benchmarkGenericMatch1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkGenericMatch2") : GoString)), stdgo.strings_test.Strings_test.benchmarkGenericMatch2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkSingleMaxSkipping") : GoString)), stdgo.strings_test.Strings_test.benchmarkSingleMaxSkipping) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkSingleLongSuffixFail") : GoString)), stdgo.strings_test.Strings_test.benchmarkSingleLongSuffixFail) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkSingleMatch") : GoString)), stdgo.strings_test.Strings_test.benchmarkSingleMatch) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkByteByteNoMatch") : GoString)), stdgo.strings_test.Strings_test.benchmarkByteByteNoMatch) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkByteByteMatch") : GoString)), stdgo.strings_test.Strings_test.benchmarkByteByteMatch) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkByteStringMatch") : GoString)), stdgo.strings_test.Strings_test.benchmarkByteStringMatch) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkHTMLEscapeNew") : GoString)), stdgo.strings_test.Strings_test.benchmarkHTMLEscapeNew) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkHTMLEscapeOld") : GoString)), stdgo.strings_test.Strings_test.benchmarkHTMLEscapeOld) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkByteStringReplacerWriteString") : GoString)), stdgo.strings_test.Strings_test.benchmarkByteStringReplacerWriteString) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkByteReplacerWriteString") : GoString)), stdgo.strings_test.Strings_test.benchmarkByteReplacerWriteString) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkByteByteReplaces") : GoString)), stdgo.strings_test.Strings_test.benchmarkByteByteReplaces) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkByteByteMap") : GoString)), stdgo.strings_test.Strings_test.benchmarkByteByteMap) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkMap") : GoString)), stdgo.strings_test.Strings_test.benchmarkMap) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkIndexRune") : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexRune) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkIndexRuneLongString") : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexRuneLongString) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkIndexRuneFastPath") : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexRuneFastPath) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkIndex") : GoString)), stdgo.strings_test.Strings_test.benchmarkIndex) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkLastIndex") : GoString)), stdgo.strings_test.Strings_test.benchmarkLastIndex) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkIndexByte") : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexByte) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkToUpper") : GoString)), stdgo.strings_test.Strings_test.benchmarkToUpper) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkToLower") : GoString)), stdgo.strings_test.Strings_test.benchmarkToLower) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkMapNoChanges") : GoString)), stdgo.strings_test.Strings_test.benchmarkMapNoChanges) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkTrim") : GoString)), stdgo.strings_test.Strings_test.benchmarkTrim) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkToValidUTF8") : GoString)), stdgo.strings_test.Strings_test.benchmarkToValidUTF8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkEqualFold") : GoString)), stdgo.strings_test.Strings_test.benchmarkEqualFold) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkIndexHard1") : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexHard1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkIndexHard2") : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexHard2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkIndexHard3") : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexHard3) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkIndexHard4") : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexHard4) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkLastIndexHard1") : GoString)), stdgo.strings_test.Strings_test.benchmarkLastIndexHard1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkLastIndexHard2") : GoString)), stdgo.strings_test.Strings_test.benchmarkLastIndexHard2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkLastIndexHard3") : GoString)), stdgo.strings_test.Strings_test.benchmarkLastIndexHard3) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkCountHard1") : GoString)), stdgo.strings_test.Strings_test.benchmarkCountHard1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkCountHard2") : GoString)), stdgo.strings_test.Strings_test.benchmarkCountHard2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkCountHard3") : GoString)), stdgo.strings_test.Strings_test.benchmarkCountHard3) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkIndexTorture") : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexTorture) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkCountTorture") : GoString)), stdgo.strings_test.Strings_test.benchmarkCountTorture) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkCountTortureOverlapping") : GoString)), stdgo.strings_test.Strings_test.benchmarkCountTortureOverlapping) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkCountByte") : GoString)), stdgo.strings_test.Strings_test.benchmarkCountByte) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkFields") : GoString)), stdgo.strings_test.Strings_test.benchmarkFields) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkFieldsFunc") : GoString)), stdgo.strings_test.Strings_test.benchmarkFieldsFunc) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkSplitEmptySeparator") : GoString)), stdgo.strings_test.Strings_test.benchmarkSplitEmptySeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkSplitSingleByteSeparator") : GoString)), stdgo.strings_test.Strings_test.benchmarkSplitSingleByteSeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkSplitMultiByteSeparator") : GoString)), stdgo.strings_test.Strings_test.benchmarkSplitMultiByteSeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkSplitNSingleByteSeparator") : GoString)), stdgo.strings_test.Strings_test.benchmarkSplitNSingleByteSeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkSplitNMultiByteSeparator") : GoString)), stdgo.strings_test.Strings_test.benchmarkSplitNMultiByteSeparator) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkRepeat") : GoString)), stdgo.strings_test.Strings_test.benchmarkRepeat) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkIndexAnyASCII") : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexAnyASCII) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkIndexAnyUTF8") : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexAnyUTF8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkLastIndexAnyASCII") : GoString)), stdgo.strings_test.Strings_test.benchmarkLastIndexAnyASCII) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkLastIndexAnyUTF8") : GoString)), stdgo.strings_test.Strings_test.benchmarkLastIndexAnyUTF8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkTrimASCII") : GoString)), stdgo.strings_test.Strings_test.benchmarkTrimASCII) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkTrimByte") : GoString)), stdgo.strings_test.Strings_test.benchmarkTrimByte) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkIndexPeriodic") : GoString)), stdgo.strings_test.Strings_test.benchmarkIndexPeriodic) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkJoin") : GoString)), stdgo.strings_test.Strings_test.benchmarkJoin) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkTrimSpace") : GoString)), stdgo.strings_test.Strings_test.benchmarkTrimSpace) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkReplaceAll") : GoString)), stdgo.strings_test.Strings_test.benchmarkReplaceAll) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(
0,
0,
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleBuilder") : GoString)), stdgo.strings_test.Strings_test.exampleBuilder, ((Go.str("3...2...1...ignition\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleCompare") : GoString)), stdgo.strings_test.Strings_test.exampleCompare, ((Go.str("-1\n0\n1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleContains") : GoString)), stdgo.strings_test.Strings_test.exampleContains, ((Go.str("true\nfalse\ntrue\ntrue\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleContainsAny") : GoString)), stdgo.strings_test.Strings_test.exampleContainsAny, ((Go.str("false\ntrue\ntrue\ntrue\nfalse\nfalse\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleContainsRune") : GoString)), stdgo.strings_test.Strings_test.exampleContainsRune, ((Go.str("true\nfalse\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleCount") : GoString)), stdgo.strings_test.Strings_test.exampleCount, ((Go.str("3\n5\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleCut") : GoString)), stdgo.strings_test.Strings_test.exampleCut, ((Go.str("Cut(\"Gopher\", \"Go\") = \"\", \"pher\", true\nCut(\"Gopher\", \"ph\") = \"Go\", \"er\", true\nCut(\"Gopher\", \"er\") = \"Goph\", \"\", true\nCut(\"Gopher\", \"Badger\") = \"Gopher\", \"\", false\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleEqualFold") : GoString)), stdgo.strings_test.Strings_test.exampleEqualFold, ((Go.str("true\ntrue\nfalse\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleFields") : GoString)), stdgo.strings_test.Strings_test.exampleFields, ((Go.str("Fields are: [\"foo\" \"bar\" \"baz\"]\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleFieldsFunc") : GoString)), stdgo.strings_test.Strings_test.exampleFieldsFunc, ((Go.str("Fields are: [\"foo1\" \"bar2\" \"baz3\"]\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleHasPrefix") : GoString)), stdgo.strings_test.Strings_test.exampleHasPrefix, ((Go.str("true\nfalse\ntrue\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleHasSuffix") : GoString)), stdgo.strings_test.Strings_test.exampleHasSuffix, ((Go.str("true\nfalse\nfalse\ntrue\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleIndex") : GoString)), stdgo.strings_test.Strings_test.exampleIndex, ((Go.str("4\n-1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleIndexFunc") : GoString)), stdgo.strings_test.Strings_test.exampleIndexFunc, ((Go.str("7\n-1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleIndexAny") : GoString)), stdgo.strings_test.Strings_test.exampleIndexAny, ((Go.str("2\n-1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleIndexByte") : GoString)), stdgo.strings_test.Strings_test.exampleIndexByte, ((Go.str("0\n3\n-1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleIndexRune") : GoString)), stdgo.strings_test.Strings_test.exampleIndexRune, ((Go.str("4\n-1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleLastIndex") : GoString)), stdgo.strings_test.Strings_test.exampleLastIndex, ((Go.str("0\n3\n-1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleLastIndexAny") : GoString)), stdgo.strings_test.Strings_test.exampleLastIndexAny, ((Go.str("4\n8\n-1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleLastIndexByte") : GoString)), stdgo.strings_test.Strings_test.exampleLastIndexByte, ((Go.str("10\n8\n-1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleLastIndexFunc") : GoString)), stdgo.strings_test.Strings_test.exampleLastIndexFunc, ((Go.str("5\n2\n-1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleJoin") : GoString)), stdgo.strings_test.Strings_test.exampleJoin, ((Go.str("foo, bar, baz\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleRepeat") : GoString)), stdgo.strings_test.Strings_test.exampleRepeat, ((Go.str("banana\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleReplace") : GoString)), stdgo.strings_test.Strings_test.exampleReplace, ((Go.str("oinky oinky oink\nmoo moo moo\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleReplaceAll") : GoString)), stdgo.strings_test.Strings_test.exampleReplaceAll, ((Go.str("moo moo moo\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleSplit") : GoString)), stdgo.strings_test.Strings_test.exampleSplit, ((Go.str("[\"a\" \"b\" \"c\"]\n[\"\" \"man \" \"plan \" \"canal panama\"]\n[\" \" \"x\" \"y\" \"z\" \" \"]\n[\"\"]\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleSplitN") : GoString)), stdgo.strings_test.Strings_test.exampleSplitN, ((Go.str("[\"a\" \"b,c\"]\n[] (nil = true)\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleSplitAfter") : GoString)), stdgo.strings_test.Strings_test.exampleSplitAfter, ((Go.str("[\"a,\" \"b,\" \"c\"]\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleSplitAfterN") : GoString)), stdgo.strings_test.Strings_test.exampleSplitAfterN, ((Go.str("[\"a,\" \"b,c\"]\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTitle") : GoString)), stdgo.strings_test.Strings_test.exampleTitle, ((Go.str("Her Royal Highness\nLoud Noises\nХлеб\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleToTitle") : GoString)), stdgo.strings_test.Strings_test.exampleToTitle, ((Go.str("HER ROYAL HIGHNESS\nLOUD NOISES\nХЛЕБ\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleToTitleSpecial") : GoString)), stdgo.strings_test.Strings_test.exampleToTitleSpecial, ((Go.str("DÜNYANIN İLK BORSA YAPISI AİZONAİ KABUL EDİLİR\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleMap") : GoString)), stdgo.strings_test.Strings_test.exampleMap, ((Go.str("\'Gjnf oevyyvt naq gur fyvgul tbcure...\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleNewReplacer") : GoString)), stdgo.strings_test.Strings_test.exampleNewReplacer, ((Go.str("This is &lt;b&gt;HTML&lt;/b&gt;!\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleToUpper") : GoString)), stdgo.strings_test.Strings_test.exampleToUpper, ((Go.str("GOPHER\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleToUpperSpecial") : GoString)), stdgo.strings_test.Strings_test.exampleToUpperSpecial, ((Go.str("ÖRNEK İŞ\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleToLower") : GoString)), stdgo.strings_test.Strings_test.exampleToLower, ((Go.str("gopher\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleToLowerSpecial") : GoString)), stdgo.strings_test.Strings_test.exampleToLowerSpecial, ((Go.str("önnek iş\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTrim") : GoString)), stdgo.strings_test.Strings_test.exampleTrim, ((Go.str("Hello, Gophers\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTrimSpace") : GoString)), stdgo.strings_test.Strings_test.exampleTrimSpace, ((Go.str("Hello, Gophers\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTrimPrefix") : GoString)), stdgo.strings_test.Strings_test.exampleTrimPrefix, ((Go.str("Gophers!!!\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTrimSuffix") : GoString)), stdgo.strings_test.Strings_test.exampleTrimSuffix, ((Go.str("¡¡¡Hello\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTrimFunc") : GoString)), stdgo.strings_test.Strings_test.exampleTrimFunc, ((Go.str("Hello, Gophers\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTrimLeft") : GoString)), stdgo.strings_test.Strings_test.exampleTrimLeft, ((Go.str("Hello, Gophers!!!\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTrimLeftFunc") : GoString)), stdgo.strings_test.Strings_test.exampleTrimLeftFunc, ((Go.str("Hello, Gophers!!!\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTrimRight") : GoString)), stdgo.strings_test.Strings_test.exampleTrimRight, ((Go.str("¡¡¡Hello, Gophers\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTrimRightFunc") : GoString)), stdgo.strings_test.Strings_test.exampleTrimRightFunc, ((Go.str("¡¡¡Hello, Gophers\n") : GoString)), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m = stdgo.testing.Testing.mainStart({
            final __self__ = new stdgo.testing.internal.testdeps.Testdeps.TestDeps_wrapper(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)));
            __self__.checkCorpus = #if !macro function(__0:Slice<AnyInterface>, __1:Slice<stdgo.reflect.Reflect.Type>):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).checkCorpus(__0, __1) #else null #end;
            __self__.coordinateFuzzing = #if !macro function(__0:stdgo.time.Time.Duration, __1:GoInt64, __2:stdgo.time.Time.Duration, __3:GoInt64, __4:GoInt, __5:Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>, __6:Slice<stdgo.reflect.Reflect.Type>, __7:GoString, __8:GoString):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).coordinateFuzzing(__0, __1, __2, __3, __4, __5, __6, __7, __8) #else null #end;
            __self__.importPath = #if !macro function():GoString return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).importPath() #else null #end;
            __self__.matchString = #if !macro function(_a:GoString, _b:GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).matchString(_a, _b) #else null #end;
            __self__.readCorpus = #if !macro function(__0:GoString, __1:Slice<stdgo.reflect.Reflect.Type>):{ var _0 : Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).readCorpus(__0, __1) #else null #end;
            __self__.resetCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).resetCoverage() #else null #end;
            __self__.runFuzzWorker = #if !macro function(__0:({ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).runFuzzWorker(__0) #else null #end;
            __self__.setPanicOnExit0 = #if !macro function(__0:Bool):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).setPanicOnExit0(__0) #else null #end;
            __self__.snapshotCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).snapshotCoverage() #else null #end;
            __self__.startCPUProfile = #if !macro function(_w:stdgo.io.Io.Writer):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startCPUProfile(_w) #else null #end;
            __self__.startTestLog = #if !macro function(_w:stdgo.io.Io.Writer):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startTestLog(_w) #else null #end;
            __self__.stopCPUProfile = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopCPUProfile() #else null #end;
            __self__.stopTestLog = #if !macro function():stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopTestLog() #else null #end;
            __self__.writeProfileTo = #if !macro function(__0:GoString, __1:stdgo.io.Io.Writer, __2:GoInt):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).writeProfileTo(__0, __1, __2) #else null #end;
            __self__;
        }, _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((Go.str("strings") : GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
