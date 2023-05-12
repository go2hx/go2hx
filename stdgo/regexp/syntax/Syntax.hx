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
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
private var _anyRuneNotNL = (new Slice<GoInt32>(4, 4, (0 : GoInt32), (9 : GoInt32), (11 : GoInt32), (1114111 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _anyRune = (new Slice<GoInt32>(2, 2, (0 : GoInt32), (1114111 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var __Op_index_0 = (new GoArray<GoUInt8>(
(0 : GoUInt8),
(7 : GoUInt8),
(17 : GoUInt8),
(24 : GoUInt8),
(33 : GoUInt8),
(45 : GoUInt8),
(52 : GoUInt8),
(61 : GoUInt8),
(68 : GoUInt8),
(77 : GoUInt8),
(84 : GoUInt8),
(96 : GoUInt8),
(110 : GoUInt8),
(117 : GoUInt8),
(121 : GoUInt8),
(125 : GoUInt8),
(130 : GoUInt8),
(136 : GoUInt8),
(142 : GoUInt8),
(151 : GoUInt8)) : GoArray<GoUInt8>);
/**
    
    
    
**/
private var _anyTable = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(1, 1, ({ lo : (0 : GoUInt16), hi : (65535 : GoUInt16), stride : (1 : GoUInt16) } : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(1, 1, ({ lo : (65536u32 : GoUInt32), hi : (1114111u32 : GoUInt32), stride : (1u32 : GoUInt32) } : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : stdgo.unicode.Unicode.RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var _code1 = (new Slice<GoInt32>(2, 2, (48 : GoInt32), (57 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code2 = (new Slice<GoInt32>(6, 6, (9 : GoInt32), (10 : GoInt32), (12 : GoInt32), (13 : GoInt32), (32 : GoInt32), (32 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code3 = (new Slice<GoInt32>(8, 8, (48 : GoInt32), (57 : GoInt32), (65 : GoInt32), (90 : GoInt32), (95 : GoInt32), (95 : GoInt32), (97 : GoInt32), (122 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _perlGroup = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.regexp.syntax.Syntax.T_charGroup>();
        x.__defaultValue__ = () -> ({} : stdgo.regexp.syntax.Syntax.T_charGroup);
        @:mergeBlock {
            x.set(("\\d" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code1) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\D" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code1) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\s" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code2) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\S" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code2) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\w" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code3) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\W" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code3) : stdgo.regexp.syntax.Syntax.T_charGroup));
        };
        x;
    } : GoMap<GoString, stdgo.regexp.syntax.Syntax.T_charGroup>);
/**
    
    
    
**/
private var _code4 = (new Slice<GoInt32>(6, 6, (48 : GoInt32), (57 : GoInt32), (65 : GoInt32), (90 : GoInt32), (97 : GoInt32), (122 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code5 = (new Slice<GoInt32>(4, 4, (65 : GoInt32), (90 : GoInt32), (97 : GoInt32), (122 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code6 = (new Slice<GoInt32>(2, 2, (0 : GoInt32), (127 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code7 = (new Slice<GoInt32>(4, 4, (9 : GoInt32), (9 : GoInt32), (32 : GoInt32), (32 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code8 = (new Slice<GoInt32>(4, 4, (0 : GoInt32), (31 : GoInt32), (127 : GoInt32), (127 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code9 = (new Slice<GoInt32>(2, 2, (48 : GoInt32), (57 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code10 = (new Slice<GoInt32>(2, 2, (33 : GoInt32), (126 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code11 = (new Slice<GoInt32>(2, 2, (97 : GoInt32), (122 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code12 = (new Slice<GoInt32>(2, 2, (32 : GoInt32), (126 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code13 = (new Slice<GoInt32>(8, 8, (33 : GoInt32), (47 : GoInt32), (58 : GoInt32), (64 : GoInt32), (91 : GoInt32), (96 : GoInt32), (123 : GoInt32), (126 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code14 = (new Slice<GoInt32>(4, 4, (9 : GoInt32), (13 : GoInt32), (32 : GoInt32), (32 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code15 = (new Slice<GoInt32>(2, 2, (65 : GoInt32), (90 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code16 = (new Slice<GoInt32>(8, 8, (48 : GoInt32), (57 : GoInt32), (65 : GoInt32), (90 : GoInt32), (95 : GoInt32), (95 : GoInt32), (97 : GoInt32), (122 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _code17 = (new Slice<GoInt32>(6, 6, (48 : GoInt32), (57 : GoInt32), (65 : GoInt32), (70 : GoInt32), (97 : GoInt32), (102 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _posixGroup = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.regexp.syntax.Syntax.T_charGroup>();
        x.__defaultValue__ = () -> ({} : stdgo.regexp.syntax.Syntax.T_charGroup);
        @:mergeBlock {
            x.set(("[:alnum:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code4) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^alnum:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code4) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:alpha:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code5) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^alpha:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code5) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:ascii:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code6) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^ascii:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code6) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:blank:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code7) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^blank:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code7) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:cntrl:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code8) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^cntrl:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code8) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:digit:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code9) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^digit:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code9) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:graph:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code10) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^graph:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code10) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:lower:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code11) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^lower:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code11) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:print:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code12) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^print:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code12) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:punct:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code13) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^punct:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code13) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:space:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code14) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^space:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code14) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:upper:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code15) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^upper:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code15) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:word:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code16) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^word:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code16) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:xdigit:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : GoInt), _code17) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^xdigit:]" : GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : GoInt), _code17) : stdgo.regexp.syntax.Syntax.T_charGroup));
        };
        x;
    } : GoMap<GoString, stdgo.regexp.syntax.Syntax.T_charGroup>);
/**
    
    
    
**/
private var _instOpNames = (new Slice<GoString>(
11,
11,
("InstAlt" : GoString),
("InstAltMatch" : GoString),
("InstCapture" : GoString),
("InstEmptyWidth" : GoString),
("InstMatch" : GoString),
("InstFail" : GoString),
("InstNop" : GoString),
("InstRune" : GoString),
("InstRune1" : GoString),
("InstRuneAny" : GoString),
("InstRuneAnyNotNL" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _foldcaseTests = (new Slice<stdgo.regexp.syntax.Syntax.T_parseTest>(6, 6, (new stdgo.regexp.syntax.Syntax.T_parseTest(("AbCdE" : GoString), ("strfold{ABCDE}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[Aa]" : GoString), ("litfold{A}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("a" : GoString), ("litfold{A}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("A[F-g]" : GoString), ("cat{litfold{A}cc{0x41-0x7a 0x17f 0x212a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[[:upper:]]" : GoString), ("cc{0x41-0x5a 0x61-0x7a 0x17f 0x212a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[[:lower:]]" : GoString), ("cc{0x41-0x5a 0x61-0x7a 0x17f 0x212a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest)) : Slice<stdgo.regexp.syntax.Syntax.T_parseTest>);
/**
    
    
    
**/
private var _literalTests = (new Slice<stdgo.regexp.syntax.Syntax.T_parseTest>(1, 1, (new stdgo.regexp.syntax.Syntax.T_parseTest(("(|)^$.[*+?]{5,10},\\" : GoString), ("str{(|)^$.[*+?]{5,10},\\}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest)) : Slice<stdgo.regexp.syntax.Syntax.T_parseTest>);
/**
    
    
    
**/
private var _matchnlTests = (new Slice<stdgo.regexp.syntax.Syntax.T_parseTest>(4, 4, (new stdgo.regexp.syntax.Syntax.T_parseTest(("." : GoString), ("dot{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("\n" : GoString), ("lit{\n}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[^a]" : GoString), ("cc{0x0-0x60 0x62-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[a\\n]" : GoString), ("cc{0xa 0x61}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest)) : Slice<stdgo.regexp.syntax.Syntax.T_parseTest>);
/**
    
    
    
**/
private var _nomatchnlTests = (new Slice<stdgo.regexp.syntax.Syntax.T_parseTest>(4, 4, (new stdgo.regexp.syntax.Syntax.T_parseTest(("." : GoString), ("dnl{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("\n" : GoString), ("lit{\n}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[^a]" : GoString), ("cc{0x0-0x9 0xb-0x60 0x62-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[a\\n]" : GoString), ("cc{0xa 0x61}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest)) : Slice<stdgo.regexp.syntax.Syntax.T_parseTest>);
/**
    
    
    
**/
private var _opNames = {
        var s = new Slice<GoString>(20, 0).__setString__();
        s[1] = ("no" : GoString);
        s[2] = ("emp" : GoString);
        s[3] = ("lit" : GoString);
        s[4] = ("cc" : GoString);
        s[5] = ("dnl" : GoString);
        s[6] = ("dot" : GoString);
        s[7] = ("bol" : GoString);
        s[8] = ("eol" : GoString);
        s[9] = ("bot" : GoString);
        s[10] = ("eot" : GoString);
        s[11] = ("wb" : GoString);
        s[12] = ("nwb" : GoString);
        s[13] = ("cap" : GoString);
        s[14] = ("star" : GoString);
        s[15] = ("plus" : GoString);
        s[16] = ("que" : GoString);
        s[17] = ("rep" : GoString);
        s[18] = ("cat" : GoString);
        s[19] = ("alt" : GoString);
        s;
    };
/**
    
    
    
**/
private var _parseTests = (new Slice<stdgo.regexp.syntax.Syntax.T_parseTest>(
155,
155,
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a" : GoString), ("lit{a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a." : GoString), ("cat{lit{a}dot{}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a.b" : GoString), ("cat{lit{a}dot{}lit{b}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("ab" : GoString), ("str{ab}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a.b.c" : GoString), ("cat{lit{a}dot{}lit{b}dot{}lit{c}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc" : GoString), ("str{abc}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a|^" : GoString), ("alt{lit{a}bol{}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a|b" : GoString), ("cc{0x61-0x62}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(a)" : GoString), ("cap{lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(a)|b" : GoString), ("alt{cap{lit{a}}lit{b}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a*" : GoString), ("star{lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a+" : GoString), ("plus{lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a?" : GoString), ("que{lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{2}" : GoString), ("rep{2,2 lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{2,3}" : GoString), ("rep{2,3 lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{2,}" : GoString), ("rep{2,-1 lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a*?" : GoString), ("nstar{lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a+?" : GoString), ("nplus{lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a??" : GoString), ("nque{lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{2}?" : GoString), ("nrep{2,2 lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{2,3}?" : GoString), ("nrep{2,3 lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{2,}?" : GoString), ("nrep{2,-1 lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{1001" : GoString), ("str{x{1001}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{9876543210" : GoString), ("str{x{9876543210}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{9876543210," : GoString), ("str{x{9876543210,}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{2,1" : GoString), ("str{x{2,1}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{1,9876543210" : GoString), ("str{x{1,9876543210}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(Go.str(), ("emp{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("|" : GoString), ("emp{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("|x|" : GoString), ("alt{emp{}lit{x}emp{}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("." : GoString), ("dot{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("^" : GoString), ("bol{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("$" : GoString), ("eol{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\|" : GoString), ("lit{|}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\(" : GoString), ("lit{(}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\)" : GoString), ("lit{)}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\*" : GoString), ("lit{*}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\+" : GoString), ("lit{+}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\?" : GoString), ("lit{?}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("{" : GoString), ("lit{{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("}" : GoString), ("lit{}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\." : GoString), ("lit{.}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\^" : GoString), ("lit{^}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\$" : GoString), ("lit{$}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\\\" : GoString), ("lit{\\}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[ace]" : GoString), ("cc{0x61 0x63 0x65}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[abc]" : GoString), ("cc{0x61-0x63}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[a-z]" : GoString), ("cc{0x61-0x7a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[a]" : GoString), ("lit{a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\-" : GoString), ("lit{-}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("-" : GoString), ("lit{-}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\_" : GoString), ("lit{_}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc" : GoString), ("str{abc}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc|def" : GoString), ("alt{str{abc}str{def}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc|def|ghi" : GoString), ("alt{str{abc}str{def}str{ghi}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[[:lower:]]" : GoString), ("cc{0x61-0x7a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[a-z]" : GoString), ("cc{0x61-0x7a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[^[:lower:]]" : GoString), ("cc{0x0-0x60 0x7b-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[[:^lower:]]" : GoString), ("cc{0x0-0x60 0x7b-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)[[:lower:]]" : GoString), ("cc{0x41-0x5a 0x61-0x7a 0x17f 0x212a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)[a-z]" : GoString), ("cc{0x41-0x5a 0x61-0x7a 0x17f 0x212a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)[^[:lower:]]" : GoString), ("cc{0x0-0x40 0x5b-0x60 0x7b-0x17e 0x180-0x2129 0x212b-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)[[:^lower:]]" : GoString), ("cc{0x0-0x40 0x5b-0x60 0x7b-0x17e 0x180-0x2129 0x212b-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\d" : GoString), ("cc{0x30-0x39}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\D" : GoString), ("cc{0x0-0x2f 0x3a-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\s" : GoString), ("cc{0x9-0xa 0xc-0xd 0x20}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\S" : GoString), ("cc{0x0-0x8 0xb 0xe-0x1f 0x21-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\w" : GoString), ("cc{0x30-0x39 0x41-0x5a 0x5f 0x61-0x7a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\W" : GoString), ("cc{0x0-0x2f 0x3a-0x40 0x5b-0x5e 0x60 0x7b-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)\\w" : GoString), ("cc{0x30-0x39 0x41-0x5a 0x5f 0x61-0x7a 0x17f 0x212a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)\\W" : GoString), ("cc{0x0-0x2f 0x3a-0x40 0x5b-0x5e 0x60 0x7b-0x17e 0x180-0x2129 0x212b-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[^\\\\]" : GoString), ("cc{0x0-0x5b 0x5d-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\p{Braille}" : GoString), ("cc{0x2800-0x28ff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\P{Braille}" : GoString), ("cc{0x0-0x27ff 0x2900-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\p{^Braille}" : GoString), ("cc{0x0-0x27ff 0x2900-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\P{^Braille}" : GoString), ("cc{0x2800-0x28ff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\pZ" : GoString), ("cc{0x20 0xa0 0x1680 0x2000-0x200a 0x2028-0x2029 0x202f 0x205f 0x3000}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\p{Braille}]" : GoString), ("cc{0x2800-0x28ff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\P{Braille}]" : GoString), ("cc{0x0-0x27ff 0x2900-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\p{^Braille}]" : GoString), ("cc{0x0-0x27ff 0x2900-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\P{^Braille}]" : GoString), ("cc{0x2800-0x28ff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\pZ]" : GoString), ("cc{0x20 0xa0 0x1680 0x2000-0x200a 0x2028-0x2029 0x202f 0x205f 0x3000}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\p{Lu}" : GoString), _mkCharClass(stdgo.unicode.Unicode.isUpper)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\p{Lu}]" : GoString), _mkCharClass(stdgo.unicode.Unicode.isUpper)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)[\\p{Lu}]" : GoString), _mkCharClass(_isUpperFold)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\p{Any}" : GoString), ("dot{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\p{^Any}" : GoString), ("cc{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\012-\\234]\\141" : GoString), ("cat{cc{0xa-0x9c}lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\x{41}-\\x7a]\\x61" : GoString), ("cat{cc{0x41-0x7a}lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{,2}" : GoString), ("str{a{,2}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\.\\^\\$\\\\" : GoString), ("str{.^$\\}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[a-zABC]" : GoString), ("cc{0x41-0x43 0x61-0x7a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[^a]" : GoString), ("cc{0x0-0x60 0x62-0x10ffff}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[α-ε☺]" : GoString), ("cc{0x3b1-0x3b5 0x263a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a*{" : GoString), ("cat{star{lit{a}}lit{{}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:ab)*" : GoString), ("star{str{ab}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(ab)*" : GoString), ("star{cap{str{ab}}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("ab|cd" : GoString), ("alt{str{ab}str{cd}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a(b|c)d" : GoString), ("cat{lit{a}cap{cc{0x62-0x63}}lit{d}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:a)" : GoString), ("lit{a}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:ab)(?:cd)" : GoString), ("str{abcd}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:a+b+)(?:c+d+)" : GoString), ("cat{plus{lit{a}}plus{lit{b}}plus{lit{c}}plus{lit{d}}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:a+|b+)|(?:c+|d+)" : GoString), ("alt{plus{lit{a}}plus{lit{b}}plus{lit{c}}plus{lit{d}}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:a|b)|(?:c|d)" : GoString), ("cc{0x61-0x64}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a|." : GoString), ("dot{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest((".|a" : GoString), ("dot{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:[abc]|A|Z|hello|world)" : GoString), ("alt{cc{0x41 0x5a 0x61-0x63}str{hello}str{world}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:[abc]|A|Z)" : GoString), ("cc{0x41 0x5a 0x61-0x63}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\Q+|*?{[\\E" : GoString), ("str{+|*?{[}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\Q+\\E+" : GoString), ("plus{lit{+}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\Qab\\E+" : GoString), ("cat{lit{a}plus{lit{b}}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\Q\\\\E" : GoString), ("lit{\\}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\Q\\\\\\E" : GoString), ("str{\\\\}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?m)^" : GoString), ("bol{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?m)$" : GoString), ("eol{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?-m)^" : GoString), ("bot{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?-m)$" : GoString), ("eot{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?m)\\A" : GoString), ("bot{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?m)\\z" : GoString), ("eot{\\z}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?-m)\\A" : GoString), ("bot{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?-m)\\z" : GoString), ("eot{\\z}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?P<name>a)" : GoString), ("cap{name:lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[Aa]" : GoString), ("litfold{A}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\x{100}\\x{101}]" : GoString), ("litfold{Ā}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[Δδ]" : GoString), ("litfold{Δ}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abcde" : GoString), ("str{abcde}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[Aa][Bb]cd" : GoString), ("cat{strfold{AB}str{cd}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc|abd|aef|bcx|bcy" : GoString), ("alt{cat{lit{a}alt{cat{lit{b}cc{0x63-0x64}}str{ef}}}cat{str{bc}cc{0x78-0x79}}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("ax+y|ax+z|ay+w" : GoString), ("cat{lit{a}alt{cat{plus{lit{x}}lit{y}}cat{plus{lit{x}}lit{z}}cat{plus{lit{y}}lit{w}}}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:.)" : GoString), ("dot{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:x|(?:xa))" : GoString), ("cat{lit{x}alt{emp{}lit{a}}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:.|(?:.a))" : GoString), ("cat{dot{}alt{emp{}lit{a}}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:A(?:A|a))" : GoString), ("cat{lit{A}litfold{A}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:A|a)" : GoString), ("litfold{A}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("A|(?:A|a)" : GoString), ("litfold{A}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?s)." : GoString), ("dot{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?-s)." : GoString), ("dnl{}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:(?:^).)" : GoString), ("cat{bol{}dot{}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?-s)(?:(?:^).)" : GoString), ("cat{bol{}dnl{}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\s\\S]a" : GoString), ("cat{cc{0x0-0x10ffff}lit{a}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc|abd" : GoString), ("cat{str{ab}cc{0x63-0x64}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a(?:b)c|abd" : GoString), ("cat{str{ab}cc{0x63-0x64}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc|abd|aef|bcx|bcy" : GoString), ("alt{cat{lit{a}alt{cat{lit{b}cc{0x63-0x64}}str{ef}}}cat{str{bc}cc{0x78-0x79}}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc|x|abd" : GoString), ("alt{str{abc}lit{x}str{abd}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)abc|ABD" : GoString), ("cat{strfold{AB}cc{0x43-0x44 0x63-0x64}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[ab]c|[ab]d" : GoString), ("cat{cc{0x61-0x62}cc{0x63-0x64}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest((".c|.d" : GoString), ("cat{dot{}cc{0x63-0x64}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{2}|x{2}[0-9]" : GoString), ("cat{rep{2,2 lit{x}}alt{emp{}cc{0x30-0x39}}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{2}y|x{2}[0-9]y" : GoString), ("cat{rep{2,2 lit{x}}alt{lit{y}cat{cc{0x30-0x39}lit{y}}}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a.*?c|a.*?b" : GoString), ("cat{lit{a}alt{cat{nstar{dot{}}lit{c}}cat{nstar{dot{}}lit{b}}}}" : GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("((((((((((x{2}){2}){2}){2}){2}){2}){2}){2}){2}))" : GoString), Go.str()) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("((((((((((x{1}){2}){2}){2}){2}){2}){2}){2}){2}){2})" : GoString), Go.str()) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(stdgo.strings.Strings.repeat(("(" : GoString), (999 : GoInt)) + stdgo.strings.Strings.repeat((")" : GoString), (999 : GoInt)), Go.str()) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(stdgo.strings.Strings.repeat(("(?:" : GoString), (999 : GoInt)) + stdgo.strings.Strings.repeat((")*" : GoString), (999 : GoInt)), Go.str()) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest((("(" : GoString) + stdgo.strings.Strings.repeat(("|" : GoString), (12345 : GoInt))) + (")" : GoString), Go.str()) : stdgo.regexp.syntax.Syntax.T_parseTest)) : Slice<stdgo.regexp.syntax.Syntax.T_parseTest>);
/**
    
    
    
**/
private var _invalidRegexps = (new Slice<GoString>(
39,
39,
("(" : GoString),
(")" : GoString),
("(a" : GoString),
("a)" : GoString),
("(a))" : GoString),
("(a|b|" : GoString),
("a|b|)" : GoString),
("(a|b|))" : GoString),
("(a|b" : GoString),
("a|b)" : GoString),
("(a|b))" : GoString),
("[a-z" : GoString),
("([a-z)" : GoString),
("[a-z)" : GoString),
("([a-z]))" : GoString),
("x{1001}" : GoString),
("x{9876543210}" : GoString),
("x{2,1}" : GoString),
("x{1,9876543210}" : GoString),
Go.str(255),
Go.str("[", 255, "]"),
Go.str("[\\", 255, "]"),
Go.str("\\", 255),
("(?P<name>a" : GoString),
("(?P<name>" : GoString),
("(?P<name" : GoString),
("(?P<x y>a)" : GoString),
("(?P<>a)" : GoString),
("[a-Z]" : GoString),
("(?i)[a-Z]" : GoString),
("\\Q\\E*" : GoString),
("a{100000}" : GoString),
("a{100000,}" : GoString),
("((((((((((x{2}){2}){2}){2}){2}){2}){2}){2}){2}){2})" : GoString),
stdgo.strings.Strings.repeat(("(" : GoString), (1000 : GoInt)) + stdgo.strings.Strings.repeat((")" : GoString), (1000 : GoInt)),
stdgo.strings.Strings.repeat(("(?:" : GoString), (1000 : GoInt)) + stdgo.strings.Strings.repeat((")*" : GoString), (1000 : GoInt)),
(("(" : GoString) + stdgo.strings.Strings.repeat(("(xx?)" : GoString), (1000 : GoInt))) + ("){1000}" : GoString),
stdgo.strings.Strings.repeat(("(xx?){1000}" : GoString), (1000 : GoInt)),
stdgo.strings.Strings.repeat(("\\pL" : GoString), (27000 : GoInt))) : Slice<GoString>);
/**
    
    
    
**/
private var _onlyPerl = (new Slice<GoString>(
9,
9,
("[a-b-c]" : GoString),
("\\Qabc\\E" : GoString),
("\\Q*+?{[\\E" : GoString),
("\\Q\\\\E" : GoString),
("\\Q\\\\\\E" : GoString),
("\\Q\\\\\\\\E" : GoString),
("\\Q\\\\\\\\\\E" : GoString),
("(?:a)" : GoString),
("(?P<name>a)" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _onlyPOSIX = (new Slice<GoString>(6, 6, ("a++" : GoString), ("a**" : GoString), ("a?*" : GoString), ("a+*" : GoString), ("a{1}*" : GoString), (".{1}{2}.{3}" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _compileTests = (new Slice<T__struct_0>(
16,
16,
({ regexp : ("a" : GoString), prog : ("  0\tfail\n  1*\trune1 \"a\" -> 2\n  2\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("[A-M][n-z]" : GoString), prog : ("  0\tfail\n  1*\trune \"AM\" -> 2\n  2\trune \"nz\" -> 3\n  3\tmatch\n" : GoString) } : T__struct_0),
({ regexp : Go.str(), prog : ("  0\tfail\n  1*\tnop -> 2\n  2\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("a?" : GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 3\n  2*\talt -> 1, 3\n  3\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("a??" : GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 3\n  2*\talt -> 3, 1\n  3\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("a+" : GoString), prog : ("  0\tfail\n  1*\trune1 \"a\" -> 2\n  2\talt -> 1, 3\n  3\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("a+?" : GoString), prog : ("  0\tfail\n  1*\trune1 \"a\" -> 2\n  2\talt -> 3, 1\n  3\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("a*" : GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 2\n  2*\talt -> 1, 3\n  3\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("a*?" : GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 2\n  2*\talt -> 3, 1\n  3\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("a+b+" : GoString), prog : ("  0\tfail\n  1*\trune1 \"a\" -> 2\n  2\talt -> 1, 3\n  3\trune1 \"b\" -> 4\n  4\talt -> 3, 5\n  5\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("(a+)(b+)" : GoString), prog : ("  0\tfail\n  1*\tcap 2 -> 2\n  2\trune1 \"a\" -> 3\n  3\talt -> 2, 4\n  4\tcap 3 -> 5\n  5\tcap 4 -> 6\n  6\trune1 \"b\" -> 7\n  7\talt -> 6, 8\n  8\tcap 5 -> 9\n  9\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("a+|b+" : GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 2\n  2\talt -> 1, 6\n  3\trune1 \"b\" -> 4\n  4\talt -> 3, 6\n  5*\talt -> 1, 3\n  6\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("A[Aa]" : GoString), prog : ("  0\tfail\n  1*\trune1 \"A\" -> 2\n  2\trune \"A\"/i -> 3\n  3\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("(?:(?:^).)" : GoString), prog : ("  0\tfail\n  1*\tempty 4 -> 2\n  2\tanynotnl -> 3\n  3\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("(?:|a)+" : GoString), prog : ("  0\tfail\n  1\tnop -> 4\n  2\trune1 \"a\" -> 4\n  3*\talt -> 1, 2\n  4\talt -> 3, 5\n  5\tmatch\n" : GoString) } : T__struct_0),
({ regexp : ("(?:|a)*" : GoString), prog : ("  0\tfail\n  1\tnop -> 4\n  2\trune1 \"a\" -> 4\n  3\talt -> 1, 2\n  4\talt -> 3, 6\n  5*\talt -> 3, 6\n  6\tmatch\n" : GoString) } : T__struct_0)) : Slice<T__struct_0>);
/**
    
    
    
**/
private var _simplifyTests = (new Slice<T__struct_1>(
97,
97,
({ regexp : ("a" : GoString), simple : ("a" : GoString) } : T__struct_1),
({ regexp : ("ab" : GoString), simple : ("ab" : GoString) } : T__struct_1),
({ regexp : ("a|b" : GoString), simple : ("[a-b]" : GoString) } : T__struct_1),
({ regexp : ("ab|cd" : GoString), simple : ("ab|cd" : GoString) } : T__struct_1),
({ regexp : ("(ab)*" : GoString), simple : ("(ab)*" : GoString) } : T__struct_1),
({ regexp : ("(ab)+" : GoString), simple : ("(ab)+" : GoString) } : T__struct_1),
({ regexp : ("(ab)?" : GoString), simple : ("(ab)?" : GoString) } : T__struct_1),
({ regexp : ("." : GoString), simple : ("(?s:.)" : GoString) } : T__struct_1),
({ regexp : ("^" : GoString), simple : ("(?m:^)" : GoString) } : T__struct_1),
({ regexp : ("$" : GoString), simple : ("(?m:$)" : GoString) } : T__struct_1),
({ regexp : ("[ac]" : GoString), simple : ("[ac]" : GoString) } : T__struct_1),
({ regexp : ("[^ac]" : GoString), simple : ("[^ac]" : GoString) } : T__struct_1),
({ regexp : ("[[:alnum:]]" : GoString), simple : ("[0-9A-Za-z]" : GoString) } : T__struct_1),
({ regexp : ("[[:alpha:]]" : GoString), simple : ("[A-Za-z]" : GoString) } : T__struct_1),
({ regexp : ("[[:blank:]]" : GoString), simple : ("[\\t ]" : GoString) } : T__struct_1),
({ regexp : ("[[:cntrl:]]" : GoString), simple : ("[\\x00-\\x1f\\x7f]" : GoString) } : T__struct_1),
({ regexp : ("[[:digit:]]" : GoString), simple : ("[0-9]" : GoString) } : T__struct_1),
({ regexp : ("[[:graph:]]" : GoString), simple : ("[!-~]" : GoString) } : T__struct_1),
({ regexp : ("[[:lower:]]" : GoString), simple : ("[a-z]" : GoString) } : T__struct_1),
({ regexp : ("[[:print:]]" : GoString), simple : ("[ -~]" : GoString) } : T__struct_1),
({ regexp : ("[[:punct:]]" : GoString), simple : ("[!-/:-@\\[-`\\{-~]" : GoString) } : T__struct_1),
({ regexp : ("[[:space:]]" : GoString), simple : ("[\\t-\\r ]" : GoString) } : T__struct_1),
({ regexp : ("[[:upper:]]" : GoString), simple : ("[A-Z]" : GoString) } : T__struct_1),
({ regexp : ("[[:xdigit:]]" : GoString), simple : ("[0-9A-Fa-f]" : GoString) } : T__struct_1),
({ regexp : ("\\d" : GoString), simple : ("[0-9]" : GoString) } : T__struct_1),
({ regexp : ("\\s" : GoString), simple : ("[\\t-\\n\\f-\\r ]" : GoString) } : T__struct_1),
({ regexp : ("\\w" : GoString), simple : ("[0-9A-Z_a-z]" : GoString) } : T__struct_1),
({ regexp : ("\\D" : GoString), simple : ("[^0-9]" : GoString) } : T__struct_1),
({ regexp : ("\\S" : GoString), simple : ("[^\\t-\\n\\f-\\r ]" : GoString) } : T__struct_1),
({ regexp : ("\\W" : GoString), simple : ("[^0-9A-Z_a-z]" : GoString) } : T__struct_1),
({ regexp : ("[\\d]" : GoString), simple : ("[0-9]" : GoString) } : T__struct_1),
({ regexp : ("[\\s]" : GoString), simple : ("[\\t-\\n\\f-\\r ]" : GoString) } : T__struct_1),
({ regexp : ("[\\w]" : GoString), simple : ("[0-9A-Z_a-z]" : GoString) } : T__struct_1),
({ regexp : ("[\\D]" : GoString), simple : ("[^0-9]" : GoString) } : T__struct_1),
({ regexp : ("[\\S]" : GoString), simple : ("[^\\t-\\n\\f-\\r ]" : GoString) } : T__struct_1),
({ regexp : ("[\\W]" : GoString), simple : ("[^0-9A-Z_a-z]" : GoString) } : T__struct_1),
({ regexp : ("a{1}" : GoString), simple : ("a" : GoString) } : T__struct_1),
({ regexp : ("a{2}" : GoString), simple : ("aa" : GoString) } : T__struct_1),
({ regexp : ("a{5}" : GoString), simple : ("aaaaa" : GoString) } : T__struct_1),
({ regexp : ("a{0,1}" : GoString), simple : ("a?" : GoString) } : T__struct_1),
({ regexp : ("(a){0,2}" : GoString), simple : ("(?:(a)(a)?)?" : GoString) } : T__struct_1),
({ regexp : ("(a){0,4}" : GoString), simple : ("(?:(a)(?:(a)(?:(a)(a)?)?)?)?" : GoString) } : T__struct_1),
({ regexp : ("(a){2,6}" : GoString), simple : ("(a)(a)(?:(a)(?:(a)(?:(a)(a)?)?)?)?" : GoString) } : T__struct_1),
({ regexp : ("a{0,2}" : GoString), simple : ("(?:aa?)?" : GoString) } : T__struct_1),
({ regexp : ("a{0,4}" : GoString), simple : ("(?:a(?:a(?:aa?)?)?)?" : GoString) } : T__struct_1),
({ regexp : ("a{2,6}" : GoString), simple : ("aa(?:a(?:a(?:aa?)?)?)?" : GoString) } : T__struct_1),
({ regexp : ("a{0,}" : GoString), simple : ("a*" : GoString) } : T__struct_1),
({ regexp : ("a{1,}" : GoString), simple : ("a+" : GoString) } : T__struct_1),
({ regexp : ("a{2,}" : GoString), simple : ("aa+" : GoString) } : T__struct_1),
({ regexp : ("a{5,}" : GoString), simple : ("aaaaa+" : GoString) } : T__struct_1),
({ regexp : ("(?:a{1,}){1,}" : GoString), simple : ("a+" : GoString) } : T__struct_1),
({ regexp : ("(a{1,}b{1,})" : GoString), simple : ("(a+b+)" : GoString) } : T__struct_1),
({ regexp : ("a{1,}|b{1,}" : GoString), simple : ("a+|b+" : GoString) } : T__struct_1),
({ regexp : ("(?:a{1,})*" : GoString), simple : ("(?:a+)*" : GoString) } : T__struct_1),
({ regexp : ("(?:a{1,})+" : GoString), simple : ("a+" : GoString) } : T__struct_1),
({ regexp : ("(?:a{1,})?" : GoString), simple : ("(?:a+)?" : GoString) } : T__struct_1),
({ regexp : Go.str(), simple : ("(?:)" : GoString) } : T__struct_1),
({ regexp : ("a{0}" : GoString), simple : ("(?:)" : GoString) } : T__struct_1),
({ regexp : ("[ab]" : GoString), simple : ("[a-b]" : GoString) } : T__struct_1),
({ regexp : ("[a-za-za-z]" : GoString), simple : ("[a-z]" : GoString) } : T__struct_1),
({ regexp : ("[A-Za-zA-Za-z]" : GoString), simple : ("[A-Za-z]" : GoString) } : T__struct_1),
({ regexp : ("[ABCDEFGH]" : GoString), simple : ("[A-H]" : GoString) } : T__struct_1),
({ regexp : ("[AB-CD-EF-GH]" : GoString), simple : ("[A-H]" : GoString) } : T__struct_1),
({ regexp : ("[W-ZP-XE-R]" : GoString), simple : ("[E-Z]" : GoString) } : T__struct_1),
({ regexp : ("[a-ee-gg-m]" : GoString), simple : ("[a-m]" : GoString) } : T__struct_1),
({ regexp : ("[a-ea-ha-m]" : GoString), simple : ("[a-m]" : GoString) } : T__struct_1),
({ regexp : ("[a-ma-ha-e]" : GoString), simple : ("[a-m]" : GoString) } : T__struct_1),
({ regexp : ("[a-zA-Z0-9 -~]" : GoString), simple : ("[ -~]" : GoString) } : T__struct_1),
({ regexp : ("[^[:cntrl:][:^cntrl:]]" : GoString), simple : ("[^\\x00-\\x{10FFFF}]" : GoString) } : T__struct_1),
({ regexp : ("[[:cntrl:][:^cntrl:]]" : GoString), simple : ("(?s:.)" : GoString) } : T__struct_1),
({ regexp : ("(?i)A" : GoString), simple : ("(?i:A)" : GoString) } : T__struct_1),
({ regexp : ("(?i)a" : GoString), simple : ("(?i:A)" : GoString) } : T__struct_1),
({ regexp : ("(?i)[A]" : GoString), simple : ("(?i:A)" : GoString) } : T__struct_1),
({ regexp : ("(?i)[a]" : GoString), simple : ("(?i:A)" : GoString) } : T__struct_1),
({ regexp : ("(?i)K" : GoString), simple : ("(?i:K)" : GoString) } : T__struct_1),
({ regexp : ("(?i)k" : GoString), simple : ("(?i:K)" : GoString) } : T__struct_1),
({ regexp : ("(?i)\\x{212a}" : GoString), simple : ("(?i:K)" : GoString) } : T__struct_1),
({ regexp : ("(?i)[K]" : GoString), simple : ("[KkK]" : GoString) } : T__struct_1),
({ regexp : ("(?i)[k]" : GoString), simple : ("[KkK]" : GoString) } : T__struct_1),
({ regexp : ("(?i)[\\x{212a}]" : GoString), simple : ("[KkK]" : GoString) } : T__struct_1),
({ regexp : ("(?i)[a-z]" : GoString), simple : ("[A-Za-zſK]" : GoString) } : T__struct_1),
({ regexp : ("(?i)[\\x00-\\x{FFFD}]" : GoString), simple : ("[\\x00-�]" : GoString) } : T__struct_1),
({ regexp : ("(?i)[\\x00-\\x{10FFFF}]" : GoString), simple : ("(?s:.)" : GoString) } : T__struct_1),
({ regexp : ("(a|b|)" : GoString), simple : ("([a-b]|(?:))" : GoString) } : T__struct_1),
({ regexp : ("(|)" : GoString), simple : ("()" : GoString) } : T__struct_1),
({ regexp : ("a()" : GoString), simple : ("a()" : GoString) } : T__struct_1),
({ regexp : ("(()|())" : GoString), simple : ("(()|())" : GoString) } : T__struct_1),
({ regexp : ("(a|)" : GoString), simple : ("(a|(?:))" : GoString) } : T__struct_1),
({ regexp : ("ab()cd()" : GoString), simple : ("ab()cd()" : GoString) } : T__struct_1),
({ regexp : ("()" : GoString), simple : ("()" : GoString) } : T__struct_1),
({ regexp : ("()*" : GoString), simple : ("()*" : GoString) } : T__struct_1),
({ regexp : ("()+" : GoString), simple : ("()+" : GoString) } : T__struct_1),
({ regexp : ("()?" : GoString), simple : ("()?" : GoString) } : T__struct_1),
({ regexp : ("(){0}" : GoString), simple : ("(?:)" : GoString) } : T__struct_1),
({ regexp : ("(){1}" : GoString), simple : ("()" : GoString) } : T__struct_1),
({ regexp : ("(){1,}" : GoString), simple : ("()+" : GoString) } : T__struct_1),
({ regexp : ("(){0,2}" : GoString), simple : ("(?:()()?)?" : GoString) } : T__struct_1)) : Slice<T__struct_1>);
/**
    
    
    
**/
private final __Op_name_0 = ("NoMatchEmptyMatchLiteralCharClassAnyCharNotNLAnyCharBeginLineEndLineBeginTextEndTextWordBoundaryNoWordBoundaryCaptureStarPlusQuestRepeatConcatAlternate" : GoString);
/**
    
    
    
**/
private final __Op_name_1 = ("opPseudo" : GoString);
/**
    // Unexpected error
    
    
**/
final errInternalError : ErrorCode = (("regexp/syntax: internal error" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    // Parse errors
    
    
**/
final errInvalidCharClass : ErrorCode = (("invalid character class" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidCharRange : ErrorCode = (("invalid character class range" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidEscape : ErrorCode = (("invalid escape sequence" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidNamedCapture : ErrorCode = (("invalid named capture" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidPerlOp : ErrorCode = (("invalid or unsupported Perl syntax" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidRepeatOp : ErrorCode = (("invalid nested repetition operator" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidRepeatSize : ErrorCode = (("invalid repeat count" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidUTF8 : ErrorCode = (("invalid UTF-8" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errMissingBracket : ErrorCode = (("missing closing ]" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errMissingParen : ErrorCode = (("missing closing )" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errMissingRepeatArgument : ErrorCode = (("missing argument to repetition operator" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errTrailingBackslash : ErrorCode = (("trailing backslash at end of expression" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errUnexpectedParen : ErrorCode = (("unexpected )" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errNestingDepth : ErrorCode = (("expression nests too deeply" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errLarge : ErrorCode = (("expression too large" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    // case-insensitive match
**/
final foldCase : Flags = (512 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    // treat pattern as literal string
**/
final literal = (512 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    // allow character classes like [^a-z] and [[:space:]] to match newline
**/
final classNL = (512 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    // allow . to match newline
**/
final dotNL = (512 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    // treat ^ and $ as only matching at beginning and end of text
**/
final oneLine = (512 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    // make repetition operators default to non-greedy
**/
final nonGreedy = (512 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    // allow Perl extensions
**/
final perlX = (512 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    // allow \p{Han}, \P{Han} for Unicode group and negation
**/
final unicodeGroups = (512 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    // regexp OpEndText was $, not \z
**/
final wasDollar = (512 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    // regexp contains no counted repetition
**/
final simple = (512 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    
**/
final matchNL = (12 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    // as close to Perl as possible
**/
final perl = (212 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    // POSIX syntax
**/
final posix : Flags = (0 : stdgo.regexp.syntax.Syntax.Flags);
/**
    // Pseudo-ops for parsing stack.
    
    
**/
private final _opLeftParen = (129 : stdgo.regexp.syntax.Syntax.Op);
/**
    // Pseudo-ops for parsing stack.
    
    
**/
private final _opVerticalBar = (129 : stdgo.regexp.syntax.Syntax.Op);
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
private final _maxHeight = (1000i64 : GoUInt64);
/**
    // maxSize is the maximum size of a compiled regexp in Insts.
    // It too is somewhat arbitrarily chosen, but the idea is to be large enough
    // to allow significant regexps while at the same time small enough that
    // the compiled form will not take up too much memory.
    // 128 MB is enough for a 3.3 million Inst structures, which roughly
    // corresponds to a 3.3 MB regexp.
    
    
**/
private final _maxSize = (3355443i64 : GoUInt64);
/**
    // maxSize is the maximum size of a compiled regexp in Insts.
    // It too is somewhat arbitrarily chosen, but the idea is to be large enough
    // to allow significant regexps while at the same time small enough that
    // the compiled form will not take up too much memory.
    // 128 MB is enough for a 3.3 million Inst structures, which roughly
    // corresponds to a 3.3 MB regexp.
    
    // byte, 2 uint32, slice is 5 64-bit words
**/
private final _instSize = (40i64 : GoUInt64);
/**
    // maxRunes is the maximum number of runes allowed in a regexp tree
    // counting the runes in all the nodes.
    // Ignoring character classes p.numRunes is always less than the length of the regexp.
    // Character classes can make it much larger: each \pL adds 1292 runes.
    // 128 MB is enough for 32M runes, which is over 26k \pL instances.
    // Note that repetitions do not make copies of the rune slices,
    // so \pL{1000} is only one rune slice, not 1000.
    // We could keep a cache of character classes we've seen,
    // so that all the \pL we see use the same rune list,
    // but that doesn't remove the problem entirely:
    // consider something like [\pL01234][\pL01235][\pL01236]...[\pL^&*()].
    // And because the Rune slice is exposed directly in the Regexp,
    // there is not an opportunity to change the representation to allow
    // partial sharing between different character classes.
    // So the limit is the best we can do.
    
    
**/
private final _maxRunes = (33554432i64 : GoUInt64);
/**
    // maxRunes is the maximum number of runes allowed in a regexp tree
    // counting the runes in all the nodes.
    // Ignoring character classes p.numRunes is always less than the length of the regexp.
    // Character classes can make it much larger: each \pL adds 1292 runes.
    // 128 MB is enough for 32M runes, which is over 26k \pL instances.
    // Note that repetitions do not make copies of the rune slices,
    // so \pL{1000} is only one rune slice, not 1000.
    // We could keep a cache of character classes we've seen,
    // so that all the \pL we see use the same rune list,
    // but that doesn't remove the problem entirely:
    // consider something like [\pL01234][\pL01235][\pL01236]...[\pL^&*()].
    // And because the Rune slice is exposed directly in the Regexp,
    // there is not an opportunity to change the representation to allow
    // partial sharing between different character classes.
    // So the limit is the best we can do.
    
    // rune is int32
**/
private final _runeSize = (4i64 : GoUInt64);
/**
    // minimum and maximum runes involved in folding.
    // checked during test.
    
    
**/
private final _minFold = (65i64 : GoUInt64);
/**
    
    
    
**/
private final _maxFold = (125251i64 : GoUInt64);
/**
    
    
    
**/
private final _testFlags = (204 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    
**/
final instAlt : InstOp = (10 : stdgo.regexp.syntax.Syntax.InstOp);
/**
    
    
    
**/
final instAltMatch = (10 : stdgo.regexp.syntax.Syntax.InstOp);
/**
    
    
    
**/
final instCapture = (10 : stdgo.regexp.syntax.Syntax.InstOp);
/**
    
    
    
**/
final instEmptyWidth = (10 : stdgo.regexp.syntax.Syntax.InstOp);
/**
    
    
    
**/
final instMatch = (10 : stdgo.regexp.syntax.Syntax.InstOp);
/**
    
    
    
**/
final instFail = (10 : stdgo.regexp.syntax.Syntax.InstOp);
/**
    
    
    
**/
final instNop = (10 : stdgo.regexp.syntax.Syntax.InstOp);
/**
    
    
    
**/
final instRune = (10 : stdgo.regexp.syntax.Syntax.InstOp);
/**
    
    
    
**/
final instRune1 = (10 : stdgo.regexp.syntax.Syntax.InstOp);
/**
    
    
    
**/
final instRuneAny = (10 : stdgo.regexp.syntax.Syntax.InstOp);
/**
    
    
    
**/
final instRuneAnyNotNL = (10 : stdgo.regexp.syntax.Syntax.InstOp);
/**
    
    
    
**/
final emptyBeginLine : EmptyOp = (32 : stdgo.regexp.syntax.Syntax.EmptyOp);
/**
    
    
    
**/
final emptyEndLine = (32 : stdgo.regexp.syntax.Syntax.EmptyOp);
/**
    
    
    
**/
final emptyBeginText = (32 : stdgo.regexp.syntax.Syntax.EmptyOp);
/**
    
    
    
**/
final emptyEndText = (32 : stdgo.regexp.syntax.Syntax.EmptyOp);
/**
    
    
    
**/
final emptyWordBoundary = (32 : stdgo.regexp.syntax.Syntax.EmptyOp);
/**
    
    
    
**/
final emptyNoWordBoundary = (32 : stdgo.regexp.syntax.Syntax.EmptyOp);
/**
    
    
    
**/
private final _noMatch = (0i64 : GoUInt64);
/**
    
    
    // matches no strings
**/
final opNoMatch : Op = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches empty string
**/
final opEmptyMatch = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches Runes sequence
**/
final opLiteral = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches Runes interpreted as range pair list
**/
final opCharClass = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches any character except newline
**/
final opAnyCharNotNL = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches any character
**/
final opAnyChar = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches empty string at beginning of line
**/
final opBeginLine = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches empty string at end of line
**/
final opEndLine = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches empty string at beginning of text
**/
final opBeginText = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches empty string at end of text
**/
final opEndText = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches word boundary `\b`
**/
final opWordBoundary = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches word non-boundary `\B`
**/
final opNoWordBoundary = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // capturing subexpression with index Cap, optional name Name
**/
final opCapture = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches Sub[0] zero or more times
**/
final opStar = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches Sub[0] one or more times
**/
final opPlus = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches Sub[0] zero or one times
**/
final opQuest = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches Sub[0] at least Min times, at most Max (Max == -1 is no limit)
**/
final opRepeat = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches concatenation of Subs
**/
final opConcat = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // matches alternation of Subs
**/
final opAlternate = (19 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    // where pseudo-ops start
**/
private final _opPseudo : Op = (128 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    
**/
private final _meta = ("\\.+*?()|[]{}^$" : GoString);
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
@:structInit @:private @:using(stdgo.regexp.syntax.Syntax.T_patchList_static_extension) class T_patchList {
    public var _head : GoUInt32 = 0;
    public var _tail : GoUInt32 = 0;
    public function new(?_head:GoUInt32, ?_tail:GoUInt32) {
        if (_head != null) this._head = _head;
        if (_tail != null) this._tail = _tail;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_patchList(_head, _tail);
    }
}
/**
    // A frag represents a compiled program fragment.
    
    
**/
@:structInit @:private class T_frag {
    public var _i : GoUInt32 = 0;
    public var _out : stdgo.regexp.syntax.Syntax.T_patchList = ({} : stdgo.regexp.syntax.Syntax.T_patchList);
    public var _nullable : Bool = false;
    public function new(?_i:GoUInt32, ?_out:stdgo.regexp.syntax.Syntax.T_patchList, ?_nullable:Bool) {
        if (_i != null) this._i = _i;
        if (_out != null) this._out = _out;
        if (_nullable != null) this._nullable = _nullable;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_frag(_i, _out, _nullable);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.regexp.syntax.Syntax.T_compiler_static_extension) class T_compiler {
    public var _p : Ref<stdgo.regexp.syntax.Syntax.Prog> = (null : Ref<stdgo.regexp.syntax.Syntax.Prog>);
    public function new(?_p:Ref<stdgo.regexp.syntax.Syntax.Prog>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_compiler(_p);
    }
}
/**
    // An Error describes a failure to parse a regular expression
    // and gives the offending expression.
    
    
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_error_static_extension) class T_error {
    public var code : stdgo.regexp.syntax.Syntax.ErrorCode = (("" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
    public var expr : GoString = "";
    public function new(?code:stdgo.regexp.syntax.Syntax.ErrorCode, ?expr:GoString) {
        if (code != null) this.code = code;
        if (expr != null) this.expr = expr;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_error(code, expr);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.regexp.syntax.Syntax.T_parser_static_extension) class T_parser {
    public var _flags : stdgo.regexp.syntax.Syntax.Flags = ((0 : GoUInt16) : stdgo.regexp.syntax.Syntax.Flags);
    public var _stack : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>> = (null : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
    public var _free : Ref<stdgo.regexp.syntax.Syntax.Regexp> = (null : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
    public var _numCap : GoInt = 0;
    public var _wholeRegexp : GoString = "";
    public var _tmpClass : Slice<GoInt32> = (null : Slice<GoInt32>);
    public var _numRegexp : GoInt = 0;
    public var _numRunes : GoInt = 0;
    public var _repeats : GoInt64 = 0;
    public var _height : GoMap<Ref<stdgo.regexp.syntax.Syntax.Regexp>, GoInt> = (null : GoMap<Ref<stdgo.regexp.syntax.Syntax.Regexp>, GoInt>);
    public var _size : GoMap<Ref<stdgo.regexp.syntax.Syntax.Regexp>, GoInt64> = (null : GoMap<Ref<stdgo.regexp.syntax.Syntax.Regexp>, GoInt64>);
    public function new(?_flags:stdgo.regexp.syntax.Syntax.Flags, ?_stack:Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>, ?_free:Ref<stdgo.regexp.syntax.Syntax.Regexp>, ?_numCap:GoInt, ?_wholeRegexp:GoString, ?_tmpClass:Slice<GoInt32>, ?_numRegexp:GoInt, ?_numRunes:GoInt, ?_repeats:GoInt64, ?_height:GoMap<Ref<stdgo.regexp.syntax.Syntax.Regexp>, GoInt>, ?_size:GoMap<Ref<stdgo.regexp.syntax.Syntax.Regexp>, GoInt64>) {
        if (_flags != null) this._flags = _flags;
        if (_stack != null) this._stack = _stack;
        if (_free != null) this._free = _free;
        if (_numCap != null) this._numCap = _numCap;
        if (_wholeRegexp != null) this._wholeRegexp = _wholeRegexp;
        if (_tmpClass != null) this._tmpClass = _tmpClass;
        if (_numRegexp != null) this._numRegexp = _numRegexp;
        if (_numRunes != null) this._numRunes = _numRunes;
        if (_repeats != null) this._repeats = _repeats;
        if (_height != null) this._height = _height;
        if (_size != null) this._size = _size;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_parser(
_flags,
_stack,
_free,
_numCap,
_wholeRegexp,
_tmpClass,
_numRegexp,
_numRunes,
_repeats,
_height,
_size);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_charGroup {
    public var _sign : GoInt = 0;
    public var _class : Slice<GoInt32> = (null : Slice<GoInt32>);
    public function new(?_sign:GoInt, ?_class:Slice<GoInt32>) {
        if (_sign != null) this._sign = _sign;
        if (_class != null) this._class = _class;
    }
    public function __underlying__() return Go.toInterface(this);
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
@:structInit @:private @:using(stdgo.regexp.syntax.Syntax.T_ranges_static_extension) class T_ranges {
    public var _p : Ref<Slice<GoInt32>> = (null : Ref<Slice<GoInt32>>);
    public function new(?_p:Ref<Slice<GoInt32>>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_ranges(_p);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_parseTest {
    public var regexp : GoString = "";
    public var dump : GoString = "";
    public function new(?regexp:GoString, ?dump:GoString) {
        if (regexp != null) this.regexp = regexp;
        if (dump != null) this.dump = dump;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_parseTest(regexp, dump);
    }
}
/**
    // A Prog is a compiled regular expression program.
    
    
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.Prog_static_extension) class Prog {
    public var inst : Slice<stdgo.regexp.syntax.Syntax.Inst> = (null : Slice<stdgo.regexp.syntax.Syntax.Inst>);
    public var start : GoInt = 0;
    public var numCap : GoInt = 0;
    public function new(?inst:Slice<stdgo.regexp.syntax.Syntax.Inst>, ?start:GoInt, ?numCap:GoInt) {
        if (inst != null) this.inst = inst;
        if (start != null) this.start = start;
        if (numCap != null) this.numCap = numCap;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Prog(inst, start, numCap);
    }
}
/**
    // An Inst is a single instruction in a regular expression program.
    
    
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.Inst_static_extension) class Inst {
    public var op : stdgo.regexp.syntax.Syntax.InstOp = ((0 : GoUInt8) : stdgo.regexp.syntax.Syntax.InstOp);
    public var out : GoUInt32 = 0;
    public var arg : GoUInt32 = 0;
    public var rune : Slice<GoInt32> = (null : Slice<GoInt32>);
    public function new(?op:stdgo.regexp.syntax.Syntax.InstOp, ?out:GoUInt32, ?arg:GoUInt32, ?rune:Slice<GoInt32>) {
        if (op != null) this.op = op;
        if (out != null) this.out = out;
        if (arg != null) this.arg = arg;
        if (rune != null) this.rune = rune;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Inst(op, out, arg, rune);
    }
}
/**
    // A Regexp is a node in a regular expression syntax tree.
    
    
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.Regexp_static_extension) class Regexp {
    public var op : stdgo.regexp.syntax.Syntax.Op = ((0 : GoUInt8) : stdgo.regexp.syntax.Syntax.Op);
    public var flags : stdgo.regexp.syntax.Syntax.Flags = ((0 : GoUInt16) : stdgo.regexp.syntax.Syntax.Flags);
    public var sub : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>> = (null : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
    public var sub0 : GoArray<Ref<stdgo.regexp.syntax.Syntax.Regexp>> = new GoArray<Ref<stdgo.regexp.syntax.Syntax.Regexp>>(...[for (i in 0 ... 1) (null : Ref<stdgo.regexp.syntax.Syntax.Regexp>)]);
    public var rune : Slice<GoInt32> = (null : Slice<GoInt32>);
    public var rune0 : GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0 ... 2) (0 : GoInt32)]);
    public var min : GoInt = 0;
    public var max : GoInt = 0;
    public var cap : GoInt = 0;
    public var name : GoString = "";
    public function new(?op:stdgo.regexp.syntax.Syntax.Op, ?flags:stdgo.regexp.syntax.Syntax.Flags, ?sub:Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>, ?sub0:GoArray<Ref<stdgo.regexp.syntax.Syntax.Regexp>>, ?rune:Slice<GoInt32>, ?rune0:GoArray<GoInt32>, ?min:GoInt, ?max:GoInt, ?cap:GoInt, ?name:GoString) {
        if (op != null) this.op = op;
        if (flags != null) this.flags = flags;
        if (sub != null) this.sub = sub;
        if (sub0 != null) this.sub0 = sub0;
        if (rune != null) this.rune = rune;
        if (rune0 != null) this.rune0 = rune0;
        if (min != null) this.min = min;
        if (max != null) this.max = max;
        if (cap != null) this.cap = cap;
        if (name != null) this.name = name;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Regexp(op, flags, sub, sub0, rune, rune0, min, max, cap, name);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.regexp.syntax.Syntax.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var regexp : GoString;
    public var prog : GoString;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.regexp.syntax.Syntax.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var regexp : GoString;
    public var simple : GoString;
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
private function _makePatchList(_n:GoUInt32):T_patchList {
        return (new T_patchList(_n, _n) : T_patchList);
    }
/**
    // Compile compiles the regexp into a program to be executed.
    // The regexp should have been simplified already (returned from re.Simplify).
**/
function compile(_re:Ref<Regexp>):{ var _0 : Ref<Prog>; var _1 : Error; } {
        var _c:T_compiler = ({} : stdgo.regexp.syntax.Syntax.T_compiler);
        _c._init();
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._compile(_re)?.__copy__();
        _f._out._patch(_c._p, _c._inst((4 : stdgo.regexp.syntax.Syntax.InstOp))._i);
        _c._p.start = (_f._i : GoInt);
        return { _0 : _c._p, _1 : (null : Error) };
    }
/**
    // minFoldRune returns the minimum rune fold-equivalent to r.
**/
private function _minFoldRune(_r:GoRune):GoRune {
        if ((_r < (65 : GoInt32)) || (_r > (125251 : GoInt32))) {
            return _r;
        };
        var _min:GoInt32 = _r;
        var _r0:GoInt32 = _r;
        {
            _r = stdgo.unicode.Unicode.simpleFold(_r);
            Go.cfor(_r != (_r0), _r = stdgo.unicode.Unicode.simpleFold(_r), {
                if (_min > _r) {
                    _min = _r;
                };
            });
        };
        return _min;
    }
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
private function _repeatIsValid(_re:Ref<Regexp>, _n:GoInt):Bool {
        if (_re.op == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
            var _m:GoInt = _re.max;
            if (_m == ((0 : GoInt))) {
                return true;
            };
            if (_m < (0 : GoInt)) {
                _m = _re.min;
            };
            if (_m > _n) {
                return false;
            };
            if (_m > (0 : GoInt)) {
                _n = _n / (_m);
            };
        };
        for (__0 => _sub in _re.sub) {
            if (!_repeatIsValid(_sub, _n)) {
                return false;
            };
        };
        return true;
    }
/**
    // cleanAlt cleans re for eventual inclusion in an alternation.
**/
private function _cleanAlt(_re:Ref<Regexp>):Void {
        {
            final __value__ = _re.op;
            if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.Op))) {
                _re.rune = _cleanClass((Go.setRef(_re.rune) : Ref<Slice<GoInt32>>));
                if (((_re.rune.length == (2 : GoInt)) && (_re.rune[(0 : GoInt)] == (0 : GoInt32))) && (_re.rune[(1 : GoInt)] == (1114111 : GoInt32))) {
                    _re.rune = (null : Slice<GoInt32>);
                    _re.op = (6 : stdgo.regexp.syntax.Syntax.Op);
                    return;
                };
                if (((((_re.rune.length == (4 : GoInt)) && (_re.rune[(0 : GoInt)] == (0 : GoInt32))) && (_re.rune[(1 : GoInt)] == (9 : GoInt32))) && (_re.rune[(2 : GoInt)] == (11 : GoInt32))) && (_re.rune[(3 : GoInt)] == (1114111 : GoInt32))) {
                    _re.rune = (null : Slice<GoInt32>);
                    _re.op = (5 : stdgo.regexp.syntax.Syntax.Op);
                    return;
                };
                if ((_re.rune.capacity - _re.rune.length) > (100 : GoInt)) {
                    _re.rune = ((_re.rune0.__slice__(0, (0 : GoInt)) : Slice<GoInt32>).__append__(..._re.rune.__toArray__()));
                };
            };
        };
    }
private function _literalRegexp(_s:GoString, _flags:Flags):Ref<Regexp> {
        var _re = (Go.setRef(({ op : (3 : stdgo.regexp.syntax.Syntax.Op) } : Regexp)) : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
        _re.flags = _flags;
        _re.rune = (_re.rune0.__slice__(0, (0 : GoInt)) : Slice<GoInt32>);
        for (__0 => _c in _s) {
            if ((_re.rune.length) >= _re.rune.capacity) {
                _re.rune = (_s : Slice<GoRune>);
                break;
            };
            _re.rune = (_re.rune.__append__(_c));
        };
        return _re;
    }
/**
    // Parse parses a regular expression string s, controlled by the specified
    // Flags, and returns a regular expression parse tree. The syntax is
    // described in the top-level comment.
**/
function parse(_s:GoString, _flags:Flags):{ var _0 : Ref<Regexp>; var _1 : Error; } {
        return _parse(_s, _flags);
    }
private function _parse(_s:GoString, _flags:Flags):{ var _0 : Ref<Regexp>; var _1 : Error; } {
        stdgo.internal.Macro.controlFlow({
            var __deferstack__:Array<Void -> Void> = [];
            var _0:Ref<Regexp> = (null : Ref<stdgo.regexp.syntax.Syntax.Regexp>), _err:Error = (null : Error);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:AnyInterface = ({
                            final r = Go.recover_exception;
                            Go.recover_exception = null;
                            r;
                        });
                        {
                            final __value__ = _r;
                            if (__value__ == null) {} else if (__value__ == (Go.toInterface(Go.asInterface((("expression too large" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode))))) {
                                _err = Go.asInterface((Go.setRef(({ code : (("expression too large" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : _s } : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>));
                            } else if (__value__ == (Go.toInterface(Go.asInterface((("expression nests too deeply" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode))))) {
                                _err = Go.asInterface((Go.setRef(({ code : (("expression nests too deeply" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : _s } : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>));
                            } else {
                                throw Go.toInterface(_r);
                            };
                        };
                    };
                };
                a();
            });
            try {
                if (_flags & (2 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                    {
                        var _err:Error = _checkUTF8(_s);
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return { _0 : null, _1 : _err };
                            };
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _literalRegexp(_s, _flags), _1 : (null : Error) };
                    };
                };
                var __0:T_parser = ({} : stdgo.regexp.syntax.Syntax.T_parser), __1:GoRune = (0 : GoInt32), __2:Op = ((0 : GoUInt8) : stdgo.regexp.syntax.Syntax.Op), __3:GoString = ("" : GoString), _lastRepeat:GoString = __3, _op:Op = __2, _c:GoRune = __1, _p:T_parser = __0;
                _p._flags = _flags;
                _p._wholeRegexp = _s;
                var _t:GoString = _s;
                while (_t != (Go.str())) {
                    var _repeat:GoString = Go.str();
                    @:label("BigSwitch") {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _t[(0 : GoInt)];
                                if (__value__ == ((40 : GoUInt8))) {
                                    if ((((_p._flags & (64 : stdgo.regexp.syntax.Syntax.Flags)) != (0 : stdgo.regexp.syntax.Syntax.Flags)) && (_t.length >= (2 : GoInt))) && (_t[(1 : GoInt)] == (63 : GoUInt8))) {
                                        {
                                            {
                                                var __tmp__ = _p._parsePerlFlags(_t);
                                                _t = __tmp__._0;
                                                _err = __tmp__._1;
                                            };
                                            if (_err != null) {
                                                {
                                                    for (defer in __deferstack__) {
                                                        defer();
                                                    };
                                                    return { _0 : null, _1 : _err };
                                                };
                                            };
                                        };
                                        break;
                                    };
                                    _p._numCap++;
                                    _p._op((128 : stdgo.regexp.syntax.Syntax.Op)).cap = _p._numCap;
                                    _t = (_t.__slice__((1 : GoInt)) : GoString);
                                    break;
                                } else if (__value__ == ((124 : GoUInt8))) {
                                    {
                                        _err = _p._parseVerticalBar();
                                        if (_err != null) {
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return { _0 : null, _1 : _err };
                                            };
                                        };
                                    };
                                    _t = (_t.__slice__((1 : GoInt)) : GoString);
                                    break;
                                } else if (__value__ == ((41 : GoUInt8))) {
                                    {
                                        _err = _p._parseRightParen();
                                        if (_err != null) {
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return { _0 : null, _1 : _err };
                                            };
                                        };
                                    };
                                    _t = (_t.__slice__((1 : GoInt)) : GoString);
                                    break;
                                } else if (__value__ == ((94 : GoUInt8))) {
                                    if (_p._flags & (16 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                                        _p._op((9 : stdgo.regexp.syntax.Syntax.Op));
                                    } else {
                                        _p._op((7 : stdgo.regexp.syntax.Syntax.Op));
                                    };
                                    _t = (_t.__slice__((1 : GoInt)) : GoString);
                                    break;
                                } else if (__value__ == ((36 : GoUInt8))) {
                                    if (_p._flags & (16 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                                        _p._op((10 : stdgo.regexp.syntax.Syntax.Op)).flags = _p._op((10 : stdgo.regexp.syntax.Syntax.Op)).flags | ((256 : stdgo.regexp.syntax.Syntax.Flags));
                                    } else {
                                        _p._op((8 : stdgo.regexp.syntax.Syntax.Op));
                                    };
                                    _t = (_t.__slice__((1 : GoInt)) : GoString);
                                    break;
                                } else if (__value__ == ((46 : GoUInt8))) {
                                    if (_p._flags & (8 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                                        _p._op((6 : stdgo.regexp.syntax.Syntax.Op));
                                    } else {
                                        _p._op((5 : stdgo.regexp.syntax.Syntax.Op));
                                    };
                                    _t = (_t.__slice__((1 : GoInt)) : GoString);
                                    break;
                                } else if (__value__ == ((91 : GoUInt8))) {
                                    {
                                        {
                                            var __tmp__ = _p._parseClass(_t);
                                            _t = __tmp__._0;
                                            _err = __tmp__._1;
                                        };
                                        if (_err != null) {
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return { _0 : null, _1 : _err };
                                            };
                                        };
                                    };
                                    break;
                                } else if (__value__ == ((42 : GoUInt8)) || __value__ == ((43 : GoUInt8)) || __value__ == ((63 : GoUInt8))) {
                                    var _before:GoString = _t;
                                    {
                                        final __value__ = _t[(0 : GoInt)];
                                        if (__value__ == ((42 : GoUInt8))) {
                                            _op = (14 : stdgo.regexp.syntax.Syntax.Op);
                                        } else if (__value__ == ((43 : GoUInt8))) {
                                            _op = (15 : stdgo.regexp.syntax.Syntax.Op);
                                        } else if (__value__ == ((63 : GoUInt8))) {
                                            _op = (16 : stdgo.regexp.syntax.Syntax.Op);
                                        };
                                    };
                                    var _after:GoString = (_t.__slice__((1 : GoInt)) : GoString);
                                    {
                                        {
                                            var __tmp__ = _p._repeat(_op, (0 : GoInt), (0 : GoInt), _before, _after, _lastRepeat);
                                            _after = __tmp__._0;
                                            _err = __tmp__._1;
                                        };
                                        if (_err != null) {
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return { _0 : null, _1 : _err };
                                            };
                                        };
                                    };
                                    _repeat = _before;
                                    _t = _after;
                                    break;
                                } else if (__value__ == ((123 : GoUInt8))) {
                                    _op = (17 : stdgo.regexp.syntax.Syntax.Op);
                                    var _before:GoString = _t;
                                    var __tmp__ = _p._parseRepeat(_t), _min:GoInt = __tmp__._0, _max:GoInt = __tmp__._1, _after:GoString = __tmp__._2, _ok:Bool = __tmp__._3;
                                    if (!_ok) {
                                        _p._literal((123 : GoInt32));
                                        _t = (_t.__slice__((1 : GoInt)) : GoString);
                                        break;
                                    };
                                    if ((((_min < (0 : GoInt)) || (_min > (1000 : GoInt))) || (_max > (1000 : GoInt))) || ((_max >= (0 : GoInt)) && (_min > _max))) {
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return { _0 : null, _1 : Go.asInterface((Go.setRef((new T_error((("invalid repeat count" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_before.__slice__(0, (_before.length) - (_after.length)) : GoString)) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
                                        };
                                    };
                                    {
                                        {
                                            var __tmp__ = _p._repeat(_op, _min, _max, _before, _after, _lastRepeat);
                                            _after = __tmp__._0;
                                            _err = __tmp__._1;
                                        };
                                        if (_err != null) {
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return { _0 : null, _1 : _err };
                                            };
                                        };
                                    };
                                    _repeat = _before;
                                    _t = _after;
                                    break;
                                } else if (__value__ == ((92 : GoUInt8))) {
                                    if (((_p._flags & (64 : stdgo.regexp.syntax.Syntax.Flags)) != (0 : stdgo.regexp.syntax.Syntax.Flags)) && (_t.length >= (2 : GoInt))) {
                                        {
                                            var __switchIndex__ = -1;
                                            var __run__ = true;
                                            while (__run__) {
                                                __run__ = false;
                                                {
                                                    final __value__ = _t[(1 : GoInt)];
                                                    if (__value__ == ((65 : GoUInt8))) {
                                                        _p._op((9 : stdgo.regexp.syntax.Syntax.Op));
                                                        _t = (_t.__slice__((2 : GoInt)) : GoString);
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    } else if (__value__ == ((98 : GoUInt8))) {
                                                        _p._op((11 : stdgo.regexp.syntax.Syntax.Op));
                                                        _t = (_t.__slice__((2 : GoInt)) : GoString);
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    } else if (__value__ == ((66 : GoUInt8))) {
                                                        _p._op((12 : stdgo.regexp.syntax.Syntax.Op));
                                                        _t = (_t.__slice__((2 : GoInt)) : GoString);
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    } else if (__value__ == ((67 : GoUInt8))) {
                                                        {
                                                            for (defer in __deferstack__) {
                                                                defer();
                                                            };
                                                            return { _0 : null, _1 : Go.asInterface((Go.setRef((new T_error((("invalid escape sequence" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_t.__slice__(0, (2 : GoInt)) : GoString)) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
                                                        };
                                                        break;
                                                    } else if (__value__ == ((81 : GoUInt8))) {
                                                        var _lit:GoString = ("" : GoString);
                                                        {
                                                            var __tmp__ = stdgo.strings.Strings.cut((_t.__slice__((2 : GoInt)) : GoString), ("\\E" : GoString));
                                                            _lit = __tmp__._0;
                                                            _t = __tmp__._1;
                                                        };
                                                        while (_lit != (Go.str())) {
                                                            var __tmp__ = _nextRune(_lit), _c:GoInt32 = __tmp__._0, _rest:GoString = __tmp__._1, _err:Error = __tmp__._2;
                                                            if (_err != null) {
                                                                {
                                                                    for (defer in __deferstack__) {
                                                                        defer();
                                                                    };
                                                                    return { _0 : null, _1 : _err };
                                                                };
                                                            };
                                                            _p._literal(_c);
                                                            _lit = _rest;
                                                        };
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    } else if (__value__ == ((122 : GoUInt8))) {
                                                        _p._op((10 : stdgo.regexp.syntax.Syntax.Op));
                                                        _t = (_t.__slice__((2 : GoInt)) : GoString);
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    };
                                                };
                                                break;
                                            };
                                        };
                                    };
                                    var _re = _p._newRegexp((4 : stdgo.regexp.syntax.Syntax.Op));
                                    _re.flags = _p._flags;
                                    if ((_t.length >= (2 : GoInt)) && ((_t[(1 : GoInt)] == (112 : GoUInt8)) || (_t[(1 : GoInt)] == (80 : GoUInt8)))) {
                                        var __tmp__ = _p._parseUnicodeClass(_t, (_re.rune0.__slice__(0, (0 : GoInt)) : Slice<GoInt32>)), _r:Slice<GoInt32> = __tmp__._0, _rest:GoString = __tmp__._1, _err:Error = __tmp__._2;
                                        if (_err != null) {
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return { _0 : null, _1 : _err };
                                            };
                                        };
                                        if (_r != null) {
                                            _re.rune = _r;
                                            _t = _rest;
                                            _p._push(_re);
                                            @:jump("BigSwitch") break;
                                        };
                                    };
                                    {
                                        var __tmp__ = _p._parsePerlClassEscape(_t, (_re.rune0.__slice__(0, (0 : GoInt)) : Slice<GoInt32>)), _r:Slice<GoInt32> = __tmp__._0, _rest:GoString = __tmp__._1;
                                        if (_r != null) {
                                            _re.rune = _r;
                                            _t = _rest;
                                            _p._push(_re);
                                            @:jump("BigSwitch") break;
                                        };
                                    };
                                    _p._reuse(_re);
                                    {
                                        {
                                            var __tmp__ = _p._parseEscape(_t);
                                            _c = __tmp__._0;
                                            _t = __tmp__._1;
                                            _err = __tmp__._2;
                                        };
                                        if (_err != null) {
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return { _0 : null, _1 : _err };
                                            };
                                        };
                                    };
                                    _p._literal(_c);
                                    break;
                                } else {
                                    {
                                        {
                                            var __tmp__ = _nextRune(_t);
                                            _c = __tmp__._0;
                                            _t = __tmp__._1;
                                            _err = __tmp__._2;
                                        };
                                        if (_err != null) {
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return { _0 : null, _1 : _err };
                                            };
                                        };
                                    };
                                    _p._literal(_c);
                                };
                            };
                            break;
                        };
                    };
                    _lastRepeat = _repeat;
                };
                _p._concat();
                if (_p._swapVerticalBar()) {
                    _p._stack = (_p._stack.__slice__(0, (_p._stack.length) - (1 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
                };
                _p._alternate();
                var _n:GoInt = (_p._stack.length);
                if (_n != ((1 : GoInt))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : null, _1 : Go.asInterface((Go.setRef((new T_error((("missing closing )" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _s) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
                    };
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : _p._stack[(0 : GoInt)], _1 : (null : Error) };
                };
                for (defer in __deferstack__) {
                    defer();
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (Go.recover_exception != null) throw Go.recover_exception;
                    return { _0 : _0, _1 : _err };
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is AnyInterfaceData)) {
                    exe = Go.toInterface(__exception__.message);
                };
                Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return { _0 : _0, _1 : _err };
            };
        });
        throw "controlFlow did not return";
    }
/**
    // isValidCaptureName reports whether name
    // is a valid capture name: [A-Za-z0-9_]+.
    // PCRE limits names to 32 bytes.
    // Python rejects names starting with digits.
    // We don't enforce either of those.
**/
private function _isValidCaptureName(_name:GoString):Bool {
        if (_name == (Go.str())) {
            return false;
        };
        for (__0 => _c in _name) {
            if ((_c != (95 : GoInt32)) && !_isalnum(_c)) {
                return false;
            };
        };
        return true;
    }
/**
    // can this be represented as a character class?
    // single-rune literal string, char class, ., and .|\n.
**/
private function _isCharClass(_re:Ref<Regexp>):Bool {
        return ((((_re.op == (3 : stdgo.regexp.syntax.Syntax.Op)) && (_re.rune.length == (1 : GoInt))) || (_re.op == (4 : stdgo.regexp.syntax.Syntax.Op))) || (_re.op == (5 : stdgo.regexp.syntax.Syntax.Op))) || (_re.op == (6 : stdgo.regexp.syntax.Syntax.Op));
    }
/**
    // does re match r?
**/
private function _matchRune(_re:Ref<Regexp>, _r:GoRune):Bool {
        {
            final __value__ = _re.op;
            if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                return (_re.rune.length == (1 : GoInt)) && (_re.rune[(0 : GoInt)] == _r);
            } else if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.Op))) {
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (_re.rune.length), _i = _i + ((2 : GoInt)), {
                        if ((_re.rune[(_i : GoInt)] <= _r) && (_r <= _re.rune[(_i + (1 : GoInt) : GoInt)])) {
                            return true;
                        };
                    });
                };
                return false;
            } else if (__value__ == ((5 : stdgo.regexp.syntax.Syntax.Op))) {
                return _r != ((10 : GoInt32));
            } else if (__value__ == ((6 : stdgo.regexp.syntax.Syntax.Op))) {
                return true;
            };
        };
        return false;
    }
/**
    // mergeCharClass makes dst = dst|src.
    // The caller must ensure that dst.Op >= src.Op,
    // to reduce the amount of copying.
**/
private function _mergeCharClass(_dst:Ref<Regexp>, _src:Ref<Regexp>):Void {
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _dst.op;
                    if (__value__ == ((6 : stdgo.regexp.syntax.Syntax.Op))) {
                        break;
                    } else if (__value__ == ((5 : stdgo.regexp.syntax.Syntax.Op))) {
                        if (_matchRune(_src, (10 : GoInt32))) {
                            _dst.op = (6 : stdgo.regexp.syntax.Syntax.Op);
                        };
                        break;
                    } else if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.Op))) {
                        if (_src.op == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                            _dst.rune = _appendLiteral(_dst.rune, _src.rune[(0 : GoInt)], _src.flags);
                        } else {
                            _dst.rune = _appendClass(_dst.rune, _src.rune);
                        };
                        break;
                    } else if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                        if ((_src.rune[(0 : GoInt)] == _dst.rune[(0 : GoInt)]) && (_src.flags == _dst.flags)) {
                            break;
                        };
                        _dst.op = (4 : stdgo.regexp.syntax.Syntax.Op);
                        _dst.rune = _appendLiteral((_dst.rune.__slice__(0, (0 : GoInt)) : Slice<GoInt32>), _dst.rune[(0 : GoInt)], _dst.flags);
                        _dst.rune = _appendLiteral(_dst.rune, _src.rune[(0 : GoInt)], _src.flags);
                        break;
                    };
                };
                break;
            };
        };
    }
/**
    // unicodeTable returns the unicode.RangeTable identified by name
    // and the table of additional fold-equivalent code points.
**/
private function _unicodeTable(_name:GoString):{ var _0 : Ref<stdgo.unicode.Unicode.RangeTable>; var _1 : Ref<stdgo.unicode.Unicode.RangeTable>; } {
        if (_name == (("Any" : GoString))) {
            return { _0 : _anyTable, _1 : _anyTable };
        };
        {
            var _t = stdgo.unicode.Unicode.categories[_name];
            if (_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) {
                return { _0 : _t, _1 : stdgo.unicode.Unicode.foldCategory[_name] };
            };
        };
        {
            var _t = stdgo.unicode.Unicode.scripts[_name];
            if (_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) {
                return { _0 : _t, _1 : stdgo.unicode.Unicode.foldScript[_name] };
            };
        };
        return { _0 : null, _1 : null };
    }
/**
    // cleanClass sorts the ranges (pairs of elements of r),
    // merges them, and eliminates duplicates.
**/
private function _cleanClass(_rp:Ref<Slice<GoRune>>):Slice<GoRune> {
        stdgo.sort.Sort.sort(Go.asInterface((new T_ranges(_rp) : T_ranges)));
        var _r = (_rp : Slice<GoInt32>);
        if ((_r.length) < (2 : GoInt)) {
            return _r;
        };
        var _w:GoInt = (2 : GoInt);
        {
            var _i:GoInt = (2 : GoInt);
            Go.cfor(_i < (_r.length), _i = _i + ((2 : GoInt)), {
                var __0:GoInt32 = _r[(_i : GoInt)], __1:GoInt32 = _r[(_i + (1 : GoInt) : GoInt)], _hi:GoInt32 = __1, _lo:GoInt32 = __0;
                if (_lo <= (_r[(_w - (1 : GoInt) : GoInt)] + (1 : GoInt32))) {
                    if (_hi > _r[(_w - (1 : GoInt) : GoInt)]) {
                        _r[(_w - (1 : GoInt) : GoInt)] = _hi;
                    };
                    continue;
                };
                _r[(_w : GoInt)] = _lo;
                _r[(_w + (1 : GoInt) : GoInt)] = _hi;
                _w = _w + ((2 : GoInt));
            });
        };
        return (_r.__slice__(0, _w) : Slice<GoInt32>);
    }
/**
    // appendLiteral returns the result of appending the literal x to the class r.
**/
private function _appendLiteral(_r:Slice<GoRune>, _x:GoRune, _flags:Flags):Slice<GoRune> {
        if (_flags & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
            return _appendFoldedRange(_r, _x, _x);
        };
        return _appendRange(_r, _x, _x);
    }
/**
    // appendRange returns the result of appending the range lo-hi to the class r.
**/
private function _appendRange(_r:Slice<GoRune>, _lo:GoRune, _hi:GoRune):Slice<GoRune> {
        var _n:GoInt = (_r.length);
        {
            var _i:GoInt = (2 : GoInt);
            Go.cfor(_i <= (4 : GoInt), _i = _i + ((2 : GoInt)), {
                if (_n >= _i) {
                    var __0:GoInt32 = _r[(_n - _i : GoInt)], __1:GoInt32 = _r[((_n - _i) + (1 : GoInt) : GoInt)], _rhi:GoInt32 = __1, _rlo:GoInt32 = __0;
                    if ((_lo <= (_rhi + (1 : GoInt32))) && (_rlo <= (_hi + (1 : GoInt32)))) {
                        if (_lo < _rlo) {
                            _r[(_n - _i : GoInt)] = _lo;
                        };
                        if (_hi > _rhi) {
                            _r[((_n - _i) + (1 : GoInt) : GoInt)] = _hi;
                        };
                        return _r;
                    };
                };
            });
        };
        return (_r.__append__(_lo, _hi));
    }
/**
    // appendFoldedRange returns the result of appending the range lo-hi
    // and its case folding-equivalent runes to the class r.
**/
private function _appendFoldedRange(_r:Slice<GoRune>, _lo:GoRune, _hi:GoRune):Slice<GoRune> {
        if ((_lo <= (65 : GoInt32)) && (_hi >= (125251 : GoInt32))) {
            return _appendRange(_r, _lo, _hi);
        };
        if ((_hi < (65 : GoInt32)) || (_lo > (125251 : GoInt32))) {
            return _appendRange(_r, _lo, _hi);
        };
        if (_lo < (65 : GoInt32)) {
            _r = _appendRange(_r, _lo, (64 : GoInt32));
            _lo = (65 : GoInt32);
        };
        if (_hi > (125251 : GoInt32)) {
            _r = _appendRange(_r, (125252 : GoInt32), _hi);
            _hi = (125251 : GoInt32);
        };
        {
            var _c:GoInt32 = _lo;
            Go.cfor(_c <= _hi, _c++, {
                _r = _appendRange(_r, _c, _c);
                var _f:GoInt32 = stdgo.unicode.Unicode.simpleFold(_c);
                while (_f != (_c)) {
                    _r = _appendRange(_r, _f, _f);
                    _f = stdgo.unicode.Unicode.simpleFold(_f);
                };
            });
        };
        return _r;
    }
/**
    // appendClass returns the result of appending the class x to the class r.
    // It assume x is clean.
**/
private function _appendClass(_r:Slice<GoRune>, _x:Slice<GoRune>):Slice<GoRune> {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_x.length), _i = _i + ((2 : GoInt)), {
                _r = _appendRange(_r, _x[(_i : GoInt)], _x[(_i + (1 : GoInt) : GoInt)]);
            });
        };
        return _r;
    }
/**
    // appendFoldedClass returns the result of appending the case folding of the class x to the class r.
**/
private function _appendFoldedClass(_r:Slice<GoRune>, _x:Slice<GoRune>):Slice<GoRune> {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_x.length), _i = _i + ((2 : GoInt)), {
                _r = _appendFoldedRange(_r, _x[(_i : GoInt)], _x[(_i + (1 : GoInt) : GoInt)]);
            });
        };
        return _r;
    }
/**
    // appendNegatedClass returns the result of appending the negation of the class x to the class r.
    // It assumes x is clean.
**/
private function _appendNegatedClass(_r:Slice<GoRune>, _x:Slice<GoRune>):Slice<GoRune> {
        var _nextLo:GoInt32 = (0 : GoInt32);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_x.length), _i = _i + ((2 : GoInt)), {
                var __0:GoInt32 = _x[(_i : GoInt)], __1:GoInt32 = _x[(_i + (1 : GoInt) : GoInt)], _hi:GoInt32 = __1, _lo:GoInt32 = __0;
                if (_nextLo <= (_lo - (1 : GoInt32))) {
                    _r = _appendRange(_r, _nextLo, _lo - (1 : GoInt32));
                };
                _nextLo = _hi + (1 : GoInt32);
            });
        };
        if (_nextLo <= (1114111 : GoInt32)) {
            _r = _appendRange(_r, _nextLo, (1114111 : GoInt32));
        };
        return _r;
    }
/**
    // appendTable returns the result of appending x to the class r.
**/
private function _appendTable(_r:Slice<GoRune>, _x:Ref<stdgo.unicode.Unicode.RangeTable>):Slice<GoRune> {
        for (__0 => _xr in _x.r16) {
            var __0:GoInt32 = (_xr.lo : GoRune), __1:GoInt32 = (_xr.hi : GoRune), __2:GoInt32 = (_xr.stride : GoRune), _stride:GoInt32 = __2, _hi:GoInt32 = __1, _lo:GoInt32 = __0;
            if (_stride == ((1 : GoInt32))) {
                _r = _appendRange(_r, _lo, _hi);
                continue;
            };
            {
                var _c:GoInt32 = _lo;
                Go.cfor(_c <= _hi, _c = _c + (_stride), {
                    _r = _appendRange(_r, _c, _c);
                });
            };
        };
        for (__1 => _xr in _x.r32) {
            var __0:GoInt32 = (_xr.lo : GoRune), __1:GoInt32 = (_xr.hi : GoRune), __2:GoInt32 = (_xr.stride : GoRune), _stride:GoInt32 = __2, _hi:GoInt32 = __1, _lo:GoInt32 = __0;
            if (_stride == ((1 : GoInt32))) {
                _r = _appendRange(_r, _lo, _hi);
                continue;
            };
            {
                var _c:GoInt32 = _lo;
                Go.cfor(_c <= _hi, _c = _c + (_stride), {
                    _r = _appendRange(_r, _c, _c);
                });
            };
        };
        return _r;
    }
/**
    // appendNegatedTable returns the result of appending the negation of x to the class r.
**/
private function _appendNegatedTable(_r:Slice<GoRune>, _x:Ref<stdgo.unicode.Unicode.RangeTable>):Slice<GoRune> {
        var _nextLo:GoInt32 = (0 : GoInt32);
        for (__0 => _xr in _x.r16) {
            var __0:GoInt32 = (_xr.lo : GoRune), __1:GoInt32 = (_xr.hi : GoRune), __2:GoInt32 = (_xr.stride : GoRune), _stride:GoInt32 = __2, _hi:GoInt32 = __1, _lo:GoInt32 = __0;
            if (_stride == ((1 : GoInt32))) {
                if (_nextLo <= (_lo - (1 : GoInt32))) {
                    _r = _appendRange(_r, _nextLo, _lo - (1 : GoInt32));
                };
                _nextLo = _hi + (1 : GoInt32);
                continue;
            };
            {
                var _c:GoInt32 = _lo;
                Go.cfor(_c <= _hi, _c = _c + (_stride), {
                    if (_nextLo <= (_c - (1 : GoInt32))) {
                        _r = _appendRange(_r, _nextLo, _c - (1 : GoInt32));
                    };
                    _nextLo = _c + (1 : GoInt32);
                });
            };
        };
        for (__1 => _xr in _x.r32) {
            var __0:GoInt32 = (_xr.lo : GoRune), __1:GoInt32 = (_xr.hi : GoRune), __2:GoInt32 = (_xr.stride : GoRune), _stride:GoInt32 = __2, _hi:GoInt32 = __1, _lo:GoInt32 = __0;
            if (_stride == ((1 : GoInt32))) {
                if (_nextLo <= (_lo - (1 : GoInt32))) {
                    _r = _appendRange(_r, _nextLo, _lo - (1 : GoInt32));
                };
                _nextLo = _hi + (1 : GoInt32);
                continue;
            };
            {
                var _c:GoInt32 = _lo;
                Go.cfor(_c <= _hi, _c = _c + (_stride), {
                    if (_nextLo <= (_c - (1 : GoInt32))) {
                        _r = _appendRange(_r, _nextLo, _c - (1 : GoInt32));
                    };
                    _nextLo = _c + (1 : GoInt32);
                });
            };
        };
        if (_nextLo <= (1114111 : GoInt32)) {
            _r = _appendRange(_r, _nextLo, (1114111 : GoInt32));
        };
        return _r;
    }
/**
    // negateClass overwrites r and returns r's negation.
    // It assumes the class r is already clean.
**/
private function _negateClass(_r:Slice<GoRune>):Slice<GoRune> {
        var _nextLo:GoInt32 = (0 : GoInt32);
        var _w:GoInt = (0 : GoInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_r.length), _i = _i + ((2 : GoInt)), {
                var __0:GoInt32 = _r[(_i : GoInt)], __1:GoInt32 = _r[(_i + (1 : GoInt) : GoInt)], _hi:GoInt32 = __1, _lo:GoInt32 = __0;
                if (_nextLo <= (_lo - (1 : GoInt32))) {
                    _r[(_w : GoInt)] = _nextLo;
                    _r[(_w + (1 : GoInt) : GoInt)] = _lo - (1 : GoInt32);
                    _w = _w + ((2 : GoInt));
                };
                _nextLo = _hi + (1 : GoInt32);
            });
        };
        _r = (_r.__slice__(0, _w) : Slice<GoInt32>);
        if (_nextLo <= (1114111 : GoInt32)) {
            _r = (_r.__append__(_nextLo, (1114111 : GoInt32)));
        };
        return _r;
    }
private function _checkUTF8(_s:GoString):Error {
        while (_s != (Go.str())) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s), _rune:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
            if ((_rune == (65533 : GoInt32)) && (_size == (1 : GoInt))) {
                return Go.asInterface((Go.setRef(({ code : (("invalid UTF-8" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : _s } : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>));
            };
            _s = (_s.__slice__(_size) : GoString);
        };
        return (null : Error);
    }
private function _nextRune(_s:GoString):{ var _0 : GoRune; var _1 : GoString; var _2 : Error; } {
        var _c:GoRune = (0 : GoInt32), _t:GoString = ("" : GoString), _err:Error = (null : Error);
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s), _c:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
        if ((_c == (65533 : GoInt32)) && (_size == (1 : GoInt))) {
            return { _0 : (0 : GoInt32), _1 : Go.str(), _2 : Go.asInterface((Go.setRef(({ code : (("invalid UTF-8" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : _s } : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        return { _0 : _c, _1 : (_s.__slice__(_size) : GoString), _2 : (null : Error) };
    }
private function _isalnum(_c:GoRune):Bool {
        return ((((48 : GoInt32) <= _c) && (_c <= (57 : GoInt32))) || (((65 : GoInt32) <= _c) && (_c <= (90 : GoInt32)))) || (((97 : GoInt32) <= _c) && (_c <= (122 : GoInt32)));
    }
private function _unhex(_c:GoRune):GoRune {
        if (((48 : GoInt32) <= _c) && (_c <= (57 : GoInt32))) {
            return _c - (48 : GoInt32);
        };
        if (((97 : GoInt32) <= _c) && (_c <= (102 : GoInt32))) {
            return (_c - (97 : GoInt32)) + (10 : GoInt32);
        };
        if (((65 : GoInt32) <= _c) && (_c <= (70 : GoInt32))) {
            return (_c - (65 : GoInt32)) + (10 : GoInt32);
        };
        return (-1 : GoInt32);
    }
function testParseSimple(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testParseDump(_t, _parseTests, (204 : stdgo.regexp.syntax.Syntax.Flags));
    }
function testParseFoldCase(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testParseDump(_t, _foldcaseTests, (1 : stdgo.regexp.syntax.Syntax.Flags));
    }
function testParseLiteral(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testParseDump(_t, _literalTests, (2 : stdgo.regexp.syntax.Syntax.Flags));
    }
function testParseMatchNL(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testParseDump(_t, _matchnlTests, (12 : stdgo.regexp.syntax.Syntax.Flags));
    }
function testParseNoMatchNL(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testParseDump(_t, _nomatchnlTests, (0 : stdgo.regexp.syntax.Syntax.Flags));
    }
/**
    // Test Parse -> Dump.
**/
private function _testParseDump(_t:Ref<stdgo.testing.Testing.T>, _tests:Slice<T_parseTest>, _flags:Flags):Void {
        for (__0 => _tt in _tests) {
            var __tmp__ = parse(_tt.regexp, _flags), _re:Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Parse(%#q): %v" : GoString), Go.toInterface(_tt.regexp), Go.toInterface(_err));
                continue;
            };
            if (_tt.dump == (Go.str())) {
                continue;
            };
            var _d:GoString = _dump(_re);
            if (_d != (_tt.dump)) {
                _t.errorf(("Parse(%#q).Dump() = %#q want %#q" : GoString), Go.toInterface(_tt.regexp), Go.toInterface(_d), Go.toInterface(_tt.dump));
            };
        };
    }
/**
    // dump prints a string representation of the regexp showing
    // the structure explicitly.
**/
private function _dump(_re:Ref<Regexp>):GoString {
        var _b:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _dumpRegexp((Go.setRef(_b) : Ref<stdgo.strings.Strings.Builder>), _re);
        return (_b.string() : GoString);
    }
/**
    // dumpRegexp writes an encoding of the syntax tree for the regexp re to b.
    // It is used during testing to distinguish between parses that might print
    // the same using re's String method.
**/
private function _dumpRegexp(_b:Ref<stdgo.strings.Strings.Builder>, _re:Ref<Regexp>):Void {
        if (((_re.op : GoInt) >= _opNames.length) || (_opNames[(_re.op : GoInt)] == Go.str())) {
            stdgo.fmt.Fmt.fprintf(Go.asInterface(_b), ("op%d" : GoString), Go.toInterface(Go.asInterface(_re.op)));
        } else {
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _re.op;
                        if (__value__ == ((14 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                            if (_re.flags & (32 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                                _b.writeByte((110 : GoUInt8));
                            };
                            _b.writeString(_opNames[(_re.op : GoInt)]);
                            break;
                        } else if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                            if ((_re.rune.length) > (1 : GoInt)) {
                                _b.writeString(("str" : GoString));
                            } else {
                                _b.writeString(("lit" : GoString));
                            };
                            if (_re.flags & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                                for (__0 => _r in _re.rune) {
                                    if (stdgo.unicode.Unicode.simpleFold(_r) != (_r)) {
                                        _b.writeString(("fold" : GoString));
                                        break;
                                    };
                                };
                            };
                            break;
                        } else {
                            _b.writeString(_opNames[(_re.op : GoInt)]);
                        };
                    };
                    break;
                };
            };
        };
        _b.writeByte((123 : GoUInt8));
        {
            final __value__ = _re.op;
            if (__value__ == ((10 : stdgo.regexp.syntax.Syntax.Op))) {
                if (_re.flags & (256 : stdgo.regexp.syntax.Syntax.Flags) == ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                    _b.writeString(("\\z" : GoString));
                };
            } else if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                for (__1 => _r in _re.rune) {
                    _b.writeRune(_r);
                };
            } else if (__value__ == ((18 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((19 : stdgo.regexp.syntax.Syntax.Op))) {
                for (__2 => _sub in _re.sub) {
                    _dumpRegexp(_b, _sub);
                };
            } else if (__value__ == ((14 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo.regexp.syntax.Syntax.Op))) {
                _dumpRegexp(_b, _re.sub[(0 : GoInt)]);
            } else if (__value__ == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                stdgo.fmt.Fmt.fprintf(Go.asInterface(_b), ("%d,%d " : GoString), Go.toInterface(_re.min), Go.toInterface(_re.max));
                _dumpRegexp(_b, _re.sub[(0 : GoInt)]);
            } else if (__value__ == ((13 : stdgo.regexp.syntax.Syntax.Op))) {
                if (_re.name != (Go.str())) {
                    _b.writeString(_re.name);
                    _b.writeByte((58 : GoUInt8));
                };
                _dumpRegexp(_b, _re.sub[(0 : GoInt)]);
            } else if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.Op))) {
                var _sep:GoString = Go.str();
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (_re.rune.length), _i = _i + ((2 : GoInt)), {
                        _b.writeString(_sep);
                        _sep = (" " : GoString);
                        var __0:GoInt32 = _re.rune[(_i : GoInt)], __1:GoInt32 = _re.rune[(_i + (1 : GoInt) : GoInt)], _hi:GoInt32 = __1, _lo:GoInt32 = __0;
                        if (_lo == (_hi)) {
                            stdgo.fmt.Fmt.fprintf(Go.asInterface(_b), ("%#x" : GoString), Go.toInterface(_lo));
                        } else {
                            stdgo.fmt.Fmt.fprintf(Go.asInterface(_b), ("%#x-%#x" : GoString), Go.toInterface(_lo), Go.toInterface(_hi));
                        };
                    });
                };
            };
        };
        _b.writeByte((125 : GoUInt8));
    }
private function _mkCharClass(_f:GoRune -> Bool):GoString {
        var _re = (Go.setRef(({ op : (4 : stdgo.regexp.syntax.Syntax.Op) } : Regexp)) : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
        var _lo:GoInt32 = ((-1 : GoInt32) : GoRune);
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (1114111 : GoInt32), _i++, {
                if (_f(_i)) {
                    if (_lo < (0 : GoInt32)) {
                        _lo = _i;
                    };
                } else {
                    if (_lo >= (0 : GoInt32)) {
                        _re.rune = (_re.rune.__append__(_lo, _i - (1 : GoInt32)));
                        _lo = (-1 : GoInt32);
                    };
                };
            });
        };
        if (_lo >= (0 : GoInt32)) {
            _re.rune = (_re.rune.__append__(_lo, (1114111 : GoInt32)));
        };
        return _dump(_re);
    }
private function _isUpperFold(_r:GoRune):Bool {
        if (stdgo.unicode.Unicode.isUpper(_r)) {
            return true;
        };
        var _c:GoInt32 = stdgo.unicode.Unicode.simpleFold(_r);
        while (_c != (_r)) {
            if (stdgo.unicode.Unicode.isUpper(_c)) {
                return true;
            };
            _c = stdgo.unicode.Unicode.simpleFold(_c);
        };
        return false;
    }
function testFoldConstants(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _last:GoInt32 = ((-1 : GoInt32) : GoRune);
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (1114111 : GoInt32), _i++, {
                if (stdgo.unicode.Unicode.simpleFold(_i) == (_i)) {
                    continue;
                };
                if ((_last == (-1 : GoInt32)) && ((65 : GoInt32) != _i)) {
                    _t.errorf(("minFold=%#U should be %#U" : GoString), Go.toInterface((65 : GoInt)), Go.toInterface(_i));
                };
                _last = _i;
            });
        };
        if ((125251 : GoInt32) != (_last)) {
            _t.errorf(("maxFold=%#U should be %#U" : GoString), Go.toInterface((125251 : GoInt)), Go.toInterface(_last));
        };
    }
function testAppendRangeCollapse(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r:Slice<GoRune> = (null : Slice<GoInt32>);
        {
            var _i:GoInt32 = ((65 : GoInt32) : GoRune);
            Go.cfor(_i <= (90 : GoInt32), _i++, {
                _r = _appendRange(_r, _i, _i);
                _r = _appendRange(_r, (_i + (97 : GoInt32)) - (65 : GoInt32), (_i + (97 : GoInt32)) - (65 : GoInt32));
            });
        };
        if ((_r : GoString) != (("AZaz" : GoString))) {
            _t.errorf(("appendRange interlaced A-Z a-z = %s, want AZaz" : GoString), Go.toInterface((_r : GoString)));
        };
    }
function testParseInvalidRegexps(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _regexp in _invalidRegexps) {
            {
                var __tmp__ = parse(_regexp, (212 : stdgo.regexp.syntax.Syntax.Flags)), _re:Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, Perl) = %s, should have failed" : GoString), Go.toInterface(_regexp), Go.toInterface(_dump(_re)));
                };
            };
            {
                var __tmp__ = parse(_regexp, (0 : stdgo.regexp.syntax.Syntax.Flags)), _re:Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, POSIX) = %s, should have failed" : GoString), Go.toInterface(_regexp), Go.toInterface(_dump(_re)));
                };
            };
        };
        for (__1 => _regexp in _onlyPerl) {
            {
                var __tmp__ = parse(_regexp, (212 : stdgo.regexp.syntax.Syntax.Flags)), __2:Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(%#q, Perl): %v" : GoString), Go.toInterface(_regexp), Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = parse(_regexp, (0 : stdgo.regexp.syntax.Syntax.Flags)), _re:Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, POSIX) = %s, should have failed" : GoString), Go.toInterface(_regexp), Go.toInterface(_dump(_re)));
                };
            };
        };
        for (__3 => _regexp in _onlyPOSIX) {
            {
                var __tmp__ = parse(_regexp, (212 : stdgo.regexp.syntax.Syntax.Flags)), _re:Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, Perl) = %s, should have failed" : GoString), Go.toInterface(_regexp), Go.toInterface(_dump(_re)));
                };
            };
            {
                var __tmp__ = parse(_regexp, (0 : stdgo.regexp.syntax.Syntax.Flags)), __4:Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(%#q, POSIX): %v" : GoString), Go.toInterface(_regexp), Go.toInterface(_err));
                };
            };
        };
    }
function testToStringEquivalentParse(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _parseTests) {
            var __tmp__ = parse(_tt.regexp, (204 : stdgo.regexp.syntax.Syntax.Flags)), _re:Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Parse(%#q): %v" : GoString), Go.toInterface(_tt.regexp), Go.toInterface(_err));
                continue;
            };
            if (_tt.dump == (Go.str())) {
                continue;
            };
            var _d:GoString = _dump(_re);
            if (_d != (_tt.dump)) {
                _t.errorf(("Parse(%#q).Dump() = %#q want %#q" : GoString), Go.toInterface(_tt.regexp), Go.toInterface(_d), Go.toInterface(_tt.dump));
                continue;
            };
            var _s:GoString = (_re.string() : GoString);
            if (_s != (_tt.regexp)) {
                var __tmp__ = parse(_s, (204 : stdgo.regexp.syntax.Syntax.Flags)), _nre:Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(%#q.String() = %#q): %v" : GoString), Go.toInterface(_tt.regexp), Go.toInterface(_s), Go.toInterface(_err));
                    continue;
                };
                var _nd:GoString = _dump(_nre);
                if (_d != (_nd)) {
                    _t.errorf(("Parse(%#q) -> %#q; %#q vs %#q" : GoString), Go.toInterface(_tt.regexp), Go.toInterface(_s), Go.toInterface(_d), Go.toInterface(_nd));
                };
                var _ns:GoString = (_nre.string() : GoString);
                if (_s != (_ns)) {
                    _t.errorf(("Parse(%#q) -> %#q -> %#q" : GoString), Go.toInterface(_tt.regexp), Go.toInterface(_s), Go.toInterface(_ns));
                };
            };
        };
    }
/**
    // EmptyOpContext returns the zero-width assertions
    // satisfied at the position between the runes r1 and r2.
    // Passing r1 == -1 indicates that the position is
    // at the beginning of the text.
    // Passing r2 == -1 indicates that the position is
    // at the end of the text.
**/
function emptyOpContext(_r1:GoRune, _r2:GoRune):EmptyOp {
        var _op:EmptyOp = (32 : stdgo.regexp.syntax.Syntax.EmptyOp);
        var _boundary:GoByte = (0 : GoUInt8);
        if (isWordChar(_r1)) {
            _boundary = (1 : GoUInt8);
        } else if (_r1 == ((10 : GoInt32))) {
            _op = _op | ((1 : stdgo.regexp.syntax.Syntax.EmptyOp));
        } else if (_r1 < (0 : GoInt32)) {
            _op = _op | ((5 : stdgo.regexp.syntax.Syntax.EmptyOp));
        };
        if (isWordChar(_r2)) {
            _boundary = _boundary ^ ((1 : GoUInt8));
        } else if (_r2 == ((10 : GoInt32))) {
            _op = _op | ((2 : stdgo.regexp.syntax.Syntax.EmptyOp));
        } else if (_r2 < (0 : GoInt32)) {
            _op = _op | ((10 : stdgo.regexp.syntax.Syntax.EmptyOp));
        };
        if (_boundary != ((0 : GoUInt8))) {
            _op = _op ^ ((48 : stdgo.regexp.syntax.Syntax.EmptyOp));
        };
        return _op;
    }
/**
    // IsWordChar reports whether r is considered a “word character”
    // during the evaluation of the \b and \B zero-width assertions.
    // These assertions are ASCII-only: the word characters are [A-Za-z0-9_].
**/
function isWordChar(_r:GoRune):Bool {
        return (((((65 : GoInt32) <= _r) && (_r <= (90 : GoInt32))) || (((97 : GoInt32) <= _r) && (_r <= (122 : GoInt32)))) || (((48 : GoInt32) <= _r) && (_r <= (57 : GoInt32)))) || (_r == (95 : GoInt32));
    }
private function _bw(_b:Ref<stdgo.strings.Strings.Builder>, _args:haxe.Rest<GoString>):Void {
        var _args = new Slice<GoString>(_args.length, 0, ..._args);
        for (__0 => _s in _args) {
            _b.writeString(_s);
        };
    }
private function _dumpProg(_b:Ref<stdgo.strings.Strings.Builder>, _p:Ref<Prog>):Void {
        for (_j in 0 ... _p.inst.length.toBasic()) {
            var _i = (Go.setRef(_p.inst[(_j : GoInt)]) : Ref<stdgo.regexp.syntax.Syntax.Inst>);
            var _pc:GoString = stdgo.strconv.Strconv.itoa(_j);
            if ((_pc.length) < (3 : GoInt)) {
                _b.writeString((("   " : GoString).__slice__((_pc.length)) : GoString));
            };
            if (_j == (_p.start)) {
                _pc = _pc + (("*" : GoString));
            };
            _bw(_b, _pc, ("\t" : GoString));
            _dumpInst(_b, _i);
            _bw(_b, ("\n" : GoString));
        };
    }
private function _u32(_i:GoUInt32):GoString {
        return stdgo.strconv.Strconv.formatUint((_i : GoUInt64), (10 : GoInt));
    }
private function _dumpInst(_b:Ref<stdgo.strings.Strings.Builder>, _i:Ref<Inst>):Void {
        {
            final __value__ = _i.op;
            if (__value__ == ((0 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("alt -> " : GoString), _u32(_i.out), (", " : GoString), _u32(_i.arg));
            } else if (__value__ == ((1 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("altmatch -> " : GoString), _u32(_i.out), (", " : GoString), _u32(_i.arg));
            } else if (__value__ == ((2 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("cap " : GoString), _u32(_i.arg), (" -> " : GoString), _u32(_i.out));
            } else if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("empty " : GoString), _u32(_i.arg), (" -> " : GoString), _u32(_i.out));
            } else if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("match" : GoString));
            } else if (__value__ == ((5 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("fail" : GoString));
            } else if (__value__ == ((6 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("nop -> " : GoString), _u32(_i.out));
            } else if (__value__ == ((7 : stdgo.regexp.syntax.Syntax.InstOp))) {
                if (_i.rune == null) {
                    _bw(_b, ("rune <nil>" : GoString));
                };
                _bw(_b, ("rune " : GoString), stdgo.strconv.Strconv.quoteToASCII((_i.rune : GoString)));
                if ((_i.arg : Flags) & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                    _bw(_b, ("/i" : GoString));
                };
                _bw(_b, (" -> " : GoString), _u32(_i.out));
            } else if (__value__ == ((8 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("rune1 " : GoString), stdgo.strconv.Strconv.quoteToASCII((_i.rune : GoString)), (" -> " : GoString), _u32(_i.out));
            } else if (__value__ == ((9 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("any -> " : GoString), _u32(_i.out));
            } else if (__value__ == ((10 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("anynotnl -> " : GoString), _u32(_i.out));
            };
        };
    }
function testCompile(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _compileTests) {
            var __tmp__ = parse(_tt.regexp, (212 : stdgo.regexp.syntax.Syntax.Flags)), _re:Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, __1:Error = __tmp__._1;
            var __tmp__ = compile(_re), _p:Ref<stdgo.regexp.syntax.Syntax.Prog> = __tmp__._0, __2:Error = __tmp__._1;
            var _s:GoString = (_p.string() : GoString);
            if (_s != (_tt.prog)) {
                _t.errorf(("compiled %#q:\n--- have\n%s---\n--- want\n%s---" : GoString), Go.toInterface(_tt.regexp), Go.toInterface(_s), Go.toInterface(_tt.prog));
            };
        };
    }
function benchmarkEmptyOpContext(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                var _r1:GoRune = (-1 : GoInt32);
                for (__8 => _r2 in ("foo, bar, baz\nsome input text.\n" : GoString)) {
                    emptyOpContext(_r1, _r2);
                    _r1 = _r2;
                };
                emptyOpContext(_r1, (-1 : GoInt32));
            });
        };
    }
/**
    // writeRegexp writes the Perl syntax for the regular expression re to b.
**/
private function _writeRegexp(_b:Ref<stdgo.strings.Strings.Builder>, _re:Ref<Regexp>):Void {
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _re.op;
                    if (__value__ == ((1 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("[^\\x00-\\x{10FFFF}]" : GoString));
                        break;
                    } else if (__value__ == ((2 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?:)" : GoString));
                        break;
                    } else if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                        if (_re.flags & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                            _b.writeString(("(?i:" : GoString));
                        };
                        for (__0 => _r in _re.rune) {
                            _escape(_b, _r, false);
                        };
                        if (_re.flags & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                            _b.writeString((")" : GoString));
                        };
                        break;
                    } else if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.Op))) {
                        if ((_re.rune.length) % (2 : GoInt) != ((0 : GoInt))) {
                            _b.writeString(("[invalid char class]" : GoString));
                            break;
                        };
                        _b.writeRune((91 : GoInt32));
                        if ((_re.rune.length) == ((0 : GoInt))) {
                            _b.writeString(("^\\x00-\\x{10FFFF}" : GoString));
                        } else if (((_re.rune[(0 : GoInt)] == (0 : GoInt32)) && (_re.rune[((_re.rune.length) - (1 : GoInt) : GoInt)] == (1114111 : GoInt32))) && (_re.rune.length > (2 : GoInt))) {
                            _b.writeRune((94 : GoInt32));
                            {
                                var _i:GoInt = (1 : GoInt);
                                Go.cfor(_i < (_re.rune.length - (1 : GoInt)), _i = _i + ((2 : GoInt)), {
                                    var __0:GoInt32 = _re.rune[(_i : GoInt)] + (1 : GoInt32), __1:GoInt32 = _re.rune[(_i + (1 : GoInt) : GoInt)] - (1 : GoInt32), _hi:GoInt32 = __1, _lo:GoInt32 = __0;
                                    _escape(_b, _lo, _lo == ((45 : GoInt32)));
                                    if (_lo != (_hi)) {
                                        _b.writeRune((45 : GoInt32));
                                        _escape(_b, _hi, _hi == ((45 : GoInt32)));
                                    };
                                });
                            };
                        } else {
                            {
                                var _i:GoInt = (0 : GoInt);
                                Go.cfor(_i < (_re.rune.length), _i = _i + ((2 : GoInt)), {
                                    var __0:GoInt32 = _re.rune[(_i : GoInt)], __1:GoInt32 = _re.rune[(_i + (1 : GoInt) : GoInt)], _hi:GoInt32 = __1, _lo:GoInt32 = __0;
                                    _escape(_b, _lo, _lo == ((45 : GoInt32)));
                                    if (_lo != (_hi)) {
                                        _b.writeRune((45 : GoInt32));
                                        _escape(_b, _hi, _hi == ((45 : GoInt32)));
                                    };
                                });
                            };
                        };
                        _b.writeRune((93 : GoInt32));
                        break;
                    } else if (__value__ == ((5 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?-s:.)" : GoString));
                        break;
                    } else if (__value__ == ((6 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?s:.)" : GoString));
                        break;
                    } else if (__value__ == ((7 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?m:^)" : GoString));
                        break;
                    } else if (__value__ == ((8 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?m:$)" : GoString));
                        break;
                    } else if (__value__ == ((9 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("\\A" : GoString));
                        break;
                    } else if (__value__ == ((10 : stdgo.regexp.syntax.Syntax.Op))) {
                        if (_re.flags & (256 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                            _b.writeString(("(?-m:$)" : GoString));
                        } else {
                            _b.writeString(("\\z" : GoString));
                        };
                        break;
                    } else if (__value__ == ((11 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("\\b" : GoString));
                        break;
                    } else if (__value__ == ((12 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("\\B" : GoString));
                        break;
                    } else if (__value__ == ((13 : stdgo.regexp.syntax.Syntax.Op))) {
                        if (_re.name != (Go.str())) {
                            _b.writeString(("(?P<" : GoString));
                            _b.writeString(_re.name);
                            _b.writeRune((62 : GoInt32));
                        } else {
                            _b.writeRune((40 : GoInt32));
                        };
                        if (_re.sub[(0 : GoInt)].op != ((2 : stdgo.regexp.syntax.Syntax.Op))) {
                            _writeRegexp(_b, _re.sub[(0 : GoInt)]);
                        };
                        _b.writeRune((41 : GoInt32));
                        break;
                    } else if (__value__ == ((14 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                        {
                            var _sub = _re.sub[(0 : GoInt)];
                            if ((_sub.op > (13 : stdgo.regexp.syntax.Syntax.Op)) || ((_sub.op == (3 : stdgo.regexp.syntax.Syntax.Op)) && (_sub.rune.length > (1 : GoInt)))) {
                                _b.writeString(("(?:" : GoString));
                                _writeRegexp(_b, _sub);
                                _b.writeString((")" : GoString));
                            } else {
                                _writeRegexp(_b, _sub);
                            };
                        };
                        {
                            final __value__ = _re.op;
                            if (__value__ == ((14 : stdgo.regexp.syntax.Syntax.Op))) {
                                _b.writeRune((42 : GoInt32));
                            } else if (__value__ == ((15 : stdgo.regexp.syntax.Syntax.Op))) {
                                _b.writeRune((43 : GoInt32));
                            } else if (__value__ == ((16 : stdgo.regexp.syntax.Syntax.Op))) {
                                _b.writeRune((63 : GoInt32));
                            } else if (__value__ == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                                _b.writeRune((123 : GoInt32));
                                _b.writeString(stdgo.strconv.Strconv.itoa(_re.min));
                                if (_re.max != (_re.min)) {
                                    _b.writeRune((44 : GoInt32));
                                    if (_re.max >= (0 : GoInt)) {
                                        _b.writeString(stdgo.strconv.Strconv.itoa(_re.max));
                                    };
                                };
                                _b.writeRune((125 : GoInt32));
                            };
                        };
                        if (_re.flags & (32 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                            _b.writeRune((63 : GoInt32));
                        };
                        break;
                    } else if (__value__ == ((18 : stdgo.regexp.syntax.Syntax.Op))) {
                        for (__1 => _sub in _re.sub) {
                            if (_sub.op == ((19 : stdgo.regexp.syntax.Syntax.Op))) {
                                _b.writeString(("(?:" : GoString));
                                _writeRegexp(_b, _sub);
                                _b.writeString((")" : GoString));
                            } else {
                                _writeRegexp(_b, _sub);
                            };
                        };
                        break;
                    } else if (__value__ == ((19 : stdgo.regexp.syntax.Syntax.Op))) {
                        for (_i => _sub in _re.sub) {
                            if (_i > (0 : GoInt)) {
                                _b.writeRune((124 : GoInt32));
                            };
                            _writeRegexp(_b, _sub);
                        };
                        break;
                    } else {
                        _b.writeString((("<invalid op" : GoString) + stdgo.strconv.Strconv.itoa((_re.op : GoInt))) + (">" : GoString));
                    };
                };
                break;
            };
        };
    }
private function _escape(_b:Ref<stdgo.strings.Strings.Builder>, _r:GoRune, _force:Bool):Void {
        if (stdgo.unicode.Unicode.isPrint(_r)) {
            if (stdgo.strings.Strings.containsRune(("\\.+*?()|[]{}^$" : GoString), _r) || _force) {
                _b.writeRune((92 : GoInt32));
            };
            _b.writeRune(_r);
            return;
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _r;
                    if (__value__ == ((7 : GoInt32))) {
                        _b.writeString(("\\a" : GoString));
                        break;
                    } else if (__value__ == ((12 : GoInt32))) {
                        _b.writeString(("\\f" : GoString));
                        break;
                    } else if (__value__ == ((10 : GoInt32))) {
                        _b.writeString(("\\n" : GoString));
                        break;
                    } else if (__value__ == ((13 : GoInt32))) {
                        _b.writeString(("\\r" : GoString));
                        break;
                    } else if (__value__ == ((9 : GoInt32))) {
                        _b.writeString(("\\t" : GoString));
                        break;
                    } else if (__value__ == ((11 : GoInt32))) {
                        _b.writeString(("\\v" : GoString));
                        break;
                    } else {
                        if (_r < (256 : GoInt32)) {
                            _b.writeString(("\\x" : GoString));
                            var _s:GoString = stdgo.strconv.Strconv.formatInt((_r : GoInt64), (16 : GoInt));
                            if ((_s.length) == ((1 : GoInt))) {
                                _b.writeRune((48 : GoInt32));
                            };
                            _b.writeString(_s);
                            break;
                        };
                        _b.writeString(("\\x{" : GoString));
                        _b.writeString(stdgo.strconv.Strconv.formatInt((_r : GoInt64), (16 : GoInt)));
                        _b.writeString(("}" : GoString));
                    };
                };
                break;
            };
        };
    }
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
private function _simplify1(_op:Op, _flags:Flags, _sub:Ref<Regexp>, _re:Ref<Regexp>):Ref<Regexp> {
        if (_sub.op == ((2 : stdgo.regexp.syntax.Syntax.Op))) {
            return _sub;
        };
        if ((_op == _sub.op) && ((_flags & (32 : stdgo.regexp.syntax.Syntax.Flags)) == (_sub.flags & (32 : stdgo.regexp.syntax.Syntax.Flags)))) {
            return _sub;
        };
        if (((((_re != null) && ((_re : Dynamic).__nil__ == null || !(_re : Dynamic).__nil__)) && (_re.op == _op)) && ((_re.flags & (32 : stdgo.regexp.syntax.Syntax.Flags)) == (_flags & (32 : stdgo.regexp.syntax.Syntax.Flags)))) && (_sub == _re.sub[(0 : GoInt)])) {
            return _re;
        };
        _re = (Go.setRef(({ op : _op, flags : _flags } : Regexp)) : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
        _re.sub = ((_re.sub0.__slice__(0, (0 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>).__append__(_sub));
        return _re;
    }
function testSimplify(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _simplifyTests) {
            var __tmp__ = parse(_tt.regexp, (204 : stdgo.regexp.syntax.Syntax.Flags)), _re:Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Parse(%#q) = error %v" : GoString), Go.toInterface(_tt.regexp), Go.toInterface(_err));
                continue;
            };
            var _s:GoString = (_re.simplify().string() : GoString);
            if (_s != (_tt.simple)) {
                _t.errorf(("Simplify(%#q) = %#q, want %#q" : GoString), Go.toInterface(_tt.regexp), Go.toInterface(_s), Go.toInterface(_tt.simple));
            };
        };
    }
class T_patchList_asInterface {
    @:keep
    public dynamic function _append(_p:Ref<Prog>, _l2:T_patchList):T_patchList return __self__.value._append(_p, _l2);
    @:keep
    public dynamic function _patch(_p:Ref<Prog>, _val:GoUInt32):Void __self__.value._patch(_p, _val);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_patchList>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T_patchList_asInterface) class T_patchList_static_extension {
    @:keep
    static public function _append( _l1:T_patchList, _p:Ref<Prog>, _l2:T_patchList):T_patchList {
        if (_l1._head == ((0u32 : GoUInt32))) {
            return _l2?.__copy__();
        };
        if (_l2._head == ((0u32 : GoUInt32))) {
            return _l1?.__copy__();
        };
        var _i = (Go.setRef(_p.inst[(_l1._tail >> (1i64 : GoUInt64) : GoInt)]) : Ref<stdgo.regexp.syntax.Syntax.Inst>);
        if (_l1._tail & (1u32 : GoUInt32) == ((0u32 : GoUInt32))) {
            _i.out = _l2._head;
        } else {
            _i.arg = _l2._head;
        };
        return (new T_patchList(_l1._head, _l2._tail) : T_patchList);
    }
    @:keep
    static public function _patch( _l:T_patchList, _p:Ref<Prog>, _val:GoUInt32):Void {
        var _head:GoUInt32 = _l._head;
        while (_head != ((0u32 : GoUInt32))) {
            var _i = (Go.setRef(_p.inst[(_head >> (1i64 : GoUInt64) : GoInt)]) : Ref<stdgo.regexp.syntax.Syntax.Inst>);
            if (_head & (1u32 : GoUInt32) == ((0u32 : GoUInt32))) {
                _head = _i.out;
                _i.out = _val;
            } else {
                _head = _i.arg;
                _i.arg = _val;
            };
        };
    }
}
class T_compiler_asInterface {
    @:keep
    public dynamic function _rune(_r:Slice<GoRune>, _flags:Flags):T_frag return __self__.value._rune(_r, _flags);
    @:keep
    public dynamic function _empty(_op:EmptyOp):T_frag return __self__.value._empty(_op);
    @:keep
    public dynamic function _plus(_f1:T_frag, _nongreedy:Bool):T_frag return __self__.value._plus(_f1, _nongreedy);
    @:keep
    public dynamic function _star(_f1:T_frag, _nongreedy:Bool):T_frag return __self__.value._star(_f1, _nongreedy);
    /**
        // loop returns the fragment for the main loop of a plus or star.
        // For plus, it can be used after changing the entry to f1.i.
        // For star, it can be used directly when f1 can't match an empty string.
        // (When f1 can match an empty string, f1* must be implemented as (f1+)?
        // to get the priority match order correct.)
    **/
    @:keep
    public dynamic function _loop(_f1:T_frag, _nongreedy:Bool):T_frag return __self__.value._loop(_f1, _nongreedy);
    @:keep
    public dynamic function _quest(_f1:T_frag, _nongreedy:Bool):T_frag return __self__.value._quest(_f1, _nongreedy);
    @:keep
    public dynamic function _alt(_f1:T_frag, _f2:T_frag):T_frag return __self__.value._alt(_f1, _f2);
    @:keep
    public dynamic function _cat(_f1:T_frag, _f2:T_frag):T_frag return __self__.value._cat(_f1, _f2);
    @:keep
    public dynamic function _cap(_arg:GoUInt32):T_frag return __self__.value._cap(_arg);
    @:keep
    public dynamic function _fail():T_frag return __self__.value._fail();
    @:keep
    public dynamic function _nop():T_frag return __self__.value._nop();
    @:keep
    public dynamic function _inst(_op:InstOp):T_frag return __self__.value._inst(_op);
    @:keep
    public dynamic function _compile(_re:Ref<Regexp>):T_frag return __self__.value._compile(_re);
    @:keep
    public dynamic function _init():Void __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_compiler>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T_compiler_asInterface) class T_compiler_static_extension {
    @:keep
    static public function _rune( _c:Ref<T_compiler>, _r:Slice<GoRune>, _flags:Flags):T_frag {
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((7 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        _f._nullable = false;
        var _i = (Go.setRef(_c._p.inst[(_f._i : GoInt)]) : Ref<stdgo.regexp.syntax.Syntax.Inst>);
        _i.rune = _r;
        _flags = _flags & ((1 : stdgo.regexp.syntax.Syntax.Flags));
        if ((_r.length != (1 : GoInt)) || (stdgo.unicode.Unicode.simpleFold(_r[(0 : GoInt)]) == _r[(0 : GoInt)])) {
            _flags = _flags & ((1 : stdgo.regexp.syntax.Syntax.Flags) ^ (-1i32 : GoInt));
        };
        _i.arg = (_flags : GoUInt32);
        _f._out = _makePatchList(_f._i << (1i64 : GoUInt64))?.__copy__();
        if (((_flags & (1 : stdgo.regexp.syntax.Syntax.Flags)) == (0 : stdgo.regexp.syntax.Syntax.Flags)) && ((_r.length == (1 : GoInt)) || ((_r.length == (2 : GoInt)) && (_r[(0 : GoInt)] == _r[(1 : GoInt)])))) {
            _i.op = (8 : stdgo.regexp.syntax.Syntax.InstOp);
        } else if (((_r.length == (2 : GoInt)) && (_r[(0 : GoInt)] == (0 : GoInt32))) && (_r[(1 : GoInt)] == (1114111 : GoInt32))) {
            _i.op = (9 : stdgo.regexp.syntax.Syntax.InstOp);
        } else if (((((_r.length == (4 : GoInt)) && (_r[(0 : GoInt)] == (0 : GoInt32))) && (_r[(1 : GoInt)] == (9 : GoInt32))) && (_r[(2 : GoInt)] == (11 : GoInt32))) && (_r[(3 : GoInt)] == (1114111 : GoInt32))) {
            _i.op = (10 : stdgo.regexp.syntax.Syntax.InstOp);
        };
        return _f?.__copy__();
    }
    @:keep
    static public function _empty( _c:Ref<T_compiler>, _op:EmptyOp):T_frag {
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((3 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        _c._p.inst[(_f._i : GoInt)].arg = (_op : GoUInt32);
        _f._out = _makePatchList(_f._i << (1i64 : GoUInt64))?.__copy__();
        return _f?.__copy__();
    }
    @:keep
    static public function _plus( _c:Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag {
        return (new T_frag(_f1._i, _c._loop(_f1?.__copy__(), _nongreedy)._out?.__copy__(), _f1._nullable) : T_frag);
    }
    @:keep
    static public function _star( _c:Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag {
        if (_f1._nullable) {
            return _c._quest(_c._plus(_f1?.__copy__(), _nongreedy)?.__copy__(), _nongreedy)?.__copy__();
        };
        return _c._loop(_f1?.__copy__(), _nongreedy)?.__copy__();
    }
    /**
        // loop returns the fragment for the main loop of a plus or star.
        // For plus, it can be used after changing the entry to f1.i.
        // For star, it can be used directly when f1 can't match an empty string.
        // (When f1 can match an empty string, f1* must be implemented as (f1+)?
        // to get the priority match order correct.)
    **/
    @:keep
    static public function _loop( _c:Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag {
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((0 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        var _i = (Go.setRef(_c._p.inst[(_f._i : GoInt)]) : Ref<stdgo.regexp.syntax.Syntax.Inst>);
        if (_nongreedy) {
            _i.arg = _f1._i;
            _f._out = _makePatchList(_f._i << (1i64 : GoUInt64))?.__copy__();
        } else {
            _i.out = _f1._i;
            _f._out = _makePatchList((_f._i << (1i64 : GoUInt64)) | (1u32 : GoUInt32))?.__copy__();
        };
        _f1._out._patch(_c._p, _f._i);
        return _f?.__copy__();
    }
    @:keep
    static public function _quest( _c:Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag {
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((0 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        var _i = (Go.setRef(_c._p.inst[(_f._i : GoInt)]) : Ref<stdgo.regexp.syntax.Syntax.Inst>);
        if (_nongreedy) {
            _i.arg = _f1._i;
            _f._out = _makePatchList(_f._i << (1i64 : GoUInt64))?.__copy__();
        } else {
            _i.out = _f1._i;
            _f._out = _makePatchList((_f._i << (1i64 : GoUInt64)) | (1u32 : GoUInt32))?.__copy__();
        };
        _f._out = _f._out._append(_c._p, _f1._out?.__copy__())?.__copy__();
        return _f?.__copy__();
    }
    @:keep
    static public function _alt( _c:Ref<T_compiler>, _f1:T_frag, _f2:T_frag):T_frag {
        if (_f1._i == ((0u32 : GoUInt32))) {
            return _f2?.__copy__();
        };
        if (_f2._i == ((0u32 : GoUInt32))) {
            return _f1?.__copy__();
        };
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((0 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        var _i = (Go.setRef(_c._p.inst[(_f._i : GoInt)]) : Ref<stdgo.regexp.syntax.Syntax.Inst>);
        _i.out = _f1._i;
        _i.arg = _f2._i;
        _f._out = _f1._out._append(_c._p, _f2._out?.__copy__())?.__copy__();
        _f._nullable = _f1._nullable || _f2._nullable;
        return _f?.__copy__();
    }
    @:keep
    static public function _cat( _c:Ref<T_compiler>, _f1:T_frag, _f2:T_frag):T_frag {
        if ((_f1._i == (0u32 : GoUInt32)) || (_f2._i == (0u32 : GoUInt32))) {
            return (new T_frag() : T_frag);
        };
        _f1._out._patch(_c._p, _f2._i);
        return (new T_frag(_f1._i, _f2._out?.__copy__(), _f1._nullable && _f2._nullable) : T_frag);
    }
    @:keep
    static public function _cap( _c:Ref<T_compiler>, _arg:GoUInt32):T_frag {
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((2 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        _f._out = _makePatchList(_f._i << (1i64 : GoUInt64))?.__copy__();
        _c._p.inst[(_f._i : GoInt)].arg = _arg;
        if (_c._p.numCap < ((_arg : GoInt) + (1 : GoInt))) {
            _c._p.numCap = (_arg : GoInt) + (1 : GoInt);
        };
        return _f?.__copy__();
    }
    @:keep
    static public function _fail( _c:Ref<T_compiler>):T_frag {
        return (new T_frag() : T_frag);
    }
    @:keep
    static public function _nop( _c:Ref<T_compiler>):T_frag {
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((6 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        _f._out = _makePatchList(_f._i << (1i64 : GoUInt64))?.__copy__();
        return _f?.__copy__();
    }
    @:keep
    static public function _inst( _c:Ref<T_compiler>, _op:InstOp):T_frag {
        var _f:stdgo.regexp.syntax.Syntax.T_frag = ({ _i : (_c._p.inst.length : GoUInt32), _nullable : true } : T_frag);
        _c._p.inst = (_c._p.inst.__append__(({ op : _op } : Inst)));
        return _f?.__copy__();
    }
    @:keep
    static public function _compile( _c:Ref<T_compiler>, _re:Ref<Regexp>):T_frag {
        {
            final __value__ = _re.op;
            if (__value__ == ((1 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._fail()?.__copy__();
            } else if (__value__ == ((2 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._nop()?.__copy__();
            } else if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                if ((_re.rune.length) == ((0 : GoInt))) {
                    return _c._nop()?.__copy__();
                };
                var _f:T_frag = ({} : stdgo.regexp.syntax.Syntax.T_frag);
                for (_j in 0 ... _re.rune.length.toBasic()) {
                    var _f1:stdgo.regexp.syntax.Syntax.T_frag = _c._rune((_re.rune.__slice__(_j, _j + (1 : GoInt)) : Slice<GoInt32>), _re.flags)?.__copy__();
                    if (_j == ((0 : GoInt))) {
                        _f = _f1?.__copy__();
                    } else {
                        _f = _c._cat(_f?.__copy__(), _f1?.__copy__())?.__copy__();
                    };
                };
                return _f?.__copy__();
            } else if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._rune(_re.rune, _re.flags)?.__copy__();
            } else if (__value__ == ((5 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._rune(_anyRuneNotNL, (0 : stdgo.regexp.syntax.Syntax.Flags))?.__copy__();
            } else if (__value__ == ((6 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._rune(_anyRune, (0 : stdgo.regexp.syntax.Syntax.Flags))?.__copy__();
            } else if (__value__ == ((7 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._empty((1 : stdgo.regexp.syntax.Syntax.EmptyOp))?.__copy__();
            } else if (__value__ == ((8 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._empty((2 : stdgo.regexp.syntax.Syntax.EmptyOp))?.__copy__();
            } else if (__value__ == ((9 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._empty((4 : stdgo.regexp.syntax.Syntax.EmptyOp))?.__copy__();
            } else if (__value__ == ((10 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._empty((8 : stdgo.regexp.syntax.Syntax.EmptyOp))?.__copy__();
            } else if (__value__ == ((11 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._empty((16 : stdgo.regexp.syntax.Syntax.EmptyOp))?.__copy__();
            } else if (__value__ == ((12 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._empty((32 : stdgo.regexp.syntax.Syntax.EmptyOp))?.__copy__();
            } else if (__value__ == ((13 : stdgo.regexp.syntax.Syntax.Op))) {
                var _bra:stdgo.regexp.syntax.Syntax.T_frag = _c._cap((_re.cap << (1i64 : GoUInt64) : GoUInt32))?.__copy__();
                var _sub:stdgo.regexp.syntax.Syntax.T_frag = _c._compile(_re.sub[(0 : GoInt)])?.__copy__();
                var _ket:stdgo.regexp.syntax.Syntax.T_frag = _c._cap(((_re.cap << (1i64 : GoUInt64)) | (1 : GoInt) : GoUInt32))?.__copy__();
                return _c._cat(_c._cat(_bra?.__copy__(), _sub?.__copy__())?.__copy__(), _ket?.__copy__())?.__copy__();
            } else if (__value__ == ((14 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._star(_c._compile(_re.sub[(0 : GoInt)])?.__copy__(), _re.flags & (32 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags)))?.__copy__();
            } else if (__value__ == ((15 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._plus(_c._compile(_re.sub[(0 : GoInt)])?.__copy__(), _re.flags & (32 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags)))?.__copy__();
            } else if (__value__ == ((16 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._quest(_c._compile(_re.sub[(0 : GoInt)])?.__copy__(), _re.flags & (32 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags)))?.__copy__();
            } else if (__value__ == ((18 : stdgo.regexp.syntax.Syntax.Op))) {
                if ((_re.sub.length) == ((0 : GoInt))) {
                    return _c._nop()?.__copy__();
                };
                var _f:T_frag = ({} : stdgo.regexp.syntax.Syntax.T_frag);
                for (_i => _sub in _re.sub) {
                    if (_i == ((0 : GoInt))) {
                        _f = _c._compile(_sub)?.__copy__();
                    } else {
                        _f = _c._cat(_f?.__copy__(), _c._compile(_sub)?.__copy__())?.__copy__();
                    };
                };
                return _f?.__copy__();
            } else if (__value__ == ((19 : stdgo.regexp.syntax.Syntax.Op))) {
                var _f:T_frag = ({} : stdgo.regexp.syntax.Syntax.T_frag);
                for (__0 => _sub in _re.sub) {
                    _f = _c._alt(_f?.__copy__(), _c._compile(_sub)?.__copy__())?.__copy__();
                };
                return _f?.__copy__();
            };
        };
        throw Go.toInterface(("regexp: unhandled case in compile" : GoString));
    }
    @:keep
    static public function _init( _c:Ref<T_compiler>):Void {
        _c._p = (Go.setRef(({} : stdgo.regexp.syntax.Syntax.Prog)) : Ref<stdgo.regexp.syntax.Syntax.Prog>);
        _c._p.numCap = (2 : GoInt);
        _c._inst((5 : stdgo.regexp.syntax.Syntax.InstOp));
    }
}
class T_error_asInterface {
    @:keep
    public dynamic function error():GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_error>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T_error_asInterface) class T_error_static_extension {
    @:keep
    static public function error( _e:Ref<T_error>):GoString {
        return (((("error parsing regexp: " : GoString) + (_e.code.string() : GoString)) + (": `" : GoString)) + _e.expr) + ("`" : GoString);
    }
}
class T_parser_asInterface {
    /**
        // parseClass parses a character class at the beginning of s
        // and pushes it onto the parse stack.
    **/
    @:keep
    public dynamic function _parseClass(_s:GoString):{ var _0 : GoString; var _1 : Error; } return __self__.value._parseClass(_s);
    /**
        // parseUnicodeClass parses a leading Unicode character class like \p{Han}
        // from the beginning of s. If one is present, it appends the characters to r
        // and returns the new slice r and the remainder of the string.
    **/
    @:keep
    public dynamic function _parseUnicodeClass(_s:GoString, _r:Slice<GoRune>):{ var _0 : Slice<GoRune>; var _1 : GoString; var _2 : Error; } return __self__.value._parseUnicodeClass(_s, _r);
    @:keep
    public dynamic function _appendGroup(_r:Slice<GoRune>, _g:T_charGroup):Slice<GoRune> return __self__.value._appendGroup(_r, _g);
    /**
        // parseNamedClass parses a leading POSIX named character class like [:alnum:]
        // from the beginning of s. If one is present, it appends the characters to r
        // and returns the new slice r and the remainder of the string.
    **/
    @:keep
    public dynamic function _parseNamedClass(_s:GoString, _r:Slice<GoRune>):{ var _0 : Slice<GoRune>; var _1 : GoString; var _2 : Error; } return __self__.value._parseNamedClass(_s, _r);
    /**
        // parsePerlClassEscape parses a leading Perl character class escape like \d
        // from the beginning of s. If one is present, it appends the characters to r
        // and returns the new slice r and the remainder of the string.
    **/
    @:keep
    public dynamic function _parsePerlClassEscape(_s:GoString, _r:Slice<GoRune>):{ var _0 : Slice<GoRune>; var _1 : GoString; } return __self__.value._parsePerlClassEscape(_s, _r);
    /**
        // parseClassChar parses a character class character at the beginning of s
        // and returns it.
    **/
    @:keep
    public dynamic function _parseClassChar(_s:GoString, _wholeClass:GoString):{ var _0 : GoRune; var _1 : GoString; var _2 : Error; } return __self__.value._parseClassChar(_s, _wholeClass);
    /**
        // parseEscape parses an escape sequence at the beginning of s
        // and returns the rune.
    **/
    @:keep
    public dynamic function _parseEscape(_s:GoString):{ var _0 : GoRune; var _1 : GoString; var _2 : Error; } return __self__.value._parseEscape(_s);
    /**
        // parseRightParen handles a ) in the input.
    **/
    @:keep
    public dynamic function _parseRightParen():Error return __self__.value._parseRightParen();
    /**
        // If the top of the stack is an element followed by an opVerticalBar
        // swapVerticalBar swaps the two and returns true.
        // Otherwise it returns false.
    **/
    @:keep
    public dynamic function _swapVerticalBar():Bool return __self__.value._swapVerticalBar();
    /**
        // parseVerticalBar handles a | in the input.
    **/
    @:keep
    public dynamic function _parseVerticalBar():Error return __self__.value._parseVerticalBar();
    /**
        // parseInt parses a decimal integer.
    **/
    @:keep
    public dynamic function _parseInt(_s:GoString):{ var _0 : GoInt; var _1 : GoString; var _2 : Bool; } return __self__.value._parseInt(_s);
    /**
        // parsePerlFlags parses a Perl flag setting or non-capturing group or both,
        // like (?i) or (?: or (?i:.  It removes the prefix from s and updates the parse state.
        // The caller must have ensured that s begins with "(?".
    **/
    @:keep
    public dynamic function _parsePerlFlags(_s:GoString):{ var _0 : GoString; var _1 : Error; } return __self__.value._parsePerlFlags(_s);
    /**
        // parseRepeat parses {min} (max=min) or {min,} (max=-1) or {min,max}.
        // If s is not of that form, it returns ok == false.
        // If s has the right form but the values are too big, it returns min == -1, ok == true.
    **/
    @:keep
    public dynamic function _parseRepeat(_s:GoString):{ var _0 : GoInt; var _1 : GoInt; var _2 : GoString; var _3 : Bool; } return __self__.value._parseRepeat(_s);
    /**
        // removeLeadingRegexp removes the leading regexp in re.
        // It returns the replacement for re.
        // If reuse is true, it passes the removed regexp (if no longer needed) to p.reuse.
    **/
    @:keep
    public dynamic function _removeLeadingRegexp(_re:Ref<Regexp>, _reuse:Bool):Ref<Regexp> return __self__.value._removeLeadingRegexp(_re, _reuse);
    /**
        // leadingRegexp returns the leading regexp that re begins with.
        // The regexp refers to storage in re or its children.
    **/
    @:keep
    public dynamic function _leadingRegexp(_re:Ref<Regexp>):Ref<Regexp> return __self__.value._leadingRegexp(_re);
    /**
        // removeLeadingString removes the first n leading runes
        // from the beginning of re. It returns the replacement for re.
    **/
    @:keep
    public dynamic function _removeLeadingString(_re:Ref<Regexp>, _n:GoInt):Ref<Regexp> return __self__.value._removeLeadingString(_re, _n);
    /**
        // leadingString returns the leading literal string that re begins with.
        // The string refers to storage in re or its children.
    **/
    @:keep
    public dynamic function _leadingString(_re:Ref<Regexp>):{ var _0 : Slice<GoRune>; var _1 : Flags; } return __self__.value._leadingString(_re);
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
    public dynamic function _factor(_sub:Slice<Ref<Regexp>>):Slice<Ref<Regexp>> return __self__.value._factor(_sub);
    /**
        // collapse returns the result of applying op to sub.
        // If sub contains op nodes, they all get hoisted up
        // so that there is never a concat of a concat or an
        // alternate of an alternate.
    **/
    @:keep
    public dynamic function _collapse(_subs:Slice<Ref<Regexp>>, _op:Op):Ref<Regexp> return __self__.value._collapse(_subs, _op);
    /**
        // alternate replaces the top of the stack (above the topmost '(') with its alternation.
    **/
    @:keep
    public dynamic function _alternate():Ref<Regexp> return __self__.value._alternate();
    /**
        // concat replaces the top of the stack (above the topmost '|' or '(') with its concatenation.
    **/
    @:keep
    public dynamic function _concat():Ref<Regexp> return __self__.value._concat();
    /**
        // repeat replaces the top stack element with itself repeated according to op, min, max.
        // before is the regexp suffix starting at the repetition operator.
        // after is the regexp suffix following after the repetition operator.
        // repeat returns an updated 'after' and an error, if any.
    **/
    @:keep
    public dynamic function _repeat(_op:Op, _min:GoInt, _max:GoInt, _before:GoString, _after:GoString, _lastRepeat:GoString):{ var _0 : GoString; var _1 : Error; } return __self__.value._repeat(_op, _min, _max, _before, _after, _lastRepeat);
    /**
        // op pushes a regexp with the given op onto the stack
        // and returns that regexp.
    **/
    @:keep
    public dynamic function _op(_op:Op):Ref<Regexp> return __self__.value._op(_op);
    /**
        // literal pushes a literal regexp for the rune r on the stack.
    **/
    @:keep
    public dynamic function _literal(_r:GoRune):Void __self__.value._literal(_r);
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
    public dynamic function _maybeConcat(_r:GoRune, _flags:Flags):Bool return __self__.value._maybeConcat(_r, _flags);
    /**
        // push pushes the regexp re onto the parse stack and returns the regexp.
    **/
    @:keep
    public dynamic function _push(_re:Ref<Regexp>):Ref<Regexp> return __self__.value._push(_re);
    @:keep
    public dynamic function _calcHeight(_re:Ref<Regexp>, _force:Bool):GoInt return __self__.value._calcHeight(_re, _force);
    @:keep
    public dynamic function _checkHeight(_re:Ref<Regexp>):Void __self__.value._checkHeight(_re);
    @:keep
    public dynamic function _calcSize(_re:Ref<Regexp>, _force:Bool):GoInt64 return __self__.value._calcSize(_re, _force);
    @:keep
    public dynamic function _checkSize(_re:Ref<Regexp>):Void __self__.value._checkSize(_re);
    @:keep
    public dynamic function _checkLimits(_re:Ref<Regexp>):Void __self__.value._checkLimits(_re);
    @:keep
    public dynamic function _reuse(_re:Ref<Regexp>):Void __self__.value._reuse(_re);
    @:keep
    public dynamic function _newRegexp(_op:Op):Ref<Regexp> return __self__.value._newRegexp(_op);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_parser>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T_parser_asInterface) class T_parser_static_extension {
    /**
        // parseClass parses a character class at the beginning of s
        // and pushes it onto the parse stack.
    **/
    @:keep
    static public function _parseClass( _p:Ref<T_parser>, _s:GoString):{ var _0 : GoString; var _1 : Error; } {
        var _rest:GoString = ("" : GoString), _err:Error = (null : Error);
        var _t:GoString = (_s.__slice__((1 : GoInt)) : GoString);
        var _re = _p._newRegexp((4 : stdgo.regexp.syntax.Syntax.Op));
        _re.flags = _p._flags;
        _re.rune = (_re.rune0.__slice__(0, (0 : GoInt)) : Slice<GoInt32>);
        var _sign:GoInt = (1 : GoInt);
        if ((_t != Go.str()) && (_t[(0 : GoInt)] == (94 : GoUInt8))) {
            _sign = (-1 : GoInt);
            _t = (_t.__slice__((1 : GoInt)) : GoString);
            if (_p._flags & (4 : stdgo.regexp.syntax.Syntax.Flags) == ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                _re.rune = (_re.rune.__append__((10 : GoInt32), (10 : GoInt32)));
            };
        };
        var _class = _re.rune;
        var _first:Bool = true;
        while (((_t == Go.str()) || (_t[(0 : GoInt)] != (93 : GoUInt8))) || _first) {
            if (((((_t != Go.str()) && (_t[(0 : GoInt)] == (45 : GoUInt8))) && ((_p._flags & (64 : stdgo.regexp.syntax.Syntax.Flags)) == (0 : stdgo.regexp.syntax.Syntax.Flags))) && !_first) && ((_t.length == (1 : GoInt)) || (_t[(1 : GoInt)] != (93 : GoUInt8)))) {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_t.__slice__((1 : GoInt)) : GoString)), __0:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                return { _0 : Go.str(), _1 : Go.asInterface((Go.setRef(({ code : (("invalid character class range" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : (_t.__slice__(0, (1 : GoInt) + _size) : GoString) } : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
            };
            _first = false;
            if (((_t.length > (2 : GoInt)) && (_t[(0 : GoInt)] == (91 : GoUInt8))) && (_t[(1 : GoInt)] == (58 : GoUInt8))) {
                var __tmp__ = _p._parseNamedClass(_t, _class), _nclass:Slice<GoInt32> = __tmp__._0, _nt:GoString = __tmp__._1, _err:Error = __tmp__._2;
                if (_err != null) {
                    return { _0 : Go.str(), _1 : _err };
                };
                if (_nclass != null) {
                    {
                        final __tmp__0 = _nclass;
                        final __tmp__1 = _nt;
                        _class = __tmp__0;
                        _t = __tmp__1;
                    };
                    continue;
                };
            };
            var __tmp__ = _p._parseUnicodeClass(_t, _class), _nclass:Slice<GoInt32> = __tmp__._0, _nt:GoString = __tmp__._1, _err:Error = __tmp__._2;
            if (_err != null) {
                return { _0 : Go.str(), _1 : _err };
            };
            if (_nclass != null) {
                {
                    final __tmp__0 = _nclass;
                    final __tmp__1 = _nt;
                    _class = __tmp__0;
                    _t = __tmp__1;
                };
                continue;
            };
            {
                var __tmp__ = _p._parsePerlClassEscape(_t, _class), _nclass:Slice<GoInt32> = __tmp__._0, _nt:GoString = __tmp__._1;
                if (_nclass != null) {
                    {
                        final __tmp__0 = _nclass;
                        final __tmp__1 = _nt;
                        _class = __tmp__0;
                        _t = __tmp__1;
                    };
                    continue;
                };
            };
            var _rng:GoString = _t;
            var __0:GoRune = (0 : GoInt32), __1:GoRune = (0 : GoInt32), _hi:GoRune = __1, _lo:GoRune = __0;
            {
                {
                    var __tmp__ = _p._parseClassChar(_t, _s);
                    _lo = __tmp__._0;
                    _t = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : Go.str(), _1 : _err };
                };
            };
            _hi = _lo;
            if (((_t.length >= (2 : GoInt)) && (_t[(0 : GoInt)] == (45 : GoUInt8))) && (_t[(1 : GoInt)] != (93 : GoUInt8))) {
                _t = (_t.__slice__((1 : GoInt)) : GoString);
                {
                    {
                        var __tmp__ = _p._parseClassChar(_t, _s);
                        _hi = __tmp__._0;
                        _t = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        return { _0 : Go.str(), _1 : _err };
                    };
                };
                if (_hi < _lo) {
                    _rng = (_rng.__slice__(0, (_rng.length) - (_t.length)) : GoString);
                    return { _0 : Go.str(), _1 : Go.asInterface((Go.setRef(({ code : (("invalid character class range" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : _rng } : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
                };
            };
            if (_p._flags & (1 : stdgo.regexp.syntax.Syntax.Flags) == ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                _class = _appendRange(_class, _lo, _hi);
            } else {
                _class = _appendFoldedRange(_class, _lo, _hi);
            };
        };
        _t = (_t.__slice__((1 : GoInt)) : GoString);
        _re.rune = _class;
        _class = _cleanClass((Go.setRef(_re.rune) : Ref<Slice<GoInt32>>));
        if (_sign < (0 : GoInt)) {
            _class = _negateClass(_class);
        };
        _re.rune = _class;
        _p._push(_re);
        return { _0 : _t, _1 : (null : Error) };
    }
    /**
        // parseUnicodeClass parses a leading Unicode character class like \p{Han}
        // from the beginning of s. If one is present, it appends the characters to r
        // and returns the new slice r and the remainder of the string.
    **/
    @:keep
    static public function _parseUnicodeClass( _p:Ref<T_parser>, _s:GoString, _r:Slice<GoRune>):{ var _0 : Slice<GoRune>; var _1 : GoString; var _2 : Error; } {
        var _out:Slice<GoRune> = (null : Slice<GoInt32>), _rest:GoString = ("" : GoString), _err:Error = (null : Error);
        if (((((_p._flags & (128 : stdgo.regexp.syntax.Syntax.Flags)) == (0 : stdgo.regexp.syntax.Syntax.Flags)) || (_s.length < (2 : GoInt))) || (_s[(0 : GoInt)] != (92 : GoUInt8))) || ((_s[(1 : GoInt)] != (112 : GoUInt8)) && (_s[(1 : GoInt)] != (80 : GoUInt8)))) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _sign:GoInt = (1 : GoInt);
        if (_s[(1 : GoInt)] == ((80 : GoUInt8))) {
            _sign = (-1 : GoInt);
        };
        var _t:GoString = (_s.__slice__((2 : GoInt)) : GoString);
        var __tmp__ = _nextRune(_t), _c:GoInt32 = __tmp__._0, _t:GoString = __tmp__._1, _err:Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var __0:GoString = ("" : GoString), __1:GoString = ("" : GoString), _name:GoString = __1, _seq:GoString = __0;
        if (_c != ((123 : GoInt32))) {
            _seq = (_s.__slice__(0, (_s.length) - (_t.length)) : GoString);
            _name = (_seq.__slice__((2 : GoInt)) : GoString);
        } else {
            var _end:GoInt = stdgo.strings.Strings.indexRune(_s, (125 : GoInt32));
            if (_end < (0 : GoInt)) {
                {
                    _err = _checkUTF8(_s);
                    if (_err != null) {
                        return { _0 : _out, _1 : _rest, _2 : _err };
                    };
                };
                return { _0 : (null : Slice<GoInt32>), _1 : Go.str(), _2 : Go.asInterface((Go.setRef((new T_error((("invalid character class range" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _s) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
            };
            {
                final __tmp__0 = (_s.__slice__(0, _end + (1 : GoInt)) : GoString);
                final __tmp__1 = (_s.__slice__(_end + (1 : GoInt)) : GoString);
                _seq = __tmp__0;
                _t = __tmp__1;
            };
            _name = (_s.__slice__((3 : GoInt), _end) : GoString);
            {
                _err = _checkUTF8(_name);
                if (_err != null) {
                    return { _0 : _out, _1 : _rest, _2 : _err };
                };
            };
        };
        if ((_name != Go.str()) && (_name[(0 : GoInt)] == (94 : GoUInt8))) {
            _sign = -_sign;
            _name = (_name.__slice__((1 : GoInt)) : GoString);
        };
        var __tmp__ = _unicodeTable(_name), _tab:Ref<stdgo.unicode.Unicode.RangeTable> = __tmp__._0, _fold:Ref<stdgo.unicode.Unicode.RangeTable> = __tmp__._1;
        if (_tab == null || (_tab : Dynamic).__nil__) {
            return { _0 : (null : Slice<GoInt32>), _1 : Go.str(), _2 : Go.asInterface((Go.setRef((new T_error((("invalid character class range" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _seq) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        if (((_p._flags & (1 : stdgo.regexp.syntax.Syntax.Flags)) == (0 : stdgo.regexp.syntax.Syntax.Flags)) || ((_fold == null) || (_fold : Dynamic).__nil__)) {
            if (_sign > (0 : GoInt)) {
                _r = _appendTable(_r, _tab);
            } else {
                _r = _appendNegatedTable(_r, _tab);
            };
        } else {
            var _tmp = (_p._tmpClass.__slice__(0, (0 : GoInt)) : Slice<GoInt32>);
            _tmp = _appendTable(_tmp, _tab);
            _tmp = _appendTable(_tmp, _fold);
            _p._tmpClass = _tmp;
            _tmp = _cleanClass((Go.setRef(_p._tmpClass) : Ref<Slice<GoInt32>>));
            if (_sign > (0 : GoInt)) {
                _r = _appendClass(_r, _tmp);
            } else {
                _r = _appendNegatedClass(_r, _tmp);
            };
        };
        return { _0 : _r, _1 : _t, _2 : (null : Error) };
    }
    @:keep
    static public function _appendGroup( _p:Ref<T_parser>, _r:Slice<GoRune>, _g:T_charGroup):Slice<GoRune> {
        if (_p._flags & (1 : stdgo.regexp.syntax.Syntax.Flags) == ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
            if (_g._sign < (0 : GoInt)) {
                _r = _appendNegatedClass(_r, _g._class);
            } else {
                _r = _appendClass(_r, _g._class);
            };
        } else {
            var _tmp = (_p._tmpClass.__slice__(0, (0 : GoInt)) : Slice<GoInt32>);
            _tmp = _appendFoldedClass(_tmp, _g._class);
            _p._tmpClass = _tmp;
            _tmp = _cleanClass((Go.setRef(_p._tmpClass) : Ref<Slice<GoInt32>>));
            if (_g._sign < (0 : GoInt)) {
                _r = _appendNegatedClass(_r, _tmp);
            } else {
                _r = _appendClass(_r, _tmp);
            };
        };
        return _r;
    }
    /**
        // parseNamedClass parses a leading POSIX named character class like [:alnum:]
        // from the beginning of s. If one is present, it appends the characters to r
        // and returns the new slice r and the remainder of the string.
    **/
    @:keep
    static public function _parseNamedClass( _p:Ref<T_parser>, _s:GoString, _r:Slice<GoRune>):{ var _0 : Slice<GoRune>; var _1 : GoString; var _2 : Error; } {
        var _out:Slice<GoRune> = (null : Slice<GoInt32>), _rest:GoString = ("" : GoString), _err:Error = (null : Error);
        if (((_s.length < (2 : GoInt)) || (_s[(0 : GoInt)] != (91 : GoUInt8))) || (_s[(1 : GoInt)] != (58 : GoUInt8))) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _i:GoInt = stdgo.strings.Strings.index((_s.__slice__((2 : GoInt)) : GoString), (":]" : GoString));
        if (_i < (0 : GoInt)) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        _i = _i + ((2 : GoInt));
        var __0:GoString = (_s.__slice__((0 : GoInt), _i + (2 : GoInt)) : GoString), __1:GoString = (_s.__slice__(_i + (2 : GoInt)) : GoString), _s:GoString = __1, _name:GoString = __0;
        var _g:stdgo.regexp.syntax.Syntax.T_charGroup = _posixGroup[_name];
        if (_g._sign == ((0 : GoInt))) {
            return { _0 : (null : Slice<GoInt32>), _1 : Go.str(), _2 : Go.asInterface((Go.setRef((new T_error((("invalid character class range" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _name) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        return { _0 : _p._appendGroup(_r, _g?.__copy__()), _1 : _s, _2 : (null : Error) };
    }
    /**
        // parsePerlClassEscape parses a leading Perl character class escape like \d
        // from the beginning of s. If one is present, it appends the characters to r
        // and returns the new slice r and the remainder of the string.
    **/
    @:keep
    static public function _parsePerlClassEscape( _p:Ref<T_parser>, _s:GoString, _r:Slice<GoRune>):{ var _0 : Slice<GoRune>; var _1 : GoString; } {
        var _out:Slice<GoRune> = (null : Slice<GoInt32>), _rest:GoString = ("" : GoString);
        if ((((_p._flags & (64 : stdgo.regexp.syntax.Syntax.Flags)) == (0 : stdgo.regexp.syntax.Syntax.Flags)) || (_s.length < (2 : GoInt))) || (_s[(0 : GoInt)] != (92 : GoUInt8))) {
            return { _0 : _out, _1 : _rest };
        };
        var _g:stdgo.regexp.syntax.Syntax.T_charGroup = _perlGroup[(_s.__slice__((0 : GoInt), (2 : GoInt)) : GoString)];
        if (_g._sign == ((0 : GoInt))) {
            return { _0 : _out, _1 : _rest };
        };
        return { _0 : _p._appendGroup(_r, _g?.__copy__()), _1 : (_s.__slice__((2 : GoInt)) : GoString) };
    }
    /**
        // parseClassChar parses a character class character at the beginning of s
        // and returns it.
    **/
    @:keep
    static public function _parseClassChar( _p:Ref<T_parser>, _s:GoString, _wholeClass:GoString):{ var _0 : GoRune; var _1 : GoString; var _2 : Error; } {
        var _r:GoRune = (0 : GoInt32), _rest:GoString = ("" : GoString), _err:Error = (null : Error);
        if (_s == (Go.str())) {
            return { _0 : (0 : GoInt32), _1 : Go.str(), _2 : Go.asInterface((Go.setRef(({ code : (("missing closing ]" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : _wholeClass } : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        if (_s[(0 : GoInt)] == ((92 : GoUInt8))) {
            return _p._parseEscape(_s);
        };
        return _nextRune(_s);
    }
    /**
        // parseEscape parses an escape sequence at the beginning of s
        // and returns the rune.
    **/
    @:keep
    static public function _parseEscape( _p:Ref<T_parser>, _s:GoString):{ var _0 : GoRune; var _1 : GoString; var _2 : Error; } {
        stdgo.internal.Macro.controlFlow({
            var _r:GoRune = (0 : GoInt32), _rest:GoString = ("" : GoString), _err:Error = (null : Error);
            var _t:GoString = (_s.__slice__((1 : GoInt)) : GoString);
            if (_t == (Go.str())) {
                return { _0 : (0 : GoInt32), _1 : Go.str(), _2 : Go.asInterface((Go.setRef((new T_error((("trailing backslash at end of expression" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), Go.str()) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
            };
            var __tmp__ = _nextRune(_t), _c:GoInt32 = __tmp__._0, _t:GoString = __tmp__._1, _err:Error = __tmp__._2;
            if (_err != null) {
                return { _0 : (0 : GoInt32), _1 : Go.str(), _2 : _err };
            };
            @:label("Switch") {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _c;
                        if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == ((49 : GoInt32)) || __value__ == ((50 : GoInt32)) || __value__ == ((51 : GoInt32)) || __value__ == ((52 : GoInt32)) || __value__ == ((53 : GoInt32)) || __value__ == ((54 : GoInt32)) || __value__ == ((55 : GoInt32))))) {
                            if (((_t == Go.str()) || (_t[(0 : GoInt)] < (48 : GoUInt8))) || (_t[(0 : GoInt)] > (55 : GoUInt8))) {
                                break;
                            };
                            @:fallthrough {
                                __switchIndex__ = 2;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (48 : GoInt32)))) {
                            _r = _c - (48 : GoInt32);
                            {
                                var _i:GoInt = (1 : GoInt);
                                Go.cfor(_i < (3 : GoInt), _i++, {
                                    if (((_t == Go.str()) || (_t[(0 : GoInt)] < (48 : GoUInt8))) || (_t[(0 : GoInt)] > (55 : GoUInt8))) {
                                        break;
                                    };
                                    _r = ((_r * (8 : GoInt32)) + (_t[(0 : GoInt)] : GoRune)) - (48 : GoInt32);
                                    _t = (_t.__slice__((1 : GoInt)) : GoString);
                                });
                            };
                            return { _0 : _r, _1 : _t, _2 : (null : Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (120 : GoInt32)))) {
                            if (_t == (Go.str())) {
                                break;
                            };
                            {
                                {
                                    var __tmp__ = _nextRune(_t);
                                    _c = __tmp__._0;
                                    _t = __tmp__._1;
                                    _err = __tmp__._2;
                                };
                                if (_err != null) {
                                    return { _0 : (0 : GoInt32), _1 : Go.str(), _2 : _err };
                                };
                            };
                            if (_c == ((123 : GoInt32))) {
                                var _nhex:GoInt = (0 : GoInt);
                                _r = (0 : GoInt32);
                                while (true) {
                                    if (_t == (Go.str())) {
                                        @:jump("Switch") break;
                                    };
                                    {
                                        {
                                            var __tmp__ = _nextRune(_t);
                                            _c = __tmp__._0;
                                            _t = __tmp__._1;
                                            _err = __tmp__._2;
                                        };
                                        if (_err != null) {
                                            return { _0 : (0 : GoInt32), _1 : Go.str(), _2 : _err };
                                        };
                                    };
                                    if (_c == ((125 : GoInt32))) {
                                        break;
                                    };
                                    var _v:GoInt32 = _unhex(_c);
                                    if (_v < (0 : GoInt32)) {
                                        @:jump("Switch") break;
                                    };
                                    _r = (_r * (16 : GoInt32)) + _v;
                                    if (_r > (1114111 : GoInt32)) {
                                        @:jump("Switch") break;
                                    };
                                    _nhex++;
                                };
                                if (_nhex == ((0 : GoInt))) {
                                    @:jump("Switch") break;
                                };
                                return { _0 : _r, _1 : _t, _2 : (null : Error) };
                            };
                            var _x:GoInt32 = _unhex(_c);
                            {
                                {
                                    var __tmp__ = _nextRune(_t);
                                    _c = __tmp__._0;
                                    _t = __tmp__._1;
                                    _err = __tmp__._2;
                                };
                                if (_err != null) {
                                    return { _0 : (0 : GoInt32), _1 : Go.str(), _2 : _err };
                                };
                            };
                            var _y:GoInt32 = _unhex(_c);
                            if ((_x < (0 : GoInt32)) || (_y < (0 : GoInt32))) {
                                break;
                            };
                            return { _0 : (_x * (16 : GoInt32)) + _y, _1 : _t, _2 : (null : Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (97 : GoInt32)))) {
                            return { _0 : (7 : GoInt32), _1 : _t, _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (102 : GoInt32)))) {
                            return { _0 : (12 : GoInt32), _1 : _t, _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (110 : GoInt32)))) {
                            return { _0 : (10 : GoInt32), _1 : _t, _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 7 || (__switchIndex__ == -1 && (__value__ == (114 : GoInt32)))) {
                            return { _0 : (13 : GoInt32), _1 : _t, _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 8 || (__switchIndex__ == -1 && (__value__ == (116 : GoInt32)))) {
                            return { _0 : (9 : GoInt32), _1 : _t, _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 9 || (__switchIndex__ == -1 && (__value__ == (118 : GoInt32)))) {
                            return { _0 : (11 : GoInt32), _1 : _t, _2 : _err };
                            break;
                            break;
                        } else {
                            if ((_c < (128 : GoInt32)) && !_isalnum(_c)) {
                                return { _0 : _c, _1 : _t, _2 : (null : Error) };
                            };
                            break;
                        };
                    };
                    break;
                };
            };
            return { _0 : (0 : GoInt32), _1 : Go.str(), _2 : Go.asInterface((Go.setRef((new T_error((("invalid escape sequence" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_s.__slice__(0, (_s.length) - (_t.length)) : GoString)) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        });
        throw "controlFlow did not return";
    }
    /**
        // parseRightParen handles a ) in the input.
    **/
    @:keep
    static public function _parseRightParen( _p:Ref<T_parser>):Error {
        _p._concat();
        if (_p._swapVerticalBar()) {
            _p._stack = (_p._stack.__slice__(0, (_p._stack.length) - (1 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        };
        _p._alternate();
        var _n:GoInt = (_p._stack.length);
        if (_n < (2 : GoInt)) {
            return Go.asInterface((Go.setRef((new T_error((("unexpected )" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _p._wholeRegexp) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>));
        };
        var _re1 = _p._stack[(_n - (1 : GoInt) : GoInt)];
        var _re2 = _p._stack[(_n - (2 : GoInt) : GoInt)];
        _p._stack = (_p._stack.__slice__(0, _n - (2 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        if (_re2.op != ((128 : stdgo.regexp.syntax.Syntax.Op))) {
            return Go.asInterface((Go.setRef((new T_error((("unexpected )" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _p._wholeRegexp) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>));
        };
        _p._flags = _re2.flags;
        if (_re2.cap == ((0 : GoInt))) {
            _p._push(_re1);
        } else {
            _re2.op = (13 : stdgo.regexp.syntax.Syntax.Op);
            _re2.sub = (_re2.sub0.__slice__(0, (1 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
            _re2.sub[(0 : GoInt)] = _re1;
            _p._push(_re2);
        };
        return (null : Error);
    }
    /**
        // If the top of the stack is an element followed by an opVerticalBar
        // swapVerticalBar swaps the two and returns true.
        // Otherwise it returns false.
    **/
    @:keep
    static public function _swapVerticalBar( _p:Ref<T_parser>):Bool {
        var _n:GoInt = (_p._stack.length);
        if ((((_n >= (3 : GoInt)) && (_p._stack[(_n - (2 : GoInt) : GoInt)].op == (129 : stdgo.regexp.syntax.Syntax.Op))) && _isCharClass(_p._stack[(_n - (1 : GoInt) : GoInt)])) && _isCharClass(_p._stack[(_n - (3 : GoInt) : GoInt)])) {
            var _re1 = _p._stack[(_n - (1 : GoInt) : GoInt)];
            var _re3 = _p._stack[(_n - (3 : GoInt) : GoInt)];
            if (_re1.op > _re3.op) {
                {
                    final __tmp__0 = _re3;
                    final __tmp__1 = _re1;
                    _re1 = __tmp__0;
                    _re3 = __tmp__1;
                };
                _p._stack[(_n - (3 : GoInt) : GoInt)] = _re3;
            };
            _mergeCharClass(_re3, _re1);
            _p._reuse(_re1);
            _p._stack = (_p._stack.__slice__(0, _n - (1 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
            return true;
        };
        if (_n >= (2 : GoInt)) {
            var _re1 = _p._stack[(_n - (1 : GoInt) : GoInt)];
            var _re2 = _p._stack[(_n - (2 : GoInt) : GoInt)];
            if (_re2.op == ((129 : stdgo.regexp.syntax.Syntax.Op))) {
                if (_n >= (3 : GoInt)) {
                    _cleanAlt(_p._stack[(_n - (3 : GoInt) : GoInt)]);
                };
                _p._stack[(_n - (2 : GoInt) : GoInt)] = _re1;
                _p._stack[(_n - (1 : GoInt) : GoInt)] = _re2;
                return true;
            };
        };
        return false;
    }
    /**
        // parseVerticalBar handles a | in the input.
    **/
    @:keep
    static public function _parseVerticalBar( _p:Ref<T_parser>):Error {
        _p._concat();
        if (!_p._swapVerticalBar()) {
            _p._op((129 : stdgo.regexp.syntax.Syntax.Op));
        };
        return (null : Error);
    }
    /**
        // parseInt parses a decimal integer.
    **/
    @:keep
    static public function _parseInt( _p:Ref<T_parser>, _s:GoString):{ var _0 : GoInt; var _1 : GoString; var _2 : Bool; } {
        var _n:GoInt = (0 : GoInt), _rest:GoString = ("" : GoString), _ok:Bool = false;
        if (((_s == Go.str()) || (_s[(0 : GoInt)] < (48 : GoUInt8))) || ((57 : GoUInt8) < _s[(0 : GoInt)])) {
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        if ((((_s.length >= (2 : GoInt)) && (_s[(0 : GoInt)] == (48 : GoUInt8))) && ((48 : GoUInt8) <= _s[(1 : GoInt)])) && (_s[(1 : GoInt)] <= (57 : GoUInt8))) {
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        var _t:GoString = _s;
        while (((_s != Go.str()) && ((48 : GoUInt8) <= _s[(0 : GoInt)])) && (_s[(0 : GoInt)] <= (57 : GoUInt8))) {
            _s = (_s.__slice__((1 : GoInt)) : GoString);
        };
        _rest = _s;
        _ok = true;
        _t = (_t.__slice__(0, (_t.length) - (_s.length)) : GoString);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_t.length), _i++, {
                if (_n >= (100000000 : GoInt)) {
                    _n = (-1 : GoInt);
                    break;
                };
                _n = ((_n * (10 : GoInt)) + (_t[(_i : GoInt)] : GoInt)) - (48 : GoInt);
            });
        };
        return { _0 : _n, _1 : _rest, _2 : _ok };
    }
    /**
        // parsePerlFlags parses a Perl flag setting or non-capturing group or both,
        // like (?i) or (?: or (?i:.  It removes the prefix from s and updates the parse state.
        // The caller must have ensured that s begins with "(?".
    **/
    @:keep
    static public function _parsePerlFlags( _p:Ref<T_parser>, _s:GoString):{ var _0 : GoString; var _1 : Error; } {
        stdgo.internal.Macro.controlFlow({
            var _rest:GoString = ("" : GoString), _err:Error = (null : Error);
            var _t:GoString = _s;
            if (((_t.length > (4 : GoInt)) && (_t[(2 : GoInt)] == (80 : GoUInt8))) && (_t[(3 : GoInt)] == (60 : GoUInt8))) {
                var _end:GoInt = stdgo.strings.Strings.indexRune(_t, (62 : GoInt32));
                if (_end < (0 : GoInt)) {
                    {
                        _err = _checkUTF8(_t);
                        if (_err != null) {
                            return { _0 : Go.str(), _1 : _err };
                        };
                    };
                    return { _0 : Go.str(), _1 : Go.asInterface((Go.setRef((new T_error((("invalid named capture" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _s) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
                };
                var _capture:GoString = (_t.__slice__(0, _end + (1 : GoInt)) : GoString);
                var _name:GoString = (_t.__slice__((4 : GoInt), _end) : GoString);
                {
                    _err = _checkUTF8(_name);
                    if (_err != null) {
                        return { _0 : Go.str(), _1 : _err };
                    };
                };
                if (!_isValidCaptureName(_name)) {
                    return { _0 : Go.str(), _1 : Go.asInterface((Go.setRef((new T_error((("invalid named capture" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _capture) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
                };
                _p._numCap++;
                var _re = _p._op((128 : stdgo.regexp.syntax.Syntax.Op));
                _re.cap = _p._numCap;
                _re.name = _name;
                return { _0 : (_t.__slice__(_end + (1 : GoInt)) : GoString), _1 : (null : Error) };
            };
            var _c:GoRune = (0 : GoInt32);
            _t = (_t.__slice__((2 : GoInt)) : GoString);
            var _flags:stdgo.regexp.syntax.Syntax.Flags = _p._flags;
            var _sign:GoInt = (1 : GoInt);
            var _sawFlag:Bool = false;
            @:label("Loop") while (_t != (Go.str())) {
                {
                    {
                        var __tmp__ = _nextRune(_t);
                        _c = __tmp__._0;
                        _t = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        return { _0 : Go.str(), _1 : _err };
                    };
                };
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _c;
                            if (__value__ == ((105 : GoInt32))) {
                                _flags = _flags | ((1 : stdgo.regexp.syntax.Syntax.Flags));
                                _sawFlag = true;
                                break;
                            } else if (__value__ == ((109 : GoInt32))) {
                                _flags = _flags & ((16 : stdgo.regexp.syntax.Syntax.Flags) ^ (-1i32 : GoInt));
                                _sawFlag = true;
                                break;
                            } else if (__value__ == ((115 : GoInt32))) {
                                _flags = _flags | ((8 : stdgo.regexp.syntax.Syntax.Flags));
                                _sawFlag = true;
                                break;
                            } else if (__value__ == ((85 : GoInt32))) {
                                _flags = _flags | ((32 : stdgo.regexp.syntax.Syntax.Flags));
                                _sawFlag = true;
                                break;
                            } else if (__value__ == ((45 : GoInt32))) {
                                if (_sign < (0 : GoInt)) {
                                    @:jump("Loop") break;
                                };
                                _sign = (-1 : GoInt);
                                _flags = (-1 ^ _flags);
                                _sawFlag = false;
                                break;
                            } else if (__value__ == ((58 : GoInt32)) || __value__ == ((41 : GoInt32))) {
                                if (_sign < (0 : GoInt)) {
                                    if (!_sawFlag) {
                                        @:jump("Loop") break;
                                    };
                                    _flags = (-1 ^ _flags);
                                };
                                if (_c == ((58 : GoInt32))) {
                                    _p._op((128 : stdgo.regexp.syntax.Syntax.Op));
                                };
                                _p._flags = _flags;
                                return { _0 : _t, _1 : (null : Error) };
                                break;
                            } else {
                                @:jump("Loop") break;
                            };
                        };
                        break;
                    };
                };
            };
            return { _0 : Go.str(), _1 : Go.asInterface((Go.setRef((new T_error((("invalid or unsupported Perl syntax" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_s.__slice__(0, (_s.length) - (_t.length)) : GoString)) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        });
        throw "controlFlow did not return";
    }
    /**
        // parseRepeat parses {min} (max=min) or {min,} (max=-1) or {min,max}.
        // If s is not of that form, it returns ok == false.
        // If s has the right form but the values are too big, it returns min == -1, ok == true.
    **/
    @:keep
    static public function _parseRepeat( _p:Ref<T_parser>, _s:GoString):{ var _0 : GoInt; var _1 : GoInt; var _2 : GoString; var _3 : Bool; } {
        var _min:GoInt = (0 : GoInt), _max:GoInt = (0 : GoInt), _rest:GoString = ("" : GoString), _ok:Bool = false;
        if ((_s == Go.str()) || (_s[(0 : GoInt)] != (123 : GoUInt8))) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        _s = (_s.__slice__((1 : GoInt)) : GoString);
        var _ok1:Bool = false;
        {
            {
                var __tmp__ = _p._parseInt(_s);
                _min = __tmp__._0;
                _s = __tmp__._1;
                _ok1 = __tmp__._2;
            };
            if (!_ok1) {
                return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
            };
        };
        if (_s == (Go.str())) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        if (_s[(0 : GoInt)] != ((44 : GoUInt8))) {
            _max = _min;
        } else {
            _s = (_s.__slice__((1 : GoInt)) : GoString);
            if (_s == (Go.str())) {
                return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
            };
            if (_s[(0 : GoInt)] == ((125 : GoUInt8))) {
                _max = (-1 : GoInt);
            } else {
                {
                    var __tmp__ = _p._parseInt(_s);
                    _max = __tmp__._0;
                    _s = __tmp__._1;
                    _ok1 = __tmp__._2;
                };
                if (!_ok1) {
                    return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
                } else if (_max < (0 : GoInt)) {
                    _min = (-1 : GoInt);
                };
            };
        };
        if ((_s == Go.str()) || (_s[(0 : GoInt)] != (125 : GoUInt8))) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        _rest = (_s.__slice__((1 : GoInt)) : GoString);
        _ok = true;
        return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
    }
    /**
        // removeLeadingRegexp removes the leading regexp in re.
        // It returns the replacement for re.
        // If reuse is true, it passes the removed regexp (if no longer needed) to p.reuse.
    **/
    @:keep
    static public function _removeLeadingRegexp( _p:Ref<T_parser>, _re:Ref<Regexp>, _reuse:Bool):Ref<Regexp> {
        if ((_re.op == (18 : stdgo.regexp.syntax.Syntax.Op)) && (_re.sub.length > (0 : GoInt))) {
            if (_reuse) {
                _p._reuse(_re.sub[(0 : GoInt)]);
            };
            _re.sub = (_re.sub.__slice__(0, Go.copySlice(_re.sub, (_re.sub.__slice__((1 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>))) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
            {
                final __value__ = (_re.sub.length);
                if (__value__ == ((0 : GoInt))) {
                    _re.op = (2 : stdgo.regexp.syntax.Syntax.Op);
                    _re.sub = (null : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
                } else if (__value__ == ((1 : GoInt))) {
                    var _old = _re;
                    _re = _re.sub[(0 : GoInt)];
                    _p._reuse(_old);
                };
            };
            return _re;
        };
        if (_reuse) {
            _p._reuse(_re);
        };
        return _p._newRegexp((2 : stdgo.regexp.syntax.Syntax.Op));
    }
    /**
        // leadingRegexp returns the leading regexp that re begins with.
        // The regexp refers to storage in re or its children.
    **/
    @:keep
    static public function _leadingRegexp( _p:Ref<T_parser>, _re:Ref<Regexp>):Ref<Regexp> {
        if (_re.op == ((2 : stdgo.regexp.syntax.Syntax.Op))) {
            return null;
        };
        if ((_re.op == (18 : stdgo.regexp.syntax.Syntax.Op)) && (_re.sub.length > (0 : GoInt))) {
            var _sub = _re.sub[(0 : GoInt)];
            if (_sub.op == ((2 : stdgo.regexp.syntax.Syntax.Op))) {
                return null;
            };
            return _sub;
        };
        return _re;
    }
    /**
        // removeLeadingString removes the first n leading runes
        // from the beginning of re. It returns the replacement for re.
    **/
    @:keep
    static public function _removeLeadingString( _p:Ref<T_parser>, _re:Ref<Regexp>, _n:GoInt):Ref<Regexp> {
        if ((_re.op == (18 : stdgo.regexp.syntax.Syntax.Op)) && (_re.sub.length > (0 : GoInt))) {
            var _sub = _re.sub[(0 : GoInt)];
            _sub = _p._removeLeadingString(_sub, _n);
            _re.sub[(0 : GoInt)] = _sub;
            if (_sub.op == ((2 : stdgo.regexp.syntax.Syntax.Op))) {
                _p._reuse(_sub);
                {
                    final __value__ = (_re.sub.length);
                    if (__value__ == ((0 : GoInt)) || __value__ == ((1 : GoInt))) {
                        _re.op = (2 : stdgo.regexp.syntax.Syntax.Op);
                        _re.sub = (null : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
                    } else if (__value__ == ((2 : GoInt))) {
                        var _old = _re;
                        _re = _re.sub[(1 : GoInt)];
                        _p._reuse(_old);
                    } else {
                        Go.copySlice(_re.sub, (_re.sub.__slice__((1 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>));
                        _re.sub = (_re.sub.__slice__(0, (_re.sub.length) - (1 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
                    };
                };
            };
            return _re;
        };
        if (_re.op == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
            _re.rune = (_re.rune.__slice__(0, Go.copySlice(_re.rune, (_re.rune.__slice__(_n) : Slice<GoInt32>))) : Slice<GoInt32>);
            if ((_re.rune.length) == ((0 : GoInt))) {
                _re.op = (2 : stdgo.regexp.syntax.Syntax.Op);
            };
        };
        return _re;
    }
    /**
        // leadingString returns the leading literal string that re begins with.
        // The string refers to storage in re or its children.
    **/
    @:keep
    static public function _leadingString( _p:Ref<T_parser>, _re:Ref<Regexp>):{ var _0 : Slice<GoRune>; var _1 : Flags; } {
        if ((_re.op == (18 : stdgo.regexp.syntax.Syntax.Op)) && (_re.sub.length > (0 : GoInt))) {
            _re = _re.sub[(0 : GoInt)];
        };
        if (_re.op != ((3 : stdgo.regexp.syntax.Syntax.Op))) {
            return { _0 : (null : Slice<GoInt32>), _1 : (0 : stdgo.regexp.syntax.Syntax.Flags) };
        };
        return { _0 : _re.rune, _1 : _re.flags & (1 : stdgo.regexp.syntax.Syntax.Flags) };
    }
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
    static public function _factor( _p:Ref<T_parser>, _sub:Slice<Ref<Regexp>>):Slice<Ref<Regexp>> {
        if ((_sub.length) < (2 : GoInt)) {
            return _sub;
        };
        var _str:Slice<GoRune> = (null : Slice<GoInt32>);
        var _strflags:Flags = ((0 : GoUInt16) : stdgo.regexp.syntax.Syntax.Flags);
        var _start:GoInt = (0 : GoInt);
        var _out = (_sub.__slice__(0, (0 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (_sub.length), _i++, {
                var _istr:Slice<GoRune> = (null : Slice<GoInt32>);
                var _iflags:Flags = ((0 : GoUInt16) : stdgo.regexp.syntax.Syntax.Flags);
                if (_i < (_sub.length)) {
                    {
                        var __tmp__ = _p._leadingString(_sub[(_i : GoInt)]);
                        _istr = __tmp__._0;
                        _iflags = __tmp__._1;
                    };
                    if (_iflags == (_strflags)) {
                        var _same:GoInt = (0 : GoInt);
                        while (((_same < _str.length) && (_same < _istr.length)) && (_str[(_same : GoInt)] == _istr[(_same : GoInt)])) {
                            _same++;
                        };
                        if (_same > (0 : GoInt)) {
                            _str = (_str.__slice__(0, _same) : Slice<GoInt32>);
                            continue;
                        };
                    };
                };
                if (_i == (_start)) {} else if (_i == (_start + (1 : GoInt))) {
                    _out = (_out.__append__(_sub[(_start : GoInt)]));
                } else {
                    var _prefix = _p._newRegexp((3 : stdgo.regexp.syntax.Syntax.Op));
                    _prefix.flags = _strflags;
                    _prefix.rune = ((_prefix.rune.__slice__(0, (0 : GoInt)) : Slice<GoInt32>).__append__(..._str.__toArray__()));
                    {
                        var _j:GoInt = _start;
                        Go.cfor(_j < _i, _j++, {
                            _sub[(_j : GoInt)] = _p._removeLeadingString(_sub[(_j : GoInt)], (_str.length));
                            _p._checkLimits(_sub[(_j : GoInt)]);
                        });
                    };
                    var _suffix = _p._collapse((_sub.__slice__(_start, _i) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>), (19 : stdgo.regexp.syntax.Syntax.Op));
                    var _re = _p._newRegexp((18 : stdgo.regexp.syntax.Syntax.Op));
                    _re.sub = ((_re.sub.__slice__(0, (0 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>).__append__(_prefix, _suffix));
                    _out = (_out.__append__(_re));
                };
                _start = _i;
                _str = _istr;
                _strflags = _iflags;
            });
        };
        _sub = _out;
        _start = (0 : GoInt);
        _out = (_sub.__slice__(0, (0 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        var _first:Ref<Regexp> = (null : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (_sub.length), _i++, {
                var _ifirst:Ref<Regexp> = (null : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
                if (_i < (_sub.length)) {
                    _ifirst = _p._leadingRegexp(_sub[(_i : GoInt)]);
                    if ((((_first != null) && ((_first : Dynamic).__nil__ == null || !(_first : Dynamic).__nil__)) && _first.equal(_ifirst)) && (_isCharClass(_first) || (((_first.op == (17 : stdgo.regexp.syntax.Syntax.Op)) && (_first.min == _first.max)) && _isCharClass(_first.sub[(0 : GoInt)])))) {
                        continue;
                    };
                };
                if (_i == (_start)) {} else if (_i == (_start + (1 : GoInt))) {
                    _out = (_out.__append__(_sub[(_start : GoInt)]));
                } else {
                    var _prefix = _first;
                    {
                        var _j:GoInt = _start;
                        Go.cfor(_j < _i, _j++, {
                            var _reuse:Bool = _j != (_start);
                            _sub[(_j : GoInt)] = _p._removeLeadingRegexp(_sub[(_j : GoInt)], _reuse);
                            _p._checkLimits(_sub[(_j : GoInt)]);
                        });
                    };
                    var _suffix = _p._collapse((_sub.__slice__(_start, _i) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>), (19 : stdgo.regexp.syntax.Syntax.Op));
                    var _re = _p._newRegexp((18 : stdgo.regexp.syntax.Syntax.Op));
                    _re.sub = ((_re.sub.__slice__(0, (0 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>).__append__(_prefix, _suffix));
                    _out = (_out.__append__(_re));
                };
                _start = _i;
                _first = _ifirst;
            });
        };
        _sub = _out;
        _start = (0 : GoInt);
        _out = (_sub.__slice__(0, (0 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (_sub.length), _i++, {
                if ((_i < _sub.length) && _isCharClass(_sub[(_i : GoInt)])) {
                    continue;
                };
                if (_i == (_start)) {} else if (_i == (_start + (1 : GoInt))) {
                    _out = (_out.__append__(_sub[(_start : GoInt)]));
                } else {
                    var _max:GoInt = _start;
                    {
                        var _j:GoInt = _start + (1 : GoInt);
                        Go.cfor(_j < _i, _j++, {
                            if ((_sub[(_max : GoInt)].op < _sub[(_j : GoInt)].op) || ((_sub[(_max : GoInt)].op == _sub[(_j : GoInt)].op) && (_sub[(_max : GoInt)].rune.length < _sub[(_j : GoInt)].rune.length))) {
                                _max = _j;
                            };
                        });
                    };
                    {
                        final __tmp__0 = _sub[(_max : GoInt)];
                        final __tmp__1 = _sub[(_start : GoInt)];
                        _sub[(_start : GoInt)] = __tmp__0;
                        _sub[(_max : GoInt)] = __tmp__1;
                    };
                    {
                        var _j:GoInt = _start + (1 : GoInt);
                        Go.cfor(_j < _i, _j++, {
                            _mergeCharClass(_sub[(_start : GoInt)], _sub[(_j : GoInt)]);
                            _p._reuse(_sub[(_j : GoInt)]);
                        });
                    };
                    _cleanAlt(_sub[(_start : GoInt)]);
                    _out = (_out.__append__(_sub[(_start : GoInt)]));
                };
                if (_i < (_sub.length)) {
                    _out = (_out.__append__(_sub[(_i : GoInt)]));
                };
                _start = _i + (1 : GoInt);
            });
        };
        _sub = _out;
        _start = (0 : GoInt);
        _out = (_sub.__slice__(0, (0 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        for (_i in 0 ... _sub.length.toBasic()) {
            if ((((_i + (1 : GoInt)) < _sub.length) && (_sub[(_i : GoInt)].op == (2 : stdgo.regexp.syntax.Syntax.Op))) && (_sub[(_i + (1 : GoInt) : GoInt)].op == (2 : stdgo.regexp.syntax.Syntax.Op))) {
                continue;
            };
            _out = (_out.__append__(_sub[(_i : GoInt)]));
        };
        _sub = _out;
        return _sub;
    }
    /**
        // collapse returns the result of applying op to sub.
        // If sub contains op nodes, they all get hoisted up
        // so that there is never a concat of a concat or an
        // alternate of an alternate.
    **/
    @:keep
    static public function _collapse( _p:Ref<T_parser>, _subs:Slice<Ref<Regexp>>, _op:Op):Ref<Regexp> {
        if ((_subs.length) == ((1 : GoInt))) {
            return _subs[(0 : GoInt)];
        };
        var _re = _p._newRegexp(_op);
        _re.sub = (_re.sub0.__slice__(0, (0 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        for (__0 => _sub in _subs) {
            if (_sub.op == (_op)) {
                _re.sub = (_re.sub.__append__(..._sub.sub.__toArray__()));
                _p._reuse(_sub);
            } else {
                _re.sub = (_re.sub.__append__(_sub));
            };
        };
        if (_op == ((19 : stdgo.regexp.syntax.Syntax.Op))) {
            _re.sub = _p._factor(_re.sub);
            if ((_re.sub.length) == ((1 : GoInt))) {
                var _old = _re;
                _re = _re.sub[(0 : GoInt)];
                _p._reuse(_old);
            };
        };
        return _re;
    }
    /**
        // alternate replaces the top of the stack (above the topmost '(') with its alternation.
    **/
    @:keep
    static public function _alternate( _p:Ref<T_parser>):Ref<Regexp> {
        var _i:GoInt = (_p._stack.length);
        while ((_i > (0 : GoInt)) && (_p._stack[(_i - (1 : GoInt) : GoInt)].op < (128 : stdgo.regexp.syntax.Syntax.Op))) {
            _i--;
        };
        var _subs = (_p._stack.__slice__(_i) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        _p._stack = (_p._stack.__slice__(0, _i) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        if ((_subs.length) > (0 : GoInt)) {
            _cleanAlt(_subs[((_subs.length) - (1 : GoInt) : GoInt)]);
        };
        if ((_subs.length) == ((0 : GoInt))) {
            return _p._push(_p._newRegexp((1 : stdgo.regexp.syntax.Syntax.Op)));
        };
        return _p._push(_p._collapse(_subs, (19 : stdgo.regexp.syntax.Syntax.Op)));
    }
    /**
        // concat replaces the top of the stack (above the topmost '|' or '(') with its concatenation.
    **/
    @:keep
    static public function _concat( _p:Ref<T_parser>):Ref<Regexp> {
        _p._maybeConcat((-1 : GoInt32), (0 : stdgo.regexp.syntax.Syntax.Flags));
        var _i:GoInt = (_p._stack.length);
        while ((_i > (0 : GoInt)) && (_p._stack[(_i - (1 : GoInt) : GoInt)].op < (128 : stdgo.regexp.syntax.Syntax.Op))) {
            _i--;
        };
        var _subs = (_p._stack.__slice__(_i) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        _p._stack = (_p._stack.__slice__(0, _i) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        if ((_subs.length) == ((0 : GoInt))) {
            return _p._push(_p._newRegexp((2 : stdgo.regexp.syntax.Syntax.Op)));
        };
        return _p._push(_p._collapse(_subs, (18 : stdgo.regexp.syntax.Syntax.Op)));
    }
    /**
        // repeat replaces the top stack element with itself repeated according to op, min, max.
        // before is the regexp suffix starting at the repetition operator.
        // after is the regexp suffix following after the repetition operator.
        // repeat returns an updated 'after' and an error, if any.
    **/
    @:keep
    static public function _repeat( _p:Ref<T_parser>, _op:Op, _min:GoInt, _max:GoInt, _before:GoString, _after:GoString, _lastRepeat:GoString):{ var _0 : GoString; var _1 : Error; } {
        var _flags:stdgo.regexp.syntax.Syntax.Flags = _p._flags;
        if (_p._flags & (64 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
            if ((_after.length > (0 : GoInt)) && (_after[(0 : GoInt)] == (63 : GoUInt8))) {
                _after = (_after.__slice__((1 : GoInt)) : GoString);
                _flags = _flags ^ ((32 : stdgo.regexp.syntax.Syntax.Flags));
            };
            if (_lastRepeat != (Go.str())) {
                return { _0 : Go.str(), _1 : Go.asInterface((Go.setRef((new T_error((("invalid nested repetition operator" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_lastRepeat.__slice__(0, (_lastRepeat.length) - (_after.length)) : GoString)) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
            };
        };
        var _n:GoInt = (_p._stack.length);
        if (_n == ((0 : GoInt))) {
            return { _0 : Go.str(), _1 : Go.asInterface((Go.setRef((new T_error((("missing argument to repetition operator" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_before.__slice__(0, (_before.length) - (_after.length)) : GoString)) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        var _sub = _p._stack[(_n - (1 : GoInt) : GoInt)];
        if (_sub.op >= (128 : stdgo.regexp.syntax.Syntax.Op)) {
            return { _0 : Go.str(), _1 : Go.asInterface((Go.setRef((new T_error((("missing argument to repetition operator" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_before.__slice__(0, (_before.length) - (_after.length)) : GoString)) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        var _re = _p._newRegexp(_op);
        _re.min = _min;
        _re.max = _max;
        _re.flags = _flags;
        _re.sub = (_re.sub0.__slice__(0, (1 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        _re.sub[(0 : GoInt)] = _sub;
        _p._stack[(_n - (1 : GoInt) : GoInt)] = _re;
        _p._checkLimits(_re);
        if (((_op == (17 : stdgo.regexp.syntax.Syntax.Op)) && ((_min >= (2 : GoInt)) || (_max >= (2 : GoInt)))) && !_repeatIsValid(_re, (1000 : GoInt))) {
            return { _0 : Go.str(), _1 : Go.asInterface((Go.setRef((new T_error((("invalid repeat count" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_before.__slice__(0, (_before.length) - (_after.length)) : GoString)) : T_error)) : Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        return { _0 : _after, _1 : (null : Error) };
    }
    /**
        // op pushes a regexp with the given op onto the stack
        // and returns that regexp.
    **/
    @:keep
    static public function _op( _p:Ref<T_parser>, _op:Op):Ref<Regexp> {
        var _re = _p._newRegexp(_op);
        _re.flags = _p._flags;
        return _p._push(_re);
    }
    /**
        // literal pushes a literal regexp for the rune r on the stack.
    **/
    @:keep
    static public function _literal( _p:Ref<T_parser>, _r:GoRune):Void {
        var _re = _p._newRegexp((3 : stdgo.regexp.syntax.Syntax.Op));
        _re.flags = _p._flags;
        if (_p._flags & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
            _r = _minFoldRune(_r);
        };
        _re.rune0[(0 : GoInt)] = _r;
        _re.rune = (_re.rune0.__slice__(0, (1 : GoInt)) : Slice<GoInt32>);
        _p._push(_re);
    }
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
    static public function _maybeConcat( _p:Ref<T_parser>, _r:GoRune, _flags:Flags):Bool {
        var _n:GoInt = (_p._stack.length);
        if (_n < (2 : GoInt)) {
            return false;
        };
        var _re1 = _p._stack[(_n - (1 : GoInt) : GoInt)];
        var _re2 = _p._stack[(_n - (2 : GoInt) : GoInt)];
        if (((_re1.op != (3 : stdgo.regexp.syntax.Syntax.Op)) || (_re2.op != (3 : stdgo.regexp.syntax.Syntax.Op))) || ((_re1.flags & (1 : stdgo.regexp.syntax.Syntax.Flags)) != (_re2.flags & (1 : stdgo.regexp.syntax.Syntax.Flags)))) {
            return false;
        };
        _re2.rune = (_re2.rune.__append__(..._re1.rune.__toArray__()));
        if (_r >= (0 : GoInt32)) {
            _re1.rune = (_re1.rune0.__slice__(0, (1 : GoInt)) : Slice<GoInt32>);
            _re1.rune[(0 : GoInt)] = _r;
            _re1.flags = _flags;
            return true;
        };
        _p._stack = (_p._stack.__slice__(0, _n - (1 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        _p._reuse(_re1);
        return false;
    }
    /**
        // push pushes the regexp re onto the parse stack and returns the regexp.
    **/
    @:keep
    static public function _push( _p:Ref<T_parser>, _re:Ref<Regexp>):Ref<Regexp> {
        _p._numRunes = _p._numRunes + ((_re.rune.length));
        if (((_re.op == (4 : stdgo.regexp.syntax.Syntax.Op)) && (_re.rune.length == (2 : GoInt))) && (_re.rune[(0 : GoInt)] == _re.rune[(1 : GoInt)])) {
            if (_p._maybeConcat(_re.rune[(0 : GoInt)], _p._flags & ((1 : stdgo.regexp.syntax.Syntax.Flags) ^ (-1i32 : GoInt)))) {
                return null;
            };
            _re.op = (3 : stdgo.regexp.syntax.Syntax.Op);
            _re.rune = (_re.rune.__slice__(0, (1 : GoInt)) : Slice<GoInt32>);
            _re.flags = _p._flags & ((1 : stdgo.regexp.syntax.Syntax.Flags) ^ (-1i32 : GoInt));
        } else if (((((((_re.op == (4 : stdgo.regexp.syntax.Syntax.Op)) && (_re.rune.length == (4 : GoInt))) && (_re.rune[(0 : GoInt)] == _re.rune[(1 : GoInt)])) && (_re.rune[(2 : GoInt)] == _re.rune[(3 : GoInt)])) && (stdgo.unicode.Unicode.simpleFold(_re.rune[(0 : GoInt)]) == _re.rune[(2 : GoInt)])) && (stdgo.unicode.Unicode.simpleFold(_re.rune[(2 : GoInt)]) == _re.rune[(0 : GoInt)])) || (((((_re.op == (4 : stdgo.regexp.syntax.Syntax.Op)) && (_re.rune.length == (2 : GoInt))) && ((_re.rune[(0 : GoInt)] + (1 : GoInt32)) == _re.rune[(1 : GoInt)])) && (stdgo.unicode.Unicode.simpleFold(_re.rune[(0 : GoInt)]) == _re.rune[(1 : GoInt)])) && (stdgo.unicode.Unicode.simpleFold(_re.rune[(1 : GoInt)]) == _re.rune[(0 : GoInt)]))) {
            if (_p._maybeConcat(_re.rune[(0 : GoInt)], _p._flags | (1 : stdgo.regexp.syntax.Syntax.Flags))) {
                return null;
            };
            _re.op = (3 : stdgo.regexp.syntax.Syntax.Op);
            _re.rune = (_re.rune.__slice__(0, (1 : GoInt)) : Slice<GoInt32>);
            _re.flags = _p._flags | (1 : stdgo.regexp.syntax.Syntax.Flags);
        } else {
            _p._maybeConcat((-1 : GoInt32), (0 : stdgo.regexp.syntax.Syntax.Flags));
        };
        _p._stack = (_p._stack.__append__(_re));
        _p._checkLimits(_re);
        return _re;
    }
    @:keep
    static public function _calcHeight( _p:Ref<T_parser>, _re:Ref<Regexp>, _force:Bool):GoInt {
        if (!_force) {
            {
                var __tmp__ = (_p._height != null && _p._height.exists(_re) ? { value : _p._height[_re], ok : true } : { value : (0 : GoInt), ok : false }), _h:GoInt = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok) {
                    return _h;
                };
            };
        };
        var _h:GoInt = (1 : GoInt);
        for (__0 => _sub in _re.sub) {
            var _hsub:GoInt = _p._calcHeight(_sub, false);
            if (_h < ((1 : GoInt) + _hsub)) {
                _h = (1 : GoInt) + _hsub;
            };
        };
        _p._height[_re] = _h;
        return _h;
    }
    @:keep
    static public function _checkHeight( _p:Ref<T_parser>, _re:Ref<Regexp>):Void {
        if (_p._numRegexp < (1000 : GoInt)) {
            return;
        };
        if (_p._height == null) {
            _p._height = ({
                final x = new GoRefMap<Ref<stdgo.regexp.syntax.Syntax.Regexp>, GoInt>();
                @:mergeBlock {};
                cast x;
            } : GoMap<Ref<stdgo.regexp.syntax.Syntax.Regexp>, GoInt>);
            for (__0 => _re in _p._stack) {
                _p._checkHeight(_re);
            };
        };
        if (_p._calcHeight(_re, true) > (1000 : GoInt)) {
            throw Go.toInterface(Go.asInterface((("expression nests too deeply" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode)));
        };
    }
    @:keep
    static public function _calcSize( _p:Ref<T_parser>, _re:Ref<Regexp>, _force:Bool):GoInt64 {
        if (!_force) {
            {
                var __tmp__ = (_p._size != null && _p._size.exists(_re) ? { value : _p._size[_re], ok : true } : { value : (0 : GoInt64), ok : false }), _size:GoInt64 = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok) {
                    return _size;
                };
            };
        };
        var _size:GoInt64 = (0 : GoInt64);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _re.op;
                    if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                        _size = (_re.rune.length : GoInt64);
                        break;
                    } else if (__value__ == ((13 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((14 : stdgo.regexp.syntax.Syntax.Op))) {
                        _size = (2i64 : GoInt64) + _p._calcSize(_re.sub[(0 : GoInt)], false);
                        break;
                    } else if (__value__ == ((15 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo.regexp.syntax.Syntax.Op))) {
                        _size = (1i64 : GoInt64) + _p._calcSize(_re.sub[(0 : GoInt)], false);
                        break;
                    } else if (__value__ == ((18 : stdgo.regexp.syntax.Syntax.Op))) {
                        for (__0 => _sub in _re.sub) {
                            _size = _size + (_p._calcSize(_sub, false));
                        };
                        break;
                    } else if (__value__ == ((19 : stdgo.regexp.syntax.Syntax.Op))) {
                        for (__1 => _sub in _re.sub) {
                            _size = _size + (_p._calcSize(_sub, false));
                        };
                        if ((_re.sub.length) > (1 : GoInt)) {
                            _size = _size + ((_re.sub.length : GoInt64) - (1i64 : GoInt64));
                        };
                        break;
                    } else if (__value__ == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                        var _sub:GoInt64 = _p._calcSize(_re.sub[(0 : GoInt)], false);
                        if (_re.max == ((-1 : GoInt))) {
                            if (_re.min == ((0 : GoInt))) {
                                _size = (2i64 : GoInt64) + _sub;
                            } else {
                                _size = (1i64 : GoInt64) + ((_re.min : GoInt64) * _sub);
                            };
                            break;
                        };
                        _size = ((_re.max : GoInt64) * _sub) + (_re.max - _re.min : GoInt64);
                        break;
                    };
                };
                break;
            };
        };
        if (_size < (1i64 : GoInt64)) {
            _size = (1i64 : GoInt64);
        };
        _p._size[_re] = _size;
        return _size;
    }
    @:keep
    static public function _checkSize( _p:Ref<T_parser>, _re:Ref<Regexp>):Void {
        if (_p._size == null) {
            if (_p._repeats == ((0i64 : GoInt64))) {
                _p._repeats = (1i64 : GoInt64);
            };
            if (_re.op == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                var _n:GoInt = _re.max;
                if (_n == ((-1 : GoInt))) {
                    _n = _re.min;
                };
                if (_n <= (0 : GoInt)) {
                    _n = (1 : GoInt);
                };
                if ((_n : GoInt64) > ((3355443i64 : GoInt64) / _p._repeats)) {
                    _p._repeats = (3355443i64 : GoInt64);
                } else {
                    _p._repeats = _p._repeats * ((_n : GoInt64));
                };
            };
            if ((_p._numRegexp : GoInt64) < ((3355443i64 : GoInt64) / _p._repeats)) {
                return;
            };
            _p._size = ({
                final x = new GoRefMap<Ref<stdgo.regexp.syntax.Syntax.Regexp>, GoInt64>();
                @:mergeBlock {};
                cast x;
            } : GoMap<Ref<stdgo.regexp.syntax.Syntax.Regexp>, GoInt64>);
            for (__0 => _re in _p._stack) {
                _p._checkSize(_re);
            };
        };
        if (_p._calcSize(_re, true) > (3355443i64 : GoInt64)) {
            throw Go.toInterface(Go.asInterface((("expression too large" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode)));
        };
    }
    @:keep
    static public function _checkLimits( _p:Ref<T_parser>, _re:Ref<Regexp>):Void {
        if (_p._numRunes > (33554432 : GoInt)) {
            throw Go.toInterface(Go.asInterface((("expression too large" : GoString) : stdgo.regexp.syntax.Syntax.ErrorCode)));
        };
        _p._checkSize(_re);
        _p._checkHeight(_re);
    }
    @:keep
    static public function _reuse( _p:Ref<T_parser>, _re:Ref<Regexp>):Void {
        if (_p._height != null) {
            if (_p._height != null) _p._height.remove(_re);
        };
        _re.sub0[(0 : GoInt)] = _p._free;
        _p._free = _re;
    }
    @:keep
    static public function _newRegexp( _p:Ref<T_parser>, _op:Op):Ref<Regexp> {
        var _re = _p._free;
        if (_re != null && ((_re : Dynamic).__nil__ == null || !(_re : Dynamic).__nil__)) {
            _p._free = _re.sub0[(0 : GoInt)];
            {
                var __tmp__ = (new Regexp() : Regexp);
                _re.op = __tmp__.op;
                _re.flags = __tmp__.flags;
                _re.sub = __tmp__.sub;
                _re.sub0 = __tmp__.sub0;
                _re.rune = __tmp__.rune;
                _re.rune0 = __tmp__.rune0;
                _re.min = __tmp__.min;
                _re.max = __tmp__.max;
                _re.cap = __tmp__.cap;
                _re.name = __tmp__.name;
            };
        } else {
            _re = (Go.setRef(({} : stdgo.regexp.syntax.Syntax.Regexp)) : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
            _p._numRegexp++;
        };
        _re.op = _op;
        return _re;
    }
}
class T_ranges_asInterface {
    @:keep
    public dynamic function swap(_i:GoInt, _j:GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function len():GoInt return __self__.value.len();
    @:keep
    public dynamic function less(_i:GoInt, _j:GoInt):Bool return __self__.value.less(_i, _j);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_ranges>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T_ranges_asInterface) class T_ranges_static_extension {
    @:keep
    static public function swap( _ra:T_ranges, _i:GoInt, _j:GoInt):Void {
        var _p = (_ra._p : Slice<GoInt32>);
        _i = _i * ((2 : GoInt));
        _j = _j * ((2 : GoInt));
        {
            final __tmp__0 = _p[(_j : GoInt)];
            final __tmp__1 = _p[(_j + (1 : GoInt) : GoInt)];
            final __tmp__2 = _p[(_i : GoInt)];
            final __tmp__3 = _p[(_i + (1 : GoInt) : GoInt)];
            _p[(_i : GoInt)] = __tmp__0;
            _p[(_i + (1 : GoInt) : GoInt)] = __tmp__1;
            _p[(_j : GoInt)] = __tmp__2;
            _p[(_j + (1 : GoInt) : GoInt)] = __tmp__3;
        };
    }
    @:keep
    static public function len( _ra:T_ranges):GoInt {
        return ((_ra._p : Slice<GoInt32>).length) / (2 : GoInt);
    }
    @:keep
    static public function less( _ra:T_ranges, _i:GoInt, _j:GoInt):Bool {
        var _p = (_ra._p : Slice<GoInt32>);
        _i = _i * ((2 : GoInt));
        _j = _j * ((2 : GoInt));
        return (_p[(_i : GoInt)] < _p[(_j : GoInt)]) || ((_p[(_i : GoInt)] == _p[(_j : GoInt)]) && (_p[(_i + (1 : GoInt) : GoInt)] > _p[(_j + (1 : GoInt) : GoInt)]));
    }
}
class Prog_asInterface {
    /**
        // StartCond returns the leading empty-width conditions that must
        // be true in any match. It returns ^EmptyOp(0) if no matches are possible.
    **/
    @:keep
    public dynamic function startCond():EmptyOp return __self__.value.startCond();
    /**
        // Prefix returns a literal string that all matches for the
        // regexp must start with. Complete is true if the prefix
        // is the entire match.
    **/
    @:keep
    public dynamic function prefix():{ var _0 : GoString; var _1 : Bool; } return __self__.value.prefix();
    /**
        // skipNop follows any no-op or capturing instructions.
    **/
    @:keep
    public dynamic function _skipNop(_pc:GoUInt32):Ref<Inst> return __self__.value._skipNop(_pc);
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Prog>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.Prog_asInterface) class Prog_static_extension {
    /**
        // StartCond returns the leading empty-width conditions that must
        // be true in any match. It returns ^EmptyOp(0) if no matches are possible.
    **/
    @:keep
    static public function startCond( _p:Ref<Prog>):EmptyOp {
        stdgo.internal.Macro.controlFlow({
            var _flag:EmptyOp = ((0 : GoUInt8) : stdgo.regexp.syntax.Syntax.EmptyOp);
            var _pc:GoUInt32 = (_p.start : GoUInt32);
            var _i = (Go.setRef(_p.inst[(_pc : GoInt)]) : Ref<stdgo.regexp.syntax.Syntax.Inst>);
            @:label("Loop") while (true) {
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _i.op;
                            if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.InstOp))) {
                                _flag = _flag | ((_i.arg : EmptyOp));
                                break;
                            } else if (__value__ == ((5 : stdgo.regexp.syntax.Syntax.InstOp))) {
                                return (255 : stdgo.regexp.syntax.Syntax.EmptyOp);
                                break;
                            } else if (__value__ == ((2 : stdgo.regexp.syntax.Syntax.InstOp)) || __value__ == ((6 : stdgo.regexp.syntax.Syntax.InstOp))) {
                                break;
                            } else {
                                @:jump("Loop") break;
                            };
                        };
                        break;
                    };
                };
                _pc = _i.out;
                _i = (Go.setRef(_p.inst[(_pc : GoInt)]) : Ref<stdgo.regexp.syntax.Syntax.Inst>);
            };
            return _flag;
        });
        throw "controlFlow did not return";
    }
    /**
        // Prefix returns a literal string that all matches for the
        // regexp must start with. Complete is true if the prefix
        // is the entire match.
    **/
    @:keep
    static public function prefix( _p:Ref<Prog>):{ var _0 : GoString; var _1 : Bool; } {
        var _prefix:GoString = ("" : GoString), _complete:Bool = false;
        var _i = _p._skipNop((_p.start : GoUInt32));
        if ((_i._op() != (7 : stdgo.regexp.syntax.Syntax.InstOp)) || (_i.rune.length != (1 : GoInt))) {
            return { _0 : Go.str(), _1 : _i.op == ((4 : stdgo.regexp.syntax.Syntax.InstOp)) };
        };
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        while ((((_i._op() == (7 : stdgo.regexp.syntax.Syntax.InstOp)) && (_i.rune.length == (1 : GoInt))) && (((_i.arg : Flags) & (1 : stdgo.regexp.syntax.Syntax.Flags)) == (0 : stdgo.regexp.syntax.Syntax.Flags))) && (_i.rune[(0 : GoInt)] != (65533 : GoInt32))) {
            _buf.writeRune(_i.rune[(0 : GoInt)]);
            _i = _p._skipNop(_i.out);
        };
        return { _0 : (_buf.string() : GoString), _1 : _i.op == ((4 : stdgo.regexp.syntax.Syntax.InstOp)) };
    }
    /**
        // skipNop follows any no-op or capturing instructions.
    **/
    @:keep
    static public function _skipNop( _p:Ref<Prog>, _pc:GoUInt32):Ref<Inst> {
        var _i = (Go.setRef(_p.inst[(_pc : GoInt)]) : Ref<stdgo.regexp.syntax.Syntax.Inst>);
        while ((_i.op == (6 : stdgo.regexp.syntax.Syntax.InstOp)) || (_i.op == (2 : stdgo.regexp.syntax.Syntax.InstOp))) {
            _i = (Go.setRef(_p.inst[(_i.out : GoInt)]) : Ref<stdgo.regexp.syntax.Syntax.Inst>);
        };
        return _i;
    }
    @:keep
    static public function string( _p:Ref<Prog>):GoString {
        var _b:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _dumpProg((Go.setRef(_b) : Ref<stdgo.strings.Strings.Builder>), _p);
        return (_b.string() : GoString);
    }
}
class Inst_asInterface {
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    /**
        // MatchEmptyWidth reports whether the instruction matches
        // an empty string between the runes before and after.
        // It should only be called when i.Op == InstEmptyWidth.
    **/
    @:keep
    public dynamic function matchEmptyWidth(_before:GoRune, _after:GoRune):Bool return __self__.value.matchEmptyWidth(_before, _after);
    /**
        // MatchRunePos checks whether the instruction matches (and consumes) r.
        // If so, MatchRunePos returns the index of the matching rune pair
        // (or, when len(i.Rune) == 1, rune singleton).
        // If not, MatchRunePos returns -1.
        // MatchRunePos should only be called when i.Op == InstRune.
    **/
    @:keep
    public dynamic function matchRunePos(_r:GoRune):GoInt return __self__.value.matchRunePos(_r);
    /**
        // MatchRune reports whether the instruction matches (and consumes) r.
        // It should only be called when i.Op == InstRune.
    **/
    @:keep
    public dynamic function matchRune(_r:GoRune):Bool return __self__.value.matchRune(_r);
    /**
        // op returns i.Op but merges all the Rune special cases into InstRune
    **/
    @:keep
    public dynamic function _op():InstOp return __self__.value._op();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Inst>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.Inst_asInterface) class Inst_static_extension {
    @:keep
    static public function string( _i:Ref<Inst>):GoString {
        var _b:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _dumpInst((Go.setRef(_b) : Ref<stdgo.strings.Strings.Builder>), _i);
        return (_b.string() : GoString);
    }
    /**
        // MatchEmptyWidth reports whether the instruction matches
        // an empty string between the runes before and after.
        // It should only be called when i.Op == InstEmptyWidth.
    **/
    @:keep
    static public function matchEmptyWidth( _i:Ref<Inst>, _before:GoRune, _after:GoRune):Bool {
        {
            final __value__ = (_i.arg : EmptyOp);
            if (__value__ == ((1 : stdgo.regexp.syntax.Syntax.EmptyOp))) {
                return (_before == (10 : GoInt32)) || (_before == (-1 : GoInt32));
            } else if (__value__ == ((2 : stdgo.regexp.syntax.Syntax.EmptyOp))) {
                return (_after == (10 : GoInt32)) || (_after == (-1 : GoInt32));
            } else if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.EmptyOp))) {
                return _before == ((-1 : GoInt32));
            } else if (__value__ == ((8 : stdgo.regexp.syntax.Syntax.EmptyOp))) {
                return _after == ((-1 : GoInt32));
            } else if (__value__ == ((16 : stdgo.regexp.syntax.Syntax.EmptyOp))) {
                return isWordChar(_before) != (isWordChar(_after));
            } else if (__value__ == ((32 : stdgo.regexp.syntax.Syntax.EmptyOp))) {
                return isWordChar(_before) == (isWordChar(_after));
            };
        };
        throw Go.toInterface(("unknown empty width arg" : GoString));
    }
    /**
        // MatchRunePos checks whether the instruction matches (and consumes) r.
        // If so, MatchRunePos returns the index of the matching rune pair
        // (or, when len(i.Rune) == 1, rune singleton).
        // If not, MatchRunePos returns -1.
        // MatchRunePos should only be called when i.Op == InstRune.
    **/
    @:keep
    static public function matchRunePos( _i:Ref<Inst>, _r:GoRune):GoInt {
        var _rune = _i.rune;
        {
            final __value__ = (_rune.length);
            if (__value__ == ((0 : GoInt))) {
                return (-1 : GoInt);
            } else if (__value__ == ((1 : GoInt))) {
                var _r0:GoInt32 = _rune[(0 : GoInt)];
                if (_r == (_r0)) {
                    return (0 : GoInt);
                };
                if ((_i.arg : Flags) & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                    {
                        var _r1:GoInt32 = stdgo.unicode.Unicode.simpleFold(_r0);
                        Go.cfor(_r1 != (_r0), _r1 = stdgo.unicode.Unicode.simpleFold(_r1), {
                            if (_r == (_r1)) {
                                return (0 : GoInt);
                            };
                        });
                    };
                };
                return (-1 : GoInt);
            } else if (__value__ == ((2 : GoInt))) {
                if ((_r >= _rune[(0 : GoInt)]) && (_r <= _rune[(1 : GoInt)])) {
                    return (0 : GoInt);
                };
                return (-1 : GoInt);
            } else if (__value__ == ((4 : GoInt)) || __value__ == ((6 : GoInt)) || __value__ == ((8 : GoInt))) {
                {
                    var _j:GoInt = (0 : GoInt);
                    Go.cfor(_j < (_rune.length), _j = _j + ((2 : GoInt)), {
                        if (_r < _rune[(_j : GoInt)]) {
                            return (-1 : GoInt);
                        };
                        if (_r <= _rune[(_j + (1 : GoInt) : GoInt)]) {
                            return _j / (2 : GoInt);
                        };
                    });
                };
                return (-1 : GoInt);
            };
        };
        var _lo:GoInt = (0 : GoInt);
        var _hi:GoInt = (_rune.length) / (2 : GoInt);
        while (_lo < _hi) {
            var _m:GoInt = _lo + ((_hi - _lo) / (2 : GoInt));
            {
                var _c:GoInt32 = _rune[((2 : GoInt) * _m : GoInt)];
                if (_c <= _r) {
                    if (_r <= _rune[(((2 : GoInt) * _m) + (1 : GoInt) : GoInt)]) {
                        return _m;
                    };
                    _lo = _m + (1 : GoInt);
                } else {
                    _hi = _m;
                };
            };
        };
        return (-1 : GoInt);
    }
    /**
        // MatchRune reports whether the instruction matches (and consumes) r.
        // It should only be called when i.Op == InstRune.
    **/
    @:keep
    static public function matchRune( _i:Ref<Inst>, _r:GoRune):Bool {
        return _i.matchRunePos(_r) != ((-1 : GoInt));
    }
    /**
        // op returns i.Op but merges all the Rune special cases into InstRune
    **/
    @:keep
    static public function _op( _i:Ref<Inst>):InstOp {
        var _op:stdgo.regexp.syntax.Syntax.InstOp = _i.op;
        {
            final __value__ = _op;
            if (__value__ == ((8 : stdgo.regexp.syntax.Syntax.InstOp)) || __value__ == ((9 : stdgo.regexp.syntax.Syntax.InstOp)) || __value__ == ((10 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _op = (7 : stdgo.regexp.syntax.Syntax.InstOp);
            };
        };
        return _op;
    }
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
    public dynamic function simplify():Ref<Regexp> return __self__.value.simplify();
    @:keep
    public dynamic function _capNames(_names:Slice<GoString>):Void __self__.value._capNames(_names);
    /**
        // CapNames walks the regexp to find the names of capturing groups.
    **/
    @:keep
    public dynamic function capNames():Slice<GoString> return __self__.value.capNames();
    /**
        // MaxCap walks the regexp to find the maximum capture index.
    **/
    @:keep
    public dynamic function maxCap():GoInt return __self__.value.maxCap();
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    /**
        // Equal reports whether x and y have identical structure.
    **/
    @:keep
    public dynamic function equal(_y:Ref<Regexp>):Bool return __self__.value.equal(_y);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Regexp>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
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
    static public function simplify( _re:Ref<Regexp>):Ref<Regexp> {
        if (_re == null || (_re : Dynamic).__nil__) {
            return null;
        };
        {
            final __value__ = _re.op;
            if (__value__ == ((13 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((18 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((19 : stdgo.regexp.syntax.Syntax.Op))) {
                var _nre = _re;
                for (_i => _sub in _re.sub) {
                    var _nsub = _sub.simplify();
                    if ((_nre == _re) && (_nsub != _sub)) {
                        _nre = (Go.setRef(({} : stdgo.regexp.syntax.Syntax.Regexp)) : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
                        {
                            var __tmp__ = (_re : stdgo.regexp.syntax.Syntax.Regexp)?.__copy__();
                            _nre.op = __tmp__.op;
                            _nre.flags = __tmp__.flags;
                            _nre.sub = __tmp__.sub;
                            _nre.sub0 = __tmp__.sub0;
                            _nre.rune = __tmp__.rune;
                            _nre.rune0 = __tmp__.rune0;
                            _nre.min = __tmp__.min;
                            _nre.max = __tmp__.max;
                            _nre.cap = __tmp__.cap;
                            _nre.name = __tmp__.name;
                        };
                        _nre.rune = (null : Slice<GoInt32>);
                        _nre.sub = ((_nre.sub0.__slice__(0, (0 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>).__append__(...(_re.sub.__slice__(0, _i) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>).__toArray__()));
                    };
                    if (_nre != (_re)) {
                        _nre.sub = (_nre.sub.__append__(_nsub));
                    };
                };
                return _nre;
            } else if (__value__ == ((14 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo.regexp.syntax.Syntax.Op))) {
                var _sub = _re.sub[(0 : GoInt)].simplify();
                return _simplify1(_re.op, _re.flags, _sub, _re);
            } else if (__value__ == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                if ((_re.min == (0 : GoInt)) && (_re.max == (0 : GoInt))) {
                    return (Go.setRef(({ op : (2 : stdgo.regexp.syntax.Syntax.Op) } : Regexp)) : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
                };
                var _sub = _re.sub[(0 : GoInt)].simplify();
                if (_re.max == ((-1 : GoInt))) {
                    if (_re.min == ((0 : GoInt))) {
                        return _simplify1((14 : stdgo.regexp.syntax.Syntax.Op), _re.flags, _sub, null);
                    };
                    if (_re.min == ((1 : GoInt))) {
                        return _simplify1((15 : stdgo.regexp.syntax.Syntax.Op), _re.flags, _sub, null);
                    };
                    var _nre = (Go.setRef(({ op : (18 : stdgo.regexp.syntax.Syntax.Op) } : Regexp)) : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
                    _nre.sub = (_nre.sub0.__slice__(0, (0 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < (_re.min - (1 : GoInt)), _i++, {
                            _nre.sub = (_nre.sub.__append__(_sub));
                        });
                    };
                    _nre.sub = (_nre.sub.__append__(_simplify1((15 : stdgo.regexp.syntax.Syntax.Op), _re.flags, _sub, null)));
                    return _nre;
                };
                if ((_re.min == (1 : GoInt)) && (_re.max == (1 : GoInt))) {
                    return _sub;
                };
                var _prefix:Ref<Regexp> = (null : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
                if (_re.min > (0 : GoInt)) {
                    _prefix = (Go.setRef(({ op : (18 : stdgo.regexp.syntax.Syntax.Op) } : Regexp)) : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
                    _prefix.sub = (_prefix.sub0.__slice__(0, (0 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _re.min, _i++, {
                            _prefix.sub = (_prefix.sub.__append__(_sub));
                        });
                    };
                };
                if (_re.max > _re.min) {
                    var _suffix = _simplify1((16 : stdgo.regexp.syntax.Syntax.Op), _re.flags, _sub, null);
                    {
                        var _i:GoInt = _re.min + (1 : GoInt);
                        Go.cfor(_i < _re.max, _i++, {
                            var _nre2 = (Go.setRef(({ op : (18 : stdgo.regexp.syntax.Syntax.Op) } : Regexp)) : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
                            _nre2.sub = ((_nre2.sub0.__slice__(0, (0 : GoInt)) : Slice<Ref<stdgo.regexp.syntax.Syntax.Regexp>>).__append__(_sub, _suffix));
                            _suffix = _simplify1((16 : stdgo.regexp.syntax.Syntax.Op), _re.flags, _nre2, null);
                        });
                    };
                    if (_prefix == null || (_prefix : Dynamic).__nil__) {
                        return _suffix;
                    };
                    _prefix.sub = (_prefix.sub.__append__(_suffix));
                };
                if (_prefix != null && ((_prefix : Dynamic).__nil__ == null || !(_prefix : Dynamic).__nil__)) {
                    return _prefix;
                };
                return (Go.setRef(({ op : (1 : stdgo.regexp.syntax.Syntax.Op) } : Regexp)) : Ref<stdgo.regexp.syntax.Syntax.Regexp>);
            };
        };
        return _re;
    }
    @:keep
    static public function _capNames( _re:Ref<Regexp>, _names:Slice<GoString>):Void {
        if (_re.op == ((13 : stdgo.regexp.syntax.Syntax.Op))) {
            _names[(_re.cap : GoInt)] = _re.name;
        };
        for (__0 => _sub in _re.sub) {
            _sub._capNames(_names);
        };
    }
    /**
        // CapNames walks the regexp to find the names of capturing groups.
    **/
    @:keep
    static public function capNames( _re:Ref<Regexp>):Slice<GoString> {
        var _names = new Slice<GoString>((_re.maxCap() + (1 : GoInt) : GoInt).toBasic(), 0).__setString__();
        _re._capNames(_names);
        return _names;
    }
    /**
        // MaxCap walks the regexp to find the maximum capture index.
    **/
    @:keep
    static public function maxCap( _re:Ref<Regexp>):GoInt {
        var _m:GoInt = (0 : GoInt);
        if (_re.op == ((13 : stdgo.regexp.syntax.Syntax.Op))) {
            _m = _re.cap;
        };
        for (__0 => _sub in _re.sub) {
            {
                var _n:GoInt = _sub.maxCap();
                if (_m < _n) {
                    _m = _n;
                };
            };
        };
        return _m;
    }
    @:keep
    static public function string( _re:Ref<Regexp>):GoString {
        var _b:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _writeRegexp((Go.setRef(_b) : Ref<stdgo.strings.Strings.Builder>), _re);
        return (_b.string() : GoString);
    }
    /**
        // Equal reports whether x and y have identical structure.
    **/
    @:keep
    static public function equal( _x:Ref<Regexp>, _y:Ref<Regexp>):Bool {
        if (((_x == null) || (_x : Dynamic).__nil__) || ((_y == null) || (_y : Dynamic).__nil__)) {
            return _x == (_y);
        };
        if (_x.op != (_y.op)) {
            return false;
        };
        {
            final __value__ = _x.op;
            if (__value__ == ((10 : stdgo.regexp.syntax.Syntax.Op))) {
                if (_x.flags & (256 : stdgo.regexp.syntax.Syntax.Flags) != (_y.flags & (256 : stdgo.regexp.syntax.Syntax.Flags))) {
                    return false;
                };
            } else if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((4 : stdgo.regexp.syntax.Syntax.Op))) {
                if ((_x.rune.length) != ((_y.rune.length))) {
                    return false;
                };
                for (_i => _r in _x.rune) {
                    if (_r != (_y.rune[(_i : GoInt)])) {
                        return false;
                    };
                };
            } else if (__value__ == ((19 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((18 : stdgo.regexp.syntax.Syntax.Op))) {
                if ((_x.sub.length) != ((_y.sub.length))) {
                    return false;
                };
                for (_i => _sub in _x.sub) {
                    if (!_sub.equal(_y.sub[(_i : GoInt)])) {
                        return false;
                    };
                };
            } else if (__value__ == ((14 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo.regexp.syntax.Syntax.Op))) {
                if (((_x.flags & (32 : stdgo.regexp.syntax.Syntax.Flags)) != (_y.flags & (32 : stdgo.regexp.syntax.Syntax.Flags))) || !_x.sub[(0 : GoInt)].equal(_y.sub[(0 : GoInt)])) {
                    return false;
                };
            } else if (__value__ == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                if (((((_x.flags & (32 : stdgo.regexp.syntax.Syntax.Flags)) != (_y.flags & (32 : stdgo.regexp.syntax.Syntax.Flags))) || (_x.min != _y.min)) || (_x.max != _y.max)) || !_x.sub[(0 : GoInt)].equal(_y.sub[(0 : GoInt)])) {
                    return false;
                };
            } else if (__value__ == ((13 : stdgo.regexp.syntax.Syntax.Op))) {
                if (((_x.cap != _y.cap) || (_x.name != _y.name)) || !_x.sub[(0 : GoInt)].equal(_y.sub[(0 : GoInt)])) {
                    return false;
                };
            };
        };
        return true;
    }
}
class ErrorCode_asInterface {
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<ErrorCode>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.ErrorCode_asInterface) class ErrorCode_static_extension {
    @:keep
    static public function string( _e:ErrorCode):GoString {
        return (_e : GoString);
    }
}
class InstOp_asInterface {
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<InstOp>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.InstOp_asInterface) class InstOp_static_extension {
    @:keep
    static public function string( _i:InstOp):GoString {
        if ((_i : GoUInt) >= (_instOpNames.length : GoUInt)) {
            return Go.str();
        };
        return _instOpNames[(_i : GoInt)];
    }
}
class Op_asInterface {
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Op>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.Op_asInterface) class Op_static_extension {
    @:keep
    static public function string( _i:Op):GoString {
        if (((1 : stdgo.regexp.syntax.Syntax.Op) <= _i) && (_i <= (19 : stdgo.regexp.syntax.Syntax.Op))) {
            _i = _i - ((1 : stdgo.regexp.syntax.Syntax.Op));
            return (("NoMatchEmptyMatchLiteralCharClassAnyCharNotNLAnyCharBeginLineEndLineBeginTextEndTextWordBoundaryNoWordBoundaryCaptureStarPlusQuestRepeatConcatAlternate" : GoString).__slice__(__Op_index_0[(_i : GoInt)], __Op_index_0[(_i + (1 : stdgo.regexp.syntax.Syntax.Op) : GoInt)]) : GoString);
        } else if (_i == ((128 : stdgo.regexp.syntax.Syntax.Op))) {
            return ("opPseudo" : GoString);
        } else {
            return (("Op(" : GoString) + stdgo.strconv.Strconv.formatInt((_i : GoInt64), (10 : GoInt))) + (")" : GoString);
        };
    }
}
