package stdgo.regexp;
typedef ReplaceTest = stdgo._internal.regexp.Regexp_replacetest.ReplaceTest;
typedef ReplaceFuncTest = stdgo._internal.regexp.Regexp_replacefunctest.ReplaceFuncTest;
typedef MetaTest = stdgo._internal.regexp.Regexp_metatest.MetaTest;
typedef FindTest = stdgo._internal.regexp.Regexp_findtest.FindTest;
typedef Regexp_ = stdgo._internal.regexp.Regexp_regexp.Regexp;
typedef ReplaceTestPointer = stdgo._internal.regexp.Regexp_replacetestpointer.ReplaceTestPointer;
typedef ReplaceFuncTestPointer = stdgo._internal.regexp.Regexp_replacefunctestpointer.ReplaceFuncTestPointer;
typedef MetaTestPointer = stdgo._internal.regexp.Regexp_metatestpointer.MetaTestPointer;
typedef FindTestPointer = stdgo._internal.regexp.Regexp_findtestpointer.FindTestPointer;
typedef RegexpPointer = stdgo._internal.regexp.Regexp_regexppointer.RegexpPointer;
/**
    * Package regexp implements regular expression search.
    * 
    * The syntax of the regular expressions accepted is the same
    * general syntax used by Perl, Python, and other languages.
    * More precisely, it is the syntax accepted by RE2 and described at
    * https://golang.org/s/re2syntax, except for \C.
    * For an overview of the syntax, run
    * 
    * 	go doc regexp/syntax
    * 
    * The regexp implementation provided by this package is
    * guaranteed to run in time linear in the size of the input.
    * (This is a property not guaranteed by most open source
    * implementations of regular expressions.) For more information
    * about this property, see
    * 
    * 	https://swtch.com/~rsc/regexp/regexp1.html
    * 
    * or any book about automata theory.
    * 
    * All characters are UTF-8-encoded code points.
    * Following utf8.DecodeRune, each byte of an invalid UTF-8 sequence
    * is treated as if it encoded utf8.RuneError (U+FFFD).
    * 
    * There are 16 methods of Regexp that match a regular expression and identify
    * the matched text. Their names are matched by this regular expression:
    * 
    * 	Find(All)?(String)?(Submatch)?(Index)?
    * 
    * If 'All' is present, the routine matches successive non-overlapping
    * matches of the entire expression. Empty matches abutting a preceding
    * match are ignored. The return value is a slice containing the successive
    * return values of the corresponding non-'All' routine. These routines take
    * an extra integer argument, n. If n >= 0, the function returns at most n
    * matches/submatches; otherwise, it returns all of them.
    * 
    * If 'String' is present, the argument is a string; otherwise it is a slice
    * of bytes; return values are adjusted as appropriate.
    * 
    * If 'Submatch' is present, the return value is a slice identifying the
    * successive submatches of the expression. Submatches are matches of
    * parenthesized subexpressions (also known as capturing groups) within the
    * regular expression, numbered from left to right in order of opening
    * parenthesis. Submatch 0 is the match of the entire expression, submatch 1 is
    * the match of the first parenthesized subexpression, and so on.
    * 
    * If 'Index' is present, matches and submatches are identified by byte index
    * pairs within the input string: result[2*n:2*n+2] identifies the indexes of
    * the nth submatch. The pair for n==0 identifies the match of the entire
    * expression. If 'Index' is not present, the match is identified by the text
    * of the match/submatch. If an index is negative or text is nil, it means that
    * subexpression did not match any string in the input. For 'String' versions
    * an empty string means either no match or an empty match.
    * 
    * There is also a subset of the methods that can be applied to text read
    * from a RuneReader:
    * 
    * 	MatchReader, FindReaderIndex, FindReaderSubmatchIndex
    * 
    * This set may grow. Note that regular expression matches may need to
    * examine text beyond the text returned by a match, so the methods that
    * match text from a RuneReader may read arbitrarily far into the input
    * before returning.
    * 
    * (There are a few other methods that do not match this pattern.)
**/
class Regexp {
    static public inline function testGoodCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testgoodcompile.testGoodCompile(_t);
    static public inline function testBadCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testbadcompile.testBadCompile(_t);
    static public inline function testMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testmatch.testMatch(_t);
    static public inline function testMatchFunction(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testmatchfunction.testMatchFunction(_t);
    static public inline function testCopyMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testcopymatch.testCopyMatch(_t);
    static public inline function testReplaceAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testreplaceall.testReplaceAll(_t);
    static public inline function testReplaceAllLiteral(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testreplaceallliteral.testReplaceAllLiteral(_t);
    static public inline function testReplaceAllFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testreplaceallfunc.testReplaceAllFunc(_t);
    static public inline function testQuoteMeta(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testquotemeta.testQuoteMeta(_t);
    static public inline function testLiteralPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testliteralprefix.testLiteralPrefix(_t);
    static public inline function testSubexp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testsubexp.testSubexp(_t);
    static public inline function testSplit(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testsplit.testSplit(_t);
    /**
        * The following sequence of Match calls used to panic. See issue #12980.
    **/
    static public inline function testParseAndCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testparseandcompile.testParseAndCompile(_t);
    /**
        * Check that one-pass cutoff does trigger.
    **/
    static public inline function testOnePassCutoff(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testonepasscutoff.testOnePassCutoff(_t);
    /**
        * Check that the same machine can be used with the standard matcher
        * and then the backtracker when there are no captures.
    **/
    static public inline function testSwitchBacktrack(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testswitchbacktrack.testSwitchBacktrack(_t);
    static public inline function benchmarkFind(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkfind.benchmarkFind(_b);
    static public inline function benchmarkFindAllNoMatches(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkfindallnomatches.benchmarkFindAllNoMatches(_b);
    static public inline function benchmarkFindString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkfindstring.benchmarkFindString(_b);
    static public inline function benchmarkFindSubmatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkfindsubmatch.benchmarkFindSubmatch(_b);
    static public inline function benchmarkFindStringSubmatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkfindstringsubmatch.benchmarkFindStringSubmatch(_b);
    static public inline function benchmarkLiteral(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkliteral.benchmarkLiteral(_b);
    static public inline function benchmarkNotLiteral(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarknotliteral.benchmarkNotLiteral(_b);
    static public inline function benchmarkMatchClass(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkmatchclass.benchmarkMatchClass(_b);
    static public inline function benchmarkMatchClass_InRange(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkmatchclass_inrange.benchmarkMatchClass_InRange(_b);
    static public inline function benchmarkReplaceAll(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkreplaceall.benchmarkReplaceAll(_b);
    static public inline function benchmarkAnchoredLiteralShortNonMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkanchoredliteralshortnonmatch.benchmarkAnchoredLiteralShortNonMatch(_b);
    static public inline function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkanchoredliterallongnonmatch.benchmarkAnchoredLiteralLongNonMatch(_b);
    static public inline function benchmarkAnchoredShortMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkanchoredshortmatch.benchmarkAnchoredShortMatch(_b);
    static public inline function benchmarkAnchoredLongMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkanchoredlongmatch.benchmarkAnchoredLongMatch(_b);
    static public inline function benchmarkOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkonepassshorta.benchmarkOnePassShortA(_b);
    static public inline function benchmarkNotOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarknotonepassshorta.benchmarkNotOnePassShortA(_b);
    static public inline function benchmarkOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkonepassshortb.benchmarkOnePassShortB(_b);
    static public inline function benchmarkNotOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarknotonepassshortb.benchmarkNotOnePassShortB(_b);
    static public inline function benchmarkOnePassLongPrefix(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkonepasslongprefix.benchmarkOnePassLongPrefix(_b);
    static public inline function benchmarkOnePassLongNotPrefix(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkonepasslongnotprefix.benchmarkOnePassLongNotPrefix(_b);
    static public inline function benchmarkMatchParallelShared(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkmatchparallelshared.benchmarkMatchParallelShared(_b);
    static public inline function benchmarkMatchParallelCopied(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkmatchparallelcopied.benchmarkMatchParallelCopied(_b);
    static public inline function benchmarkQuoteMetaAll(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkquotemetaall.benchmarkQuoteMetaAll(_b);
    static public inline function benchmarkQuoteMetaNone(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkquotemetanone.benchmarkQuoteMetaNone(_b);
    static public inline function benchmarkCompile(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkcompile.benchmarkCompile(_b);
    static public inline function testDeepEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testdeepequal.testDeepEqual(_t);
    static public inline function testMinInputLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testmininputlen.testMinInputLen(_t);
    static public inline function testUnmarshalText(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testunmarshaltext.testUnmarshalText(_t);
    /**
        * This test is excluded when running under the race detector because
        * it is a very expensive test and takes too long.
    **/
    static public inline function testRE2Exhaustive(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testre2exhaustive.testRE2Exhaustive(_t);
    /**
        * TestRE2 tests this package's regexp API against test cases
        * considered during RE2's exhaustive tests, which run all possible
        * regexps over a given set of atoms and operators, up to a given
        * complexity, over all possible strings over a given alphabet,
        * up to a given size. Rather than try to link with RE2, we read a
        * log file containing the test cases and the expected matches.
        * The log file, re2-exhaustive.txt, is generated by running 'make log'
        * in the open source RE2 distribution https://github.com/google/re2/.
        * 
        * The test file format is a sequence of stanzas like:
        * 
        * 	strings
        * 	"abc"
        * 	"123x"
        * 	regexps
        * 	"[a-z]+"
        * 	0-3;0-3
        * 	-;-
        * 	"([0-9])([0-9])([0-9])"
        * 	-;-
        * 	-;0-3 0-1 1-2 2-3
        * 
        * The stanza begins by defining a set of strings, quoted
        * using Go double-quote syntax, one per line. Then the
        * regexps section gives a sequence of regexps to run on
        * the strings. In the block that follows a regexp, each line
        * gives the semicolon-separated match results of running
        * the regexp on the corresponding string.
        * Each match result is either a single -, meaning no match, or a
        * space-separated sequence of pairs giving the match and
        * submatch indices. An unmatched subexpression formats
        * its pair as a single - (not illustrated above).  For now
        * each regexp run produces two match results, one for a
        * “full match” that restricts the regexp to matching the entire
        * string or nothing, and one for a “partial match” that gives
        * the leftmost first match found in the string.
        * 
        * Lines beginning with # are comments. Lines beginning with
        * a capital letter are test names printed during RE2's test suite
        * and are echoed into t but otherwise ignored.
        * 
        * At time of writing, re2-exhaustive.txt is 59 MB but compresses to 385 kB,
        * so we store re2-exhaustive.txt.bz2 in the repository and decompress it on the fly.
    **/
    static public inline function testRE2Search(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testre2search.testRE2Search(_t);
    /**
        * TestFowler runs this package's regexp API against the
        * POSIX regular expression tests collected by Glenn Fowler
        * at http://www2.research.att.com/~astopen/testregex/testregex.html.
    **/
    static public inline function testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfowler.testFowler(_t);
    static public inline function benchmarkMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkmatch.benchmarkMatch(_b);
    static public inline function benchmarkMatch_onepass_regex(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.regexp.Regexp_benchmarkmatch_onepass_regex.benchmarkMatch_onepass_regex(_b);
    static public inline function testLongest(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testlongest.testLongest(_t);
    /**
        * TestProgramTooLongForBacktrack tests that a regex which is too long
        * for the backtracker still executes properly.
    **/
    static public inline function testProgramTooLongForBacktrack(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testprogramtoolongforbacktrack.testProgramTooLongForBacktrack(_t);
    static public inline function testFind(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfind.testFind(_t);
    static public inline function testFindString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindstring.testFindString(_t);
    static public inline function testFindIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindindex.testFindIndex(_t);
    static public inline function testFindStringIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindstringindex.testFindStringIndex(_t);
    static public inline function testFindReaderIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindreaderindex.testFindReaderIndex(_t);
    static public inline function testFindAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindall.testFindAll(_t);
    static public inline function testFindAllString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindallstring.testFindAllString(_t);
    static public inline function testFindAllIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindallindex.testFindAllIndex(_t);
    static public inline function testFindAllStringIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindallstringindex.testFindAllStringIndex(_t);
    static public inline function testFindSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindsubmatch.testFindSubmatch(_t);
    static public inline function testFindStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindstringsubmatch.testFindStringSubmatch(_t);
    static public inline function testFindSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindsubmatchindex.testFindSubmatchIndex(_t);
    static public inline function testFindStringSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindstringsubmatchindex.testFindStringSubmatchIndex(_t);
    static public inline function testFindReaderSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindreadersubmatchindex.testFindReaderSubmatchIndex(_t);
    static public inline function testFindAllSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindallsubmatch.testFindAllSubmatch(_t);
    static public inline function testFindAllStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindallstringsubmatch.testFindAllStringSubmatch(_t);
    static public inline function testFindAllSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindallsubmatchindex.testFindAllSubmatchIndex(_t);
    static public inline function testFindAllStringSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testfindallstringsubmatchindex.testFindAllStringSubmatchIndex(_t);
    static public inline function testMergeRuneSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testmergeruneset.testMergeRuneSet(_t);
    static public inline function testCompileOnePass(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testcompileonepass.testCompileOnePass(_t);
    static public inline function testRunOnePass(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.regexp.Regexp_testrunonepass.testRunOnePass(_t);
    /**
        * Compile parses a regular expression and returns, if successful,
        * a Regexp object that can be used to match against text.
        * 
        * When matching against text, the regexp returns a match that
        * begins as early as possible in the input (leftmost), and among those
        * it chooses the one that a backtracking search would have found first.
        * This so-called leftmost-first matching is the same semantics
        * that Perl, Python, and other implementations use, although this
        * package implements it without the expense of backtracking.
        * For POSIX leftmost-longest matching, see CompilePOSIX.
    **/
    static public inline function compile(_expr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>; var _1 : stdgo.Error; } return stdgo._internal.regexp.Regexp_compile.compile(_expr);
    /**
        * CompilePOSIX is like Compile but restricts the regular expression
        * to POSIX ERE (egrep) syntax and changes the match semantics to
        * leftmost-longest.
        * 
        * That is, when matching against text, the regexp returns a match that
        * begins as early as possible in the input (leftmost), and among those
        * it chooses a match that is as long as possible.
        * This so-called leftmost-longest matching is the same semantics
        * that early regular expression implementations used and that POSIX
        * specifies.
        * 
        * However, there can be multiple leftmost-longest matches, with different
        * submatch choices, and here this package diverges from POSIX.
        * Among the possible leftmost-longest matches, this package chooses
        * the one that a backtracking search would have found first, while POSIX
        * specifies that the match be chosen to maximize the length of the first
        * subexpression, then the second, and so on from left to right.
        * The POSIX rule is computationally prohibitive and not even well-defined.
        * See https://swtch.com/~rsc/regexp/regexp2.html#posix for details.
    **/
    static public inline function compilePOSIX(_expr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>; var _1 : stdgo.Error; } return stdgo._internal.regexp.Regexp_compileposix.compilePOSIX(_expr);
    /**
        * MustCompile is like Compile but panics if the expression cannot be parsed.
        * It simplifies safe initialization of global variables holding compiled regular
        * expressions.
    **/
    static public inline function mustCompile(_str:stdgo.GoString):stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> return stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_str);
    /**
        * MustCompilePOSIX is like CompilePOSIX but panics if the expression cannot be parsed.
        * It simplifies safe initialization of global variables holding compiled regular
        * expressions.
    **/
    static public inline function mustCompilePOSIX(_str:stdgo.GoString):stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> return stdgo._internal.regexp.Regexp_mustcompileposix.mustCompilePOSIX(_str);
    /**
        * MatchReader reports whether the text returned by the RuneReader
        * contains any match of the regular expression pattern.
        * More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public inline function matchReader(_pattern:stdgo.GoString, _r:stdgo._internal.io.Io_runereader.RuneReader):{ var _0 : Bool; var _1 : stdgo.Error; } return stdgo._internal.regexp.Regexp_matchreader.matchReader(_pattern, _r);
    /**
        * MatchString reports whether the string s
        * contains any match of the regular expression pattern.
        * More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public inline function matchString(_pattern:stdgo.GoString, _s:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return stdgo._internal.regexp.Regexp_matchstring.matchString(_pattern, _s);
    /**
        * Match reports whether the byte slice b
        * contains any match of the regular expression pattern.
        * More complicated queries need to use Compile and the full Regexp interface.
    **/
    static public inline function match(_pattern:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Bool; var _1 : stdgo.Error; } return stdgo._internal.regexp.Regexp_match.match(_pattern, _b);
    /**
        * QuoteMeta returns a string that escapes all regular expression metacharacters
        * inside the argument text; the returned string is a regular expression matching
        * the literal text.
    **/
    static public inline function quoteMeta(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_s);
}
