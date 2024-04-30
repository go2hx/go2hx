package stdgo.regexp.syntax;
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
@:invalid typedef T_patchList = Dynamic;
@:invalid typedef T_frag = Dynamic;
@:invalid typedef T_compiler = Dynamic;
@:invalid typedef Error = Dynamic;
@:invalid typedef T_parser = Dynamic;
@:invalid typedef T_charGroup = Dynamic;
@:invalid typedef T_ranges = Dynamic;
@:invalid typedef T_parseTest = Dynamic;
@:invalid typedef Prog = Dynamic;
@:invalid typedef Inst = Dynamic;
@:invalid typedef Regexp = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.regexp.syntax.Syntax.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.regexp.syntax.Syntax.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
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
inline function compile(re:Regexp):stdgo.Tuple<Prog, stdgo.Error> throw "not implemented";
/**
    Parse parses a regular expression string s, controlled by the specified
    Flags, and returns a regular expression parse tree. The syntax is
    described in the top-level comment.
**/
inline function parse(s:String, flags:Flags):stdgo.Tuple<Regexp, stdgo.Error> throw "not implemented";
inline function testParseSimple(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testParseFoldCase(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testParseLiteral(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testParseMatchNL(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testParseNoMatchNL(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFoldConstants(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testAppendRangeCollapse(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testParseInvalidRegexps(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testToStringEquivalentParse(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    EmptyOpContext returns the zero-width assertions
    satisfied at the position between the runes r1 and r2.
    Passing r1 == -1 indicates that the position is
    at the beginning of the text.
    Passing r2 == -1 indicates that the position is
    at the end of the text.
**/
inline function emptyOpContext(r1:Int, r2:Int):EmptyOp throw "not implemented";
/**
    IsWordChar reports whether r is considered a “word character”
    during the evaluation of the \b and \B zero-width assertions.
    These assertions are ASCII-only: the word characters are [A-Za-z0-9_].
**/
inline function isWordChar(r:Int):Bool throw "not implemented";
inline function testCompile(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function benchmarkEmptyOpContext(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function benchmarkIsWordChar(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testSimplify(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_patchList_asInterface = Dynamic;
@:invalid typedef T_patchList_static_extension = Dynamic;
@:invalid typedef T_compiler_asInterface = Dynamic;
@:invalid typedef T_compiler_static_extension = Dynamic;
@:invalid typedef Error_asInterface = Dynamic;
@:invalid typedef Error_static_extension = Dynamic;
@:invalid typedef T_parser_asInterface = Dynamic;
@:invalid typedef T_parser_static_extension = Dynamic;
@:invalid typedef T_ranges_asInterface = Dynamic;
@:invalid typedef T_ranges_static_extension = Dynamic;
@:invalid typedef Prog_asInterface = Dynamic;
@:invalid typedef Prog_static_extension = Dynamic;
@:invalid typedef Inst_asInterface = Dynamic;
@:invalid typedef Inst_static_extension = Dynamic;
@:invalid typedef Regexp_asInterface = Dynamic;
@:invalid typedef Regexp_static_extension = Dynamic;
@:invalid typedef ErrorCode_asInterface = Dynamic;
@:invalid typedef ErrorCode_static_extension = Dynamic;
@:invalid typedef InstOp_asInterface = Dynamic;
@:invalid typedef InstOp_static_extension = Dynamic;
@:invalid typedef Op_asInterface = Dynamic;
@:invalid typedef Op_static_extension = Dynamic;
