package stdgo.regexp.syntax;

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
private var __go2hxdoc__package:Bool;

private var _anyRuneNotNL:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _anyRune:Slice<GoInt32> = (null : Slice<GoInt32>);
private var __Op_index_0:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...20) (0 : GoUInt8)]);
private var _anyTable:Ref<stdgo.unicode.Unicode.RangeTable> = (null : Ref<stdgo.unicode.Unicode.RangeTable>);
private var _code1:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code2:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code3:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _perlGroup:GoMap<GoString, T_charGroup> = (null : GoMap<GoString, T_charGroup>);
private var _code4:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code5:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code6:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code7:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code8:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code9:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code10:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code11:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code12:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code13:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code14:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code15:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code16:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _code17:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _posixGroup:GoMap<GoString, T_charGroup> = (null : GoMap<GoString, T_charGroup>);
private var _instOpNames:Slice<GoString> = (null : Slice<GoString>);
private var _foldcaseTests:Slice<T_parseTest> = (null : Slice<T_parseTest>);
private var _literalTests:Slice<T_parseTest> = (null : Slice<T_parseTest>);
private var _matchnlTests:Slice<T_parseTest> = (null : Slice<T_parseTest>);
private var _nomatchnlTests:Slice<T_parseTest> = (null : Slice<T_parseTest>);
private var _opNames:Slice<GoString> = (null : Slice<GoString>);
private var _parseTests:Slice<T_parseTest> = (null : Slice<T_parseTest>);
private var _invalidRegexps:Slice<GoString> = (null : Slice<GoString>);
private var _onlyPerl:Slice<GoString> = (null : Slice<GoString>);
private var _onlyPOSIX:Slice<GoString> = (null : Slice<GoString>);
private var _compileTests:Slice<T__struct_0> = (null : Slice<T__struct_0>);
private var _simplifyTests:Slice<T__struct_1> = (null : Slice<T__struct_1>);
private final __Op_name_0:GoString = ("" : GoString);
private final __Op_name_1:GoString = ("" : GoString);

/**
	// Unexpected error
**/
final errInternalError:ErrorCode = (("" : GoString) : ErrorCode);

/**
	// Parse errors
**/
final errInvalidCharClass:ErrorCode = (("" : GoString) : ErrorCode);

final errInvalidCharRange:ErrorCode = (("" : GoString) : ErrorCode);
final errInvalidEscape:ErrorCode = (("" : GoString) : ErrorCode);
final errInvalidNamedCapture:ErrorCode = (("" : GoString) : ErrorCode);
final errInvalidPerlOp:ErrorCode = (("" : GoString) : ErrorCode);
final errInvalidRepeatOp:ErrorCode = (("" : GoString) : ErrorCode);
final errInvalidRepeatSize:ErrorCode = (("" : GoString) : ErrorCode);
final errInvalidUTF8:ErrorCode = (("" : GoString) : ErrorCode);
final errMissingBracket:ErrorCode = (("" : GoString) : ErrorCode);
final errMissingParen:ErrorCode = (("" : GoString) : ErrorCode);
final errMissingRepeatArgument:ErrorCode = (("" : GoString) : ErrorCode);
final errTrailingBackslash:ErrorCode = (("" : GoString) : ErrorCode);
final errUnexpectedParen:ErrorCode = (("" : GoString) : ErrorCode);
final errNestingDepth:ErrorCode = (("" : GoString) : ErrorCode);

/**
	// case-insensitive match
**/
final foldCase:Flags = ((0 : GoUInt16) : Flags);

/**
	// treat pattern as literal string
**/
final literal:Flags = ((0 : GoUInt16) : Flags);

/**
	// allow character classes like [^a-z] and [[:space:]] to match newline
**/
final classNL:Flags = ((0 : GoUInt16) : Flags);

/**
	// allow . to match newline
**/
final dotNL:Flags = ((0 : GoUInt16) : Flags);

/**
	// treat ^ and $ as only matching at beginning and end of text
**/
final oneLine:Flags = ((0 : GoUInt16) : Flags);

/**
	// make repetition operators default to non-greedy
**/
final nonGreedy:Flags = ((0 : GoUInt16) : Flags);

/**
	// allow Perl extensions
**/
final perlX:Flags = ((0 : GoUInt16) : Flags);

/**
	// allow \p{Han}, \P{Han} for Unicode group and negation
**/
final unicodeGroups:Flags = ((0 : GoUInt16) : Flags);

/**
	// regexp OpEndText was $, not \z
**/
final wasDollar:Flags = ((0 : GoUInt16) : Flags);

/**
	// regexp contains no counted repetition
**/
final simple:Flags = ((0 : GoUInt16) : Flags);

final matchNL:Flags = ((0 : GoUInt16) : Flags);

/**
	// as close to Perl as possible
**/
final perl:Flags = ((0 : GoUInt16) : Flags);

/**
	// POSIX syntax
**/
final posix:Flags = ((0 : GoUInt16) : Flags);

/**
	// Pseudo-ops for parsing stack.
**/
private final _opLeftParen:Op = ((0 : GoUInt8) : Op);

/**
	// Pseudo-ops for parsing stack.
**/
private final _opVerticalBar:InvalidType = null;

/**
	// maxHeight is the maximum height of a regexp parse tree.
	// It is somewhat arbitrarily chosen, but the idea is to be large enough
	// that no one will actually hit in real use but at the same time small enough
	// that recursion on the Regexp tree will not hit the 1GB Go stack limit.
	// The maximum amount of stack for a single recursive frame is probably
	// closer to 1kB, so this could potentially be raised, but it seems unlikely
	// that people have regexps nested even this deeply.
	// We ran a test on Google's C++ code base and turned up only
	// a single use case with depth > 100; it had depth 128.
	// Using depth 1000 should be plenty of margin.
	// As an optimization, we don't even bother calculating heights
	// until we've allocated at least maxHeight Regexp structures.
**/
private final _maxHeight:GoUInt64 = (0 : GoUInt64);

/**
	// minimum and maximum runes involved in folding.
	// checked during test.
**/
private final _minFold:GoUInt64 = (0 : GoUInt64);

private final _maxFold:GoUInt64 = (0 : GoUInt64);
private final _testFlags:Flags = ((0 : GoUInt16) : Flags);
final instAlt:InstOp = ((0 : GoUInt8) : InstOp);
final instAltMatch:InstOp = ((0 : GoUInt8) : InstOp);
final instCapture:InstOp = ((0 : GoUInt8) : InstOp);
final instEmptyWidth:InstOp = ((0 : GoUInt8) : InstOp);
final instMatch:InstOp = ((0 : GoUInt8) : InstOp);
final instFail:InstOp = ((0 : GoUInt8) : InstOp);
final instNop:InstOp = ((0 : GoUInt8) : InstOp);
final instRune:InstOp = ((0 : GoUInt8) : InstOp);
final instRune1:InstOp = ((0 : GoUInt8) : InstOp);
final instRuneAny:InstOp = ((0 : GoUInt8) : InstOp);
final instRuneAnyNotNL:InstOp = ((0 : GoUInt8) : InstOp);
final emptyBeginLine:EmptyOp = ((0 : GoUInt8) : EmptyOp);
final emptyEndLine:EmptyOp = ((0 : GoUInt8) : EmptyOp);
final emptyBeginText:EmptyOp = ((0 : GoUInt8) : EmptyOp);
final emptyEndText:EmptyOp = ((0 : GoUInt8) : EmptyOp);
final emptyWordBoundary:EmptyOp = ((0 : GoUInt8) : EmptyOp);
final emptyNoWordBoundary:EmptyOp = ((0 : GoUInt8) : EmptyOp);
private final _noMatch:GoUInt64 = (0 : GoUInt64);

/**
	// matches no strings
**/
final opNoMatch:Op = ((0 : GoUInt8) : Op);

/**
	// matches empty string
**/
final opEmptyMatch:Op = ((0 : GoUInt8) : Op);

/**
	// matches Runes sequence
**/
final opLiteral:Op = ((0 : GoUInt8) : Op);

/**
	// matches Runes interpreted as range pair list
**/
final opCharClass:Op = ((0 : GoUInt8) : Op);

/**
	// matches any character except newline
**/
final opAnyCharNotNL:Op = ((0 : GoUInt8) : Op);

/**
	// matches any character
**/
final opAnyChar:Op = ((0 : GoUInt8) : Op);

/**
	// matches empty string at beginning of line
**/
final opBeginLine:Op = ((0 : GoUInt8) : Op);

/**
	// matches empty string at end of line
**/
final opEndLine:Op = ((0 : GoUInt8) : Op);

/**
	// matches empty string at beginning of text
**/
final opBeginText:Op = ((0 : GoUInt8) : Op);

/**
	// matches empty string at end of text
**/
final opEndText:Op = ((0 : GoUInt8) : Op);

/**
	// matches word boundary `\b`
**/
final opWordBoundary:Op = ((0 : GoUInt8) : Op);

/**
	// matches word non-boundary `\B`
**/
final opNoWordBoundary:Op = ((0 : GoUInt8) : Op);

/**
	// capturing subexpression with index Cap, optional name Name
**/
final opCapture:Op = ((0 : GoUInt8) : Op);

/**
	// matches Sub[0] zero or more times
**/
final opStar:Op = ((0 : GoUInt8) : Op);

/**
	// matches Sub[0] one or more times
**/
final opPlus:Op = ((0 : GoUInt8) : Op);

/**
	// matches Sub[0] zero or one times
**/
final opQuest:Op = ((0 : GoUInt8) : Op);

/**
	// matches Sub[0] at least Min times, at most Max (Max == -1 is no limit)
**/
final opRepeat:Op = ((0 : GoUInt8) : Op);

/**
	// matches concatenation of Subs
**/
final opConcat:Op = ((0 : GoUInt8) : Op);

/**
	// matches alternation of Subs
**/
final opAlternate:Op = ((0 : GoUInt8) : Op);

/**
	// where pseudo-ops start
**/
private final _opPseudo:Op = ((0 : GoUInt8) : Op);

private final _meta:GoString = ("" : GoString);

/**
	// A patchList is a list of instruction pointers that need to be filled in (patched).
	// Because the pointers haven't been filled in yet, we can reuse their storage
	// to hold the list. It's kind of sleazy, but works well in practice.
	// See https://swtch.com/~rsc/regexp/regexp1.html for inspiration.
	//
	// These aren't really pointers: they're integers, so we can reinterpret them
	// this way without using package unsafe. A value l.head denotes
	// p.inst[l.head>>1].Out (l.head&1==0) or .Arg (l.head&1==1).
	// head == 0 denotes the empty list, okay because we start every program
	// with a fail instruction, so we'll never want to point at its output link.
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_patchList_static_extension) private class T_patchList {
	public var _head:GoUInt32 = 0;
	public var _tail:GoUInt32 = 0;

	public function new(?_head:GoUInt32, ?_tail:GoUInt32) {
		if (_head != null)
			this._head = _head;
		if (_tail != null)
			this._tail = _tail;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_patchList(_head, _tail);
	}
}

/**
	// A frag represents a compiled program fragment.
**/
@:structInit private class T_frag {
	public var _i:GoUInt32 = 0;
	public var _out:T_patchList = ({} : T_patchList);
	public var _nullable:Bool = false;

	public function new(?_i:GoUInt32, ?_out:T_patchList, ?_nullable:Bool) {
		if (_i != null)
			this._i = _i;
		if (_out != null)
			this._out = _out;
		if (_nullable != null)
			this._nullable = _nullable;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_frag(_i, _out, _nullable);
	}
}

@:structInit @:using(stdgo.regexp.syntax.Syntax.T_compiler_static_extension) private class T_compiler {
	public var _p:Ref<Prog> = (null : Ref<Prog>);

	public function new(?_p:Ref<Prog>) {
		if (_p != null)
			this._p = _p;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_compiler(_p);
	}
}

/**
	// An Error describes a failure to parse a regular expression
	// and gives the offending expression.
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_error_static_extension) class T_error {
	public var code:ErrorCode = (("" : GoString) : ErrorCode);
	public var expr:GoString = "";

	public function new(?code:ErrorCode, ?expr:GoString) {
		if (code != null)
			this.code = code;
		if (expr != null)
			this.expr = expr;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_error(code, expr);
	}
}

@:structInit @:using(stdgo.regexp.syntax.Syntax.T_parser_static_extension) private class T_parser {
	public var _flags:Flags = ((0 : GoUInt16) : Flags);
	public var _stack:Slice<Ref<Regexp>> = (null : Slice<Ref<Regexp>>);
	public var _free:Ref<Regexp> = (null : Ref<Regexp>);
	public var _numCap:GoInt = 0;
	public var _wholeRegexp:GoString = "";
	public var _tmpClass:Slice<GoInt32> = (null : Slice<GoInt32>);
	public var _numRegexp:GoInt = 0;
	public var _height:GoMap<Ref<Regexp>, GoInt> = (null : GoMap<Ref<Regexp>, GoInt>);

	public function new(?_flags:Flags, ?_stack:Slice<Ref<Regexp>>, ?_free:Ref<Regexp>, ?_numCap:GoInt, ?_wholeRegexp:GoString, ?_tmpClass:Slice<GoInt32>,
			?_numRegexp:GoInt, ?_height:GoMap<Ref<Regexp>, GoInt>) {
		if (_flags != null)
			this._flags = _flags;
		if (_stack != null)
			this._stack = _stack;
		if (_free != null)
			this._free = _free;
		if (_numCap != null)
			this._numCap = _numCap;
		if (_wholeRegexp != null)
			this._wholeRegexp = _wholeRegexp;
		if (_tmpClass != null)
			this._tmpClass = _tmpClass;
		if (_numRegexp != null)
			this._numRegexp = _numRegexp;
		if (_height != null)
			this._height = _height;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_parser(_flags, _stack, _free, _numCap, _wholeRegexp, _tmpClass, _numRegexp, _height);
	}
}

@:structInit private class T_charGroup {
	public var _sign:GoInt = 0;
	public var _class:Slice<GoInt32> = (null : Slice<GoInt32>);

	public function new(?_sign:GoInt, ?_class:Slice<GoInt32>) {
		if (_sign != null)
			this._sign = _sign;
		if (_class != null)
			this._class = _class;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_charGroup(_sign, _class);
	}
}

/**
	// ranges implements sort.Interface on a []rune.
	// The choice of receiver type definition is strange
	// but avoids an allocation since we already have
	// a *[]rune.
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_ranges_static_extension) private class T_ranges {
	public var _p:Ref<Slice<GoInt32>> = null;

	public function new(?_p:Ref<Slice<GoInt32>>) {
		if (_p != null)
			this._p = _p;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_ranges(_p);
	}
}

@:structInit private class T_parseTest {
	public var regexp:GoString = "";
	public var dump:GoString = "";

	public function new(?regexp:GoString, ?dump:GoString) {
		if (regexp != null)
			this.regexp = regexp;
		if (dump != null)
			this.dump = dump;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_parseTest(regexp, dump);
	}
}

/**
	// A Prog is a compiled regular expression program.
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.Prog_static_extension) class Prog {
	public var inst:Slice<Inst> = (null : Slice<Inst>);
	public var start:GoInt = 0;
	public var numCap:GoInt = 0;

	public function new(?inst:Slice<Inst>, ?start:GoInt, ?numCap:GoInt) {
		if (inst != null)
			this.inst = inst;
		if (start != null)
			this.start = start;
		if (numCap != null)
			this.numCap = numCap;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Prog(inst, start, numCap);
	}
}

/**
	// An Inst is a single instruction in a regular expression program.
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.Inst_static_extension) class Inst {
	public var op:InstOp = ((0 : GoUInt8) : InstOp);
	public var out:GoUInt32 = 0;
	public var arg:GoUInt32 = 0;
	public var rune:Slice<GoInt32> = (null : Slice<GoInt32>);

	public function new(?op:InstOp, ?out:GoUInt32, ?arg:GoUInt32, ?rune:Slice<GoInt32>) {
		if (op != null)
			this.op = op;
		if (out != null)
			this.out = out;
		if (arg != null)
			this.arg = arg;
		if (rune != null)
			this.rune = rune;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Inst(op, out, arg, rune);
	}
}

/**
	// A Regexp is a node in a regular expression syntax tree.
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.Regexp_static_extension) class Regexp {
	public var op:Op = ((0 : GoUInt8) : Op);
	public var flags:Flags = ((0 : GoUInt16) : Flags);
	public var sub:Slice<Ref<Regexp>> = (null : Slice<Ref<Regexp>>);
	public var sub0:GoArray<Ref<Regexp>> = new GoArray<Ref<Regexp>>(...[for (i in 0...1) (null : Ref<Regexp>)]);
	public var rune:Slice<GoInt32> = (null : Slice<GoInt32>);
	public var rune0:GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0...2) (0 : GoInt32)]);
	public var min:GoInt = 0;
	public var max:GoInt = 0;
	public var cap:GoInt = 0;
	public var name:GoString = "";

	public function new(?op:Op, ?flags:Flags, ?sub:Slice<Ref<Regexp>>, ?sub0:GoArray<Ref<Regexp>>, ?rune:Slice<GoInt32>, ?rune0:GoArray<GoInt32>, ?min:GoInt,
			?max:GoInt, ?cap:GoInt, ?name:GoString) {
		if (op != null)
			this.op = op;
		if (flags != null)
			this.flags = flags;
		if (sub != null)
			this.sub = sub;
		if (sub0 != null)
			this.sub0 = sub0;
		if (rune != null)
			this.rune = rune;
		if (rune0 != null)
			this.rune0 = rune0;
		if (min != null)
			this.min = min;
		if (max != null)
			this.max = max;
		if (cap != null)
			this.cap = cap;
		if (name != null)
			this.name = name;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Regexp(op, flags, sub, sub0, rune, rune0, min, max, cap, name);
	}
}

class T__struct_0_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_0>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.syntax.Syntax.T__struct_0_asInterface) class T__struct_0_static_extension {}

@:local @:using(stdgo.regexp.syntax.Syntax.T__struct_0_static_extension) private typedef T__struct_0 = {
	public var regexp:GoString;
	public var prog:GoString;
};

class T__struct_1_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_1>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.syntax.Syntax.T__struct_1_asInterface) class T__struct_1_static_extension {}

@:local @:using(stdgo.regexp.syntax.Syntax.T__struct_1_static_extension) private typedef T__struct_1 = {
	public var regexp:GoString;
	public var simple:GoString;
};

/**
	// An ErrorCode describes a failure to parse a regular expression.
**/
@:named @:using(stdgo.regexp.syntax.Syntax.ErrorCode_static_extension) typedef ErrorCode = GoString;

/**
	// Flags control the behavior of the parser and record information about regexp context.
**/
@:named typedef Flags = GoUInt16;

/**
	// An InstOp is an instruction opcode.
**/
@:named @:using(stdgo.regexp.syntax.Syntax.InstOp_static_extension) typedef InstOp = GoUInt8;

/**
	// An EmptyOp specifies a kind or mixture of zero-width assertions.
**/
@:named typedef EmptyOp = GoUInt8;

/**
	// An Op is a single regular expression operator.
**/
@:named @:using(stdgo.regexp.syntax.Syntax.Op_static_extension) typedef Op = GoUInt8;

private function _makePatchList(_n:GoUInt32):T_patchList
	throw "regexp.syntax._makePatchList is not yet implemented";

/**
	// Compile compiles the regexp into a program to be executed.
	// The regexp should have been simplified already (returned from re.Simplify).
**/
function compile(_re:Ref<Regexp>):{var _0:Ref<Prog>; var _1:Error;}
	throw "regexp.syntax.compile is not yet implemented";

/**
	// minFoldRune returns the minimum rune fold-equivalent to r.
**/
private function _minFoldRune(_r:GoRune):GoRune
	throw "regexp.syntax._minFoldRune is not yet implemented";

/**
	// repeatIsValid reports whether the repetition re is valid.
	// Valid means that the combination of the top-level repetition
	// and any inner repetitions does not exceed n copies of the
	// innermost thing.
	// This function rewalks the regexp tree and is called for every repetition,
	// so we have to worry about inducing quadratic behavior in the parser.
	// We avoid this by only calling repeatIsValid when min or max >= 2.
	// In that case the depth of any >= 2 nesting can only get to 9 without
	// triggering a parse error, so each subtree can only be rewalked 9 times.
**/
private function _repeatIsValid(_re:Ref<Regexp>, _n:GoInt):Bool
	throw "regexp.syntax._repeatIsValid is not yet implemented";

/**
	// cleanAlt cleans re for eventual inclusion in an alternation.
**/
private function _cleanAlt(_re:Ref<Regexp>):Void
	throw "regexp.syntax._cleanAlt is not yet implemented";

private function _literalRegexp(_s:GoString, _flags:Flags):Ref<Regexp>
	throw "regexp.syntax._literalRegexp is not yet implemented";

/**
	// Parse parses a regular expression string s, controlled by the specified
	// Flags, and returns a regular expression parse tree. The syntax is
	// described in the top-level comment.
**/
function parse(_s:GoString, _flags:Flags):{var _0:Ref<Regexp>; var _1:Error;}
	throw "regexp.syntax.parse is not yet implemented";

private function _parse(_s:GoString, _flags:Flags):{var _0:Ref<Regexp>; var _1:Error;}
	throw "regexp.syntax._parse is not yet implemented";

/**
	// isValidCaptureName reports whether name
	// is a valid capture name: [A-Za-z0-9_]+.
	// PCRE limits names to 32 bytes.
	// Python rejects names starting with digits.
	// We don't enforce either of those.
**/
private function _isValidCaptureName(_name:GoString):Bool
	throw "regexp.syntax._isValidCaptureName is not yet implemented";

/**
	// can this be represented as a character class?
	// single-rune literal string, char class, ., and .|\n.
**/
private function _isCharClass(_re:Ref<Regexp>):Bool
	throw "regexp.syntax._isCharClass is not yet implemented";

/**
	// does re match r?
**/
private function _matchRune(_re:Ref<Regexp>, _r:GoRune):Bool
	throw "regexp.syntax._matchRune is not yet implemented";

/**
	// mergeCharClass makes dst = dst|src.
	// The caller must ensure that dst.Op >= src.Op,
	// to reduce the amount of copying.
**/
private function _mergeCharClass(_dst:Ref<Regexp>, _src:Ref<Regexp>):Void
	throw "regexp.syntax._mergeCharClass is not yet implemented";

/**
	// unicodeTable returns the unicode.RangeTable identified by name
	// and the table of additional fold-equivalent code points.
**/
private function _unicodeTable(_name:GoString):{var _0:Ref<stdgo.unicode.Unicode.RangeTable>; var _1:Ref<stdgo.unicode.Unicode.RangeTable>;}
	throw "regexp.syntax._unicodeTable is not yet implemented";

/**
	// cleanClass sorts the ranges (pairs of elements of r),
	// merges them, and eliminates duplicates.
**/
private function _cleanClass(_rp:Ref<Slice<GoRune>>):Slice<GoRune>
	throw "regexp.syntax._cleanClass is not yet implemented";

/**
	// appendLiteral returns the result of appending the literal x to the class r.
**/
private function _appendLiteral(_r:Slice<GoRune>, _x:GoRune, _flags:Flags):Slice<GoRune>
	throw "regexp.syntax._appendLiteral is not yet implemented";

/**
	// appendRange returns the result of appending the range lo-hi to the class r.
**/
private function _appendRange(_r:Slice<GoRune>, _lo:GoRune, _hi:GoRune):Slice<GoRune>
	throw "regexp.syntax._appendRange is not yet implemented";

/**
	// appendFoldedRange returns the result of appending the range lo-hi
	// and its case folding-equivalent runes to the class r.
**/
private function _appendFoldedRange(_r:Slice<GoRune>, _lo:GoRune, _hi:GoRune):Slice<GoRune>
	throw "regexp.syntax._appendFoldedRange is not yet implemented";

/**
	// appendClass returns the result of appending the class x to the class r.
	// It assume x is clean.
**/
private function _appendClass(_r:Slice<GoRune>, _x:Slice<GoRune>):Slice<GoRune>
	throw "regexp.syntax._appendClass is not yet implemented";

/**
	// appendFolded returns the result of appending the case folding of the class x to the class r.
**/
private function _appendFoldedClass(_r:Slice<GoRune>, _x:Slice<GoRune>):Slice<GoRune>
	throw "regexp.syntax._appendFoldedClass is not yet implemented";

/**
	// appendNegatedClass returns the result of appending the negation of the class x to the class r.
	// It assumes x is clean.
**/
private function _appendNegatedClass(_r:Slice<GoRune>, _x:Slice<GoRune>):Slice<GoRune>
	throw "regexp.syntax._appendNegatedClass is not yet implemented";

/**
	// appendTable returns the result of appending x to the class r.
**/
private function _appendTable(_r:Slice<GoRune>, _x:Ref<stdgo.unicode.Unicode.RangeTable>):Slice<GoRune>
	throw "regexp.syntax._appendTable is not yet implemented";

/**
	// appendNegatedTable returns the result of appending the negation of x to the class r.
**/
private function _appendNegatedTable(_r:Slice<GoRune>, _x:Ref<stdgo.unicode.Unicode.RangeTable>):Slice<GoRune>
	throw "regexp.syntax._appendNegatedTable is not yet implemented";

/**
	// negateClass overwrites r and returns r's negation.
	// It assumes the class r is already clean.
**/
private function _negateClass(_r:Slice<GoRune>):Slice<GoRune>
	throw "regexp.syntax._negateClass is not yet implemented";

private function _checkUTF8(_s:GoString):Error
	throw "regexp.syntax._checkUTF8 is not yet implemented";

private function _nextRune(_s:GoString):{var _0:GoRune; var _1:GoString; var _2:Error;}
	throw "regexp.syntax._nextRune is not yet implemented";

private function _isalnum(_c:GoRune):Bool
	throw "regexp.syntax._isalnum is not yet implemented";

private function _unhex(_c:GoRune):GoRune
	throw "regexp.syntax._unhex is not yet implemented";

function testParseSimple(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.syntax.testParseSimple is not yet implemented";

function testParseFoldCase(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.syntax.testParseFoldCase is not yet implemented";

function testParseLiteral(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.syntax.testParseLiteral is not yet implemented";

function testParseMatchNL(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.syntax.testParseMatchNL is not yet implemented";

function testParseNoMatchNL(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.syntax.testParseNoMatchNL is not yet implemented";

/**
	// Test Parse -> Dump.
**/
private function _testParseDump(_t:Ref<stdgo.testing.Testing.T>, _tests:Slice<T_parseTest>, _flags:Flags):Void
	throw "regexp.syntax._testParseDump is not yet implemented";

/**
	// dump prints a string representation of the regexp showing
	// the structure explicitly.
**/
private function _dump(_re:Ref<Regexp>):GoString
	throw "regexp.syntax._dump is not yet implemented";

/**
	// dumpRegexp writes an encoding of the syntax tree for the regexp re to b.
	// It is used during testing to distinguish between parses that might print
	// the same using re's String method.
**/
private function _dumpRegexp(_b:Ref<stdgo.strings.Strings.Builder>, _re:Ref<Regexp>):Void
	throw "regexp.syntax._dumpRegexp is not yet implemented";

private function _mkCharClass(_f:GoRune->Bool):GoString
	throw "regexp.syntax._mkCharClass is not yet implemented";

private function _isUpperFold(_r:GoRune):Bool
	throw "regexp.syntax._isUpperFold is not yet implemented";

function testFoldConstants(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.syntax.testFoldConstants is not yet implemented";

function testAppendRangeCollapse(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.syntax.testAppendRangeCollapse is not yet implemented";

function testParseInvalidRegexps(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.syntax.testParseInvalidRegexps is not yet implemented";

function testToStringEquivalentParse(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.syntax.testToStringEquivalentParse is not yet implemented";

/**
	// EmptyOpContext returns the zero-width assertions
	// satisfied at the position between the runes r1 and r2.
	// Passing r1 == -1 indicates that the position is
	// at the beginning of the text.
	// Passing r2 == -1 indicates that the position is
	// at the end of the text.
**/
function emptyOpContext(_r1:GoRune, _r2:GoRune):EmptyOp
	throw "regexp.syntax.emptyOpContext is not yet implemented";

/**
	// IsWordChar reports whether r is considered a “word character”
	// during the evaluation of the \b and \B zero-width assertions.
	// These assertions are ASCII-only: the word characters are [A-Za-z0-9_].
**/
function isWordChar(_r:GoRune):Bool
	throw "regexp.syntax.isWordChar is not yet implemented";

private function _bw(_b:Ref<stdgo.strings.Strings.Builder>, _args:haxe.Rest<GoString>):Void
	throw "regexp.syntax._bw is not yet implemented";

private function _dumpProg(_b:Ref<stdgo.strings.Strings.Builder>, _p:Ref<Prog>):Void
	throw "regexp.syntax._dumpProg is not yet implemented";

private function _u32(_i:GoUInt32):GoString
	throw "regexp.syntax._u32 is not yet implemented";

private function _dumpInst(_b:Ref<stdgo.strings.Strings.Builder>, _i:Ref<Inst>):Void
	throw "regexp.syntax._dumpInst is not yet implemented";

function testCompile(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.syntax.testCompile is not yet implemented";

function benchmarkEmptyOpContext(_b:Ref<stdgo.testing.Testing.B>):Void
	throw "regexp.syntax.benchmarkEmptyOpContext is not yet implemented";

/**
	// writeRegexp writes the Perl syntax for the regular expression re to b.
**/
private function _writeRegexp(_b:Ref<stdgo.strings.Strings.Builder>, _re:Ref<Regexp>):Void
	throw "regexp.syntax._writeRegexp is not yet implemented";

private function _escape(_b:Ref<stdgo.strings.Strings.Builder>, _r:GoRune, _force:Bool):Void
	throw "regexp.syntax._escape is not yet implemented";

/**
	// simplify1 implements Simplify for the unary OpStar,
	// OpPlus, and OpQuest operators. It returns the simple regexp
	// equivalent to
	//
	//	Regexp{Op: op, Flags: flags, Sub: {sub}}
	//
	// under the assumption that sub is already simple, and
	// without first allocating that structure. If the regexp
	// to be returned turns out to be equivalent to re, simplify1
	// returns re instead.
	//
	// simplify1 is factored out of Simplify because the implementation
	// for other operators generates these unary expressions.
	// Letting them call simplify1 makes sure the expressions they
	// generate are simple.
**/
private function _simplify1(_op:Op, _flags:Flags, _sub:Ref<Regexp>, _re:Ref<Regexp>):Ref<Regexp>
	throw "regexp.syntax._simplify1 is not yet implemented";

function testSimplify(_t:Ref<stdgo.testing.Testing.T>):Void
	throw "regexp.syntax.testSimplify is not yet implemented";

class T_patchList_asInterface {
	@:keep
	public function _append(_p:Ref<Prog>, _l2:T_patchList):T_patchList
		return __self__.value._append(_p, _l2);

	@:keep
	public function _patch(_p:Ref<Prog>, _val:GoUInt32):Void
		__self__.value._patch(_p, _val);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_patchList>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.syntax.Syntax.T_patchList_asInterface) class T_patchList_static_extension {
	@:keep
	static public function _append(_l1:T_patchList, _p:Ref<Prog>, _l2:T_patchList):T_patchList
		throw "regexp.syntax._append is not yet implemented";

	@:keep
	static public function _patch(_l:T_patchList, _p:Ref<Prog>, _val:GoUInt32):Void
		throw "regexp.syntax._patch is not yet implemented";
}

class T_compiler_asInterface {
	@:keep
	public function _rune(_r:Slice<GoRune>, _flags:Flags):T_frag
		return __self__.value._rune(_r, _flags);

	@:keep
	public function _empty(_op:EmptyOp):T_frag
		return __self__.value._empty(_op);

	@:keep
	public function _plus(_f1:T_frag, _nongreedy:Bool):T_frag
		return __self__.value._plus(_f1, _nongreedy);

	@:keep
	public function _star(_f1:T_frag, _nongreedy:Bool):T_frag
		return __self__.value._star(_f1, _nongreedy);

	/**
		// loop returns the fragment for the main loop of a plus or star.
		// For plus, it can be used after changing the entry to f1.i.
		// For star, it can be used directly when f1 can't match an empty string.
		// (When f1 can match an empty string, f1* must be implemented as (f1+)?
		// to get the priority match order correct.)
	**/
	@:keep
	public function _loop(_f1:T_frag, _nongreedy:Bool):T_frag
		return __self__.value._loop(_f1, _nongreedy);

	@:keep
	public function _quest(_f1:T_frag, _nongreedy:Bool):T_frag
		return __self__.value._quest(_f1, _nongreedy);

	@:keep
	public function _alt(_f1:T_frag, _f2:T_frag):T_frag
		return __self__.value._alt(_f1, _f2);

	@:keep
	public function _cat(_f1:T_frag, _f2:T_frag):T_frag
		return __self__.value._cat(_f1, _f2);

	@:keep
	public function _cap(_arg:GoUInt32):T_frag
		return __self__.value._cap(_arg);

	@:keep
	public function _fail():T_frag
		return __self__.value._fail();

	@:keep
	public function _nop():T_frag
		return __self__.value._nop();

	@:keep
	public function _inst(_op:InstOp):T_frag
		return __self__.value._inst(_op);

	@:keep
	public function _compile(_re:Ref<Regexp>):T_frag
		return __self__.value._compile(_re);

	@:keep
	public function _init():Void
		__self__.value._init();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_compiler>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.syntax.Syntax.T_compiler_asInterface) class T_compiler_static_extension {
	@:keep
	static public function _rune(_c:Ref<T_compiler>, _r:Slice<GoRune>, _flags:Flags):T_frag
		throw "regexp.syntax._rune is not yet implemented";

	@:keep
	static public function _empty(_c:Ref<T_compiler>, _op:EmptyOp):T_frag
		throw "regexp.syntax._empty is not yet implemented";

	@:keep
	static public function _plus(_c:Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag
		throw "regexp.syntax._plus is not yet implemented";

	@:keep
	static public function _star(_c:Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag
		throw "regexp.syntax._star is not yet implemented";

	/**
		// loop returns the fragment for the main loop of a plus or star.
		// For plus, it can be used after changing the entry to f1.i.
		// For star, it can be used directly when f1 can't match an empty string.
		// (When f1 can match an empty string, f1* must be implemented as (f1+)?
		// to get the priority match order correct.)
	**/
	@:keep
	static public function _loop(_c:Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag
		throw "regexp.syntax._loop is not yet implemented";

	@:keep
	static public function _quest(_c:Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag
		throw "regexp.syntax._quest is not yet implemented";

	@:keep
	static public function _alt(_c:Ref<T_compiler>, _f1:T_frag, _f2:T_frag):T_frag
		throw "regexp.syntax._alt is not yet implemented";

	@:keep
	static public function _cat(_c:Ref<T_compiler>, _f1:T_frag, _f2:T_frag):T_frag
		throw "regexp.syntax._cat is not yet implemented";

	@:keep
	static public function _cap(_c:Ref<T_compiler>, _arg:GoUInt32):T_frag
		throw "regexp.syntax._cap is not yet implemented";

	@:keep
	static public function _fail(_c:Ref<T_compiler>):T_frag
		throw "regexp.syntax._fail is not yet implemented";

	@:keep
	static public function _nop(_c:Ref<T_compiler>):T_frag
		throw "regexp.syntax._nop is not yet implemented";

	@:keep
	static public function _inst(_c:Ref<T_compiler>, _op:InstOp):T_frag
		throw "regexp.syntax._inst is not yet implemented";

	@:keep
	static public function _compile(_c:Ref<T_compiler>, _re:Ref<Regexp>):T_frag
		throw "regexp.syntax._compile is not yet implemented";

	@:keep
	static public function _init(_c:Ref<T_compiler>):Void
		throw "regexp.syntax._init is not yet implemented";
}

class T_error_asInterface {
	@:keep
	public function error():GoString
		return __self__.value.error();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_error>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.syntax.Syntax.T_error_asInterface) class T_error_static_extension {
	@:keep
	static public function error(_e:Ref<T_error>):GoString
		throw "regexp.syntax.error is not yet implemented";
}

class T_parser_asInterface {
	/**
		// parseClass parses a character class at the beginning of s
		// and pushes it onto the parse stack.
	**/
	@:keep
	public function _parseClass(_s:GoString):{var _0:GoString; var _1:Error;}
		return __self__.value._parseClass(_s);

	/**
		// parseUnicodeClass parses a leading Unicode character class like \p{Han}
		// from the beginning of s. If one is present, it appends the characters to r
		// and returns the new slice r and the remainder of the string.
	**/
	@:keep
	public function _parseUnicodeClass(_s:GoString, _r:Slice<GoRune>):{var _0:Slice<GoRune>; var _1:GoString; var _2:Error;}
		return __self__.value._parseUnicodeClass(_s, _r);

	@:keep
	public function _appendGroup(_r:Slice<GoRune>, _g:T_charGroup):Slice<GoRune>
		return __self__.value._appendGroup(_r, _g);

	/**
		// parseNamedClass parses a leading POSIX named character class like [:alnum:]
		// from the beginning of s. If one is present, it appends the characters to r
		// and returns the new slice r and the remainder of the string.
	**/
	@:keep
	public function _parseNamedClass(_s:GoString, _r:Slice<GoRune>):{var _0:Slice<GoRune>; var _1:GoString; var _2:Error;}
		return __self__.value._parseNamedClass(_s, _r);

	/**
		// parsePerlClassEscape parses a leading Perl character class escape like \d
		// from the beginning of s. If one is present, it appends the characters to r
		// and returns the new slice r and the remainder of the string.
	**/
	@:keep
	public function _parsePerlClassEscape(_s:GoString, _r:Slice<GoRune>):{var _0:Slice<GoRune>; var _1:GoString;}
		return __self__.value._parsePerlClassEscape(_s, _r);

	/**
		// parseClassChar parses a character class character at the beginning of s
		// and returns it.
	**/
	@:keep
	public function _parseClassChar(_s:GoString, _wholeClass:GoString):{var _0:GoRune; var _1:GoString; var _2:Error;}
		return __self__.value._parseClassChar(_s, _wholeClass);

	/**
		// parseEscape parses an escape sequence at the beginning of s
		// and returns the rune.
	**/
	@:keep
	public function _parseEscape(_s:GoString):{var _0:GoRune; var _1:GoString; var _2:Error;}
		return __self__.value._parseEscape(_s);

	/**
		// parseRightParen handles a ) in the input.
	**/
	@:keep
	public function _parseRightParen():Error
		return __self__.value._parseRightParen();

	/**
		// If the top of the stack is an element followed by an opVerticalBar
		// swapVerticalBar swaps the two and returns true.
		// Otherwise it returns false.
	**/
	@:keep
	public function _swapVerticalBar():Bool
		return __self__.value._swapVerticalBar();

	/**
		// parseVerticalBar handles a | in the input.
	**/
	@:keep
	public function _parseVerticalBar():Error
		return __self__.value._parseVerticalBar();

	/**
		// parseInt parses a decimal integer.
	**/
	@:keep
	public function _parseInt(_s:GoString):{var _0:GoInt; var _1:GoString; var _2:Bool;}
		return __self__.value._parseInt(_s);

	/**
		// parsePerlFlags parses a Perl flag setting or non-capturing group or both,
		// like (?i) or (?: or (?i:.  It removes the prefix from s and updates the parse state.
		// The caller must have ensured that s begins with "(?".
	**/
	@:keep
	public function _parsePerlFlags(_s:GoString):{var _0:GoString; var _1:Error;}
		return __self__.value._parsePerlFlags(_s);

	/**
		// parseRepeat parses {min} (max=min) or {min,} (max=-1) or {min,max}.
		// If s is not of that form, it returns ok == false.
		// If s has the right form but the values are too big, it returns min == -1, ok == true.
	**/
	@:keep
	public function _parseRepeat(_s:GoString):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoString;
		var _3:Bool;
	}
		return __self__.value._parseRepeat(_s);

	/**
		// removeLeadingRegexp removes the leading regexp in re.
		// It returns the replacement for re.
		// If reuse is true, it passes the removed regexp (if no longer needed) to p.reuse.
	**/
	@:keep
	public function _removeLeadingRegexp(_re:Ref<Regexp>, _reuse:Bool):Ref<Regexp>
		return __self__.value._removeLeadingRegexp(_re, _reuse);

	/**
		// leadingRegexp returns the leading regexp that re begins with.
		// The regexp refers to storage in re or its children.
	**/
	@:keep
	public function _leadingRegexp(_re:Ref<Regexp>):Ref<Regexp>
		return __self__.value._leadingRegexp(_re);

	/**
		// removeLeadingString removes the first n leading runes
		// from the beginning of re. It returns the replacement for re.
	**/
	@:keep
	public function _removeLeadingString(_re:Ref<Regexp>, _n:GoInt):Ref<Regexp>
		return __self__.value._removeLeadingString(_re, _n);

	/**
		// leadingString returns the leading literal string that re begins with.
		// The string refers to storage in re or its children.
	**/
	@:keep
	public function _leadingString(_re:Ref<Regexp>):{var _0:Slice<GoRune>; var _1:Flags;}
		return __self__.value._leadingString(_re);

	/**
		// factor factors common prefixes from the alternation list sub.
		// It returns a replacement list that reuses the same storage and
		// frees (passes to p.reuse) any removed *Regexps.
		//
		// For example,
		//
		//	ABC|ABD|AEF|BCX|BCY
		//
		// simplifies by literal prefix extraction to
		//
		//	A(B(C|D)|EF)|BC(X|Y)
		//
		// which simplifies by character class introduction to
		//
		//	A(B[CD]|EF)|BC[XY]
	**/
	@:keep
	public function _factor(_sub:Slice<Ref<Regexp>>):Slice<Ref<Regexp>>
		return __self__.value._factor(_sub);

	/**
		// collapse returns the result of applying op to sub.
		// If sub contains op nodes, they all get hoisted up
		// so that there is never a concat of a concat or an
		// alternate of an alternate.
	**/
	@:keep
	public function _collapse(_subs:Slice<Ref<Regexp>>, _op:Op):Ref<Regexp>
		return __self__.value._collapse(_subs, _op);

	/**
		// alternate replaces the top of the stack (above the topmost '(') with its alternation.
	**/
	@:keep
	public function _alternate():Ref<Regexp>
		return __self__.value._alternate();

	/**
		// concat replaces the top of the stack (above the topmost '|' or '(') with its concatenation.
	**/
	@:keep
	public function _concat():Ref<Regexp>
		return __self__.value._concat();

	/**
		// repeat replaces the top stack element with itself repeated according to op, min, max.
		// before is the regexp suffix starting at the repetition operator.
		// after is the regexp suffix following after the repetition operator.
		// repeat returns an updated 'after' and an error, if any.
	**/
	@:keep
	public function _repeat(_op:Op, _min:GoInt, _max:GoInt, _before:GoString, _after:GoString, _lastRepeat:GoString):{var _0:GoString; var _1:Error;}
		return __self__.value._repeat(_op, _min, _max, _before, _after, _lastRepeat);

	/**
		// op pushes a regexp with the given op onto the stack
		// and returns that regexp.
	**/
	@:keep
	public function _op(_op:Op):Ref<Regexp>
		return __self__.value._op(_op);

	/**
		// literal pushes a literal regexp for the rune r on the stack.
	**/
	@:keep
	public function _literal(_r:GoRune):Void
		__self__.value._literal(_r);

	/**
		// maybeConcat implements incremental concatenation
		// of literal runes into string nodes. The parser calls this
		// before each push, so only the top fragment of the stack
		// might need processing. Since this is called before a push,
		// the topmost literal is no longer subject to operators like *
		// (Otherwise ab* would turn into (ab)*.)
		// If r >= 0 and there's a node left over, maybeConcat uses it
		// to push r with the given flags.
		// maybeConcat reports whether r was pushed.
	**/
	@:keep
	public function _maybeConcat(_r:GoRune, _flags:Flags):Bool
		return __self__.value._maybeConcat(_r, _flags);

	/**
		// push pushes the regexp re onto the parse stack and returns the regexp.
	**/
	@:keep
	public function _push(_re:Ref<Regexp>):Ref<Regexp>
		return __self__.value._push(_re);

	@:keep
	public function _calcHeight(_re:Ref<Regexp>, _force:Bool):GoInt
		return __self__.value._calcHeight(_re, _force);

	@:keep
	public function _checkHeight(_re:Ref<Regexp>):Void
		__self__.value._checkHeight(_re);

	@:keep
	public function _reuse(_re:Ref<Regexp>):Void
		__self__.value._reuse(_re);

	@:keep
	public function _newRegexp(_op:Op):Ref<Regexp>
		return __self__.value._newRegexp(_op);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_parser>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.syntax.Syntax.T_parser_asInterface) class T_parser_static_extension {
	/**
		// parseClass parses a character class at the beginning of s
		// and pushes it onto the parse stack.
	**/
	@:keep
	static public function _parseClass(_p:Ref<T_parser>, _s:GoString):{var _0:GoString; var _1:Error;}
		throw "regexp.syntax._parseClass is not yet implemented";

	/**
		// parseUnicodeClass parses a leading Unicode character class like \p{Han}
		// from the beginning of s. If one is present, it appends the characters to r
		// and returns the new slice r and the remainder of the string.
	**/
	@:keep
	static public function _parseUnicodeClass(_p:Ref<T_parser>, _s:GoString, _r:Slice<GoRune>):{var _0:Slice<GoRune>; var _1:GoString; var _2:Error;}
		throw "regexp.syntax._parseUnicodeClass is not yet implemented";

	@:keep
	static public function _appendGroup(_p:Ref<T_parser>, _r:Slice<GoRune>, _g:T_charGroup):Slice<GoRune>
		throw "regexp.syntax._appendGroup is not yet implemented";

	/**
		// parseNamedClass parses a leading POSIX named character class like [:alnum:]
		// from the beginning of s. If one is present, it appends the characters to r
		// and returns the new slice r and the remainder of the string.
	**/
	@:keep
	static public function _parseNamedClass(_p:Ref<T_parser>, _s:GoString, _r:Slice<GoRune>):{var _0:Slice<GoRune>; var _1:GoString; var _2:Error;}
		throw "regexp.syntax._parseNamedClass is not yet implemented";

	/**
		// parsePerlClassEscape parses a leading Perl character class escape like \d
		// from the beginning of s. If one is present, it appends the characters to r
		// and returns the new slice r and the remainder of the string.
	**/
	@:keep
	static public function _parsePerlClassEscape(_p:Ref<T_parser>, _s:GoString, _r:Slice<GoRune>):{var _0:Slice<GoRune>; var _1:GoString;}
		throw "regexp.syntax._parsePerlClassEscape is not yet implemented";

	/**
		// parseClassChar parses a character class character at the beginning of s
		// and returns it.
	**/
	@:keep
	static public function _parseClassChar(_p:Ref<T_parser>, _s:GoString, _wholeClass:GoString):{var _0:GoRune; var _1:GoString; var _2:Error;}
		throw "regexp.syntax._parseClassChar is not yet implemented";

	/**
		// parseEscape parses an escape sequence at the beginning of s
		// and returns the rune.
	**/
	@:keep
	static public function _parseEscape(_p:Ref<T_parser>, _s:GoString):{var _0:GoRune; var _1:GoString; var _2:Error;}
		throw "regexp.syntax._parseEscape is not yet implemented";

	/**
		// parseRightParen handles a ) in the input.
	**/
	@:keep
	static public function _parseRightParen(_p:Ref<T_parser>):Error
		throw "regexp.syntax._parseRightParen is not yet implemented";

	/**
		// If the top of the stack is an element followed by an opVerticalBar
		// swapVerticalBar swaps the two and returns true.
		// Otherwise it returns false.
	**/
	@:keep
	static public function _swapVerticalBar(_p:Ref<T_parser>):Bool
		throw "regexp.syntax._swapVerticalBar is not yet implemented";

	/**
		// parseVerticalBar handles a | in the input.
	**/
	@:keep
	static public function _parseVerticalBar(_p:Ref<T_parser>):Error
		throw "regexp.syntax._parseVerticalBar is not yet implemented";

	/**
		// parseInt parses a decimal integer.
	**/
	@:keep
	static public function _parseInt(_p:Ref<T_parser>, _s:GoString):{var _0:GoInt; var _1:GoString; var _2:Bool;}
		throw "regexp.syntax._parseInt is not yet implemented";

	/**
		// parsePerlFlags parses a Perl flag setting or non-capturing group or both,
		// like (?i) or (?: or (?i:.  It removes the prefix from s and updates the parse state.
		// The caller must have ensured that s begins with "(?".
	**/
	@:keep
	static public function _parsePerlFlags(_p:Ref<T_parser>, _s:GoString):{var _0:GoString; var _1:Error;}
		throw "regexp.syntax._parsePerlFlags is not yet implemented";

	/**
		// parseRepeat parses {min} (max=min) or {min,} (max=-1) or {min,max}.
		// If s is not of that form, it returns ok == false.
		// If s has the right form but the values are too big, it returns min == -1, ok == true.
	**/
	@:keep
	static public function _parseRepeat(_p:Ref<T_parser>, _s:GoString):{
		var _0:GoInt;
		var _1:GoInt;
		var _2:GoString;
		var _3:Bool;
	}
		throw "regexp.syntax._parseRepeat is not yet implemented";

	/**
		// removeLeadingRegexp removes the leading regexp in re.
		// It returns the replacement for re.
		// If reuse is true, it passes the removed regexp (if no longer needed) to p.reuse.
	**/
	@:keep
	static public function _removeLeadingRegexp(_p:Ref<T_parser>, _re:Ref<Regexp>, _reuse:Bool):Ref<Regexp>
		throw "regexp.syntax._removeLeadingRegexp is not yet implemented";

	/**
		// leadingRegexp returns the leading regexp that re begins with.
		// The regexp refers to storage in re or its children.
	**/
	@:keep
	static public function _leadingRegexp(_p:Ref<T_parser>, _re:Ref<Regexp>):Ref<Regexp>
		throw "regexp.syntax._leadingRegexp is not yet implemented";

	/**
		// removeLeadingString removes the first n leading runes
		// from the beginning of re. It returns the replacement for re.
	**/
	@:keep
	static public function _removeLeadingString(_p:Ref<T_parser>, _re:Ref<Regexp>, _n:GoInt):Ref<Regexp>
		throw "regexp.syntax._removeLeadingString is not yet implemented";

	/**
		// leadingString returns the leading literal string that re begins with.
		// The string refers to storage in re or its children.
	**/
	@:keep
	static public function _leadingString(_p:Ref<T_parser>, _re:Ref<Regexp>):{var _0:Slice<GoRune>; var _1:Flags;}
		throw "regexp.syntax._leadingString is not yet implemented";

	/**
		// factor factors common prefixes from the alternation list sub.
		// It returns a replacement list that reuses the same storage and
		// frees (passes to p.reuse) any removed *Regexps.
		//
		// For example,
		//
		//	ABC|ABD|AEF|BCX|BCY
		//
		// simplifies by literal prefix extraction to
		//
		//	A(B(C|D)|EF)|BC(X|Y)
		//
		// which simplifies by character class introduction to
		//
		//	A(B[CD]|EF)|BC[XY]
	**/
	@:keep
	static public function _factor(_p:Ref<T_parser>, _sub:Slice<Ref<Regexp>>):Slice<Ref<Regexp>>
		throw "regexp.syntax._factor is not yet implemented";

	/**
		// collapse returns the result of applying op to sub.
		// If sub contains op nodes, they all get hoisted up
		// so that there is never a concat of a concat or an
		// alternate of an alternate.
	**/
	@:keep
	static public function _collapse(_p:Ref<T_parser>, _subs:Slice<Ref<Regexp>>, _op:Op):Ref<Regexp>
		throw "regexp.syntax._collapse is not yet implemented";

	/**
		// alternate replaces the top of the stack (above the topmost '(') with its alternation.
	**/
	@:keep
	static public function _alternate(_p:Ref<T_parser>):Ref<Regexp>
		throw "regexp.syntax._alternate is not yet implemented";

	/**
		// concat replaces the top of the stack (above the topmost '|' or '(') with its concatenation.
	**/
	@:keep
	static public function _concat(_p:Ref<T_parser>):Ref<Regexp>
		throw "regexp.syntax._concat is not yet implemented";

	/**
		// repeat replaces the top stack element with itself repeated according to op, min, max.
		// before is the regexp suffix starting at the repetition operator.
		// after is the regexp suffix following after the repetition operator.
		// repeat returns an updated 'after' and an error, if any.
	**/
	@:keep
	static public function _repeat(_p:Ref<T_parser>, _op:Op, _min:GoInt, _max:GoInt, _before:GoString, _after:GoString,
			_lastRepeat:GoString):{var _0:GoString; var _1:Error;}
		throw "regexp.syntax._repeat is not yet implemented";

	/**
		// op pushes a regexp with the given op onto the stack
		// and returns that regexp.
	**/
	@:keep
	static public function _op(_p:Ref<T_parser>, _op:Op):Ref<Regexp>
		throw "regexp.syntax._op is not yet implemented";

	/**
		// literal pushes a literal regexp for the rune r on the stack.
	**/
	@:keep
	static public function _literal(_p:Ref<T_parser>, _r:GoRune):Void
		throw "regexp.syntax._literal is not yet implemented";

	/**
		// maybeConcat implements incremental concatenation
		// of literal runes into string nodes. The parser calls this
		// before each push, so only the top fragment of the stack
		// might need processing. Since this is called before a push,
		// the topmost literal is no longer subject to operators like *
		// (Otherwise ab* would turn into (ab)*.)
		// If r >= 0 and there's a node left over, maybeConcat uses it
		// to push r with the given flags.
		// maybeConcat reports whether r was pushed.
	**/
	@:keep
	static public function _maybeConcat(_p:Ref<T_parser>, _r:GoRune, _flags:Flags):Bool
		throw "regexp.syntax._maybeConcat is not yet implemented";

	/**
		// push pushes the regexp re onto the parse stack and returns the regexp.
	**/
	@:keep
	static public function _push(_p:Ref<T_parser>, _re:Ref<Regexp>):Ref<Regexp>
		throw "regexp.syntax._push is not yet implemented";

	@:keep
	static public function _calcHeight(_p:Ref<T_parser>, _re:Ref<Regexp>, _force:Bool):GoInt
		throw "regexp.syntax._calcHeight is not yet implemented";

	@:keep
	static public function _checkHeight(_p:Ref<T_parser>, _re:Ref<Regexp>):Void
		throw "regexp.syntax._checkHeight is not yet implemented";

	@:keep
	static public function _reuse(_p:Ref<T_parser>, _re:Ref<Regexp>):Void
		throw "regexp.syntax._reuse is not yet implemented";

	@:keep
	static public function _newRegexp(_p:Ref<T_parser>, _op:Op):Ref<Regexp>
		throw "regexp.syntax._newRegexp is not yet implemented";
}

class T_ranges_asInterface {
	@:keep
	public function swap(_i:GoInt, _j:GoInt):Void
		__self__.value.swap(_i, _j);

	@:keep
	public function len():GoInt
		return __self__.value.len();

	@:keep
	public function less(_i:GoInt, _j:GoInt):Bool
		return __self__.value.less(_i, _j);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_ranges>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.syntax.Syntax.T_ranges_asInterface) class T_ranges_static_extension {
	@:keep
	static public function swap(_ra:T_ranges, _i:GoInt, _j:GoInt):Void
		throw "regexp.syntax.swap is not yet implemented";

	@:keep
	static public function len(_ra:T_ranges):GoInt
		throw "regexp.syntax.len is not yet implemented";

	@:keep
	static public function less(_ra:T_ranges, _i:GoInt, _j:GoInt):Bool
		throw "regexp.syntax.less is not yet implemented";
}

class Prog_asInterface {
	/**
		// StartCond returns the leading empty-width conditions that must
		// be true in any match. It returns ^EmptyOp(0) if no matches are possible.
	**/
	@:keep
	public function startCond():EmptyOp
		return __self__.value.startCond();

	/**
		// Prefix returns a literal string that all matches for the
		// regexp must start with. Complete is true if the prefix
		// is the entire match.
	**/
	@:keep
	public function prefix():{var _0:GoString; var _1:Bool;}
		return __self__.value.prefix();

	/**
		// skipNop follows any no-op or capturing instructions.
	**/
	@:keep
	public function _skipNop(_pc:GoUInt32):Ref<Inst>
		return __self__.value._skipNop(_pc);

	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Prog>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.syntax.Syntax.Prog_asInterface) class Prog_static_extension {
	/**
		// StartCond returns the leading empty-width conditions that must
		// be true in any match. It returns ^EmptyOp(0) if no matches are possible.
	**/
	@:keep
	static public function startCond(_p:Ref<Prog>):EmptyOp
		throw "regexp.syntax.startCond is not yet implemented";

	/**
		// Prefix returns a literal string that all matches for the
		// regexp must start with. Complete is true if the prefix
		// is the entire match.
	**/
	@:keep
	static public function prefix(_p:Ref<Prog>):{var _0:GoString; var _1:Bool;}
		throw "regexp.syntax.prefix is not yet implemented";

	/**
		// skipNop follows any no-op or capturing instructions.
	**/
	@:keep
	static public function _skipNop(_p:Ref<Prog>, _pc:GoUInt32):Ref<Inst>
		throw "regexp.syntax._skipNop is not yet implemented";

	@:keep
	static public function string(_p:Ref<Prog>):GoString
		throw "regexp.syntax.string is not yet implemented";
}

class Inst_asInterface {
	@:keep
	public function string():GoString
		return __self__.value.string();

	/**
		// MatchEmptyWidth reports whether the instruction matches
		// an empty string between the runes before and after.
		// It should only be called when i.Op == InstEmptyWidth.
	**/
	@:keep
	public function matchEmptyWidth(_before:GoRune, _after:GoRune):Bool
		return __self__.value.matchEmptyWidth(_before, _after);

	/**
		// MatchRunePos checks whether the instruction matches (and consumes) r.
		// If so, MatchRunePos returns the index of the matching rune pair
		// (or, when len(i.Rune) == 1, rune singleton).
		// If not, MatchRunePos returns -1.
		// MatchRunePos should only be called when i.Op == InstRune.
	**/
	@:keep
	public function matchRunePos(_r:GoRune):GoInt
		return __self__.value.matchRunePos(_r);

	/**
		// MatchRune reports whether the instruction matches (and consumes) r.
		// It should only be called when i.Op == InstRune.
	**/
	@:keep
	public function matchRune(_r:GoRune):Bool
		return __self__.value.matchRune(_r);

	/**
		// op returns i.Op but merges all the Rune special cases into InstRune
	**/
	@:keep
	public function _op():InstOp
		return __self__.value._op();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Inst>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.syntax.Syntax.Inst_asInterface) class Inst_static_extension {
	@:keep
	static public function string(_i:Ref<Inst>):GoString
		throw "regexp.syntax.string is not yet implemented";

	/**
		// MatchEmptyWidth reports whether the instruction matches
		// an empty string between the runes before and after.
		// It should only be called when i.Op == InstEmptyWidth.
	**/
	@:keep
	static public function matchEmptyWidth(_i:Ref<Inst>, _before:GoRune, _after:GoRune):Bool
		throw "regexp.syntax.matchEmptyWidth is not yet implemented";

	/**
		// MatchRunePos checks whether the instruction matches (and consumes) r.
		// If so, MatchRunePos returns the index of the matching rune pair
		// (or, when len(i.Rune) == 1, rune singleton).
		// If not, MatchRunePos returns -1.
		// MatchRunePos should only be called when i.Op == InstRune.
	**/
	@:keep
	static public function matchRunePos(_i:Ref<Inst>, _r:GoRune):GoInt
		throw "regexp.syntax.matchRunePos is not yet implemented";

	/**
		// MatchRune reports whether the instruction matches (and consumes) r.
		// It should only be called when i.Op == InstRune.
	**/
	@:keep
	static public function matchRune(_i:Ref<Inst>, _r:GoRune):Bool
		throw "regexp.syntax.matchRune is not yet implemented";

	/**
		// op returns i.Op but merges all the Rune special cases into InstRune
	**/
	@:keep
	static public function _op(_i:Ref<Inst>):InstOp
		throw "regexp.syntax._op is not yet implemented";
}

class Regexp_asInterface {
	/**
		// Simplify returns a regexp equivalent to re but without counted repetitions
		// and with various other simplifications, such as rewriting /(?:a+)+/ to /a+/.
		// The resulting regexp will execute correctly but its string representation
		// will not produce the same parse tree, because capturing parentheses
		// may have been duplicated or removed. For example, the simplified form
		// for /(x){1,2}/ is /(x)(x)?/ but both parentheses capture as $1.
		// The returned regexp may share structure with or be the original.
	**/
	@:keep
	public function simplify():Ref<Regexp>
		return __self__.value.simplify();

	@:keep
	public function _capNames(_names:Slice<GoString>):Void
		__self__.value._capNames(_names);

	/**
		// CapNames walks the regexp to find the names of capturing groups.
	**/
	@:keep
	public function capNames():Slice<GoString>
		return __self__.value.capNames();

	/**
		// MaxCap walks the regexp to find the maximum capture index.
	**/
	@:keep
	public function maxCap():GoInt
		return __self__.value.maxCap();

	@:keep
	public function string():GoString
		return __self__.value.string();

	/**
		// Equal reports whether x and y have identical structure.
	**/
	@:keep
	public function equal(_y:Ref<Regexp>):Bool
		return __self__.value.equal(_y);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Regexp>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.syntax.Syntax.Regexp_asInterface) class Regexp_static_extension {
	/**
		// Simplify returns a regexp equivalent to re but without counted repetitions
		// and with various other simplifications, such as rewriting /(?:a+)+/ to /a+/.
		// The resulting regexp will execute correctly but its string representation
		// will not produce the same parse tree, because capturing parentheses
		// may have been duplicated or removed. For example, the simplified form
		// for /(x){1,2}/ is /(x)(x)?/ but both parentheses capture as $1.
		// The returned regexp may share structure with or be the original.
	**/
	@:keep
	static public function simplify(_re:Ref<Regexp>):Ref<Regexp>
		throw "regexp.syntax.simplify is not yet implemented";

	@:keep
	static public function _capNames(_re:Ref<Regexp>, _names:Slice<GoString>):Void
		throw "regexp.syntax._capNames is not yet implemented";

	/**
		// CapNames walks the regexp to find the names of capturing groups.
	**/
	@:keep
	static public function capNames(_re:Ref<Regexp>):Slice<GoString>
		throw "regexp.syntax.capNames is not yet implemented";

	/**
		// MaxCap walks the regexp to find the maximum capture index.
	**/
	@:keep
	static public function maxCap(_re:Ref<Regexp>):GoInt
		throw "regexp.syntax.maxCap is not yet implemented";

	@:keep
	static public function string(_re:Ref<Regexp>):GoString
		throw "regexp.syntax.string is not yet implemented";

	/**
		// Equal reports whether x and y have identical structure.
	**/
	@:keep
	static public function equal(_x:Ref<Regexp>, _y:Ref<Regexp>):Bool
		throw "regexp.syntax.equal is not yet implemented";
}

class ErrorCode_asInterface {
	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<ErrorCode>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.syntax.Syntax.ErrorCode_asInterface) class ErrorCode_static_extension {
	@:keep
	static public function string(_e:ErrorCode):GoString
		throw "regexp.syntax.string is not yet implemented";
}

class InstOp_asInterface {
	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<InstOp>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.syntax.Syntax.InstOp_asInterface) class InstOp_static_extension {
	@:keep
	static public function string(_i:InstOp):GoString
		throw "regexp.syntax.string is not yet implemented";
}

class Op_asInterface {
	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Op>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.regexp.syntax.Syntax.Op_asInterface) class Op_static_extension {
	@:keep
	static public function string(_i:Op):GoString
		throw "regexp.syntax.string is not yet implemented";
}
