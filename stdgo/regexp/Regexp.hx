package stdgo.regexp;
/**
    // Package regexp implements regular expression search.
    //
    // The syntax of the regular expressions accepted is the same
    // general syntax used by Perl, Python, and other languages.
    // More precisely, it is the syntax accepted by RE2 and described at
    // https://golang.org/s/re2syntax, except for \C.
    // For an overview of the syntax, run
    //
    //	go doc regexp/syntax
    //
    // The regexp implementation provided by this package is
    // guaranteed to run in time linear in the size of the input.
    // (This is a property not guaranteed by most open source
    // implementations of regular expressions.) For more information
    // about this property, see
    //
    //	https://swtch.com/~rsc/regexp/regexp1.html
    //
    // or any book about automata theory.
    //
    // All characters are UTF-8-encoded code points.
    // Following utf8.DecodeRune, each byte of an invalid UTF-8 sequence
    // is treated as if it encoded utf8.RuneError (U+FFFD).
    //
    // There are 16 methods of Regexp that match a regular expression and identify
    // the matched text. Their names are matched by this regular expression:
    //
    //	Find(All)?(String)?(Submatch)?(Index)?
    //
    // If 'All' is present, the routine matches successive non-overlapping
    // matches of the entire expression. Empty matches abutting a preceding
    // match are ignored. The return value is a slice containing the successive
    // return values of the corresponding non-'All' routine. These routines take
    // an extra integer argument, n. If n >= 0, the function returns at most n
    // matches/submatches; otherwise, it returns all of them.
    //
    // If 'String' is present, the argument is a string; otherwise it is a slice
    // of bytes; return values are adjusted as appropriate.
    //
    // If 'Submatch' is present, the return value is a slice identifying the
    // successive submatches of the expression. Submatches are matches of
    // parenthesized subexpressions (also known as capturing groups) within the
    // regular expression, numbered from left to right in order of opening
    // parenthesis. Submatch 0 is the match of the entire expression, submatch 1 is
    // the match of the first parenthesized subexpression, and so on.
    //
    // If 'Index' is present, matches and submatches are identified by byte index
    // pairs within the input string: result[2*n:2*n+2] identifies the indexes of
    // the nth submatch. The pair for n==0 identifies the match of the entire
    // expression. If 'Index' is not present, the match is identified by the text
    // of the match/submatch. If an index is negative or text is nil, it means that
    // subexpression did not match any string in the input. For 'String' versions
    // an empty string means either no match or an empty match.
    //
    // There is also a subset of the methods that can be applied to text read
    // from a RuneReader:
    //
    //	MatchReader, FindReaderIndex, FindReaderSubmatchIndex
    //
    // This set may grow. Note that regular expression matches may need to
    // examine text beyond the text returned by a match, so the methods that
    // match text from a RuneReader may read arbitrarily far into the input
    // before returning.
    //
    // (There are a few other methods that do not match this pattern.)
**/
private var __go2hxdoc__package : Bool;
typedef T_input = stdgo._internal.regexp.Regexp.T_input;
@:invalid typedef T_stringError = Dynamic;
@:invalid typedef ReplaceTest = Dynamic;
@:invalid typedef ReplaceFuncTest = Dynamic;
@:invalid typedef MetaTest = Dynamic;
@:invalid typedef T_subexpIndex = Dynamic;
@:invalid typedef T_subexpCase = Dynamic;
@:invalid typedef T_job = Dynamic;
@:invalid typedef T_bitState = Dynamic;
@:invalid typedef T_queue = Dynamic;
@:invalid typedef T_entry = Dynamic;
@:invalid typedef T_thread = Dynamic;
@:invalid typedef T_machine = Dynamic;
@:invalid typedef T_inputs = Dynamic;
@:invalid typedef T_onePassMachine = Dynamic;
@:invalid typedef FindTest = Dynamic;
@:invalid typedef T_onePassProg = Dynamic;
@:invalid typedef T_onePassInst = Dynamic;
@:invalid typedef T_queueOnePass = Dynamic;
@:invalid typedef Regexp = Dynamic;
@:invalid typedef T_inputString = Dynamic;
@:invalid typedef T_inputBytes = Dynamic;
@:invalid typedef T_inputReader = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.regexp.Regexp.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.regexp.Regexp.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.regexp.Regexp.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.regexp.Regexp.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.regexp.Regexp.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.regexp.Regexp.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.regexp.Regexp.T__struct_6;
@:invalid typedef T__struct_7_asInterface = Dynamic;
@:invalid typedef T__struct_7_static_extension = Dynamic;
typedef T__struct_7 = stdgo._internal.regexp.Regexp.T__struct_7;
typedef T_lazyFlag = stdgo._internal.regexp.Regexp.T_lazyFlag;
typedef T_runeSlice = stdgo._internal.regexp.Regexp.T_runeSlice;
inline function testGoodCompile(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testBadCompile(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMatch(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMatchFunction(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCopyMatch(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReplaceAll(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReplaceAllLiteral(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReplaceAllFunc(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testQuoteMeta(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLiteralPrefix(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSubexp(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSplit(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // The following sequence of Match calls used to panic. See issue #12980.
**/
inline function testParseAndCompile(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Check that one-pass cutoff does trigger.
**/
inline function testOnePassCutoff(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Check that the same machine can be used with the standard matcher
    // and then the backtracker when there are no captures.
**/
inline function testSwitchBacktrack(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkFind(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkFindAllNoMatches(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkFindString(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkFindSubmatch(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkFindStringSubmatch(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkLiteral(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkNotLiteral(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkMatchClass(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkMatchClass_InRange(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkReplaceAll(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAnchoredLiteralShortNonMatch(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAnchoredLiteralLongNonMatch(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAnchoredShortMatch(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkAnchoredLongMatch(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkOnePassShortA(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkNotOnePassShortA(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkOnePassShortB(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkNotOnePassShortB(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkOnePassLongPrefix(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkOnePassLongNotPrefix(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkMatchParallelShared(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkMatchParallelCopied(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkQuoteMetaAll(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkQuoteMetaNone(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkCompile(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testDeepEqual(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMinInputLen(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testUnmarshalText(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // This test is excluded when running under the race detector because
    // it is a very expensive test and takes too long.
**/
inline function testRE2Exhaustive(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestRE2 tests this package's regexp API against test cases
    // considered during RE2's exhaustive tests, which run all possible
    // regexps over a given set of atoms and operators, up to a given
    // complexity, over all possible strings over a given alphabet,
    // up to a given size. Rather than try to link with RE2, we read a
    // log file containing the test cases and the expected matches.
    // The log file, re2-exhaustive.txt, is generated by running 'make log'
    // in the open source RE2 distribution https://github.com/google/re2/.
    //
    // The test file format is a sequence of stanzas like:
    //
    //	strings
    //	"abc"
    //	"123x"
    //	regexps
    //	"[a-z]+"
    //	0-3;0-3
    //	-;-
    //	"([0-9])([0-9])([0-9])"
    //	-;-
    //	-;0-3 0-1 1-2 2-3
    //
    // The stanza begins by defining a set of strings, quoted
    // using Go double-quote syntax, one per line. Then the
    // regexps section gives a sequence of regexps to run on
    // the strings. In the block that follows a regexp, each line
    // gives the semicolon-separated match results of running
    // the regexp on the corresponding string.
    // Each match result is either a single -, meaning no match, or a
    // space-separated sequence of pairs giving the match and
    // submatch indices. An unmatched subexpression formats
    // its pair as a single - (not illustrated above).  For now
    // each regexp run produces two match results, one for a
    // “full match” that restricts the regexp to matching the entire
    // string or nothing, and one for a “partial match” that gives
    // the leftmost first match found in the string.
    //
    // Lines beginning with # are comments. Lines beginning with
    // a capital letter are test names printed during RE2's test suite
    // and are echoed into t but otherwise ignored.
    //
    // At time of writing, re2-exhaustive.txt is 59 MB but compresses to 385 kB,
    // so we store re2-exhaustive.txt.bz2 in the repository and decompress it on the fly.
**/
inline function testRE2Search(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestFowler runs this package's regexp API against the
    // POSIX regular expression tests collected by Glenn Fowler
    // at http://www2.research.att.com/~astopen/testregex/testregex.html.
**/
inline function testFowler(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkMatch(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkMatch_onepass_regex(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testLongest(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // TestProgramTooLongForBacktrack tests that a regex which is too long
    // for the backtracker still executes properly.
**/
inline function testProgramTooLongForBacktrack(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFind(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindIndex(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindStringIndex(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindReaderIndex(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindAll(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindAllString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindAllIndex(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindAllStringIndex(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindSubmatch(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindStringSubmatch(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindStringSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindReaderSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindAllSubmatch(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindAllStringSubmatch(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindAllSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFindAllStringSubmatchIndex(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testMergeRuneSet(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testCompileOnePass(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRunOnePass(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Compile parses a regular expression and returns, if successful,
    // a Regexp object that can be used to match against text.
    //
    // When matching against text, the regexp returns a match that
    // begins as early as possible in the input (leftmost), and among those
    // it chooses the one that a backtracking search would have found first.
    // This so-called leftmost-first matching is the same semantics
    // that Perl, Python, and other implementations use, although this
    // package implements it without the expense of backtracking.
    // For POSIX leftmost-longest matching, see CompilePOSIX.
**/
inline function compile(expr:String):stdgo.Tuple<Regexp, stdgo.Error> throw "not implemented";
/**
    // CompilePOSIX is like Compile but restricts the regular expression
    // to POSIX ERE (egrep) syntax and changes the match semantics to
    // leftmost-longest.
    //
    // That is, when matching against text, the regexp returns a match that
    // begins as early as possible in the input (leftmost), and among those
    // it chooses a match that is as long as possible.
    // This so-called leftmost-longest matching is the same semantics
    // that early regular expression implementations used and that POSIX
    // specifies.
    //
    // However, there can be multiple leftmost-longest matches, with different
    // submatch choices, and here this package diverges from POSIX.
    // Among the possible leftmost-longest matches, this package chooses
    // the one that a backtracking search would have found first, while POSIX
    // specifies that the match be chosen to maximize the length of the first
    // subexpression, then the second, and so on from left to right.
    // The POSIX rule is computationally prohibitive and not even well-defined.
    // See https://swtch.com/~rsc/regexp/regexp2.html#posix for details.
**/
inline function compilePOSIX(expr:String):stdgo.Tuple<Regexp, stdgo.Error> throw "not implemented";
/**
    // MustCompile is like Compile but panics if the expression cannot be parsed.
    // It simplifies safe initialization of global variables holding compiled regular
    // expressions.
**/
inline function mustCompile(str:String):Regexp throw "not implemented";
/**
    // MustCompilePOSIX is like CompilePOSIX but panics if the expression cannot be parsed.
    // It simplifies safe initialization of global variables holding compiled regular
    // expressions.
**/
inline function mustCompilePOSIX(str:String):Regexp throw "not implemented";
/**
    // MatchReader reports whether the text returned by the RuneReader
    // contains any match of the regular expression pattern.
    // More complicated queries need to use Compile and the full Regexp interface.
**/
inline function matchReader(pattern:String, r:stdgo._internal.io.Io.RuneReader):stdgo.Tuple<Bool, stdgo.Error> throw "not implemented";
/**
    // MatchString reports whether the string s
    // contains any match of the regular expression pattern.
    // More complicated queries need to use Compile and the full Regexp interface.
**/
inline function matchString(pattern:String, s:String):stdgo.Tuple<Bool, stdgo.Error> throw "not implemented";
/**
    // Match reports whether the byte slice b
    // contains any match of the regular expression pattern.
    // More complicated queries need to use Compile and the full Regexp interface.
**/
inline function match(pattern:String, b:Array<Int>):stdgo.Tuple<Bool, stdgo.Error> throw "not implemented";
/**
    // QuoteMeta returns a string that escapes all regular expression metacharacters
    // inside the argument text; the returned string is a regular expression matching
    // the literal text.
**/
inline function quoteMeta(s:String):String throw "not implemented";
@:invalid typedef T_bitState_asInterface = Dynamic;
@:invalid typedef T_bitState_static_extension = Dynamic;
@:invalid typedef T_machine_asInterface = Dynamic;
@:invalid typedef T_machine_static_extension = Dynamic;
@:invalid typedef T_inputs_asInterface = Dynamic;
@:invalid typedef T_inputs_static_extension = Dynamic;
@:invalid typedef FindTest_asInterface = Dynamic;
@:invalid typedef FindTest_static_extension = Dynamic;
@:invalid typedef T_onePassInst_asInterface = Dynamic;
@:invalid typedef T_onePassInst_static_extension = Dynamic;
@:invalid typedef T_queueOnePass_asInterface = Dynamic;
@:invalid typedef T_queueOnePass_static_extension = Dynamic;
@:invalid typedef Regexp_asInterface = Dynamic;
@:invalid typedef Regexp_static_extension = Dynamic;
@:invalid typedef T_inputString_asInterface = Dynamic;
@:invalid typedef T_inputString_static_extension = Dynamic;
@:invalid typedef T_inputBytes_asInterface = Dynamic;
@:invalid typedef T_inputBytes_static_extension = Dynamic;
@:invalid typedef T_inputReader_asInterface = Dynamic;
@:invalid typedef T_inputReader_static_extension = Dynamic;
@:invalid typedef T_lazyFlag_asInterface = Dynamic;
@:invalid typedef T_lazyFlag_static_extension = Dynamic;
@:invalid typedef T_runeSlice_asInterface = Dynamic;
@:invalid typedef T_runeSlice_static_extension = Dynamic;
