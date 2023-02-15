package stdgo.regexp_test;
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
(new stdgo.testing.Testing.InternalTest(("TestGoodCompile" : GoString), stdgo.regexp.Regexp.testGoodCompile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadCompile" : GoString), stdgo.regexp.Regexp.testBadCompile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMatch" : GoString), stdgo.regexp.Regexp.testMatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMatchFunction" : GoString), stdgo.regexp.Regexp.testMatchFunction) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyMatch" : GoString), stdgo.regexp.Regexp.testCopyMatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReplaceAll" : GoString), stdgo.regexp.Regexp.testReplaceAll) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReplaceAllLiteral" : GoString), stdgo.regexp.Regexp.testReplaceAllLiteral) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReplaceAllFunc" : GoString), stdgo.regexp.Regexp.testReplaceAllFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuoteMeta" : GoString), stdgo.regexp.Regexp.testQuoteMeta) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLiteralPrefix" : GoString), stdgo.regexp.Regexp.testLiteralPrefix) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSubexp" : GoString), stdgo.regexp.Regexp.testSubexp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSplit" : GoString), stdgo.regexp.Regexp.testSplit) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseAndCompile" : GoString), stdgo.regexp.Regexp.testParseAndCompile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnePassCutoff" : GoString), stdgo.regexp.Regexp.testOnePassCutoff) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwitchBacktrack" : GoString), stdgo.regexp.Regexp.testSwitchBacktrack) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDeepEqual" : GoString), stdgo.regexp.Regexp.testDeepEqual) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMinInputLen" : GoString), stdgo.regexp.Regexp.testMinInputLen) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRE2Exhaustive" : GoString), stdgo.regexp.Regexp.testRE2Exhaustive) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRE2Search" : GoString), stdgo.regexp.Regexp.testRE2Search) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFowler" : GoString), stdgo.regexp.Regexp.testFowler) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLongest" : GoString), stdgo.regexp.Regexp.testLongest) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestProgramTooLongForBacktrack" : GoString), stdgo.regexp.Regexp.testProgramTooLongForBacktrack) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFind" : GoString), stdgo.regexp.Regexp.testFind) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindString" : GoString), stdgo.regexp.Regexp.testFindString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindIndex" : GoString), stdgo.regexp.Regexp.testFindIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindStringIndex" : GoString), stdgo.regexp.Regexp.testFindStringIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindReaderIndex" : GoString), stdgo.regexp.Regexp.testFindReaderIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAll" : GoString), stdgo.regexp.Regexp.testFindAll) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllString" : GoString), stdgo.regexp.Regexp.testFindAllString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllIndex" : GoString), stdgo.regexp.Regexp.testFindAllIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllStringIndex" : GoString), stdgo.regexp.Regexp.testFindAllStringIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindSubmatch" : GoString), stdgo.regexp.Regexp.testFindSubmatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindStringSubmatch" : GoString), stdgo.regexp.Regexp.testFindStringSubmatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindSubmatchIndex" : GoString), stdgo.regexp.Regexp.testFindSubmatchIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindStringSubmatchIndex" : GoString), stdgo.regexp.Regexp.testFindStringSubmatchIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindReaderSubmatchIndex" : GoString), stdgo.regexp.Regexp.testFindReaderSubmatchIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllSubmatch" : GoString), stdgo.regexp.Regexp.testFindAllSubmatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllStringSubmatch" : GoString), stdgo.regexp.Regexp.testFindAllStringSubmatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllSubmatchIndex" : GoString), stdgo.regexp.Regexp.testFindAllSubmatchIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllStringSubmatchIndex" : GoString), stdgo.regexp.Regexp.testFindAllStringSubmatchIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMergeRuneSet" : GoString), stdgo.regexp.Regexp.testMergeRuneSet) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompileOnePass" : GoString), stdgo.regexp.Regexp.testCompileOnePass) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRunOnePass" : GoString), stdgo.regexp.Regexp.testRunOnePass) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(
0,
0,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFind" : GoString), stdgo.regexp.Regexp.benchmarkFind) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFindAllNoMatches" : GoString), stdgo.regexp.Regexp.benchmarkFindAllNoMatches) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFindString" : GoString), stdgo.regexp.Regexp.benchmarkFindString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFindSubmatch" : GoString), stdgo.regexp.Regexp.benchmarkFindSubmatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFindStringSubmatch" : GoString), stdgo.regexp.Regexp.benchmarkFindStringSubmatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLiteral" : GoString), stdgo.regexp.Regexp.benchmarkLiteral) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNotLiteral" : GoString), stdgo.regexp.Regexp.benchmarkNotLiteral) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMatchClass" : GoString), stdgo.regexp.Regexp.benchmarkMatchClass) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMatchClass_InRange" : GoString), stdgo.regexp.Regexp.benchmarkMatchClass_InRange) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReplaceAll" : GoString), stdgo.regexp.Regexp.benchmarkReplaceAll) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAnchoredLiteralShortNonMatch" : GoString), stdgo.regexp.Regexp.benchmarkAnchoredLiteralShortNonMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAnchoredLiteralLongNonMatch" : GoString), stdgo.regexp.Regexp.benchmarkAnchoredLiteralLongNonMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAnchoredShortMatch" : GoString), stdgo.regexp.Regexp.benchmarkAnchoredShortMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAnchoredLongMatch" : GoString), stdgo.regexp.Regexp.benchmarkAnchoredLongMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnePassShortA" : GoString), stdgo.regexp.Regexp.benchmarkOnePassShortA) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNotOnePassShortA" : GoString), stdgo.regexp.Regexp.benchmarkNotOnePassShortA) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnePassShortB" : GoString), stdgo.regexp.Regexp.benchmarkOnePassShortB) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNotOnePassShortB" : GoString), stdgo.regexp.Regexp.benchmarkNotOnePassShortB) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnePassLongPrefix" : GoString), stdgo.regexp.Regexp.benchmarkOnePassLongPrefix) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnePassLongNotPrefix" : GoString), stdgo.regexp.Regexp.benchmarkOnePassLongNotPrefix) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMatchParallelShared" : GoString), stdgo.regexp.Regexp.benchmarkMatchParallelShared) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMatchParallelCopied" : GoString), stdgo.regexp.Regexp.benchmarkMatchParallelCopied) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkQuoteMetaAll" : GoString), stdgo.regexp.Regexp.benchmarkQuoteMetaAll) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkQuoteMetaNone" : GoString), stdgo.regexp.Regexp.benchmarkQuoteMetaNone) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompile" : GoString), stdgo.regexp.Regexp.benchmarkCompile) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMatch" : GoString), stdgo.regexp.Regexp.benchmarkMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMatch_onepass_regex" : GoString), stdgo.regexp.Regexp.benchmarkMatch_onepass_regex) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(
0,
0,
(new stdgo.testing.Testing.InternalExample(("Example" : GoString), stdgo.regexp_test.Regexp_test.example, ("true\ntrue\nfalse\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMatch" : GoString), stdgo.regexp_test.Regexp_test.exampleMatch, ("true <nil>\nfalse <nil>\nfalse error parsing regexp: missing closing ): `a(b`\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMatchString" : GoString), stdgo.regexp_test.Regexp_test.exampleMatchString, ("true <nil>\nfalse <nil>\nfalse error parsing regexp: missing closing ): `a(b`\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuoteMeta" : GoString), stdgo.regexp_test.Regexp_test.exampleQuoteMeta, ("Escaping symbols like: \\.\\+\\*\\?\\(\\)\\|\\[\\]\\{\\}\\^\\$$\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_Find" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_Find, ("\"food\"\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAll" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAll, ("[\"food\" \"fool\"]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAllSubmatch" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAllSubmatch, ("[[\"food\" \"d\"] [\"fool\" \"l\"]]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindSubmatch" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindSubmatch, ("[\"food\" \"d\"]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_Match" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_Match, ("true\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindString" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindString, ("\"food\"\n\"\"\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindStringIndex" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindStringIndex, ("[1 3]\ntrue\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindStringSubmatch" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindStringSubmatch, ("[\"axxxbyc\" \"xxx\" \"y\"]\n[\"abzc\" \"\" \"z\"]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAllString" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAllString, ("[ar an al]\n[ar an]\n[aa]\n[]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAllStringSubmatch" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAllStringSubmatch, ("[[\"ab\" \"\"]]\n[[\"axxb\" \"xx\"]]\n[[\"ab\" \"\"] [\"axb\" \"x\"]]\n[[\"axxb\" \"xx\"] [\"ab\" \"\"]]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAllStringSubmatchIndex" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAllStringSubmatchIndex, ("[[1 3 2 2]]\n[[1 5 2 4]]\n[[1 3 2 2] [4 7 5 6]]\n[[1 5 2 4] [6 8 7 7]]\n[]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindSubmatchIndex" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindSubmatchIndex, ("[1 3 2 2]\n[1 5 2 4]\n[1 3 2 2]\n[1 5 2 4]\n[]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_Longest" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_Longest, ("a\nab\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_MatchString" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_MatchString, ("false\ntrue\ntrue\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_NumSubexp" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_NumSubexp, ("0\n4\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_ReplaceAll" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_ReplaceAll, ("-T-T-\n--xx-\n---\n-W-xxW-\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_ReplaceAllLiteralString" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_ReplaceAllLiteralString, ("-T-T-\n-$$1-$$1-\n-$${1}-$${1}-\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_ReplaceAllString" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_ReplaceAllString, ("-T-T-\n--xx-\n---\n-W-xxW-\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_ReplaceAllStringFunc" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_ReplaceAllStringFunc, ("SeaFooD FooL\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_SubexpNames" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_SubexpNames, ("true\n[\"\" \"first\" \"last\"]\n$${last} $${first}\nTuring Alan\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_SubexpIndex" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_SubexpIndex, ("true\nlast => 2\nTuring\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_Split" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_Split, ("[b n n ]\n[]\n[banana]\n[b nana]\n[pi a]\n[]\n[pizza]\n[pi a]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_Expand" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_Expand, ("option1=value1\noption2=value2\noption3=value3\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_ExpandString" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_ExpandString, ("option1=value1\noption2=value2\noption3=value3\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindIndex" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindIndex, ("[18 33]\noption1: value1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAllSubmatchIndex" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAllSubmatchIndex, ("[18 33 18 25 27 33]\noption1: value1\noption1\nvalue1\n[35 50 35 42 44 50]\noption2: value2\noption2\nvalue2\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAllIndex" : GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAllIndex, ("[[1 3]]\n[[1 3] [4 6]]\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("regexp" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
