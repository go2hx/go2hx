package stdgo.text.template_test;
import stdgo.text.template.Template;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
45,
45,
(new stdgo.testing.Testing.InternalTest(("TestExecute" : stdgo.GoString), stdgo.text.template.Template.testExecute) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDelims" : stdgo.GoString), stdgo.text.template.Template.testDelims) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExecuteError" : stdgo.GoString), stdgo.text.template.Template.testExecuteError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExecError" : stdgo.GoString), stdgo.text.template.Template.testExecError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExecError_CustomError" : stdgo.GoString), stdgo.text.template.Template.testExecError_CustomError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestJSEscaping" : stdgo.GoString), stdgo.text.template.Template.testJSEscaping) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTree" : stdgo.GoString), stdgo.text.template.Template.testTree) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExecuteOnNewTemplate" : stdgo.GoString), stdgo.text.template.Template.testExecuteOnNewTemplate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMessageForExecuteEmpty" : stdgo.GoString), stdgo.text.template.Template.testMessageForExecuteEmpty) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFinalForPrintf" : stdgo.GoString), stdgo.text.template.Template.testFinalForPrintf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestComparison" : stdgo.GoString), stdgo.text.template.Template.testComparison) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMissingMapKey" : stdgo.GoString), stdgo.text.template.Template.testMissingMapKey) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnterminatedStringError" : stdgo.GoString), stdgo.text.template.Template.testUnterminatedStringError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExecuteGivesExecError" : stdgo.GoString), stdgo.text.template.Template.testExecuteGivesExecError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGoodFuncNames" : stdgo.GoString), stdgo.text.template.Template.testGoodFuncNames) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadFuncNames" : stdgo.GoString), stdgo.text.template.Template.testBadFuncNames) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBlock" : stdgo.GoString), stdgo.text.template.Template.testBlock) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEvalFieldErrors" : stdgo.GoString), stdgo.text.template.Template.testEvalFieldErrors) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMaxExecDepth" : stdgo.GoString), stdgo.text.template.Template.testMaxExecDepth) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddrOfIndex" : stdgo.GoString), stdgo.text.template.Template.testAddrOfIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInterfaceValues" : stdgo.GoString), stdgo.text.template.Template.testInterfaceValues) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExecutePanicDuringCall" : stdgo.GoString), stdgo.text.template.Template.testExecutePanicDuringCall) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue31810" : stdgo.GoString), stdgo.text.template.Template.testIssue31810) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue43065" : stdgo.GoString), stdgo.text.template.Template.testIssue43065) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue39807" : stdgo.GoString), stdgo.text.template.Template.testIssue39807) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue48215" : stdgo.GoString), stdgo.text.template.Template.testIssue48215) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiParse" : stdgo.GoString), stdgo.text.template.Template.testMultiParse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiExecute" : stdgo.GoString), stdgo.text.template.Template.testMultiExecute) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseFiles" : stdgo.GoString), stdgo.text.template.Template.testParseFiles) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseGlob" : stdgo.GoString), stdgo.text.template.Template.testParseGlob) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseFS" : stdgo.GoString), stdgo.text.template.Template.testParseFS) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseFilesWithData" : stdgo.GoString), stdgo.text.template.Template.testParseFilesWithData) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseGlobWithData" : stdgo.GoString), stdgo.text.template.Template.testParseGlobWithData) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestClone" : stdgo.GoString), stdgo.text.template.Template.testClone) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddParseTree" : stdgo.GoString), stdgo.text.template.Template.testAddParseTree) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddParseTreeToUnparsedTemplate" : stdgo.GoString), stdgo.text.template.Template.testAddParseTreeToUnparsedTemplate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRedefinition" : stdgo.GoString), stdgo.text.template.Template.testRedefinition) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEmptyTemplateCloneCrash" : stdgo.GoString), stdgo.text.template.Template.testEmptyTemplateCloneCrash) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTemplateLookUp" : stdgo.GoString), stdgo.text.template.Template.testTemplateLookUp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNew" : stdgo.GoString), stdgo.text.template.Template.testNew) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParse" : stdgo.GoString), stdgo.text.template.Template.testParse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEmptyTemplate" : stdgo.GoString), stdgo.text.template.Template.testEmptyTemplate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue19294" : stdgo.GoString), stdgo.text.template.Template.testIssue19294) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddToZeroTemplate" : stdgo.GoString), stdgo.text.template.Template.testAddToZeroTemplate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLinkerGC" : stdgo.GoString), stdgo.text.template_test.Template_test.testLinkerGC) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(6, 6, (new stdgo.testing.Testing.InternalExample(("ExampleTemplate" : stdgo.GoString), stdgo.text.template_test.Template_test.exampleTemplate, ("Dear Aunt Mildred,\n\nIt was a pleasure to see you at the wedding.\nThank you for the lovely bone china tea set.\n\nBest wishes,\nJosie\n\nDear Uncle John,\n\nIt is a shame you couldn\'t make it to the wedding.\nThank you for the lovely moleskin pants.\n\nBest wishes,\nJosie\n\nDear Cousin Rodney,\n\nIt is a shame you couldn\'t make it to the wedding.\n\nBest wishes,\nJosie\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleTemplate_block" : stdgo.GoString), stdgo.text.template_test.Template_test.exampleTemplate_block, ("Names:\n- Gamora\n- Groot\n- Nebula\n- Rocket\n- Star-Lord\nNames: Gamora, Groot, Nebula, Rocket, Star-Lord\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleTemplate_glob" : stdgo.GoString), stdgo.text.template_test.Template_test.exampleTemplate_glob, ("T0 invokes T1: (T1 invokes T2: (This is T2))\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleTemplate_helpers" : stdgo.GoString), stdgo.text.template_test.Template_test.exampleTemplate_helpers, ("Driver 1 calls T1: (T1 invokes T2: (This is T2))\nDriver 2 calls T2: (This is T2)\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleTemplate_share" : stdgo.GoString), stdgo.text.template_test.Template_test.exampleTemplate_share, ("T0 (second version) invokes T1: (T1 invokes T2: (T2, version B))\nT0 (first version) invokes T1: (T1 invokes T2: (T2, version A))\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleTemplate_func" : stdgo.GoString), stdgo.text.template_test.Template_test.exampleTemplate_func, ("Input: \"the go programming language\"\nOutput 0: The Go Programming Language\nOutput 1: \"The Go Programming Language\"\nOutput 2: \"The Go Programming Language\"\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("text/template" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
