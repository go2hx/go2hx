package _internal.sort_dot_test;
import stdgo._internal.sort.Sort;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest>(27, 27, ...[
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestSearch" : stdgo.GoString), _internal.sort_test.Sort_test_testSearch.testSearch) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestFind" : stdgo.GoString), _internal.sort_test.Sort_test_testFind.testFind) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestSearchEfficiency" : stdgo.GoString), _internal.sort_test.Sort_test_testSearchEfficiency.testSearchEfficiency) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestSearchWrappers" : stdgo.GoString), _internal.sort_test.Sort_test_testSearchWrappers.testSearchWrappers) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestSearchWrappersDontAlloc" : stdgo.GoString), _internal.sort_test.Sort_test_testSearchWrappersDontAlloc.testSearchWrappersDontAlloc) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestSearchExhaustive" : stdgo.GoString), _internal.sort_test.Sort_test_testSearchExhaustive.testSearchExhaustive) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestFindExhaustive" : stdgo.GoString), _internal.sort_test.Sort_test_testFindExhaustive.testFindExhaustive) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestSortIntSlice" : stdgo.GoString), _internal.sort_test.Sort_test_testSortIntSlice.testSortIntSlice) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestSortFloat64Slice" : stdgo.GoString), _internal.sort_test.Sort_test_testSortFloat64Slice.testSortFloat64Slice) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestSortStringSlice" : stdgo.GoString), _internal.sort_test.Sort_test_testSortStringSlice.testSortStringSlice) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestInts" : stdgo.GoString), _internal.sort_test.Sort_test_testInts.testInts) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestFloat64s" : stdgo.GoString), _internal.sort_test.Sort_test_testFloat64s.testFloat64s) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestStrings" : stdgo.GoString), _internal.sort_test.Sort_test_testStrings.testStrings) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestSlice" : stdgo.GoString), _internal.sort_test.Sort_test_testSlice.testSlice) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestSortLarge_Random" : stdgo.GoString), _internal.sort_test.Sort_test_testSortLarge_Random.testSortLarge_Random) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestReverseSortIntSlice" : stdgo.GoString), _internal.sort_test.Sort_test_testReverseSortIntSlice.testReverseSortIntSlice) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestBreakPatterns" : stdgo.GoString), _internal.sort_test.Sort_test_testBreakPatterns.testBreakPatterns) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestReverseRange" : stdgo.GoString), _internal.sort_test.Sort_test_testReverseRange.testReverseRange) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestNonDeterministicComparison" : stdgo.GoString), _internal.sort_test.Sort_test_testNonDeterministicComparison.testNonDeterministicComparison) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestSortBM" : stdgo.GoString), _internal.sort_test.Sort_test_testSortBM.testSortBM) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestHeapsortBM" : stdgo.GoString), _internal.sort_test.Sort_test_testHeapsortBM.testHeapsortBM) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestStableBM" : stdgo.GoString), _internal.sort_test.Sort_test_testStableBM.testStableBM) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestAdversary" : stdgo.GoString), _internal.sort_test.Sort_test_testAdversary.testAdversary) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestStableInts" : stdgo.GoString), _internal.sort_test.Sort_test_testStableInts.testStableInts) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestStability" : stdgo.GoString), _internal.sort_test.Sort_test_testStability.testStability) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestCountStableOps" : stdgo.GoString), _internal.sort_test.Sort_test_testCountStableOps.testCountStableOps) : stdgo._internal.testing.Testing_InternalTest.InternalTest),
(new stdgo._internal.testing.Testing_InternalTest.InternalTest(("TestCountSortOps" : stdgo.GoString), _internal.sort_test.Sort_test_testCountSortOps.testCountSortOps) : stdgo._internal.testing.Testing_InternalTest.InternalTest)].concat([for (i in 27 ... (27 > 27 ? 27 : 27 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing_InternalTest.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest>);