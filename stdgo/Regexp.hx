package stdgo;
/**
    Package regexp implements regular expression search.
    
    The syntax of the regular expressions accepted is the same
    general syntax used by Perl, Python, and other languages.
    More precisely, it is the syntax accepted by RE2 and described at
    https://golang.org/s/re2syntax, except for \C.
    For an overview of the syntax, run
    
    	go doc regexp/syntax
    
    The regexp implementation provided by this package is
    guaranteed to run in time linear in the size of the input.
    (This is a property not guaranteed by most open source
    implementations of regular expressions.) For more information
    about this property, see
    
    	https://swtch.com/~rsc/regexp/regexp1.html
    
    or any book about automata theory.
    
    All characters are UTF-8-encoded code points.
    Following utf8.DecodeRune, each byte of an invalid UTF-8 sequence
    is treated as if it encoded utf8.RuneError (U+FFFD).
    
    There are 16 methods of Regexp that match a regular expression and identify
    the matched text. Their names are matched by this regular expression:
    
    	Find(All)?(String)?(Submatch)?(Index)?
    
    If 'All' is present, the routine matches successive non-overlapping
    matches of the entire expression. Empty matches abutting a preceding
    match are ignored. The return value is a slice containing the successive
    return values of the corresponding non-'All' routine. These routines take
    an extra integer argument, n. If n >= 0, the function returns at most n
    matches/submatches; otherwise, it returns all of them.
    
    If 'String' is present, the argument is a string; otherwise it is a slice
    of bytes; return values are adjusted as appropriate.
    
    If 'Submatch' is present, the return value is a slice identifying the
    successive submatches of the expression. Submatches are matches of
    parenthesized subexpressions (also known as capturing groups) within the
    regular expression, numbered from left to right in order of opening
    parenthesis. Submatch 0 is the match of the entire expression, submatch 1 is
    the match of the first parenthesized subexpression, and so on.
    
    If 'Index' is present, matches and submatches are identified by byte index
    pairs within the input string: result[2*n:2*n+2] identifies the indexes of
    the nth submatch. The pair for n==0 identifies the match of the entire
    expression. If 'Index' is not present, the match is identified by the text
    of the match/submatch. If an index is negative or text is nil, it means that
    subexpression did not match any string in the input. For 'String' versions
    an empty string means either no match or an empty match.
    
    There is also a subset of the methods that can be applied to text read
    from a RuneReader:
    
    	MatchReader, FindReaderIndex, FindReaderSubmatchIndex
    
    This set may grow. Note that regular expression matches may need to
    examine text beyond the text returned by a match, so the methods that
    match text from a RuneReader may read arbitrarily far into the input
    before returning.
    
    (There are a few other methods that do not match this pattern.)
**/
private var __go2hxdoc__package : Bool;
@:forward @:forward.new abstract T_input_static_extension(stdgo._internal.regexp.Regexp.T_input_static_extension) from stdgo._internal.regexp.Regexp.T_input_static_extension to stdgo._internal.regexp.Regexp.T_input_static_extension {

}
typedef T_input = stdgo._internal.regexp.Regexp.T_input;
@:forward @:forward.new abstract T_stringError(stdgo._internal.regexp.Regexp.T_stringError) from stdgo._internal.regexp.Regexp.T_stringError to stdgo._internal.regexp.Regexp.T_stringError {

}
@:forward @:forward.new abstract ReplaceTest(stdgo._internal.regexp.Regexp.ReplaceTest) from stdgo._internal.regexp.Regexp.ReplaceTest to stdgo._internal.regexp.Regexp.ReplaceTest {

}
@:forward @:forward.new abstract ReplaceFuncTest(stdgo._internal.regexp.Regexp.ReplaceFuncTest) from stdgo._internal.regexp.Regexp.ReplaceFuncTest to stdgo._internal.regexp.Regexp.ReplaceFuncTest {

}
@:forward @:forward.new abstract MetaTest(stdgo._internal.regexp.Regexp.MetaTest) from stdgo._internal.regexp.Regexp.MetaTest to stdgo._internal.regexp.Regexp.MetaTest {

}
@:forward @:forward.new abstract T_subexpIndex(stdgo._internal.regexp.Regexp.T_subexpIndex) from stdgo._internal.regexp.Regexp.T_subexpIndex to stdgo._internal.regexp.Regexp.T_subexpIndex {

}
@:forward @:forward.new abstract T_subexpCase(stdgo._internal.regexp.Regexp.T_subexpCase) from stdgo._internal.regexp.Regexp.T_subexpCase to stdgo._internal.regexp.Regexp.T_subexpCase {

}
@:forward @:forward.new abstract T_job(stdgo._internal.regexp.Regexp.T_job) from stdgo._internal.regexp.Regexp.T_job to stdgo._internal.regexp.Regexp.T_job {

}
@:forward @:forward.new abstract T_bitState(stdgo._internal.regexp.Regexp.T_bitState) from stdgo._internal.regexp.Regexp.T_bitState to stdgo._internal.regexp.Regexp.T_bitState {

}
@:forward @:forward.new abstract T_queue(stdgo._internal.regexp.Regexp.T_queue) from stdgo._internal.regexp.Regexp.T_queue to stdgo._internal.regexp.Regexp.T_queue {

}
@:forward @:forward.new abstract T_entry(stdgo._internal.regexp.Regexp.T_entry) from stdgo._internal.regexp.Regexp.T_entry to stdgo._internal.regexp.Regexp.T_entry {

}
@:forward @:forward.new abstract T_thread(stdgo._internal.regexp.Regexp.T_thread) from stdgo._internal.regexp.Regexp.T_thread to stdgo._internal.regexp.Regexp.T_thread {

}
@:forward @:forward.new abstract T_machine(stdgo._internal.regexp.Regexp.T_machine) from stdgo._internal.regexp.Regexp.T_machine to stdgo._internal.regexp.Regexp.T_machine {

}
@:forward @:forward.new abstract T_inputs(stdgo._internal.regexp.Regexp.T_inputs) from stdgo._internal.regexp.Regexp.T_inputs to stdgo._internal.regexp.Regexp.T_inputs {

}
@:forward @:forward.new abstract T_onePassMachine(stdgo._internal.regexp.Regexp.T_onePassMachine) from stdgo._internal.regexp.Regexp.T_onePassMachine to stdgo._internal.regexp.Regexp.T_onePassMachine {

}
@:forward @:forward.new abstract FindTest(stdgo._internal.regexp.Regexp.FindTest) from stdgo._internal.regexp.Regexp.FindTest to stdgo._internal.regexp.Regexp.FindTest {

}
@:forward @:forward.new abstract T_onePassProg(stdgo._internal.regexp.Regexp.T_onePassProg) from stdgo._internal.regexp.Regexp.T_onePassProg to stdgo._internal.regexp.Regexp.T_onePassProg {

}
@:forward @:forward.new abstract T_onePassInst(stdgo._internal.regexp.Regexp.T_onePassInst) from stdgo._internal.regexp.Regexp.T_onePassInst to stdgo._internal.regexp.Regexp.T_onePassInst {

}
@:forward @:forward.new abstract T_queueOnePass(stdgo._internal.regexp.Regexp.T_queueOnePass) from stdgo._internal.regexp.Regexp.T_queueOnePass to stdgo._internal.regexp.Regexp.T_queueOnePass {

}
@:forward @:forward.new abstract Regexp(stdgo._internal.regexp.Regexp.Regexp) from stdgo._internal.regexp.Regexp.Regexp to stdgo._internal.regexp.Regexp.Regexp {

}
@:forward @:forward.new abstract T_inputString(stdgo._internal.regexp.Regexp.T_inputString) from stdgo._internal.regexp.Regexp.T_inputString to stdgo._internal.regexp.Regexp.T_inputString {

}
@:forward @:forward.new abstract T_inputBytes(stdgo._internal.regexp.Regexp.T_inputBytes) from stdgo._internal.regexp.Regexp.T_inputBytes to stdgo._internal.regexp.Regexp.T_inputBytes {

}
@:forward @:forward.new abstract T_inputReader(stdgo._internal.regexp.Regexp.T_inputReader) from stdgo._internal.regexp.Regexp.T_inputReader to stdgo._internal.regexp.Regexp.T_inputReader {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.regexp.Regexp.T__struct_0_asInterface) from stdgo._internal.regexp.Regexp.T__struct_0_asInterface to stdgo._internal.regexp.Regexp.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.regexp.Regexp.T__struct_0_static_extension) from stdgo._internal.regexp.Regexp.T__struct_0_static_extension to stdgo._internal.regexp.Regexp.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.regexp.Regexp.T__struct_0;
@:forward @:forward.new abstract T__struct_1_asInterface(stdgo._internal.regexp.Regexp.T__struct_1_asInterface) from stdgo._internal.regexp.Regexp.T__struct_1_asInterface to stdgo._internal.regexp.Regexp.T__struct_1_asInterface {

}
@:forward @:forward.new abstract T__struct_1_static_extension(stdgo._internal.regexp.Regexp.T__struct_1_static_extension) from stdgo._internal.regexp.Regexp.T__struct_1_static_extension to stdgo._internal.regexp.Regexp.T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.regexp.Regexp.T__struct_1;
@:forward @:forward.new abstract T__struct_2_asInterface(stdgo._internal.regexp.Regexp.T__struct_2_asInterface) from stdgo._internal.regexp.Regexp.T__struct_2_asInterface to stdgo._internal.regexp.Regexp.T__struct_2_asInterface {

}
@:forward @:forward.new abstract T__struct_2_static_extension(stdgo._internal.regexp.Regexp.T__struct_2_static_extension) from stdgo._internal.regexp.Regexp.T__struct_2_static_extension to stdgo._internal.regexp.Regexp.T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.regexp.Regexp.T__struct_2;
@:forward @:forward.new abstract T__struct_3_asInterface(stdgo._internal.regexp.Regexp.T__struct_3_asInterface) from stdgo._internal.regexp.Regexp.T__struct_3_asInterface to stdgo._internal.regexp.Regexp.T__struct_3_asInterface {

}
@:forward @:forward.new abstract T__struct_3_static_extension(stdgo._internal.regexp.Regexp.T__struct_3_static_extension) from stdgo._internal.regexp.Regexp.T__struct_3_static_extension to stdgo._internal.regexp.Regexp.T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.regexp.Regexp.T__struct_3;
@:forward @:forward.new abstract T__struct_4_asInterface(stdgo._internal.regexp.Regexp.T__struct_4_asInterface) from stdgo._internal.regexp.Regexp.T__struct_4_asInterface to stdgo._internal.regexp.Regexp.T__struct_4_asInterface {

}
@:forward @:forward.new abstract T__struct_4_static_extension(stdgo._internal.regexp.Regexp.T__struct_4_static_extension) from stdgo._internal.regexp.Regexp.T__struct_4_static_extension to stdgo._internal.regexp.Regexp.T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.regexp.Regexp.T__struct_4;
@:forward @:forward.new abstract T__struct_5_asInterface(stdgo._internal.regexp.Regexp.T__struct_5_asInterface) from stdgo._internal.regexp.Regexp.T__struct_5_asInterface to stdgo._internal.regexp.Regexp.T__struct_5_asInterface {

}
@:forward @:forward.new abstract T__struct_5_static_extension(stdgo._internal.regexp.Regexp.T__struct_5_static_extension) from stdgo._internal.regexp.Regexp.T__struct_5_static_extension to stdgo._internal.regexp.Regexp.T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.regexp.Regexp.T__struct_5;
@:forward @:forward.new abstract T__struct_6_asInterface(stdgo._internal.regexp.Regexp.T__struct_6_asInterface) from stdgo._internal.regexp.Regexp.T__struct_6_asInterface to stdgo._internal.regexp.Regexp.T__struct_6_asInterface {

}
@:forward @:forward.new abstract T__struct_6_static_extension(stdgo._internal.regexp.Regexp.T__struct_6_static_extension) from stdgo._internal.regexp.Regexp.T__struct_6_static_extension to stdgo._internal.regexp.Regexp.T__struct_6_static_extension {

}
typedef T__struct_6 = stdgo._internal.regexp.Regexp.T__struct_6;
@:forward @:forward.new abstract T__struct_7_asInterface(stdgo._internal.regexp.Regexp.T__struct_7_asInterface) from stdgo._internal.regexp.Regexp.T__struct_7_asInterface to stdgo._internal.regexp.Regexp.T__struct_7_asInterface {

}
@:forward @:forward.new abstract T__struct_7_static_extension(stdgo._internal.regexp.Regexp.T__struct_7_static_extension) from stdgo._internal.regexp.Regexp.T__struct_7_static_extension to stdgo._internal.regexp.Regexp.T__struct_7_static_extension {

}
typedef T__struct_7 = stdgo._internal.regexp.Regexp.T__struct_7;
typedef T_lazyFlag = stdgo._internal.regexp.Regexp.T_lazyFlag;
typedef T_runeSlice = stdgo._internal.regexp.Regexp.T_runeSlice;
@:forward @:forward.new abstract T_bitState_asInterface(stdgo._internal.regexp.Regexp.T_bitState_asInterface) from stdgo._internal.regexp.Regexp.T_bitState_asInterface to stdgo._internal.regexp.Regexp.T_bitState_asInterface {

}
@:forward @:forward.new abstract T_bitState_static_extension(stdgo._internal.regexp.Regexp.T_bitState_static_extension) from stdgo._internal.regexp.Regexp.T_bitState_static_extension to stdgo._internal.regexp.Regexp.T_bitState_static_extension {

}
@:forward @:forward.new abstract T_machine_asInterface(stdgo._internal.regexp.Regexp.T_machine_asInterface) from stdgo._internal.regexp.Regexp.T_machine_asInterface to stdgo._internal.regexp.Regexp.T_machine_asInterface {

}
@:forward @:forward.new abstract T_machine_static_extension(stdgo._internal.regexp.Regexp.T_machine_static_extension) from stdgo._internal.regexp.Regexp.T_machine_static_extension to stdgo._internal.regexp.Regexp.T_machine_static_extension {

}
@:forward @:forward.new abstract T_inputs_asInterface(stdgo._internal.regexp.Regexp.T_inputs_asInterface) from stdgo._internal.regexp.Regexp.T_inputs_asInterface to stdgo._internal.regexp.Regexp.T_inputs_asInterface {

}
@:forward @:forward.new abstract T_inputs_static_extension(stdgo._internal.regexp.Regexp.T_inputs_static_extension) from stdgo._internal.regexp.Regexp.T_inputs_static_extension to stdgo._internal.regexp.Regexp.T_inputs_static_extension {

}
@:forward @:forward.new abstract FindTest_asInterface(stdgo._internal.regexp.Regexp.FindTest_asInterface) from stdgo._internal.regexp.Regexp.FindTest_asInterface to stdgo._internal.regexp.Regexp.FindTest_asInterface {

}
@:forward @:forward.new abstract FindTest_static_extension(stdgo._internal.regexp.Regexp.FindTest_static_extension) from stdgo._internal.regexp.Regexp.FindTest_static_extension to stdgo._internal.regexp.Regexp.FindTest_static_extension {

}
@:forward @:forward.new abstract T_onePassInst_asInterface(stdgo._internal.regexp.Regexp.T_onePassInst_asInterface) from stdgo._internal.regexp.Regexp.T_onePassInst_asInterface to stdgo._internal.regexp.Regexp.T_onePassInst_asInterface {

}
@:forward @:forward.new abstract T_onePassInst_static_extension(stdgo._internal.regexp.Regexp.T_onePassInst_static_extension) from stdgo._internal.regexp.Regexp.T_onePassInst_static_extension to stdgo._internal.regexp.Regexp.T_onePassInst_static_extension {

}
@:forward @:forward.new abstract T_queueOnePass_asInterface(stdgo._internal.regexp.Regexp.T_queueOnePass_asInterface) from stdgo._internal.regexp.Regexp.T_queueOnePass_asInterface to stdgo._internal.regexp.Regexp.T_queueOnePass_asInterface {

}
@:forward @:forward.new abstract T_queueOnePass_static_extension(stdgo._internal.regexp.Regexp.T_queueOnePass_static_extension) from stdgo._internal.regexp.Regexp.T_queueOnePass_static_extension to stdgo._internal.regexp.Regexp.T_queueOnePass_static_extension {

}
@:forward @:forward.new abstract Regexp_asInterface(stdgo._internal.regexp.Regexp.Regexp_asInterface) from stdgo._internal.regexp.Regexp.Regexp_asInterface to stdgo._internal.regexp.Regexp.Regexp_asInterface {

}
@:forward @:forward.new abstract Regexp_static_extension(stdgo._internal.regexp.Regexp.Regexp_static_extension) from stdgo._internal.regexp.Regexp.Regexp_static_extension to stdgo._internal.regexp.Regexp.Regexp_static_extension {

}
@:forward @:forward.new abstract T_inputString_asInterface(stdgo._internal.regexp.Regexp.T_inputString_asInterface) from stdgo._internal.regexp.Regexp.T_inputString_asInterface to stdgo._internal.regexp.Regexp.T_inputString_asInterface {

}
@:forward @:forward.new abstract T_inputString_static_extension(stdgo._internal.regexp.Regexp.T_inputString_static_extension) from stdgo._internal.regexp.Regexp.T_inputString_static_extension to stdgo._internal.regexp.Regexp.T_inputString_static_extension {

}
@:forward @:forward.new abstract T_inputBytes_asInterface(stdgo._internal.regexp.Regexp.T_inputBytes_asInterface) from stdgo._internal.regexp.Regexp.T_inputBytes_asInterface to stdgo._internal.regexp.Regexp.T_inputBytes_asInterface {

}
@:forward @:forward.new abstract T_inputBytes_static_extension(stdgo._internal.regexp.Regexp.T_inputBytes_static_extension) from stdgo._internal.regexp.Regexp.T_inputBytes_static_extension to stdgo._internal.regexp.Regexp.T_inputBytes_static_extension {

}
@:forward @:forward.new abstract T_inputReader_asInterface(stdgo._internal.regexp.Regexp.T_inputReader_asInterface) from stdgo._internal.regexp.Regexp.T_inputReader_asInterface to stdgo._internal.regexp.Regexp.T_inputReader_asInterface {

}
@:forward @:forward.new abstract T_inputReader_static_extension(stdgo._internal.regexp.Regexp.T_inputReader_static_extension) from stdgo._internal.regexp.Regexp.T_inputReader_static_extension to stdgo._internal.regexp.Regexp.T_inputReader_static_extension {

}
@:forward @:forward.new abstract T_lazyFlag_asInterface(stdgo._internal.regexp.Regexp.T_lazyFlag_asInterface) from stdgo._internal.regexp.Regexp.T_lazyFlag_asInterface to stdgo._internal.regexp.Regexp.T_lazyFlag_asInterface {

}
@:forward @:forward.new abstract T_lazyFlag_static_extension(stdgo._internal.regexp.Regexp.T_lazyFlag_static_extension) from stdgo._internal.regexp.Regexp.T_lazyFlag_static_extension to stdgo._internal.regexp.Regexp.T_lazyFlag_static_extension {

}
@:forward @:forward.new abstract T_runeSlice_asInterface(stdgo._internal.regexp.Regexp.T_runeSlice_asInterface) from stdgo._internal.regexp.Regexp.T_runeSlice_asInterface to stdgo._internal.regexp.Regexp.T_runeSlice_asInterface {

}
@:forward @:forward.new abstract T_runeSlice_static_extension(stdgo._internal.regexp.Regexp.T_runeSlice_static_extension) from stdgo._internal.regexp.Regexp.T_runeSlice_static_extension to stdgo._internal.regexp.Regexp.T_runeSlice_static_extension {

}
class Regexp {
    static public function testGoodCompile(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testGoodCompile(t);
    }
    static public function testBadCompile(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testBadCompile(t);
    }
    static public function testMatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testMatch(t);
    }
    static public function testMatchFunction(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testMatchFunction(t);
    }
    static public function testCopyMatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testCopyMatch(t);
    }
    static public function testReplaceAll(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testReplaceAll(t);
    }
    static public function testReplaceAllLiteral(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testReplaceAllLiteral(t);
    }
    static public function testReplaceAllFunc(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testReplaceAllFunc(t);
    }
    static public function testQuoteMeta(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testQuoteMeta(t);
    }
    static public function testLiteralPrefix(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testLiteralPrefix(t);
    }
    static public function testSubexp(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testSubexp(t);
    }
    static public function testSplit(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testSplit(t);
    }
    /**
        The following sequence of Match calls used to panic. See issue #12980.
    **/
    static public function testParseAndCompile(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testParseAndCompile(t);
    }
    /**
        Check that one-pass cutoff does trigger.
    **/
    static public function testOnePassCutoff(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testOnePassCutoff(t);
    }
    /**
        Check that the same machine can be used with the standard matcher
        and then the backtracker when there are no captures.
    **/
    static public function testSwitchBacktrack(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testSwitchBacktrack(t);
    }
    static public function benchmarkFind(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkFind(b);
    }
    static public function benchmarkFindAllNoMatches(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkFindAllNoMatches(b);
    }
    static public function benchmarkFindString(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkFindString(b);
    }
    static public function benchmarkFindSubmatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkFindSubmatch(b);
    }
    static public function benchmarkFindStringSubmatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkFindStringSubmatch(b);
    }
    static public function benchmarkLiteral(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkLiteral(b);
    }
    static public function benchmarkNotLiteral(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkNotLiteral(b);
    }
    static public function benchmarkMatchClass(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkMatchClass(b);
    }
    static public function benchmarkMatchClass_InRange(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkMatchClass_InRange(b);
    }
    static public function benchmarkReplaceAll(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkReplaceAll(b);
    }
    static public function benchmarkAnchoredLiteralShortNonMatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkAnchoredLiteralShortNonMatch(b);
    }
    static public function benchmarkAnchoredLiteralLongNonMatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkAnchoredLiteralLongNonMatch(b);
    }
    static public function benchmarkAnchoredShortMatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkAnchoredShortMatch(b);
    }
    static public function benchmarkAnchoredLongMatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkAnchoredLongMatch(b);
    }
    static public function benchmarkOnePassShortA(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkOnePassShortA(b);
    }
    static public function benchmarkNotOnePassShortA(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkNotOnePassShortA(b);
    }
    static public function benchmarkOnePassShortB(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkOnePassShortB(b);
    }
    static public function benchmarkNotOnePassShortB(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkNotOnePassShortB(b);
    }
    static public function benchmarkOnePassLongPrefix(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkOnePassLongPrefix(b);
    }
    static public function benchmarkOnePassLongNotPrefix(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkOnePassLongNotPrefix(b);
    }
    static public function benchmarkMatchParallelShared(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkMatchParallelShared(b);
    }
    static public function benchmarkMatchParallelCopied(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkMatchParallelCopied(b);
    }
    static public function benchmarkQuoteMetaAll(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkQuoteMetaAll(b);
    }
    static public function benchmarkQuoteMetaNone(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkQuoteMetaNone(b);
    }
    static public function benchmarkCompile(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkCompile(b);
    }
    static public function testDeepEqual(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testDeepEqual(t);
    }
    static public function testMinInputLen(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testMinInputLen(t);
    }
    static public function testUnmarshalText(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testUnmarshalText(t);
    }
    /**
        This test is excluded when running under the race detector because
        it is a very expensive test and takes too long.
    **/
    static public function testRE2Exhaustive(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testRE2Exhaustive(t);
    }
    /**
        TestRE2 tests this package's regexp API against test cases
        considered during RE2's exhaustive tests, which run all possible
        regexps over a given set of atoms and operators, up to a given
        complexity, over all possible strings over a given alphabet,
        up to a given size. Rather than try to link with RE2, we read a
        log file containing the test cases and the expected matches.
        The log file, re2-exhaustive.txt, is generated by running 'make log'
        in the open source RE2 distribution https://github.com/google/re2/.
        
        The test file format is a sequence of stanzas like:
        
        	strings
        	"abc"
        	"123x"
        	regexps
        	"[a-z]+"
        	0-3;0-3
        	-;-
        	"([0-9])([0-9])([0-9])"
        	-;-
        	-;0-3 0-1 1-2 2-3
        
        The stanza begins by defining a set of strings, quoted
        using Go double-quote syntax, one per line. Then the
        regexps section gives a sequence of regexps to run on
        the strings. In the block that follows a regexp, each line
        gives the semicolon-separated match results of running
        the regexp on the corresponding string.
        Each match result is either a single -, meaning no match, or a
        space-separated sequence of pairs giving the match and
        submatch indices. An unmatched subexpression formats
        its pair as a single - (not illustrated above).  For now
        each regexp run produces two match results, one for a
        “full match” that restricts the regexp to matching the entire
        string or nothing, and one for a “partial match” that gives
        the leftmost first match found in the string.
        
        Lines beginning with # are comments. Lines beginning with
        a capital letter are test names printed during RE2's test suite
        and are echoed into t but otherwise ignored.
        
        At time of writing, re2-exhaustive.txt is 59 MB but compresses to 385 kB,
        so we store re2-exhaustive.txt.bz2 in the repository and decompress it on the fly.
    **/
    static public function testRE2Search(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testRE2Search(t);
    }
    /**
        TestFowler runs this package's regexp API against the
        POSIX regular expression tests collected by Glenn Fowler
        at http://www2.research.att.com/~astopen/testregex/testregex.html.
    **/
    static public function testFowler(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFowler(t);
    }
    static public function benchmarkMatch(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkMatch(b);
    }
    static public function benchmarkMatch_onepass_regex(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.Regexp.benchmarkMatch_onepass_regex(b);
    }
    static public function testLongest(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testLongest(t);
    }
    /**
        TestProgramTooLongForBacktrack tests that a regex which is too long
        for the backtracker still executes properly.
    **/
    static public function testProgramTooLongForBacktrack(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testProgramTooLongForBacktrack(t);
    }
    static public function testFind(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFind(t);
    }
    static public function testFindString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindString(t);
    }
    static public function testFindIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindIndex(t);
    }
    static public function testFindStringIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindStringIndex(t);
    }
    static public function testFindReaderIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindReaderIndex(t);
    }
    static public function testFindAll(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAll(t);
    }
    static public function testFindAllString(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllString(t);
    }
    static public function testFindAllIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllIndex(t);
    }
    static public function testFindAllStringIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllStringIndex(t);
    }
    static public function testFindSubmatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindSubmatch(t);
    }
    static public function testFindStringSubmatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindStringSubmatch(t);
    }
    static public function testFindSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindSubmatchIndex(t);
    }
    static public function testFindStringSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindStringSubmatchIndex(t);
    }
    static public function testFindReaderSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindReaderSubmatchIndex(t);
    }
    static public function testFindAllSubmatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllSubmatch(t);
    }
    static public function testFindAllStringSubmatch(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllStringSubmatch(t);
    }
    static public function testFindAllSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllSubmatchIndex(t);
    }
    static public function testFindAllStringSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testFindAllStringSubmatchIndex(t);
    }
    static public function testMergeRuneSet(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testMergeRuneSet(t);
    }
    static public function testCompileOnePass(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testCompileOnePass(t);
    }
    static public function testRunOnePass(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.Regexp.testRunOnePass(t);
    }
    /**
        Compile parses a regular expression and returns, if successful,
        a Regexp object that can be used to match against text.
        
        When matching against text, the regexp returns a match that
        begins as early as possible in the input (leftmost), and among those
        it chooses the one that a backtracking search would have found first.
        This so-called leftmost-first matching is the same semantics
        that Perl, Python, and other implementations use, although this
        package implements it without the expense of backtracking.
        For POSIX leftmost-longest matching, see CompilePOSIX.
    **/
    static public function compile(expr:String):stdgo.Tuple<Regexp, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.Regexp.compile(expr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        CompilePOSIX is like Compile but restricts the regular expression
        to POSIX ERE (egrep) syntax and changes the match semantics to
        leftmost-longest.
        
        That is, when matching against text, the regexp returns a match that
        begins as early as possible in the input (leftmost), and among those
        it chooses a match that is as long as possible.
        This so-called leftmost-longest matching is the same semantics
        that early regular expression implementations used and that POSIX
        specifies.
        
        However, there can be multiple leftmost-longest matches, with different
        submatch choices, and here this package diverges from POSIX.
        Among the possible leftmost-longest matches, this package chooses
        the one that a backtracking search would have found first, while POSIX
        specifies that the match be chosen to maximize the length of the first
        subexpression, then the second, and so on from left to right.
        The POSIX rule is computationally prohibitive and not even well-defined.
        See https://swtch.com/~rsc/regexp/regexp2.html#posix for details.
    **/
    static public function compilePOSIX(expr:String):stdgo.Tuple<Regexp, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.Regexp.compilePOSIX(expr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MustCompile is like Compile but panics if the expression cannot be parsed.
        It simplifies safe initialization of global variables holding compiled regular
        expressions.
    **/
    static public function mustCompile(str:String):Regexp {
        return stdgo._internal.regexp.Regexp.mustCompile(str);
    }
    /**
        MustCompilePOSIX is like CompilePOSIX but panics if the expression cannot be parsed.
        It simplifies safe initialization of global variables holding compiled regular
        expressions.
    **/
    static public function mustCompilePOSIX(str:String):Regexp {
        return stdgo._internal.regexp.Regexp.mustCompilePOSIX(str);
    }
    /**
        MatchReader reports whether the text returned by the RuneReader
        contains any match of the regular expression pattern.
        More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public function matchReader(pattern:String, r:stdgo._internal.io.Io.RuneReader):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.Regexp.matchReader(pattern, r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MatchString reports whether the string s
        contains any match of the regular expression pattern.
        More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public function matchString(pattern:String, s:String):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.Regexp.matchString(pattern, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Match reports whether the byte slice b
        contains any match of the regular expression pattern.
        More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public function match(pattern:String, b:Array<StdTypes.Int>):stdgo.Tuple<Bool, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.regexp.Regexp.match(pattern, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        QuoteMeta returns a string that escapes all regular expression metacharacters
        inside the argument text; the returned string is a regular expression matching
        the literal text.
    **/
    static public function quoteMeta(s:String):String {
        return stdgo._internal.regexp.Regexp.quoteMeta(s);
    }
}
