package stdgo.regexp_test;
import stdgo.regexp.Regexp;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
44,
44,
(new stdgo.testing.Testing.InternalTest(("TestGoodCompile" : stdgo.GoString), stdgo.regexp.Regexp.testGoodCompile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadCompile" : stdgo.GoString), stdgo.regexp.Regexp.testBadCompile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMatch" : stdgo.GoString), stdgo.regexp.Regexp.testMatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMatchFunction" : stdgo.GoString), stdgo.regexp.Regexp.testMatchFunction) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyMatch" : stdgo.GoString), stdgo.regexp.Regexp.testCopyMatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReplaceAll" : stdgo.GoString), stdgo.regexp.Regexp.testReplaceAll) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReplaceAllLiteral" : stdgo.GoString), stdgo.regexp.Regexp.testReplaceAllLiteral) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReplaceAllFunc" : stdgo.GoString), stdgo.regexp.Regexp.testReplaceAllFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuoteMeta" : stdgo.GoString), stdgo.regexp.Regexp.testQuoteMeta) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLiteralPrefix" : stdgo.GoString), stdgo.regexp.Regexp.testLiteralPrefix) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSubexp" : stdgo.GoString), stdgo.regexp.Regexp.testSubexp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSplit" : stdgo.GoString), stdgo.regexp.Regexp.testSplit) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseAndCompile" : stdgo.GoString), stdgo.regexp.Regexp.testParseAndCompile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnePassCutoff" : stdgo.GoString), stdgo.regexp.Regexp.testOnePassCutoff) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwitchBacktrack" : stdgo.GoString), stdgo.regexp.Regexp.testSwitchBacktrack) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDeepEqual" : stdgo.GoString), stdgo.regexp.Regexp.testDeepEqual) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMinInputLen" : stdgo.GoString), stdgo.regexp.Regexp.testMinInputLen) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalText" : stdgo.GoString), stdgo.regexp.Regexp.testUnmarshalText) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRE2Exhaustive" : stdgo.GoString), stdgo.regexp.Regexp.testRE2Exhaustive) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRE2Search" : stdgo.GoString), stdgo.regexp.Regexp.testRE2Search) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFowler" : stdgo.GoString), stdgo.regexp.Regexp.testFowler) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLongest" : stdgo.GoString), stdgo.regexp.Regexp.testLongest) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestProgramTooLongForBacktrack" : stdgo.GoString), stdgo.regexp.Regexp.testProgramTooLongForBacktrack) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFind" : stdgo.GoString), stdgo.regexp.Regexp.testFind) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindString" : stdgo.GoString), stdgo.regexp.Regexp.testFindString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindIndex" : stdgo.GoString), stdgo.regexp.Regexp.testFindIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindStringIndex" : stdgo.GoString), stdgo.regexp.Regexp.testFindStringIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindReaderIndex" : stdgo.GoString), stdgo.regexp.Regexp.testFindReaderIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAll" : stdgo.GoString), stdgo.regexp.Regexp.testFindAll) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllString" : stdgo.GoString), stdgo.regexp.Regexp.testFindAllString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllIndex" : stdgo.GoString), stdgo.regexp.Regexp.testFindAllIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllStringIndex" : stdgo.GoString), stdgo.regexp.Regexp.testFindAllStringIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindSubmatch" : stdgo.GoString), stdgo.regexp.Regexp.testFindSubmatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindStringSubmatch" : stdgo.GoString), stdgo.regexp.Regexp.testFindStringSubmatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindSubmatchIndex" : stdgo.GoString), stdgo.regexp.Regexp.testFindSubmatchIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindStringSubmatchIndex" : stdgo.GoString), stdgo.regexp.Regexp.testFindStringSubmatchIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindReaderSubmatchIndex" : stdgo.GoString), stdgo.regexp.Regexp.testFindReaderSubmatchIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllSubmatch" : stdgo.GoString), stdgo.regexp.Regexp.testFindAllSubmatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllStringSubmatch" : stdgo.GoString), stdgo.regexp.Regexp.testFindAllStringSubmatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllSubmatchIndex" : stdgo.GoString), stdgo.regexp.Regexp.testFindAllSubmatchIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindAllStringSubmatchIndex" : stdgo.GoString), stdgo.regexp.Regexp.testFindAllStringSubmatchIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMergeRuneSet" : stdgo.GoString), stdgo.regexp.Regexp.testMergeRuneSet) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompileOnePass" : stdgo.GoString), stdgo.regexp.Regexp.testCompileOnePass) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRunOnePass" : stdgo.GoString), stdgo.regexp.Regexp.testRunOnePass) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
27,
27,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFind" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkFind) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFindAllNoMatches" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkFindAllNoMatches) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFindString" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkFindString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFindSubmatch" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkFindSubmatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFindStringSubmatch" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkFindStringSubmatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLiteral" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkLiteral) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNotLiteral" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkNotLiteral) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMatchClass" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkMatchClass) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMatchClass_InRange" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkMatchClass_InRange) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReplaceAll" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkReplaceAll) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAnchoredLiteralShortNonMatch" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkAnchoredLiteralShortNonMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAnchoredLiteralLongNonMatch" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkAnchoredLiteralLongNonMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAnchoredShortMatch" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkAnchoredShortMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAnchoredLongMatch" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkAnchoredLongMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnePassShortA" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkOnePassShortA) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNotOnePassShortA" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkNotOnePassShortA) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnePassShortB" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkOnePassShortB) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNotOnePassShortB" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkNotOnePassShortB) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnePassLongPrefix" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkOnePassLongPrefix) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnePassLongNotPrefix" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkOnePassLongNotPrefix) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMatchParallelShared" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkMatchParallelShared) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMatchParallelCopied" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkMatchParallelCopied) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkQuoteMetaAll" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkQuoteMetaAll) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkQuoteMetaNone" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkQuoteMetaNone) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompile" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkCompile) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMatch" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkMatch) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMatch_onepass_regex" : stdgo.GoString), stdgo.regexp.Regexp.benchmarkMatch_onepass_regex) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(
31,
31,
(new stdgo.testing.Testing.InternalExample(("Example" : stdgo.GoString), stdgo.regexp_test.Regexp_test.example, ("true\ntrue\nfalse\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMatch" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleMatch, ("true <nil>\nfalse <nil>\nfalse error parsing regexp: missing closing ): `a(b`\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMatchString" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleMatchString, ("true <nil>\nfalse <nil>\nfalse error parsing regexp: missing closing ): `a(b`\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuoteMeta" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleQuoteMeta, ("Escaping symbols like: \\.\\+\\*\\?\\(\\)\\|\\[\\]\\{\\}\\^\\$\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_Find" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_Find, ("\"food\"\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAll" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAll, ("[\"food\" \"fool\"]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAllSubmatch" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAllSubmatch, ("[[\"food\" \"d\"] [\"fool\" \"l\"]]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindSubmatch" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindSubmatch, ("[\"food\" \"d\"]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_Match" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_Match, ("true\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindString" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindString, ("\"food\"\n\"\"\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindStringIndex" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindStringIndex, ("[1 3]\ntrue\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindStringSubmatch" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindStringSubmatch, ("[\"axxxbyc\" \"xxx\" \"y\"]\n[\"abzc\" \"\" \"z\"]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAllString" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAllString, ("[ar an al]\n[ar an]\n[aa]\n[]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAllStringSubmatch" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAllStringSubmatch, ("[[\"ab\" \"\"]]\n[[\"axxb\" \"xx\"]]\n[[\"ab\" \"\"] [\"axb\" \"x\"]]\n[[\"axxb\" \"xx\"] [\"ab\" \"\"]]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAllStringSubmatchIndex" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAllStringSubmatchIndex, ("[[1 3 2 2]]\n[[1 5 2 4]]\n[[1 3 2 2] [4 7 5 6]]\n[[1 5 2 4] [6 8 7 7]]\n[]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindSubmatchIndex" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindSubmatchIndex, ("[1 3 2 2]\n[1 5 2 4]\n[1 3 2 2]\n[1 5 2 4]\n[]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_Longest" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_Longest, ("a\nab\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_MatchString" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_MatchString, ("false\ntrue\ntrue\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_NumSubexp" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_NumSubexp, ("0\n4\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_ReplaceAll" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_ReplaceAll, ("-T-T-\n--xx-\n---\n-W-xxW-\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_ReplaceAllLiteralString" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_ReplaceAllLiteralString, ("-T-T-\n-$1-$1-\n-${1}-${1}-\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_ReplaceAllString" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_ReplaceAllString, ("-T-T-\n--xx-\n---\n-W-xxW-\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_ReplaceAllStringFunc" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_ReplaceAllStringFunc, ("SeaFooD FooL\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_SubexpNames" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_SubexpNames, ("true\n[\"\" \"first\" \"last\"]\n${last} ${first}\nTuring Alan\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_SubexpIndex" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_SubexpIndex, ("true\nlast => 2\nTuring\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_Split" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_Split, ("[b n n ]\n[]\n[banana]\n[b nana]\n[pi a]\n[]\n[pizza]\n[pi a]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_Expand" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_Expand, ("option1=value1\noption2=value2\noption3=value3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_ExpandString" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_ExpandString, ("option1=value1\noption2=value2\noption3=value3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindIndex" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindIndex, ("[18 33]\noption1: value1\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAllSubmatchIndex" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAllSubmatchIndex, ("[18 33 18 25 27 33]\noption1: value1\noption1\nvalue1\n[35 50 35 42 44 50]\noption2: value2\noption2\nvalue2\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRegexp_FindAllIndex" : stdgo.GoString), stdgo.regexp_test.Regexp_test.exampleRegexp_FindAllIndex, ("[[1 3]]\n[[1 3] [4 6]]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("regexp" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
