package stdgo.regexp;
/**
    /|*
    Package syntax parses regular expressions into parse trees and compiles
    parse trees into programs. Most clients of regular expressions will use the
    facilities of package regexp (such as Compile and Match) instead of this package.
    
    # Syntax
    
    The regular expression syntax understood by this package when parsing with the Perl flag is as follows.
    Parts of the syntax can be disabled by passing alternate flags to Parse.
    
    Single characters:
    
    	.              any character, possibly including newline (flag s=true)
    	[xyz]          character class
    	[^xyz]         negated character class
    	\d             Perl character class
    	\D             negated Perl character class
    	[[:alpha:]]    ASCII character class
    	[[:^alpha:]]   negated ASCII character class
    	\pN            Unicode character class (one-letter name)
    	\p{Greek}      Unicode character class
    	\PN            negated Unicode character class (one-letter name)
    	\P{Greek}      negated Unicode character class
    
    Composites:
    
    	xy             x followed by y
    	x|y            x or y (prefer x)
    
    Repetitions:
    
    	x*             zero or more x, prefer more
    	x+             one or more x, prefer more
    	x?             zero or one x, prefer one
    	x{n,m}         n or n+1 or ... or m x, prefer more
    	x{n,}          n or more x, prefer more
    	x{n}           exactly n x
    	x*?            zero or more x, prefer fewer
    	x+?            one or more x, prefer fewer
    	x??            zero or one x, prefer zero
    	x{n,m}?        n or n+1 or ... or m x, prefer fewer
    	x{n,}?         n or more x, prefer fewer
    	x{n}?          exactly n x
    
    Implementation restriction: The counting forms x{n,m}, x{n,}, and x{n}
    reject forms that create a minimum or maximum repetition count above 1000.
    Unlimited repetitions are not subject to this restriction.
    
    Grouping:
    
    	(re)           numbered capturing group (submatch)
    	(?P<name>re)   named & numbered capturing group (submatch)
    	(?:re)         non-capturing group
    	(?flags)       set flags within current group; non-capturing
    	(?flags:re)    set flags during re; non-capturing
    
    	Flag syntax is xyz (set) or -xyz (clear) or xy-z (set xy, clear z). The flags are:
    
    	i              case-insensitive (default false)
    	m              multi-line mode: ^ and $ match begin/end line in addition to begin/end text (default false)
    	s              let . match \n (default false)
    	U              ungreedy: swap meaning of x* and x*?, x+ and x+?, etc (default false)
    
    Empty strings:
    
    	^              at beginning of text or line (flag m=true)
    	$              at end of text (like \z not \Z) or line (flag m=true)
    	\A             at beginning of text
    	\b             at ASCII word boundary (\w on one side and \W, \A, or \z on the other)
    	\B             not at ASCII word boundary
    	\z             at end of text
    
    Escape sequences:
    
    	\a             bell (== \007)
    	\f             form feed (== \014)
    	\t             horizontal tab (== \011)
    	\n             newline (== \012)
    	\r             carriage return (== \015)
    	\v             vertical tab character (== \013)
    	\*             literal *, for any punctuation character *
    	\123           octal character code (up to three digits)
    	\x7F           hex character code (exactly two digits)
    	\x{10FFFF}     hex character code
    	\Q...\E        literal text ... even if ... has punctuation
    
    Character class elements:
    
    	x              single character
    	A-Z            character range (inclusive)
    	\d             Perl character class
    	[:foo:]        ASCII character class foo
    	\p{Foo}        Unicode character class Foo
    	\pF            Unicode character class F (one-letter name)
    
    Named character classes as character class elements:
    
    	[\d]           digits (== \d)
    	[^\d]          not digits (== \D)
    	[\D]           not digits (== \D)
    	[^\D]          not not digits (== \d)
    	[[:name:]]     named ASCII class inside character class (== [:name:])
    	[^[:name:]]    named ASCII class inside negated character class (== [:^name:])
    	[\p{Name}]     named Unicode property inside character class (== \p{Name})
    	[^\p{Name}]    named Unicode property inside negated character class (== \P{Name})
    
    Perl character classes (all ASCII-only):
    
    	\d             digits (== [0-9])
    	\D             not digits (== [^0-9])
    	\s             whitespace (== [\t\n\f\r ])
    	\S             not whitespace (== [^\t\n\f\r ])
    	\w             word characters (== [0-9A-Za-z_])
    	\W             not word characters (== [^0-9A-Za-z_])
    
    ASCII character classes:
    
    	[[:alnum:]]    alphanumeric (== [0-9A-Za-z])
    	[[:alpha:]]    alphabetic (== [A-Za-z])
    	[[:ascii:]]    ASCII (== [\x00-\x7F])
    	[[:blank:]]    blank (== [\t ])
    	[[:cntrl:]]    control (== [\x00-\x1F\x7F])
    	[[:digit:]]    digits (== [0-9])
    	[[:graph:]]    graphical (== [!-~] == [A-Za-z0-9!"#$%&'()*+,\-./:;<=>?@[\\\]^_`{|}~])
    	[[:lower:]]    lower case (== [a-z])
    	[[:print:]]    printable (== [ -~] == [ [:graph:]])
    	[[:punct:]]    punctuation (== [!-/:-@[-`{-~])
    	[[:space:]]    whitespace (== [\t\n\v\f\r ])
    	[[:upper:]]    upper case (== [A-Z])
    	[[:word:]]     word characters (== [0-9A-Za-z_])
    	[[:xdigit:]]   hex digit (== [0-9A-Fa-f])
    
    Unicode character classes are those in unicode.Categories and unicode.Scripts.
    *|/
**/
private var __go2hxdoc__package : Bool;
final errInternalError : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInternalError;
final errInvalidCharClass : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidCharClass;
final errInvalidCharRange : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidCharRange;
final errInvalidEscape : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidEscape;
final errInvalidNamedCapture : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidNamedCapture;
final errInvalidPerlOp : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidPerlOp;
final errInvalidRepeatOp : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidRepeatOp;
final errInvalidRepeatSize : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidRepeatSize;
final errInvalidUTF8 : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidUTF8;
final errMissingBracket : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errMissingBracket;
final errMissingParen : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errMissingParen;
final errMissingRepeatArgument : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errMissingRepeatArgument;
final errTrailingBackslash : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errTrailingBackslash;
final errUnexpectedParen : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errUnexpectedParen;
final errNestingDepth : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errNestingDepth;
final errLarge : stdgo._internal.regexp.syntax.Syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errLarge;
final foldCase : stdgo._internal.regexp.syntax.Syntax.Flags = stdgo._internal.regexp.syntax.Syntax.foldCase;
final literal = stdgo._internal.regexp.syntax.Syntax.literal;
final classNL = stdgo._internal.regexp.syntax.Syntax.classNL;
final dotNL = stdgo._internal.regexp.syntax.Syntax.dotNL;
final oneLine = stdgo._internal.regexp.syntax.Syntax.oneLine;
final nonGreedy = stdgo._internal.regexp.syntax.Syntax.nonGreedy;
final perlX = stdgo._internal.regexp.syntax.Syntax.perlX;
final unicodeGroups = stdgo._internal.regexp.syntax.Syntax.unicodeGroups;
final wasDollar = stdgo._internal.regexp.syntax.Syntax.wasDollar;
final simple = stdgo._internal.regexp.syntax.Syntax.simple;
final matchNL : stdgo._internal.regexp.syntax.Syntax.Flags = stdgo._internal.regexp.syntax.Syntax.matchNL;
final perl : stdgo._internal.regexp.syntax.Syntax.Flags = stdgo._internal.regexp.syntax.Syntax.perl;
final posix : stdgo._internal.regexp.syntax.Syntax.Flags = stdgo._internal.regexp.syntax.Syntax.posix;
final instAlt : stdgo._internal.regexp.syntax.Syntax.InstOp = stdgo._internal.regexp.syntax.Syntax.instAlt;
final instAltMatch = stdgo._internal.regexp.syntax.Syntax.instAltMatch;
final instCapture = stdgo._internal.regexp.syntax.Syntax.instCapture;
final instEmptyWidth = stdgo._internal.regexp.syntax.Syntax.instEmptyWidth;
final instMatch = stdgo._internal.regexp.syntax.Syntax.instMatch;
final instFail = stdgo._internal.regexp.syntax.Syntax.instFail;
final instNop = stdgo._internal.regexp.syntax.Syntax.instNop;
final instRune = stdgo._internal.regexp.syntax.Syntax.instRune;
final instRune1 = stdgo._internal.regexp.syntax.Syntax.instRune1;
final instRuneAny = stdgo._internal.regexp.syntax.Syntax.instRuneAny;
final instRuneAnyNotNL = stdgo._internal.regexp.syntax.Syntax.instRuneAnyNotNL;
final emptyBeginLine : stdgo._internal.regexp.syntax.Syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax.emptyBeginLine;
final emptyEndLine = stdgo._internal.regexp.syntax.Syntax.emptyEndLine;
final emptyBeginText = stdgo._internal.regexp.syntax.Syntax.emptyBeginText;
final emptyEndText = stdgo._internal.regexp.syntax.Syntax.emptyEndText;
final emptyWordBoundary = stdgo._internal.regexp.syntax.Syntax.emptyWordBoundary;
final emptyNoWordBoundary = stdgo._internal.regexp.syntax.Syntax.emptyNoWordBoundary;
final opNoMatch : stdgo._internal.regexp.syntax.Syntax.Op = stdgo._internal.regexp.syntax.Syntax.opNoMatch;
final opEmptyMatch = stdgo._internal.regexp.syntax.Syntax.opEmptyMatch;
final opLiteral = stdgo._internal.regexp.syntax.Syntax.opLiteral;
final opCharClass = stdgo._internal.regexp.syntax.Syntax.opCharClass;
final opAnyCharNotNL = stdgo._internal.regexp.syntax.Syntax.opAnyCharNotNL;
final opAnyChar = stdgo._internal.regexp.syntax.Syntax.opAnyChar;
final opBeginLine = stdgo._internal.regexp.syntax.Syntax.opBeginLine;
final opEndLine = stdgo._internal.regexp.syntax.Syntax.opEndLine;
final opBeginText = stdgo._internal.regexp.syntax.Syntax.opBeginText;
final opEndText = stdgo._internal.regexp.syntax.Syntax.opEndText;
final opWordBoundary = stdgo._internal.regexp.syntax.Syntax.opWordBoundary;
final opNoWordBoundary = stdgo._internal.regexp.syntax.Syntax.opNoWordBoundary;
final opCapture = stdgo._internal.regexp.syntax.Syntax.opCapture;
final opStar = stdgo._internal.regexp.syntax.Syntax.opStar;
final opPlus = stdgo._internal.regexp.syntax.Syntax.opPlus;
final opQuest = stdgo._internal.regexp.syntax.Syntax.opQuest;
final opRepeat = stdgo._internal.regexp.syntax.Syntax.opRepeat;
final opConcat = stdgo._internal.regexp.syntax.Syntax.opConcat;
final opAlternate = stdgo._internal.regexp.syntax.Syntax.opAlternate;
@:forward @:forward.new abstract T_patchList(stdgo._internal.regexp.syntax.Syntax.T_patchList) from stdgo._internal.regexp.syntax.Syntax.T_patchList to stdgo._internal.regexp.syntax.Syntax.T_patchList {

}
@:forward @:forward.new abstract T_frag(stdgo._internal.regexp.syntax.Syntax.T_frag) from stdgo._internal.regexp.syntax.Syntax.T_frag to stdgo._internal.regexp.syntax.Syntax.T_frag {

}
@:forward @:forward.new abstract T_compiler(stdgo._internal.regexp.syntax.Syntax.T_compiler) from stdgo._internal.regexp.syntax.Syntax.T_compiler to stdgo._internal.regexp.syntax.Syntax.T_compiler {

}
@:forward @:forward.new abstract Error(stdgo._internal.regexp.syntax.Syntax.Error) from stdgo._internal.regexp.syntax.Syntax.Error to stdgo._internal.regexp.syntax.Syntax.Error {

}
@:forward @:forward.new abstract T_parser(stdgo._internal.regexp.syntax.Syntax.T_parser) from stdgo._internal.regexp.syntax.Syntax.T_parser to stdgo._internal.regexp.syntax.Syntax.T_parser {

}
@:forward @:forward.new abstract T_charGroup(stdgo._internal.regexp.syntax.Syntax.T_charGroup) from stdgo._internal.regexp.syntax.Syntax.T_charGroup to stdgo._internal.regexp.syntax.Syntax.T_charGroup {

}
@:forward @:forward.new abstract T_ranges(stdgo._internal.regexp.syntax.Syntax.T_ranges) from stdgo._internal.regexp.syntax.Syntax.T_ranges to stdgo._internal.regexp.syntax.Syntax.T_ranges {

}
@:forward @:forward.new abstract T_parseTest(stdgo._internal.regexp.syntax.Syntax.T_parseTest) from stdgo._internal.regexp.syntax.Syntax.T_parseTest to stdgo._internal.regexp.syntax.Syntax.T_parseTest {

}
@:forward @:forward.new abstract Prog(stdgo._internal.regexp.syntax.Syntax.Prog) from stdgo._internal.regexp.syntax.Syntax.Prog to stdgo._internal.regexp.syntax.Syntax.Prog {

}
@:forward @:forward.new abstract Inst(stdgo._internal.regexp.syntax.Syntax.Inst) from stdgo._internal.regexp.syntax.Syntax.Inst to stdgo._internal.regexp.syntax.Syntax.Inst {

}
@:forward @:forward.new abstract Regexp(stdgo._internal.regexp.syntax.Syntax.Regexp) from stdgo._internal.regexp.syntax.Syntax.Regexp to stdgo._internal.regexp.syntax.Syntax.Regexp {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.regexp.syntax.Syntax.T__struct_0_asInterface) from stdgo._internal.regexp.syntax.Syntax.T__struct_0_asInterface to stdgo._internal.regexp.syntax.Syntax.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.regexp.syntax.Syntax.T__struct_0_static_extension) from stdgo._internal.regexp.syntax.Syntax.T__struct_0_static_extension to stdgo._internal.regexp.syntax.Syntax.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.regexp.syntax.Syntax.T__struct_0;
@:forward @:forward.new abstract T__struct_1_asInterface(stdgo._internal.regexp.syntax.Syntax.T__struct_1_asInterface) from stdgo._internal.regexp.syntax.Syntax.T__struct_1_asInterface to stdgo._internal.regexp.syntax.Syntax.T__struct_1_asInterface {

}
@:forward @:forward.new abstract T__struct_1_static_extension(stdgo._internal.regexp.syntax.Syntax.T__struct_1_static_extension) from stdgo._internal.regexp.syntax.Syntax.T__struct_1_static_extension to stdgo._internal.regexp.syntax.Syntax.T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.regexp.syntax.Syntax.T__struct_1;
@:forward @:forward.new abstract T__struct_2_asInterface(stdgo._internal.regexp.syntax.Syntax.T__struct_2_asInterface) from stdgo._internal.regexp.syntax.Syntax.T__struct_2_asInterface to stdgo._internal.regexp.syntax.Syntax.T__struct_2_asInterface {

}
@:forward @:forward.new abstract T__struct_2_static_extension(stdgo._internal.regexp.syntax.Syntax.T__struct_2_static_extension) from stdgo._internal.regexp.syntax.Syntax.T__struct_2_static_extension to stdgo._internal.regexp.syntax.Syntax.T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.regexp.syntax.Syntax.T__struct_2;
typedef ErrorCode = stdgo._internal.regexp.syntax.Syntax.ErrorCode;
typedef Flags = stdgo._internal.regexp.syntax.Syntax.Flags;
typedef InstOp = stdgo._internal.regexp.syntax.Syntax.InstOp;
typedef EmptyOp = stdgo._internal.regexp.syntax.Syntax.EmptyOp;
typedef Op = stdgo._internal.regexp.syntax.Syntax.Op;
/**
    Compile compiles the regexp into a program to be executed.
    The regexp should have been simplified already (returned from re.Simplify).
**/
function compile(re:Regexp):stdgo.Tuple<Prog, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax.compile(re);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Parse parses a regular expression string s, controlled by the specified
    Flags, and returns a regular expression parse tree. The syntax is
    described in the top-level comment.
**/
function parse(s:String, flags:Flags):stdgo.Tuple<Regexp, stdgo.Error> {
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax.parse(s, flags);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function testParseSimple(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.syntax.Syntax.testParseSimple(t);
    }
function testParseFoldCase(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.syntax.Syntax.testParseFoldCase(t);
    }
function testParseLiteral(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.syntax.Syntax.testParseLiteral(t);
    }
function testParseMatchNL(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.syntax.Syntax.testParseMatchNL(t);
    }
function testParseNoMatchNL(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.syntax.Syntax.testParseNoMatchNL(t);
    }
function testFoldConstants(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.syntax.Syntax.testFoldConstants(t);
    }
function testAppendRangeCollapse(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.syntax.Syntax.testAppendRangeCollapse(t);
    }
function testParseInvalidRegexps(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.syntax.Syntax.testParseInvalidRegexps(t);
    }
function testToStringEquivalentParse(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.syntax.Syntax.testToStringEquivalentParse(t);
    }
/**
    EmptyOpContext returns the zero-width assertions
    satisfied at the position between the runes r1 and r2.
    Passing r1 == -1 indicates that the position is
    at the beginning of the text.
    Passing r2 == -1 indicates that the position is
    at the end of the text.
**/
function emptyOpContext(r1:StdTypes.Int, r2:StdTypes.Int):EmptyOp {
        return stdgo._internal.regexp.syntax.Syntax.emptyOpContext(r1, r2);
    }
/**
    IsWordChar reports whether r is considered a “word character”
    during the evaluation of the \b and \B zero-width assertions.
    These assertions are ASCII-only: the word characters are [A-Za-z0-9_].
**/
function isWordChar(r:StdTypes.Int):Bool {
        return stdgo._internal.regexp.syntax.Syntax.isWordChar(r);
    }
function testCompile(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.syntax.Syntax.testCompile(t);
    }
function benchmarkEmptyOpContext(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.syntax.Syntax.benchmarkEmptyOpContext(b);
    }
function benchmarkIsWordChar(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.regexp.syntax.Syntax.benchmarkIsWordChar(b);
    }
function testSimplify(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.regexp.syntax.Syntax.testSimplify(t);
    }
@:forward @:forward.new abstract T_patchList_asInterface(stdgo._internal.regexp.syntax.Syntax.T_patchList_asInterface) from stdgo._internal.regexp.syntax.Syntax.T_patchList_asInterface to stdgo._internal.regexp.syntax.Syntax.T_patchList_asInterface {

}
@:forward @:forward.new abstract T_patchList_static_extension(stdgo._internal.regexp.syntax.Syntax.T_patchList_static_extension) from stdgo._internal.regexp.syntax.Syntax.T_patchList_static_extension to stdgo._internal.regexp.syntax.Syntax.T_patchList_static_extension {

}
@:forward @:forward.new abstract T_compiler_asInterface(stdgo._internal.regexp.syntax.Syntax.T_compiler_asInterface) from stdgo._internal.regexp.syntax.Syntax.T_compiler_asInterface to stdgo._internal.regexp.syntax.Syntax.T_compiler_asInterface {

}
@:forward @:forward.new abstract T_compiler_static_extension(stdgo._internal.regexp.syntax.Syntax.T_compiler_static_extension) from stdgo._internal.regexp.syntax.Syntax.T_compiler_static_extension to stdgo._internal.regexp.syntax.Syntax.T_compiler_static_extension {

}
@:forward @:forward.new abstract Error_asInterface(stdgo._internal.regexp.syntax.Syntax.Error_asInterface) from stdgo._internal.regexp.syntax.Syntax.Error_asInterface to stdgo._internal.regexp.syntax.Syntax.Error_asInterface {

}
@:forward @:forward.new abstract Error_static_extension(stdgo._internal.regexp.syntax.Syntax.Error_static_extension) from stdgo._internal.regexp.syntax.Syntax.Error_static_extension to stdgo._internal.regexp.syntax.Syntax.Error_static_extension {

}
@:forward @:forward.new abstract T_parser_asInterface(stdgo._internal.regexp.syntax.Syntax.T_parser_asInterface) from stdgo._internal.regexp.syntax.Syntax.T_parser_asInterface to stdgo._internal.regexp.syntax.Syntax.T_parser_asInterface {

}
@:forward @:forward.new abstract T_parser_static_extension(stdgo._internal.regexp.syntax.Syntax.T_parser_static_extension) from stdgo._internal.regexp.syntax.Syntax.T_parser_static_extension to stdgo._internal.regexp.syntax.Syntax.T_parser_static_extension {

}
@:forward @:forward.new abstract T_ranges_asInterface(stdgo._internal.regexp.syntax.Syntax.T_ranges_asInterface) from stdgo._internal.regexp.syntax.Syntax.T_ranges_asInterface to stdgo._internal.regexp.syntax.Syntax.T_ranges_asInterface {

}
@:forward @:forward.new abstract T_ranges_static_extension(stdgo._internal.regexp.syntax.Syntax.T_ranges_static_extension) from stdgo._internal.regexp.syntax.Syntax.T_ranges_static_extension to stdgo._internal.regexp.syntax.Syntax.T_ranges_static_extension {

}
@:forward @:forward.new abstract Prog_asInterface(stdgo._internal.regexp.syntax.Syntax.Prog_asInterface) from stdgo._internal.regexp.syntax.Syntax.Prog_asInterface to stdgo._internal.regexp.syntax.Syntax.Prog_asInterface {

}
@:forward @:forward.new abstract Prog_static_extension(stdgo._internal.regexp.syntax.Syntax.Prog_static_extension) from stdgo._internal.regexp.syntax.Syntax.Prog_static_extension to stdgo._internal.regexp.syntax.Syntax.Prog_static_extension {

}
@:forward @:forward.new abstract Inst_asInterface(stdgo._internal.regexp.syntax.Syntax.Inst_asInterface) from stdgo._internal.regexp.syntax.Syntax.Inst_asInterface to stdgo._internal.regexp.syntax.Syntax.Inst_asInterface {

}
@:forward @:forward.new abstract Inst_static_extension(stdgo._internal.regexp.syntax.Syntax.Inst_static_extension) from stdgo._internal.regexp.syntax.Syntax.Inst_static_extension to stdgo._internal.regexp.syntax.Syntax.Inst_static_extension {

}
@:forward @:forward.new abstract Regexp_asInterface(stdgo._internal.regexp.syntax.Syntax.Regexp_asInterface) from stdgo._internal.regexp.syntax.Syntax.Regexp_asInterface to stdgo._internal.regexp.syntax.Syntax.Regexp_asInterface {

}
@:forward @:forward.new abstract Regexp_static_extension(stdgo._internal.regexp.syntax.Syntax.Regexp_static_extension) from stdgo._internal.regexp.syntax.Syntax.Regexp_static_extension to stdgo._internal.regexp.syntax.Syntax.Regexp_static_extension {

}
@:forward @:forward.new abstract ErrorCode_asInterface(stdgo._internal.regexp.syntax.Syntax.ErrorCode_asInterface) from stdgo._internal.regexp.syntax.Syntax.ErrorCode_asInterface to stdgo._internal.regexp.syntax.Syntax.ErrorCode_asInterface {

}
@:forward @:forward.new abstract ErrorCode_static_extension(stdgo._internal.regexp.syntax.Syntax.ErrorCode_static_extension) from stdgo._internal.regexp.syntax.Syntax.ErrorCode_static_extension to stdgo._internal.regexp.syntax.Syntax.ErrorCode_static_extension {

}
@:forward @:forward.new abstract InstOp_asInterface(stdgo._internal.regexp.syntax.Syntax.InstOp_asInterface) from stdgo._internal.regexp.syntax.Syntax.InstOp_asInterface to stdgo._internal.regexp.syntax.Syntax.InstOp_asInterface {

}
@:forward @:forward.new abstract InstOp_static_extension(stdgo._internal.regexp.syntax.Syntax.InstOp_static_extension) from stdgo._internal.regexp.syntax.Syntax.InstOp_static_extension to stdgo._internal.regexp.syntax.Syntax.InstOp_static_extension {

}
@:forward @:forward.new abstract Op_asInterface(stdgo._internal.regexp.syntax.Syntax.Op_asInterface) from stdgo._internal.regexp.syntax.Syntax.Op_asInterface to stdgo._internal.regexp.syntax.Syntax.Op_asInterface {

}
@:forward @:forward.new abstract Op_static_extension(stdgo._internal.regexp.syntax.Syntax.Op_static_extension) from stdgo._internal.regexp.syntax.Syntax.Op_static_extension to stdgo._internal.regexp.syntax.Syntax.Op_static_extension {

}
