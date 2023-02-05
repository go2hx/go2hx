package stdgo.go.types_test;

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
	(new stdgo.testing.Testing.InternalTest(("TestContextHashCollisions" : GoString),
		stdgo.go.types.Types.testContextHashCollisions) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestError" : GoString), stdgo.go.types.Types.testError) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestStripAnnotations" : GoString),
		stdgo.go.types.Types.testStripAnnotations) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSizeof" : GoString), stdgo.go.types.Types.testSizeof) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermlistAll" : GoString), stdgo.go.types.Types.testTermlistAll) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermlistString" : GoString), stdgo.go.types.Types.testTermlistString) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermlistIsEmpty" : GoString),
		stdgo.go.types.Types.testTermlistIsEmpty) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermlistIsAll" : GoString), stdgo.go.types.Types.testTermlistIsAll) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermlistNorm" : GoString), stdgo.go.types.Types.testTermlistNorm) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermlistUnion" : GoString), stdgo.go.types.Types.testTermlistUnion) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermlistIntersect" : GoString),
		stdgo.go.types.Types.testTermlistIntersect) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermlistEqual" : GoString), stdgo.go.types.Types.testTermlistEqual) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermlistIncludes" : GoString),
		stdgo.go.types.Types.testTermlistIncludes) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermlistSupersetOf" : GoString),
		stdgo.go.types.Types.testTermlistSupersetOf) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermlistSubsetOf" : GoString),
		stdgo.go.types.Types.testTermlistSubsetOf) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestZeroTok" : GoString), stdgo.go.types.Types.testZeroTok) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestAssignOp" : GoString), stdgo.go.types.Types.testAssignOp) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInvalidTypeSet" : GoString), stdgo.go.types.Types.testInvalidTypeSet) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTypeSetString" : GoString), stdgo.go.types.Types.testTypeSetString) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermString" : GoString), stdgo.go.types.Types.testTermString) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermEqual" : GoString), stdgo.go.types.Types.testTermEqual) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermUnion" : GoString), stdgo.go.types.Types.testTermUnion) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermIntersection" : GoString),
		stdgo.go.types.Types.testTermIntersection) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermIncludes" : GoString), stdgo.go.types.Types.testTermIncludes) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermSubsetOf" : GoString), stdgo.go.types.Types.testTermSubsetOf) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTermDisjoint" : GoString), stdgo.go.types.Types.testTermDisjoint) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestValuesInfo" : GoString),
		stdgo.go.types_test.Types_test.testValuesInfo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTypesInfo" : GoString), stdgo.go.types_test.Types_test.testTypesInfo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInstanceInfo" : GoString),
		stdgo.go.types_test.Types_test.testInstanceInfo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestDefsInfo" : GoString), stdgo.go.types_test.Types_test.testDefsInfo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestUsesInfo" : GoString), stdgo.go.types_test.Types_test.testUsesInfo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestGenericMethodInfo" : GoString),
		stdgo.go.types_test.Types_test.testGenericMethodInfo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestImplicitsInfo" : GoString),
		stdgo.go.types_test.Types_test.testImplicitsInfo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestPredicatesInfo" : GoString),
		stdgo.go.types_test.Types_test.testPredicatesInfo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestScopesInfo" : GoString),
		stdgo.go.types_test.Types_test.testScopesInfo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInitOrderInfo" : GoString),
		stdgo.go.types_test.Types_test.testInitOrderInfo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestMultiFileInitOrder" : GoString),
		stdgo.go.types_test.Types_test.testMultiFileInitOrder) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestFiles" : GoString), stdgo.go.types_test.Types_test.testFiles) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSelection" : GoString), stdgo.go.types_test.Types_test.testSelection) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue8518" : GoString), stdgo.go.types_test.Types_test.testIssue8518) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestLookupFieldOrMethodOnNil" : GoString),
		stdgo.go.types_test.Types_test.testLookupFieldOrMethodOnNil) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestLookupFieldOrMethod" : GoString),
		stdgo.go.types_test.Types_test.testLookupFieldOrMethod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestLookupFieldOrMethod_RecursiveGeneric" : GoString),
		stdgo.go.types_test.Types_test.testLookupFieldOrMethod_RecursiveGeneric) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestScopeLookupParent" : GoString),
		stdgo.go.types_test.Types_test.testScopeLookupParent) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestConvertibleTo" : GoString),
		stdgo.go.types_test.Types_test.testConvertibleTo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestAssignableTo" : GoString),
		stdgo.go.types_test.Types_test.testAssignableTo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIdentical" : GoString), stdgo.go.types_test.Types_test.testIdentical) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIdentical_issue15173" : GoString),
		stdgo.go.types_test.Types_test.testIdentical_issue15173) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIdenticalUnions" : GoString),
		stdgo.go.types_test.Types_test.testIdenticalUnions) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue15305" : GoString),
		stdgo.go.types_test.Types_test.testIssue15305) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestCompositeLitTypes" : GoString),
		stdgo.go.types_test.Types_test.testCompositeLitTypes) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestObjectParents" : GoString),
		stdgo.go.types_test.Types_test.testObjectParents) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestFailedImport" : GoString),
		stdgo.go.types_test.Types_test.testFailedImport) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInstantiate" : GoString),
		stdgo.go.types_test.Types_test.testInstantiate) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInstantiateErrors" : GoString),
		stdgo.go.types_test.Types_test.testInstantiateErrors) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestArgumentErrorUnwrapping" : GoString),
		stdgo.go.types_test.Types_test.testArgumentErrorUnwrapping) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInstanceIdentity" : GoString),
		stdgo.go.types_test.Types_test.testInstanceIdentity) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInstantiatedObjects" : GoString),
		stdgo.go.types_test.Types_test.testInstantiatedObjects) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestImplements" : GoString),
		stdgo.go.types_test.Types_test.testImplements) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestMissingMethodAlternative" : GoString),
		stdgo.go.types_test.Types_test.testMissingMethodAlternative) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestBuiltinSignatures" : GoString),
		stdgo.go.types_test.Types_test.testBuiltinSignatures) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestManual" : GoString), stdgo.go.types_test.Types_test.testManual) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestLongConstants" : GoString),
		stdgo.go.types_test.Types_test.testLongConstants) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIndexRepresentability" : GoString),
		stdgo.go.types_test.Types_test.testIndexRepresentability) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue47243_TypedRHS" : GoString),
		stdgo.go.types_test.Types_test.testIssue47243_TypedRHS) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestCheck" : GoString), stdgo.go.types_test.Types_test.testCheck) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSpec" : GoString), stdgo.go.types_test.Types_test.testSpec) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestExamples" : GoString), stdgo.go.types_test.Types_test.testExamples) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestFixedbugs" : GoString), stdgo.go.types_test.Types_test.testFixedbugs) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestErrorCodeExamples" : GoString),
		stdgo.go.types_test.Types_test.testErrorCodeExamples) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestErrorCodeStyle" : GoString),
		stdgo.go.types_test.Types_test.testErrorCodeStyle) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestEvalBasic" : GoString), stdgo.go.types_test.Types_test.testEvalBasic) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestEvalComposite" : GoString),
		stdgo.go.types_test.Types_test.testEvalComposite) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestEvalArith" : GoString), stdgo.go.types_test.Types_test.testEvalArith) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestEvalPos" : GoString), stdgo.go.types_test.Types_test.testEvalPos) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestCheckExpr" : GoString), stdgo.go.types_test.Types_test.testCheckExpr) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestExprString" : GoString),
		stdgo.go.types_test.Types_test.testExprString) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestHilbert" : GoString), stdgo.go.types_test.Types_test.testHilbert) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInstantiateEquality" : GoString),
		stdgo.go.types_test.Types_test.testInstantiateEquality) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInstantiateNonEquality" : GoString),
		stdgo.go.types_test.Types_test.testInstantiateNonEquality) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestMethodInstantiation" : GoString),
		stdgo.go.types_test.Types_test.testMethodInstantiation) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestImmutableSignatures" : GoString),
		stdgo.go.types_test.Types_test.testImmutableSignatures) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue5770" : GoString), stdgo.go.types_test.Types_test.testIssue5770) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue5849" : GoString), stdgo.go.types_test.Types_test.testIssue5849) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue6413" : GoString), stdgo.go.types_test.Types_test.testIssue6413) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue7245" : GoString), stdgo.go.types_test.Types_test.testIssue7245) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue7827" : GoString), stdgo.go.types_test.Types_test.testIssue7827) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue13898" : GoString),
		stdgo.go.types_test.Types_test.testIssue13898) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue22525" : GoString),
		stdgo.go.types_test.Types_test.testIssue22525) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue25627" : GoString),
		stdgo.go.types_test.Types_test.testIssue25627) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue28005" : GoString),
		stdgo.go.types_test.Types_test.testIssue28005) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue28282" : GoString),
		stdgo.go.types_test.Types_test.testIssue28282) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue29029" : GoString),
		stdgo.go.types_test.Types_test.testIssue29029) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue34151" : GoString),
		stdgo.go.types_test.Types_test.testIssue34151) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue34921" : GoString),
		stdgo.go.types_test.Types_test.testIssue34921) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue43088" : GoString),
		stdgo.go.types_test.Types_test.testIssue43088) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue44515" : GoString),
		stdgo.go.types_test.Types_test.testIssue44515) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue43124" : GoString),
		stdgo.go.types_test.Types_test.testIssue43124) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue50646" : GoString),
		stdgo.go.types_test.Types_test.testIssue50646) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestNewMethodSet" : GoString),
		stdgo.go.types_test.Types_test.testNewMethodSet) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestNewMethodSet_RecursiveGeneric" : GoString),
		stdgo.go.types_test.Types_test.testNewMethodSet_RecursiveGeneric) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestMonoGood" : GoString), stdgo.go.types_test.Types_test.testMonoGood) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestMonoBad" : GoString), stdgo.go.types_test.Types_test.testMonoBad) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestFiniteTypeExpansion" : GoString),
		stdgo.go.types_test.Types_test.testFiniteTypeExpansion) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIsAlias" : GoString), stdgo.go.types_test.Types_test.testIsAlias) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestEmbeddedMethod" : GoString),
		stdgo.go.types_test.Types_test.testEmbeddedMethod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestObjectString" : GoString),
		stdgo.go.types_test.Types_test.testObjectString) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestResolveIdents" : GoString),
		stdgo.go.types_test.Types_test.testResolveIdents) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSelf" : GoString), stdgo.go.types_test.Types_test.testSelf) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestMultipleSizeUse" : GoString),
		stdgo.go.types_test.Types_test.testMultipleSizeUse) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestAlignofNaclSlice" : GoString),
		stdgo.go.types_test.Types_test.testAlignofNaclSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIssue16902" : GoString),
		stdgo.go.types_test.Types_test.testIssue16902) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestAtomicAlign" : GoString),
		stdgo.go.types_test.Types_test.testAtomicAlign) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestStdlib" : GoString), stdgo.go.types_test.Types_test.testStdlib) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestStdTest" : GoString), stdgo.go.types_test.Types_test.testStdTest) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestStdFixed" : GoString), stdgo.go.types_test.Types_test.testStdFixed) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestStdKen" : GoString), stdgo.go.types_test.Types_test.testStdKen) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTypeString" : GoString),
		stdgo.go.types_test.Types_test.testTypeString) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestQualifiedTypeString" : GoString),
		stdgo.go.types_test.Types_test.testQualifiedTypeString) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNamed" : GoString),
		stdgo.go.types_test.Types_test.benchmarkNamed) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCheck" : GoString),
		stdgo.go.types_test.Types_test.benchmarkCheck) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(("ExampleScope" : GoString), stdgo.go.types_test.Types_test.exampleScope,
		("package \"temperature\" scope {\n.  const temperature.Boiling temperature.Celsius\n.  type temperature.Celsius float64\n.  func temperature.FToC(f float64) temperature.Celsius\n.  func temperature.Unused()\n.  func temperature.main()\n.  main.go scope {\n.  .  package fmt\n.  .  function scope {\n.  .  .  var freezing temperature.Celsius\n.  .  }\n.  }\n.  celsius.go scope {\n.  .  package fmt\n.  .  function scope {\n.  .  .  var c temperature.Celsius\n.  .  }\n.  .  function scope {\n.  .  .  var f float64\n.  .  }\n.  .  function scope {\n.  .  .  block scope {\n.  .  .  }\n.  .  .  block scope {\n.  .  .  .  block scope {\n.  .  .  .  .  var x int\n.  .  .  .  }\n.  .  .  }\n.  .  }\n.  }\n}\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleMethodSet" : GoString), stdgo.go.types_test.Types_test.exampleMethodSet,
		("Method set of temperature.Celsius:\nmethod (temperature.Celsius) String() string\n\nMethod set of *temperature.Celsius:\nmethod (*temperature.Celsius) SetF(f float64)\nmethod (*temperature.Celsius) String() string\n\nMethod set of temperature.S:\nMethodSet {}\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleInfo" : GoString), stdgo.go.types_test.Types_test.exampleInfo,
		("InitOrder: [c = \"hello\" b = S(c) a = len(b)]\n\nDefs and Uses of each named object:\nbuiltin len:\n  defined at -\n  used at 6:15\nfunc fib(x int) int:\n  defined at fib.go:8:6\n  used at 12:20, 12:9\ntype S string:\n  defined at fib.go:4:6\n  used at 6:23\ntype int:\n  defined at -\n  used at 8:12, 8:17\ntype string:\n  defined at -\n  used at 4:8\nvar b S:\n  defined at fib.go:6:8\n  used at 6:19\nvar c string:\n  defined at fib.go:6:11\n  used at 6:25\nvar x int:\n  defined at fib.go:8:10\n  used at 10:10, 12:13, 12:24, 9:5\n\nTypes and Values of each expression:\n 4: 8 | string              | type    : string\n 6:15 | len                 | builtin : func(fib.S) int\n 6:15 | len(b)              | value   : int\n 6:19 | b                   | var     : fib.S\n 6:23 | S                   | type    : fib.S\n 6:23 | S(c)                | value   : fib.S\n 6:25 | c                   | var     : string\n 6:29 | \"hello\"             | value   : string = \"hello\"\n 8:12 | int                 | type    : int\n 8:17 | int                 | type    : int\n 9: 5 | x                   | var     : int\n 9: 5 | x < 2               | value   : untyped bool\n 9: 9 | 2                   | value   : int = 2\n10:10 | x                   | var     : int\n12: 9 | fib                 | value   : func(x int) int\n12: 9 | fib(x - 1)          | value   : int\n12: 9 | fib(x-1) - fib(x-2) | value   : int\n12:13 | x                   | var     : int\n12:13 | x - 1               | value   : int\n12:15 | 1                   | value   : int = 1\n12:20 | fib                 | value   : func(x int) int\n12:20 | fib(x - 2)          | value   : int\n12:24 | x                   | var     : int\n12:24 | x - 2               | value   : int\n12:26 | 2                   | value   : int = 2\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

private function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	stdgo.go.types_test.Types_test.testMain(_m);
	Sys.exit((stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface(_m)))
		.elem()
		.fieldByName(("exitCode" : GoString))
		.int_() : GoInt));
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = ("go/types" : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};