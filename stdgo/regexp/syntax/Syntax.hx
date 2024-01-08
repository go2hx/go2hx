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
/**
    
    
    
**/
var _anyRuneNotNL : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(4, 4, (0 : stdgo.StdGoTypes.GoInt32), (9 : stdgo.StdGoTypes.GoInt32), (11 : stdgo.StdGoTypes.GoInt32), (1114111 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _anyRune : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(2, 2, (0 : stdgo.StdGoTypes.GoInt32), (1114111 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var __Op_index_0 : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = (new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(
(0 : stdgo.StdGoTypes.GoUInt8),
(7 : stdgo.StdGoTypes.GoUInt8),
(17 : stdgo.StdGoTypes.GoUInt8),
(24 : stdgo.StdGoTypes.GoUInt8),
(33 : stdgo.StdGoTypes.GoUInt8),
(45 : stdgo.StdGoTypes.GoUInt8),
(52 : stdgo.StdGoTypes.GoUInt8),
(61 : stdgo.StdGoTypes.GoUInt8),
(68 : stdgo.StdGoTypes.GoUInt8),
(77 : stdgo.StdGoTypes.GoUInt8),
(84 : stdgo.StdGoTypes.GoUInt8),
(96 : stdgo.StdGoTypes.GoUInt8),
(110 : stdgo.StdGoTypes.GoUInt8),
(117 : stdgo.StdGoTypes.GoUInt8),
(121 : stdgo.StdGoTypes.GoUInt8),
(125 : stdgo.StdGoTypes.GoUInt8),
(130 : stdgo.StdGoTypes.GoUInt8),
(136 : stdgo.StdGoTypes.GoUInt8),
(142 : stdgo.StdGoTypes.GoUInt8),
(151 : stdgo.StdGoTypes.GoUInt8)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
var _anyTable : stdgo.StdGoTypes.Ref<stdgo.unicode.Unicode.RangeTable> = (stdgo.Go.setRef(({ r16 : (new stdgo.Slice<stdgo.unicode.Unicode.Range16>(1, 1, ({ lo : (0 : stdgo.StdGoTypes.GoUInt16), hi : (65535 : stdgo.StdGoTypes.GoUInt16), stride : (1 : stdgo.StdGoTypes.GoUInt16) } : stdgo.unicode.Unicode.Range16)) : stdgo.Slice<stdgo.unicode.Unicode.Range16>), r32 : (new stdgo.Slice<stdgo.unicode.Unicode.Range32>(1, 1, ({ lo : (65536u32 : stdgo.StdGoTypes.GoUInt32), hi : (1114111u32 : stdgo.StdGoTypes.GoUInt32), stride : (1u32 : stdgo.StdGoTypes.GoUInt32) } : stdgo.unicode.Unicode.Range32)) : stdgo.Slice<stdgo.unicode.Unicode.Range32>) } : stdgo.unicode.Unicode.RangeTable)) : stdgo.StdGoTypes.Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
var _code1 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(2, 2, (48 : stdgo.StdGoTypes.GoInt32), (57 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code2 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(6, 6, (9 : stdgo.StdGoTypes.GoInt32), (10 : stdgo.StdGoTypes.GoInt32), (12 : stdgo.StdGoTypes.GoInt32), (13 : stdgo.StdGoTypes.GoInt32), (32 : stdgo.StdGoTypes.GoInt32), (32 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code3 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(8, 8, (48 : stdgo.StdGoTypes.GoInt32), (57 : stdgo.StdGoTypes.GoInt32), (65 : stdgo.StdGoTypes.GoInt32), (90 : stdgo.StdGoTypes.GoInt32), (95 : stdgo.StdGoTypes.GoInt32), (95 : stdgo.StdGoTypes.GoInt32), (97 : stdgo.StdGoTypes.GoInt32), (122 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _perlGroup : stdgo.GoMap<stdgo.GoString, stdgo.regexp.syntax.Syntax.T_charGroup> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.regexp.syntax.Syntax.T_charGroup>();
        x.__defaultValue__ = () -> ({} : stdgo.regexp.syntax.Syntax.T_charGroup);
        @:mergeBlock {
            x.set(("\\d" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code1) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\D" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code1) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\s" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code2) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\S" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code2) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\w" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code3) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\W" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code3) : stdgo.regexp.syntax.Syntax.T_charGroup));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.regexp.syntax.Syntax.T_charGroup>);
/**
    
    
    
**/
var _code4 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(6, 6, (48 : stdgo.StdGoTypes.GoInt32), (57 : stdgo.StdGoTypes.GoInt32), (65 : stdgo.StdGoTypes.GoInt32), (90 : stdgo.StdGoTypes.GoInt32), (97 : stdgo.StdGoTypes.GoInt32), (122 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code5 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(4, 4, (65 : stdgo.StdGoTypes.GoInt32), (90 : stdgo.StdGoTypes.GoInt32), (97 : stdgo.StdGoTypes.GoInt32), (122 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code6 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(2, 2, (0 : stdgo.StdGoTypes.GoInt32), (127 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code7 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(4, 4, (9 : stdgo.StdGoTypes.GoInt32), (9 : stdgo.StdGoTypes.GoInt32), (32 : stdgo.StdGoTypes.GoInt32), (32 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code8 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(4, 4, (0 : stdgo.StdGoTypes.GoInt32), (31 : stdgo.StdGoTypes.GoInt32), (127 : stdgo.StdGoTypes.GoInt32), (127 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code9 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(2, 2, (48 : stdgo.StdGoTypes.GoInt32), (57 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code10 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(2, 2, (33 : stdgo.StdGoTypes.GoInt32), (126 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code11 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(2, 2, (97 : stdgo.StdGoTypes.GoInt32), (122 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code12 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(2, 2, (32 : stdgo.StdGoTypes.GoInt32), (126 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code13 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(8, 8, (33 : stdgo.StdGoTypes.GoInt32), (47 : stdgo.StdGoTypes.GoInt32), (58 : stdgo.StdGoTypes.GoInt32), (64 : stdgo.StdGoTypes.GoInt32), (91 : stdgo.StdGoTypes.GoInt32), (96 : stdgo.StdGoTypes.GoInt32), (123 : stdgo.StdGoTypes.GoInt32), (126 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code14 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(4, 4, (9 : stdgo.StdGoTypes.GoInt32), (13 : stdgo.StdGoTypes.GoInt32), (32 : stdgo.StdGoTypes.GoInt32), (32 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code15 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(2, 2, (65 : stdgo.StdGoTypes.GoInt32), (90 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code16 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(8, 8, (48 : stdgo.StdGoTypes.GoInt32), (57 : stdgo.StdGoTypes.GoInt32), (65 : stdgo.StdGoTypes.GoInt32), (90 : stdgo.StdGoTypes.GoInt32), (95 : stdgo.StdGoTypes.GoInt32), (95 : stdgo.StdGoTypes.GoInt32), (97 : stdgo.StdGoTypes.GoInt32), (122 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _code17 : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(6, 6, (48 : stdgo.StdGoTypes.GoInt32), (57 : stdgo.StdGoTypes.GoInt32), (65 : stdgo.StdGoTypes.GoInt32), (70 : stdgo.StdGoTypes.GoInt32), (97 : stdgo.StdGoTypes.GoInt32), (102 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _posixGroup : stdgo.GoMap<stdgo.GoString, stdgo.regexp.syntax.Syntax.T_charGroup> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.regexp.syntax.Syntax.T_charGroup>();
        x.__defaultValue__ = () -> ({} : stdgo.regexp.syntax.Syntax.T_charGroup);
        @:mergeBlock {
            x.set(("[:alnum:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code4) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^alnum:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code4) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:alpha:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code5) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^alpha:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code5) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:ascii:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code6) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^ascii:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code6) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:blank:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code7) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^blank:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code7) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:cntrl:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code8) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^cntrl:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code8) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:digit:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code9) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^digit:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code9) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:graph:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code10) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^graph:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code10) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:lower:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code11) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^lower:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code11) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:print:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code12) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^print:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code12) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:punct:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code13) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^punct:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code13) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:space:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code14) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^space:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code14) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:upper:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code15) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^upper:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code15) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:word:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code16) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^word:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code16) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:xdigit:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((1 : stdgo.StdGoTypes.GoInt), _code17) : stdgo.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^xdigit:]" : stdgo.GoString), (new stdgo.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.StdGoTypes.GoInt), _code17) : stdgo.regexp.syntax.Syntax.T_charGroup));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.regexp.syntax.Syntax.T_charGroup>);
/**
    
    
    
**/
var _instOpNames : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(
11,
11,
("InstAlt" : stdgo.GoString),
("InstAltMatch" : stdgo.GoString),
("InstCapture" : stdgo.GoString),
("InstEmptyWidth" : stdgo.GoString),
("InstMatch" : stdgo.GoString),
("InstFail" : stdgo.GoString),
("InstNop" : stdgo.GoString),
("InstRune" : stdgo.GoString),
("InstRune1" : stdgo.GoString),
("InstRuneAny" : stdgo.GoString),
("InstRuneAnyNotNL" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _foldcaseTests : stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest> = (new stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest>(6, 6, (new stdgo.regexp.syntax.Syntax.T_parseTest(("AbCdE" : stdgo.GoString), ("strfold{ABCDE}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[Aa]" : stdgo.GoString), ("litfold{A}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("a" : stdgo.GoString), ("litfold{A}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("A[F-g]" : stdgo.GoString), ("cat{litfold{A}cc{0x41-0x7a 0x17f 0x212a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[[:upper:]]" : stdgo.GoString), ("cc{0x41-0x5a 0x61-0x7a 0x17f 0x212a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[[:lower:]]" : stdgo.GoString), ("cc{0x41-0x5a 0x61-0x7a 0x17f 0x212a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest)) : stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest>);
/**
    
    
    
**/
var _literalTests : stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest> = (new stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest>(1, 1, (new stdgo.regexp.syntax.Syntax.T_parseTest(("(|)^$.[*+?]{5,10},\\" : stdgo.GoString), ("str{(|)^$.[*+?]{5,10},\\}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest)) : stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest>);
/**
    
    
    
**/
var _matchnlTests : stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest> = (new stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest>(4, 4, (new stdgo.regexp.syntax.Syntax.T_parseTest(("." : stdgo.GoString), ("dot{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("\n" : stdgo.GoString), ("lit{\n}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[^a]" : stdgo.GoString), ("cc{0x0-0x60 0x62-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[a\\n]" : stdgo.GoString), ("cc{0xa 0x61}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest)) : stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest>);
/**
    
    
    
**/
var _nomatchnlTests : stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest> = (new stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest>(4, 4, (new stdgo.regexp.syntax.Syntax.T_parseTest(("." : stdgo.GoString), ("dnl{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("\n" : stdgo.GoString), ("lit{\n}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[^a]" : stdgo.GoString), ("cc{0x0-0x9 0xb-0x60 0x62-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest), (new stdgo.regexp.syntax.Syntax.T_parseTest(("[a\\n]" : stdgo.GoString), ("cc{0xa 0x61}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest)) : stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest>);
/**
    
    
    
**/
var _opNames : stdgo.Slice<stdgo.GoString> = {
        var s = new stdgo.Slice<stdgo.GoString>(20, 0).__setString__();
        s[1] = ("no" : stdgo.GoString);
        s[2] = ("emp" : stdgo.GoString);
        s[3] = ("lit" : stdgo.GoString);
        s[4] = ("cc" : stdgo.GoString);
        s[5] = ("dnl" : stdgo.GoString);
        s[6] = ("dot" : stdgo.GoString);
        s[7] = ("bol" : stdgo.GoString);
        s[8] = ("eol" : stdgo.GoString);
        s[9] = ("bot" : stdgo.GoString);
        s[10] = ("eot" : stdgo.GoString);
        s[11] = ("wb" : stdgo.GoString);
        s[12] = ("nwb" : stdgo.GoString);
        s[13] = ("cap" : stdgo.GoString);
        s[14] = ("star" : stdgo.GoString);
        s[15] = ("plus" : stdgo.GoString);
        s[16] = ("que" : stdgo.GoString);
        s[17] = ("rep" : stdgo.GoString);
        s[18] = ("cat" : stdgo.GoString);
        s[19] = ("alt" : stdgo.GoString);
        s;
    };
/**
    
    
    
**/
var _parseTests : stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest> = (new stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest>(
155,
155,
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a" : stdgo.GoString), ("lit{a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a." : stdgo.GoString), ("cat{lit{a}dot{}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a.b" : stdgo.GoString), ("cat{lit{a}dot{}lit{b}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("ab" : stdgo.GoString), ("str{ab}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a.b.c" : stdgo.GoString), ("cat{lit{a}dot{}lit{b}dot{}lit{c}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc" : stdgo.GoString), ("str{abc}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a|^" : stdgo.GoString), ("alt{lit{a}bol{}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a|b" : stdgo.GoString), ("cc{0x61-0x62}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(a)" : stdgo.GoString), ("cap{lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(a)|b" : stdgo.GoString), ("alt{cap{lit{a}}lit{b}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a*" : stdgo.GoString), ("star{lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a+" : stdgo.GoString), ("plus{lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a?" : stdgo.GoString), ("que{lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{2}" : stdgo.GoString), ("rep{2,2 lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{2,3}" : stdgo.GoString), ("rep{2,3 lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{2,}" : stdgo.GoString), ("rep{2,-1 lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a*?" : stdgo.GoString), ("nstar{lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a+?" : stdgo.GoString), ("nplus{lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a??" : stdgo.GoString), ("nque{lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{2}?" : stdgo.GoString), ("nrep{2,2 lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{2,3}?" : stdgo.GoString), ("nrep{2,3 lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{2,}?" : stdgo.GoString), ("nrep{2,-1 lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{1001" : stdgo.GoString), ("str{x{1001}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{9876543210" : stdgo.GoString), ("str{x{9876543210}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{9876543210," : stdgo.GoString), ("str{x{9876543210,}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{2,1" : stdgo.GoString), ("str{x{2,1}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{1,9876543210" : stdgo.GoString), ("str{x{1,9876543210}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(stdgo.Go.str()?.__copy__(), ("emp{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("|" : stdgo.GoString), ("emp{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("|x|" : stdgo.GoString), ("alt{emp{}lit{x}emp{}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("." : stdgo.GoString), ("dot{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("^" : stdgo.GoString), ("bol{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("$" : stdgo.GoString), ("eol{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\|" : stdgo.GoString), ("lit{|}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\(" : stdgo.GoString), ("lit{(}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\)" : stdgo.GoString), ("lit{)}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\*" : stdgo.GoString), ("lit{*}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\+" : stdgo.GoString), ("lit{+}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\?" : stdgo.GoString), ("lit{?}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("{" : stdgo.GoString), ("lit{{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("}" : stdgo.GoString), ("lit{}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\." : stdgo.GoString), ("lit{.}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\^" : stdgo.GoString), ("lit{^}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\$" : stdgo.GoString), ("lit{$}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\\\" : stdgo.GoString), ("lit{\\}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[ace]" : stdgo.GoString), ("cc{0x61 0x63 0x65}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[abc]" : stdgo.GoString), ("cc{0x61-0x63}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[a-z]" : stdgo.GoString), ("cc{0x61-0x7a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[a]" : stdgo.GoString), ("lit{a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\-" : stdgo.GoString), ("lit{-}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("-" : stdgo.GoString), ("lit{-}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\_" : stdgo.GoString), ("lit{_}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc" : stdgo.GoString), ("str{abc}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc|def" : stdgo.GoString), ("alt{str{abc}str{def}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc|def|ghi" : stdgo.GoString), ("alt{str{abc}str{def}str{ghi}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[[:lower:]]" : stdgo.GoString), ("cc{0x61-0x7a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[a-z]" : stdgo.GoString), ("cc{0x61-0x7a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[^[:lower:]]" : stdgo.GoString), ("cc{0x0-0x60 0x7b-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[[:^lower:]]" : stdgo.GoString), ("cc{0x0-0x60 0x7b-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)[[:lower:]]" : stdgo.GoString), ("cc{0x41-0x5a 0x61-0x7a 0x17f 0x212a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)[a-z]" : stdgo.GoString), ("cc{0x41-0x5a 0x61-0x7a 0x17f 0x212a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)[^[:lower:]]" : stdgo.GoString), ("cc{0x0-0x40 0x5b-0x60 0x7b-0x17e 0x180-0x2129 0x212b-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)[[:^lower:]]" : stdgo.GoString), ("cc{0x0-0x40 0x5b-0x60 0x7b-0x17e 0x180-0x2129 0x212b-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\d" : stdgo.GoString), ("cc{0x30-0x39}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\D" : stdgo.GoString), ("cc{0x0-0x2f 0x3a-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\s" : stdgo.GoString), ("cc{0x9-0xa 0xc-0xd 0x20}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\S" : stdgo.GoString), ("cc{0x0-0x8 0xb 0xe-0x1f 0x21-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\w" : stdgo.GoString), ("cc{0x30-0x39 0x41-0x5a 0x5f 0x61-0x7a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\W" : stdgo.GoString), ("cc{0x0-0x2f 0x3a-0x40 0x5b-0x5e 0x60 0x7b-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)\\w" : stdgo.GoString), ("cc{0x30-0x39 0x41-0x5a 0x5f 0x61-0x7a 0x17f 0x212a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)\\W" : stdgo.GoString), ("cc{0x0-0x2f 0x3a-0x40 0x5b-0x5e 0x60 0x7b-0x17e 0x180-0x2129 0x212b-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[^\\\\]" : stdgo.GoString), ("cc{0x0-0x5b 0x5d-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\p{Braille}" : stdgo.GoString), ("cc{0x2800-0x28ff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\P{Braille}" : stdgo.GoString), ("cc{0x0-0x27ff 0x2900-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\p{^Braille}" : stdgo.GoString), ("cc{0x0-0x27ff 0x2900-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\P{^Braille}" : stdgo.GoString), ("cc{0x2800-0x28ff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\pZ" : stdgo.GoString), ("cc{0x20 0xa0 0x1680 0x2000-0x200a 0x2028-0x2029 0x202f 0x205f 0x3000}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\p{Braille}]" : stdgo.GoString), ("cc{0x2800-0x28ff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\P{Braille}]" : stdgo.GoString), ("cc{0x0-0x27ff 0x2900-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\p{^Braille}]" : stdgo.GoString), ("cc{0x0-0x27ff 0x2900-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\P{^Braille}]" : stdgo.GoString), ("cc{0x2800-0x28ff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\pZ]" : stdgo.GoString), ("cc{0x20 0xa0 0x1680 0x2000-0x200a 0x2028-0x2029 0x202f 0x205f 0x3000}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\p{Lu}" : stdgo.GoString), _mkCharClass(stdgo.unicode.Unicode.isUpper)?.__copy__()) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\p{Lu}]" : stdgo.GoString), _mkCharClass(stdgo.unicode.Unicode.isUpper)?.__copy__()) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)[\\p{Lu}]" : stdgo.GoString), _mkCharClass(_isUpperFold)?.__copy__()) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\p{Any}" : stdgo.GoString), ("dot{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\p{^Any}" : stdgo.GoString), ("cc{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\012-\\234]\\141" : stdgo.GoString), ("cat{cc{0xa-0x9c}lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\x{41}-\\x7a]\\x61" : stdgo.GoString), ("cat{cc{0x41-0x7a}lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a{,2}" : stdgo.GoString), ("str{a{,2}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\.\\^\\$\\\\" : stdgo.GoString), ("str{.^$\\}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[a-zABC]" : stdgo.GoString), ("cc{0x41-0x43 0x61-0x7a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[^a]" : stdgo.GoString), ("cc{0x0-0x60 0x62-0x10ffff}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[α-ε☺]" : stdgo.GoString), ("cc{0x3b1-0x3b5 0x263a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a*{" : stdgo.GoString), ("cat{star{lit{a}}lit{{}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:ab)*" : stdgo.GoString), ("star{str{ab}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(ab)*" : stdgo.GoString), ("star{cap{str{ab}}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("ab|cd" : stdgo.GoString), ("alt{str{ab}str{cd}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a(b|c)d" : stdgo.GoString), ("cat{lit{a}cap{cc{0x62-0x63}}lit{d}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:a)" : stdgo.GoString), ("lit{a}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:ab)(?:cd)" : stdgo.GoString), ("str{abcd}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:a+b+)(?:c+d+)" : stdgo.GoString), ("cat{plus{lit{a}}plus{lit{b}}plus{lit{c}}plus{lit{d}}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:a+|b+)|(?:c+|d+)" : stdgo.GoString), ("alt{plus{lit{a}}plus{lit{b}}plus{lit{c}}plus{lit{d}}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:a|b)|(?:c|d)" : stdgo.GoString), ("cc{0x61-0x64}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a|." : stdgo.GoString), ("dot{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest((".|a" : stdgo.GoString), ("dot{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:[abc]|A|Z|hello|world)" : stdgo.GoString), ("alt{cc{0x41 0x5a 0x61-0x63}str{hello}str{world}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:[abc]|A|Z)" : stdgo.GoString), ("cc{0x41 0x5a 0x61-0x63}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\Q+|*?{[\\E" : stdgo.GoString), ("str{+|*?{[}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\Q+\\E+" : stdgo.GoString), ("plus{lit{+}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\Qab\\E+" : stdgo.GoString), ("cat{lit{a}plus{lit{b}}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\Q\\\\E" : stdgo.GoString), ("lit{\\}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("\\Q\\\\\\E" : stdgo.GoString), ("str{\\\\}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?m)^" : stdgo.GoString), ("bol{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?m)$" : stdgo.GoString), ("eol{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?-m)^" : stdgo.GoString), ("bot{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?-m)$" : stdgo.GoString), ("eot{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?m)\\A" : stdgo.GoString), ("bot{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?m)\\z" : stdgo.GoString), ("eot{\\z}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?-m)\\A" : stdgo.GoString), ("bot{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?-m)\\z" : stdgo.GoString), ("eot{\\z}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?P<name>a)" : stdgo.GoString), ("cap{name:lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[Aa]" : stdgo.GoString), ("litfold{A}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\x{100}\\x{101}]" : stdgo.GoString), ("litfold{Ā}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[Δδ]" : stdgo.GoString), ("litfold{Δ}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abcde" : stdgo.GoString), ("str{abcde}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[Aa][Bb]cd" : stdgo.GoString), ("cat{strfold{AB}str{cd}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc|abd|aef|bcx|bcy" : stdgo.GoString), ("alt{cat{lit{a}alt{cat{lit{b}cc{0x63-0x64}}str{ef}}}cat{str{bc}cc{0x78-0x79}}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("ax+y|ax+z|ay+w" : stdgo.GoString), ("cat{lit{a}alt{cat{plus{lit{x}}lit{y}}cat{plus{lit{x}}lit{z}}cat{plus{lit{y}}lit{w}}}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:.)" : stdgo.GoString), ("dot{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:x|(?:xa))" : stdgo.GoString), ("cat{lit{x}alt{emp{}lit{a}}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:.|(?:.a))" : stdgo.GoString), ("cat{dot{}alt{emp{}lit{a}}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:A(?:A|a))" : stdgo.GoString), ("cat{lit{A}litfold{A}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:A|a)" : stdgo.GoString), ("litfold{A}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("A|(?:A|a)" : stdgo.GoString), ("litfold{A}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?s)." : stdgo.GoString), ("dot{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?-s)." : stdgo.GoString), ("dnl{}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?:(?:^).)" : stdgo.GoString), ("cat{bol{}dot{}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?-s)(?:(?:^).)" : stdgo.GoString), ("cat{bol{}dnl{}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[\\s\\S]a" : stdgo.GoString), ("cat{cc{0x0-0x10ffff}lit{a}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc|abd" : stdgo.GoString), ("cat{str{ab}cc{0x63-0x64}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a(?:b)c|abd" : stdgo.GoString), ("cat{str{ab}cc{0x63-0x64}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc|abd|aef|bcx|bcy" : stdgo.GoString), ("alt{cat{lit{a}alt{cat{lit{b}cc{0x63-0x64}}str{ef}}}cat{str{bc}cc{0x78-0x79}}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("abc|x|abd" : stdgo.GoString), ("alt{str{abc}lit{x}str{abd}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(?i)abc|ABD" : stdgo.GoString), ("cat{strfold{AB}cc{0x43-0x44 0x63-0x64}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("[ab]c|[ab]d" : stdgo.GoString), ("cat{cc{0x61-0x62}cc{0x63-0x64}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest((".c|.d" : stdgo.GoString), ("cat{dot{}cc{0x63-0x64}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{2}|x{2}[0-9]" : stdgo.GoString), ("cat{rep{2,2 lit{x}}alt{emp{}cc{0x30-0x39}}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("x{2}y|x{2}[0-9]y" : stdgo.GoString), ("cat{rep{2,2 lit{x}}alt{lit{y}cat{cc{0x30-0x39}lit{y}}}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("a.*?c|a.*?b" : stdgo.GoString), ("cat{lit{a}alt{cat{nstar{dot{}}lit{c}}cat{nstar{dot{}}lit{b}}}}" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("((((((((((x{2}){2}){2}){2}){2}){2}){2}){2}){2}))" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("((((((((((x{1}){2}){2}){2}){2}){2}){2}){2}){2}){2})" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(stdgo.strings.Strings.repeat(("(" : stdgo.GoString), (999 : stdgo.StdGoTypes.GoInt)) + stdgo.strings.Strings.repeat((")" : stdgo.GoString), (999 : stdgo.StdGoTypes.GoInt))?.__copy__()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(stdgo.strings.Strings.repeat(("(?:" : stdgo.GoString), (999 : stdgo.StdGoTypes.GoInt)) + stdgo.strings.Strings.repeat((")*" : stdgo.GoString), (999 : stdgo.StdGoTypes.GoInt))?.__copy__()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.regexp.syntax.Syntax.T_parseTest),
(new stdgo.regexp.syntax.Syntax.T_parseTest(("(" : stdgo.GoString) + stdgo.strings.Strings.repeat(("|" : stdgo.GoString), (12345 : stdgo.StdGoTypes.GoInt))?.__copy__() + (")" : stdgo.GoString)?.__copy__()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.regexp.syntax.Syntax.T_parseTest)) : stdgo.Slice<stdgo.regexp.syntax.Syntax.T_parseTest>);
/**
    
    
    
**/
var _invalidRegexps : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(
39,
39,
("(" : stdgo.GoString),
(")" : stdgo.GoString),
("(a" : stdgo.GoString),
("a)" : stdgo.GoString),
("(a))" : stdgo.GoString),
("(a|b|" : stdgo.GoString),
("a|b|)" : stdgo.GoString),
("(a|b|))" : stdgo.GoString),
("(a|b" : stdgo.GoString),
("a|b)" : stdgo.GoString),
("(a|b))" : stdgo.GoString),
("[a-z" : stdgo.GoString),
("([a-z)" : stdgo.GoString),
("[a-z)" : stdgo.GoString),
("([a-z]))" : stdgo.GoString),
("x{1001}" : stdgo.GoString),
("x{9876543210}" : stdgo.GoString),
("x{2,1}" : stdgo.GoString),
("x{1,9876543210}" : stdgo.GoString),
stdgo.Go.str(255)?.__copy__(),
stdgo.Go.str("[", 255, "]")?.__copy__(),
stdgo.Go.str("[\\", 255, "]")?.__copy__(),
stdgo.Go.str("\\", 255)?.__copy__(),
("(?P<name>a" : stdgo.GoString),
("(?P<name>" : stdgo.GoString),
("(?P<name" : stdgo.GoString),
("(?P<x y>a)" : stdgo.GoString),
("(?P<>a)" : stdgo.GoString),
("[a-Z]" : stdgo.GoString),
("(?i)[a-Z]" : stdgo.GoString),
("\\Q\\E*" : stdgo.GoString),
("a{100000}" : stdgo.GoString),
("a{100000,}" : stdgo.GoString),
("((((((((((x{2}){2}){2}){2}){2}){2}){2}){2}){2}){2})" : stdgo.GoString),
stdgo.strings.Strings.repeat(("(" : stdgo.GoString), (1000 : stdgo.StdGoTypes.GoInt)) + stdgo.strings.Strings.repeat((")" : stdgo.GoString), (1000 : stdgo.StdGoTypes.GoInt))?.__copy__()?.__copy__(),
stdgo.strings.Strings.repeat(("(?:" : stdgo.GoString), (1000 : stdgo.StdGoTypes.GoInt)) + stdgo.strings.Strings.repeat((")*" : stdgo.GoString), (1000 : stdgo.StdGoTypes.GoInt))?.__copy__()?.__copy__(),
("(" : stdgo.GoString) + stdgo.strings.Strings.repeat(("(xx?)" : stdgo.GoString), (1000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("){1000}" : stdgo.GoString)?.__copy__()?.__copy__(),
stdgo.strings.Strings.repeat(("(xx?){1000}" : stdgo.GoString), (1000 : stdgo.StdGoTypes.GoInt))?.__copy__(),
stdgo.strings.Strings.repeat(("\\pL" : stdgo.GoString), (27000 : stdgo.StdGoTypes.GoInt))?.__copy__()) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _onlyPerl : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(
9,
9,
("[a-b-c]" : stdgo.GoString),
("\\Qabc\\E" : stdgo.GoString),
("\\Q*+?{[\\E" : stdgo.GoString),
("\\Q\\\\E" : stdgo.GoString),
("\\Q\\\\\\E" : stdgo.GoString),
("\\Q\\\\\\\\E" : stdgo.GoString),
("\\Q\\\\\\\\\\E" : stdgo.GoString),
("(?:a)" : stdgo.GoString),
("(?P<name>a)" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _onlyPOSIX : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(6, 6, ("a++" : stdgo.GoString), ("a**" : stdgo.GoString), ("a?*" : stdgo.GoString), ("a+*" : stdgo.GoString), ("a{1}*" : stdgo.GoString), (".{1}{2}.{3}" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _compileTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(
16,
16,
({ regexp : ("a" : stdgo.GoString), prog : ("  0\tfail\n  1*\trune1 \"a\" -> 2\n  2\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("[A-M][n-z]" : stdgo.GoString), prog : ("  0\tfail\n  1*\trune \"AM\" -> 2\n  2\trune \"nz\" -> 3\n  3\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : stdgo.Go.str()?.__copy__(), prog : ("  0\tfail\n  1*\tnop -> 2\n  2\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("a?" : stdgo.GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 3\n  2*\talt -> 1, 3\n  3\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("a??" : stdgo.GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 3\n  2*\talt -> 3, 1\n  3\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("a+" : stdgo.GoString), prog : ("  0\tfail\n  1*\trune1 \"a\" -> 2\n  2\talt -> 1, 3\n  3\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("a+?" : stdgo.GoString), prog : ("  0\tfail\n  1*\trune1 \"a\" -> 2\n  2\talt -> 3, 1\n  3\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("a*" : stdgo.GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 2\n  2*\talt -> 1, 3\n  3\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("a*?" : stdgo.GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 2\n  2*\talt -> 3, 1\n  3\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("a+b+" : stdgo.GoString), prog : ("  0\tfail\n  1*\trune1 \"a\" -> 2\n  2\talt -> 1, 3\n  3\trune1 \"b\" -> 4\n  4\talt -> 3, 5\n  5\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("(a+)(b+)" : stdgo.GoString), prog : ("  0\tfail\n  1*\tcap 2 -> 2\n  2\trune1 \"a\" -> 3\n  3\talt -> 2, 4\n  4\tcap 3 -> 5\n  5\tcap 4 -> 6\n  6\trune1 \"b\" -> 7\n  7\talt -> 6, 8\n  8\tcap 5 -> 9\n  9\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("a+|b+" : stdgo.GoString), prog : ("  0\tfail\n  1\trune1 \"a\" -> 2\n  2\talt -> 1, 6\n  3\trune1 \"b\" -> 4\n  4\talt -> 3, 6\n  5*\talt -> 1, 3\n  6\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("A[Aa]" : stdgo.GoString), prog : ("  0\tfail\n  1*\trune1 \"A\" -> 2\n  2\trune \"A\"/i -> 3\n  3\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("(?:(?:^).)" : stdgo.GoString), prog : ("  0\tfail\n  1*\tempty 4 -> 2\n  2\tanynotnl -> 3\n  3\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("(?:|a)+" : stdgo.GoString), prog : ("  0\tfail\n  1\tnop -> 4\n  2\trune1 \"a\" -> 4\n  3*\talt -> 1, 2\n  4\talt -> 3, 5\n  5\tmatch\n" : stdgo.GoString) } : T__struct_1),
({ regexp : ("(?:|a)*" : stdgo.GoString), prog : ("  0\tfail\n  1\tnop -> 4\n  2\trune1 \"a\" -> 4\n  3\talt -> 1, 2\n  4\talt -> 3, 6\n  5*\talt -> 3, 6\n  6\tmatch\n" : stdgo.GoString) } : T__struct_1)) : stdgo.Slice<T__struct_1>);
/**
    
    
    
**/
var _simplifyTests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(
97,
97,
({ regexp : ("a" : stdgo.GoString), simple : ("a" : stdgo.GoString) } : T__struct_2),
({ regexp : ("ab" : stdgo.GoString), simple : ("ab" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a|b" : stdgo.GoString), simple : ("[a-b]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("ab|cd" : stdgo.GoString), simple : ("ab|cd" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(ab)*" : stdgo.GoString), simple : ("(ab)*" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(ab)+" : stdgo.GoString), simple : ("(ab)+" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(ab)?" : stdgo.GoString), simple : ("(ab)?" : stdgo.GoString) } : T__struct_2),
({ regexp : ("." : stdgo.GoString), simple : ("(?s:.)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("^" : stdgo.GoString), simple : ("(?m:^)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("$" : stdgo.GoString), simple : ("(?m:$)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[ac]" : stdgo.GoString), simple : ("[ac]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[^ac]" : stdgo.GoString), simple : ("[^ac]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[[:alnum:]]" : stdgo.GoString), simple : ("[0-9A-Za-z]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[[:alpha:]]" : stdgo.GoString), simple : ("[A-Za-z]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[[:blank:]]" : stdgo.GoString), simple : ("[\\t ]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[[:cntrl:]]" : stdgo.GoString), simple : ("[\\x00-\\x1f\\x7f]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[[:digit:]]" : stdgo.GoString), simple : ("[0-9]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[[:graph:]]" : stdgo.GoString), simple : ("[!-~]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[[:lower:]]" : stdgo.GoString), simple : ("[a-z]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[[:print:]]" : stdgo.GoString), simple : ("[ -~]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[[:punct:]]" : stdgo.GoString), simple : ("[!-/:-@\\[-`\\{-~]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[[:space:]]" : stdgo.GoString), simple : ("[\\t-\\r ]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[[:upper:]]" : stdgo.GoString), simple : ("[A-Z]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[[:xdigit:]]" : stdgo.GoString), simple : ("[0-9A-Fa-f]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("\\d" : stdgo.GoString), simple : ("[0-9]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("\\s" : stdgo.GoString), simple : ("[\\t-\\n\\f-\\r ]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("\\w" : stdgo.GoString), simple : ("[0-9A-Z_a-z]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("\\D" : stdgo.GoString), simple : ("[^0-9]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("\\S" : stdgo.GoString), simple : ("[^\\t-\\n\\f-\\r ]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("\\W" : stdgo.GoString), simple : ("[^0-9A-Z_a-z]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[\\d]" : stdgo.GoString), simple : ("[0-9]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[\\s]" : stdgo.GoString), simple : ("[\\t-\\n\\f-\\r ]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[\\w]" : stdgo.GoString), simple : ("[0-9A-Z_a-z]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[\\D]" : stdgo.GoString), simple : ("[^0-9]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[\\S]" : stdgo.GoString), simple : ("[^\\t-\\n\\f-\\r ]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[\\W]" : stdgo.GoString), simple : ("[^0-9A-Z_a-z]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a{1}" : stdgo.GoString), simple : ("a" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a{2}" : stdgo.GoString), simple : ("aa" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a{5}" : stdgo.GoString), simple : ("aaaaa" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a{0,1}" : stdgo.GoString), simple : ("a?" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(a){0,2}" : stdgo.GoString), simple : ("(?:(a)(a)?)?" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(a){0,4}" : stdgo.GoString), simple : ("(?:(a)(?:(a)(?:(a)(a)?)?)?)?" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(a){2,6}" : stdgo.GoString), simple : ("(a)(a)(?:(a)(?:(a)(?:(a)(a)?)?)?)?" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a{0,2}" : stdgo.GoString), simple : ("(?:aa?)?" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a{0,4}" : stdgo.GoString), simple : ("(?:a(?:a(?:aa?)?)?)?" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a{2,6}" : stdgo.GoString), simple : ("aa(?:a(?:a(?:aa?)?)?)?" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a{0,}" : stdgo.GoString), simple : ("a*" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a{1,}" : stdgo.GoString), simple : ("a+" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a{2,}" : stdgo.GoString), simple : ("aa+" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a{5,}" : stdgo.GoString), simple : ("aaaaa+" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?:a{1,}){1,}" : stdgo.GoString), simple : ("a+" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(a{1,}b{1,})" : stdgo.GoString), simple : ("(a+b+)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a{1,}|b{1,}" : stdgo.GoString), simple : ("a+|b+" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?:a{1,})*" : stdgo.GoString), simple : ("(?:a+)*" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?:a{1,})+" : stdgo.GoString), simple : ("a+" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?:a{1,})?" : stdgo.GoString), simple : ("(?:a+)?" : stdgo.GoString) } : T__struct_2),
({ regexp : stdgo.Go.str()?.__copy__(), simple : ("(?:)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a{0}" : stdgo.GoString), simple : ("(?:)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[ab]" : stdgo.GoString), simple : ("[a-b]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[a-za-za-z]" : stdgo.GoString), simple : ("[a-z]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[A-Za-zA-Za-z]" : stdgo.GoString), simple : ("[A-Za-z]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[ABCDEFGH]" : stdgo.GoString), simple : ("[A-H]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[AB-CD-EF-GH]" : stdgo.GoString), simple : ("[A-H]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[W-ZP-XE-R]" : stdgo.GoString), simple : ("[E-Z]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[a-ee-gg-m]" : stdgo.GoString), simple : ("[a-m]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[a-ea-ha-m]" : stdgo.GoString), simple : ("[a-m]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[a-ma-ha-e]" : stdgo.GoString), simple : ("[a-m]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[a-zA-Z0-9 -~]" : stdgo.GoString), simple : ("[ -~]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[^[:cntrl:][:^cntrl:]]" : stdgo.GoString), simple : ("[^\\x00-\\x{10FFFF}]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("[[:cntrl:][:^cntrl:]]" : stdgo.GoString), simple : ("(?s:.)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?i)A" : stdgo.GoString), simple : ("(?i:A)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?i)a" : stdgo.GoString), simple : ("(?i:A)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?i)[A]" : stdgo.GoString), simple : ("(?i:A)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?i)[a]" : stdgo.GoString), simple : ("(?i:A)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?i)K" : stdgo.GoString), simple : ("(?i:K)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?i)k" : stdgo.GoString), simple : ("(?i:K)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?i)\\x{212a}" : stdgo.GoString), simple : ("(?i:K)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?i)[K]" : stdgo.GoString), simple : ("[KkK]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?i)[k]" : stdgo.GoString), simple : ("[KkK]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?i)[\\x{212a}]" : stdgo.GoString), simple : ("[KkK]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?i)[a-z]" : stdgo.GoString), simple : ("[A-Za-zſK]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?i)[\\x00-\\x{FFFD}]" : stdgo.GoString), simple : ("[\\x00-�]" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(?i)[\\x00-\\x{10FFFF}]" : stdgo.GoString), simple : ("(?s:.)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(a|b|)" : stdgo.GoString), simple : ("([a-b]|(?:))" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(|)" : stdgo.GoString), simple : ("()" : stdgo.GoString) } : T__struct_2),
({ regexp : ("a()" : stdgo.GoString), simple : ("a()" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(()|())" : stdgo.GoString), simple : ("(()|())" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(a|)" : stdgo.GoString), simple : ("(a|(?:))" : stdgo.GoString) } : T__struct_2),
({ regexp : ("ab()cd()" : stdgo.GoString), simple : ("ab()cd()" : stdgo.GoString) } : T__struct_2),
({ regexp : ("()" : stdgo.GoString), simple : ("()" : stdgo.GoString) } : T__struct_2),
({ regexp : ("()*" : stdgo.GoString), simple : ("()*" : stdgo.GoString) } : T__struct_2),
({ regexp : ("()+" : stdgo.GoString), simple : ("()+" : stdgo.GoString) } : T__struct_2),
({ regexp : ("()?" : stdgo.GoString), simple : ("()?" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(){0}" : stdgo.GoString), simple : ("(?:)" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(){1}" : stdgo.GoString), simple : ("()" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(){1,}" : stdgo.GoString), simple : ("()+" : stdgo.GoString) } : T__struct_2),
({ regexp : ("(){0,2}" : stdgo.GoString), simple : ("(?:()()?)?" : stdgo.GoString) } : T__struct_2)) : stdgo.Slice<T__struct_2>);
/**
    
    
    
**/
final __Op_name_0 : stdgo.GoString = ("NoMatchEmptyMatchLiteralCharClassAnyCharNotNLAnyCharBeginLineEndLineBeginTextEndTextWordBoundaryNoWordBoundaryCaptureStarPlusQuestRepeatConcatAlternate" : stdgo.GoString);
/**
    
    
    
**/
final __Op_name_1 : stdgo.GoString = ("opPseudo" : stdgo.GoString);
/**
    // Unexpected error
    
    
**/
final errInternalError : stdgo.regexp.syntax.Syntax.ErrorCode = (("regexp/syntax: internal error" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    // Parse errors
    
    
**/
final errInvalidCharClass : stdgo.regexp.syntax.Syntax.ErrorCode = (("invalid character class" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidCharRange : stdgo.regexp.syntax.Syntax.ErrorCode = (("invalid character class range" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidEscape : stdgo.regexp.syntax.Syntax.ErrorCode = (("invalid escape sequence" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidNamedCapture : stdgo.regexp.syntax.Syntax.ErrorCode = (("invalid named capture" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidPerlOp : stdgo.regexp.syntax.Syntax.ErrorCode = (("invalid or unsupported Perl syntax" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidRepeatOp : stdgo.regexp.syntax.Syntax.ErrorCode = (("invalid nested repetition operator" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidRepeatSize : stdgo.regexp.syntax.Syntax.ErrorCode = (("invalid repeat count" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errInvalidUTF8 : stdgo.regexp.syntax.Syntax.ErrorCode = (("invalid UTF-8" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errMissingBracket : stdgo.regexp.syntax.Syntax.ErrorCode = (("missing closing ]" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errMissingParen : stdgo.regexp.syntax.Syntax.ErrorCode = (("missing closing )" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errMissingRepeatArgument : stdgo.regexp.syntax.Syntax.ErrorCode = (("missing argument to repetition operator" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errTrailingBackslash : stdgo.regexp.syntax.Syntax.ErrorCode = (("trailing backslash at end of expression" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errUnexpectedParen : stdgo.regexp.syntax.Syntax.ErrorCode = (("unexpected )" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errNestingDepth : stdgo.regexp.syntax.Syntax.ErrorCode = (("expression nests too deeply" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    
**/
final errLarge : stdgo.regexp.syntax.Syntax.ErrorCode = (("expression too large" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
/**
    
    
    // case-insensitive match
**/
final foldCase : stdgo.regexp.syntax.Syntax.Flags = (512 : stdgo.regexp.syntax.Syntax.Flags);
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
final matchNL : stdgo.regexp.syntax.Syntax.Flags = (12 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    // as close to Perl as possible
**/
final perl : stdgo.regexp.syntax.Syntax.Flags = (212 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    // POSIX syntax
**/
final posix : stdgo.regexp.syntax.Syntax.Flags = (0 : stdgo.regexp.syntax.Syntax.Flags);
/**
    // Pseudo-ops for parsing stack.
    
    
**/
final _opLeftParen : stdgo.regexp.syntax.Syntax.Op = (129 : stdgo.regexp.syntax.Syntax.Op);
/**
    // Pseudo-ops for parsing stack.
    
    
**/
final _opVerticalBar = (129 : stdgo.regexp.syntax.Syntax.Op);
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
final _maxHeight : stdgo.StdGoTypes.GoUInt64 = (1000i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // maxSize is the maximum size of a compiled regexp in Insts.
    // It too is somewhat arbitrarily chosen, but the idea is to be large enough
    // to allow significant regexps while at the same time small enough that
    // the compiled form will not take up too much memory.
    // 128 MB is enough for a 3.3 million Inst structures, which roughly
    // corresponds to a 3.3 MB regexp.
    
    
**/
final _maxSize : stdgo.StdGoTypes.GoUInt64 = (3355443i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // maxSize is the maximum size of a compiled regexp in Insts.
    // It too is somewhat arbitrarily chosen, but the idea is to be large enough
    // to allow significant regexps while at the same time small enough that
    // the compiled form will not take up too much memory.
    // 128 MB is enough for a 3.3 million Inst structures, which roughly
    // corresponds to a 3.3 MB regexp.
    
    // byte, 2 uint32, slice is 5 64-bit words
**/
final _instSize : stdgo.StdGoTypes.GoUInt64 = (40i64 : stdgo.StdGoTypes.GoUInt64);
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
final _maxRunes : stdgo.StdGoTypes.GoUInt64 = (33554432i64 : stdgo.StdGoTypes.GoUInt64);
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
final _runeSize : stdgo.StdGoTypes.GoUInt64 = (4i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // minimum and maximum runes involved in folding.
    // checked during test.
    
    
**/
final _minFold : stdgo.StdGoTypes.GoUInt64 = (65i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _maxFold : stdgo.StdGoTypes.GoUInt64 = (125251i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _testFlags : stdgo.regexp.syntax.Syntax.Flags = (204 : stdgo.regexp.syntax.Syntax.Flags);
/**
    
    
    
**/
final instAlt : stdgo.regexp.syntax.Syntax.InstOp = (10 : stdgo.regexp.syntax.Syntax.InstOp);
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
final emptyBeginLine : stdgo.regexp.syntax.Syntax.EmptyOp = (32 : stdgo.regexp.syntax.Syntax.EmptyOp);
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
final _noMatch : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
var _sink = (null : stdgo.StdGoTypes.AnyInterface);
/**
    
    
    // matches no strings
**/
final opNoMatch : stdgo.regexp.syntax.Syntax.Op = (19 : stdgo.regexp.syntax.Syntax.Op);
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
final _opPseudo : stdgo.regexp.syntax.Syntax.Op = (128 : stdgo.regexp.syntax.Syntax.Op);
/**
    
    
    
**/
final _meta : stdgo.GoString = ("\\.+*?()|[]{}^$" : stdgo.GoString);
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
    public var _head : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _tail : stdgo.StdGoTypes.GoUInt32 = 0;
    public function new(?_head:stdgo.StdGoTypes.GoUInt32, ?_tail:stdgo.StdGoTypes.GoUInt32) {
        if (_head != null) this._head = _head;
        if (_tail != null) this._tail = _tail;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_patchList(_head, _tail);
    }
}
/**
    // A frag represents a compiled program fragment.
    
    
**/
@:structInit @:private class T_frag {
    public var _i : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _out : stdgo.regexp.syntax.Syntax.T_patchList = ({} : stdgo.regexp.syntax.Syntax.T_patchList);
    public var _nullable : Bool = false;
    public function new(?_i:stdgo.StdGoTypes.GoUInt32, ?_out:stdgo.regexp.syntax.Syntax.T_patchList, ?_nullable:Bool) {
        if (_i != null) this._i = _i;
        if (_out != null) this._out = _out;
        if (_nullable != null) this._nullable = _nullable;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_frag(_i, _out, _nullable);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.regexp.syntax.Syntax.T_compiler_static_extension) class T_compiler {
    public var _p : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Prog> = (null : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Prog>);
    public function new(?_p:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Prog>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_compiler(_p);
    }
}
/**
    // An Error describes a failure to parse a regular expression
    // and gives the offending expression.
    
    
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.T_error_static_extension) class T_error {
    public var code : stdgo.regexp.syntax.Syntax.ErrorCode = (("" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode);
    public var expr : stdgo.GoString = "";
    public function new(?code:stdgo.regexp.syntax.Syntax.ErrorCode, ?expr:stdgo.GoString) {
        if (code != null) this.code = code;
        if (expr != null) this.expr = expr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_error(code, expr);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.regexp.syntax.Syntax.T_parser_static_extension) class T_parser {
    public var _flags : stdgo.regexp.syntax.Syntax.Flags = ((0 : stdgo.StdGoTypes.GoUInt16) : stdgo.regexp.syntax.Syntax.Flags);
    public var _stack : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>> = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
    public var _free : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp> = (null : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
    public var _numCap : stdgo.StdGoTypes.GoInt = 0;
    public var _wholeRegexp : stdgo.GoString = "";
    public var _tmpClass : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
    public var _numRegexp : stdgo.StdGoTypes.GoInt = 0;
    public var _numRunes : stdgo.StdGoTypes.GoInt = 0;
    public var _repeats : stdgo.StdGoTypes.GoInt64 = 0;
    public var _height : stdgo.GoMap<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>, stdgo.StdGoTypes.GoInt> = (null : stdgo.GoMap<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>, stdgo.StdGoTypes.GoInt>);
    public var _size : stdgo.GoMap<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>, stdgo.StdGoTypes.GoInt64> = (null : stdgo.GoMap<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>, stdgo.StdGoTypes.GoInt64>);
    public function new(?_flags:stdgo.regexp.syntax.Syntax.Flags, ?_stack:stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>, ?_free:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>, ?_numCap:stdgo.StdGoTypes.GoInt, ?_wholeRegexp:stdgo.GoString, ?_tmpClass:stdgo.Slice<stdgo.StdGoTypes.GoInt32>, ?_numRegexp:stdgo.StdGoTypes.GoInt, ?_numRunes:stdgo.StdGoTypes.GoInt, ?_repeats:stdgo.StdGoTypes.GoInt64, ?_height:stdgo.GoMap<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>, stdgo.StdGoTypes.GoInt>, ?_size:stdgo.GoMap<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>, stdgo.StdGoTypes.GoInt64>) {
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
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public var _sign : stdgo.StdGoTypes.GoInt = 0;
    public var _class : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
    public function new(?_sign:stdgo.StdGoTypes.GoInt, ?_class:stdgo.Slice<stdgo.StdGoTypes.GoInt32>) {
        if (_sign != null) this._sign = _sign;
        if (_class != null) this._class = _class;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public var _p : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt32>> = (null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt32>>);
    public function new(?_p:stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt32>>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ranges(_p);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_parseTest {
    public var regexp : stdgo.GoString = "";
    public var dump : stdgo.GoString = "";
    public function new(?regexp:stdgo.GoString, ?dump:stdgo.GoString) {
        if (regexp != null) this.regexp = regexp;
        if (dump != null) this.dump = dump;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseTest(regexp, dump);
    }
}
/**
    // A Prog is a compiled regular expression program.
    
    
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.Prog_static_extension) class Prog {
    public var inst : stdgo.Slice<stdgo.regexp.syntax.Syntax.Inst> = (null : stdgo.Slice<stdgo.regexp.syntax.Syntax.Inst>);
    public var start : stdgo.StdGoTypes.GoInt = 0;
    public var numCap : stdgo.StdGoTypes.GoInt = 0;
    public function new(?inst:stdgo.Slice<stdgo.regexp.syntax.Syntax.Inst>, ?start:stdgo.StdGoTypes.GoInt, ?numCap:stdgo.StdGoTypes.GoInt) {
        if (inst != null) this.inst = inst;
        if (start != null) this.start = start;
        if (numCap != null) this.numCap = numCap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Prog(inst, start, numCap);
    }
}
/**
    // An Inst is a single instruction in a regular expression program.
    
    
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.Inst_static_extension) class Inst {
    public var op : stdgo.regexp.syntax.Syntax.InstOp = ((0 : stdgo.StdGoTypes.GoUInt8) : stdgo.regexp.syntax.Syntax.InstOp);
    public var out : stdgo.StdGoTypes.GoUInt32 = 0;
    public var arg : stdgo.StdGoTypes.GoUInt32 = 0;
    public var rune : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
    public function new(?op:stdgo.regexp.syntax.Syntax.InstOp, ?out:stdgo.StdGoTypes.GoUInt32, ?arg:stdgo.StdGoTypes.GoUInt32, ?rune:stdgo.Slice<stdgo.StdGoTypes.GoInt32>) {
        if (op != null) this.op = op;
        if (out != null) this.out = out;
        if (arg != null) this.arg = arg;
        if (rune != null) this.rune = rune;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Inst(op, out, arg, rune);
    }
}
/**
    // A Regexp is a node in a regular expression syntax tree.
    
    
**/
@:structInit @:using(stdgo.regexp.syntax.Syntax.Regexp_static_extension) class Regexp {
    public var op : stdgo.regexp.syntax.Syntax.Op = ((0 : stdgo.StdGoTypes.GoUInt8) : stdgo.regexp.syntax.Syntax.Op);
    public var flags : stdgo.regexp.syntax.Syntax.Flags = ((0 : stdgo.StdGoTypes.GoUInt16) : stdgo.regexp.syntax.Syntax.Flags);
    public var sub : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>> = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
    public var sub0 : stdgo.GoArray<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>> = new stdgo.GoArray<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>(...[for (i in 0 ... 1) (null : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>)]);
    public var rune : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
    public var rune0 : stdgo.GoArray<stdgo.StdGoTypes.GoInt32> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt32>(...[for (i in 0 ... 2) (0 : stdgo.StdGoTypes.GoInt32)]);
    public var min : stdgo.StdGoTypes.GoInt = 0;
    public var max : stdgo.StdGoTypes.GoInt = 0;
    public var cap : stdgo.StdGoTypes.GoInt = 0;
    public var name : stdgo.GoString = "";
    public function new(?op:stdgo.regexp.syntax.Syntax.Op, ?flags:stdgo.regexp.syntax.Syntax.Flags, ?sub:stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>, ?sub0:stdgo.GoArray<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>, ?rune:stdgo.Slice<stdgo.StdGoTypes.GoInt32>, ?rune0:stdgo.GoArray<stdgo.StdGoTypes.GoInt32>, ?min:stdgo.StdGoTypes.GoInt, ?max:stdgo.StdGoTypes.GoInt, ?cap:stdgo.StdGoTypes.GoInt, ?name:stdgo.GoString) {
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
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Regexp(op, flags, sub, sub0, rune, rune0, min, max, cap, name);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.regexp.syntax.Syntax.T__struct_0_static_extension) typedef T__struct_0 = {};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.regexp.syntax.Syntax.T__struct_1_static_extension) typedef T__struct_1 = {
    public var regexp : stdgo.GoString;
    public var prog : stdgo.GoString;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.regexp.syntax.Syntax.T__struct_2_static_extension) typedef T__struct_2 = {
    public var regexp : stdgo.GoString;
    public var simple : stdgo.GoString;
};
/**
    // An ErrorCode describes a failure to parse a regular expression.
**/
@:named @:using(stdgo.regexp.syntax.Syntax.ErrorCode_static_extension) typedef ErrorCode = stdgo.GoString;
/**
    // Flags control the behavior of the parser and record information about regexp context.
**/
@:named typedef Flags = stdgo.StdGoTypes.GoUInt16;
/**
    // An InstOp is an instruction opcode.
**/
@:named @:using(stdgo.regexp.syntax.Syntax.InstOp_static_extension) typedef InstOp = stdgo.StdGoTypes.GoUInt8;
/**
    // An EmptyOp specifies a kind or mixture of zero-width assertions.
**/
@:named typedef EmptyOp = stdgo.StdGoTypes.GoUInt8;
/**
    // An Op is a single regular expression operator.
**/
@:named @:using(stdgo.regexp.syntax.Syntax.Op_static_extension) typedef Op = stdgo.StdGoTypes.GoUInt8;
function _makePatchList(_n:stdgo.StdGoTypes.GoUInt32):T_patchList {
        return (new stdgo.regexp.syntax.Syntax.T_patchList(_n, _n) : stdgo.regexp.syntax.Syntax.T_patchList);
    }
/**
    // Compile compiles the regexp into a program to be executed.
    // The regexp should have been simplified already (returned from re.Simplify).
**/
function compile(_re:stdgo.StdGoTypes.Ref<Regexp>):{ var _0 : stdgo.StdGoTypes.Ref<Prog>; var _1 : stdgo.Error; } {
        var _c:T_compiler = ({} : stdgo.regexp.syntax.Syntax.T_compiler);
        _c._init();
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._compile(_re)?.__copy__();
        _f._out._patch(_c._p, _c._inst((4 : stdgo.regexp.syntax.Syntax.InstOp))._i);
        _c._p.start = (_f._i : stdgo.StdGoTypes.GoInt);
        return { _0 : _c._p, _1 : (null : stdgo.Error) };
    }
/**
    // minFoldRune returns the minimum rune fold-equivalent to r.
**/
function _minFoldRune(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
        if ((_r < (65 : stdgo.StdGoTypes.GoInt32)) || (_r > (125251 : stdgo.StdGoTypes.GoInt32))) {
            return _r;
        };
        var _min:stdgo.StdGoTypes.GoInt32 = _r;
        var _r0:stdgo.StdGoTypes.GoInt32 = _r;
        {
            _r = stdgo.unicode.Unicode.simpleFold(_r);
            stdgo.Go.cfor(_r != (_r0), _r = stdgo.unicode.Unicode.simpleFold(_r), {
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
function _repeatIsValid(_re:stdgo.StdGoTypes.Ref<Regexp>, _n:stdgo.StdGoTypes.GoInt):Bool {
        if (_re.op == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
            var _m:stdgo.StdGoTypes.GoInt = _re.max;
            if (_m == ((0 : stdgo.StdGoTypes.GoInt))) {
                return true;
            };
            if (_m < (0 : stdgo.StdGoTypes.GoInt)) {
                _m = _re.min;
            };
            if (_m > _n) {
                return false;
            };
            if (_m > (0 : stdgo.StdGoTypes.GoInt)) {
                _n = _n / (_m);
            };
        };
        for (__1 => _sub in _re.sub) {
            if (!_repeatIsValid(_sub, _n)) {
                return false;
            };
        };
        return true;
    }
/**
    // cleanAlt cleans re for eventual inclusion in an alternation.
**/
function _cleanAlt(_re:stdgo.StdGoTypes.Ref<Regexp>):Void {
        {
            final __value__ = _re.op;
            if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.Op))) {
                _re.rune = _cleanClass((stdgo.Go.setRef(_re.rune) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt32>>));
                if (((_re.rune.length == (2 : stdgo.StdGoTypes.GoInt)) && (_re.rune[(0 : stdgo.StdGoTypes.GoInt)] == (0 : stdgo.StdGoTypes.GoInt32))) && (_re.rune[(1 : stdgo.StdGoTypes.GoInt)] == (1114111 : stdgo.StdGoTypes.GoInt32))) {
                    _re.rune = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
                    _re.op = (6 : stdgo.regexp.syntax.Syntax.Op);
                    return;
                };
                if (((((_re.rune.length == (4 : stdgo.StdGoTypes.GoInt)) && (_re.rune[(0 : stdgo.StdGoTypes.GoInt)] == (0 : stdgo.StdGoTypes.GoInt32))) && (_re.rune[(1 : stdgo.StdGoTypes.GoInt)] == (9 : stdgo.StdGoTypes.GoInt32))) && (_re.rune[(2 : stdgo.StdGoTypes.GoInt)] == (11 : stdgo.StdGoTypes.GoInt32))) && (_re.rune[(3 : stdgo.StdGoTypes.GoInt)] == (1114111 : stdgo.StdGoTypes.GoInt32))) {
                    _re.rune = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
                    _re.op = (5 : stdgo.regexp.syntax.Syntax.Op);
                    return;
                };
                if ((_re.rune.capacity - _re.rune.length) > (100 : stdgo.StdGoTypes.GoInt)) {
                    _re.rune = ((_re.rune0.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>).__append__(..._re.rune.__toArray__()));
                };
            };
        };
    }
function _literalRegexp(_s:stdgo.GoString, _flags:Flags):stdgo.StdGoTypes.Ref<Regexp> {
        var _re = (stdgo.Go.setRef(({ op : (3 : stdgo.regexp.syntax.Syntax.Op) } : stdgo.regexp.syntax.Syntax.Regexp)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
        _re.flags = _flags;
        _re.rune = (_re.rune0.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
        for (__1 => _c in _s) {
            if ((_re.rune.length) >= _re.rune.capacity) {
                _re.rune = (_s : stdgo.Slice<stdgo.StdGoTypes.GoRune>);
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
function parse(_s:stdgo.GoString, _flags:Flags):{ var _0 : stdgo.StdGoTypes.Ref<Regexp>; var _1 : stdgo.Error; } {
        return _parse(_s?.__copy__(), _flags);
    }
function _parse(_s:stdgo.GoString, _flags:Flags):{ var _0 : stdgo.StdGoTypes.Ref<Regexp>; var _1 : stdgo.Error; } {
        stdgo.internal.Macro.controlFlow({
            var __deferstack__:Array<Void -> Void> = [];
            var _0:stdgo.StdGoTypes.Ref<Regexp> = (null : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>), _err:stdgo.Error = (null : stdgo.Error);
            try {
                __deferstack__.unshift(() -> {
                    var a = function():Void {
                        {
                            var _r:stdgo.StdGoTypes.AnyInterface = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            {
                                final __value__ = _r;
                                if (__value__ == null) {} else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode))))) {
                                    _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression too large" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : _s?.__copy__() } : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>));
                                } else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode))))) {
                                    _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression nests too deeply" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : _s?.__copy__() } : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>));
                                } else {
                                    throw stdgo.Go.toInterface(_r);
                                };
                            };
                        };
                    };
                    a();
                });
                if (_flags & (2 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                    {
                        var _err:stdgo.Error = _checkUTF8(_s?.__copy__());
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
                        return { _0 : _literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                    };
                };
                var __0:T_parser = ({} : stdgo.regexp.syntax.Syntax.T_parser), __1:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), __2:Op = ((0 : stdgo.StdGoTypes.GoUInt8) : stdgo.regexp.syntax.Syntax.Op), __3:stdgo.GoString = ("" : stdgo.GoString), _lastRepeat:stdgo.GoString = __3, _op:Op = __2, _c:stdgo.StdGoTypes.GoRune = __1, _p:T_parser = __0;
                _p._flags = _flags;
                _p._wholeRegexp = _s?.__copy__();
                var _t:stdgo.GoString = _s?.__copy__();
                while (_t != (stdgo.Go.str())) {
                    var _repeat:stdgo.GoString = stdgo.Go.str()?.__copy__();
                    @:label("BigSwitch") {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _t[(0 : stdgo.StdGoTypes.GoInt)];
                                if (__value__ == ((40 : stdgo.StdGoTypes.GoUInt8))) {
                                    if ((((_p._flags & (64 : stdgo.regexp.syntax.Syntax.Flags)) != (0 : stdgo.regexp.syntax.Syntax.Flags)) && (_t.length >= (2 : stdgo.StdGoTypes.GoInt))) && (_t[(1 : stdgo.StdGoTypes.GoInt)] == (63 : stdgo.StdGoTypes.GoUInt8))) {
                                        {
                                            {
                                                var __tmp__ = _p._parsePerlFlags(_t?.__copy__());
                                                _t = __tmp__._0?.__copy__();
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
                                    _t = (_t.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                } else if (__value__ == ((124 : stdgo.StdGoTypes.GoUInt8))) {
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
                                    _t = (_t.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                } else if (__value__ == ((41 : stdgo.StdGoTypes.GoUInt8))) {
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
                                    _t = (_t.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                } else if (__value__ == ((94 : stdgo.StdGoTypes.GoUInt8))) {
                                    if (_p._flags & (16 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                                        _p._op((9 : stdgo.regexp.syntax.Syntax.Op));
                                    } else {
                                        _p._op((7 : stdgo.regexp.syntax.Syntax.Op));
                                    };
                                    _t = (_t.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                } else if (__value__ == ((36 : stdgo.StdGoTypes.GoUInt8))) {
                                    if (_p._flags & (16 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                                        _p._op((10 : stdgo.regexp.syntax.Syntax.Op)).flags = _p._op((10 : stdgo.regexp.syntax.Syntax.Op)).flags | ((256 : stdgo.regexp.syntax.Syntax.Flags));
                                    } else {
                                        _p._op((8 : stdgo.regexp.syntax.Syntax.Op));
                                    };
                                    _t = (_t.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                } else if (__value__ == ((46 : stdgo.StdGoTypes.GoUInt8))) {
                                    if (_p._flags & (8 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                                        _p._op((6 : stdgo.regexp.syntax.Syntax.Op));
                                    } else {
                                        _p._op((5 : stdgo.regexp.syntax.Syntax.Op));
                                    };
                                    _t = (_t.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                } else if (__value__ == ((91 : stdgo.StdGoTypes.GoUInt8))) {
                                    {
                                        {
                                            var __tmp__ = _p._parseClass(_t?.__copy__());
                                            _t = __tmp__._0?.__copy__();
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
                                } else if (__value__ == ((42 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((43 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((63 : stdgo.StdGoTypes.GoUInt8))) {
                                    var _before:stdgo.GoString = _t?.__copy__();
                                    {
                                        final __value__ = _t[(0 : stdgo.StdGoTypes.GoInt)];
                                        if (__value__ == ((42 : stdgo.StdGoTypes.GoUInt8))) {
                                            _op = (14 : stdgo.regexp.syntax.Syntax.Op);
                                        } else if (__value__ == ((43 : stdgo.StdGoTypes.GoUInt8))) {
                                            _op = (15 : stdgo.regexp.syntax.Syntax.Op);
                                        } else if (__value__ == ((63 : stdgo.StdGoTypes.GoUInt8))) {
                                            _op = (16 : stdgo.regexp.syntax.Syntax.Op);
                                        };
                                    };
                                    var _after:stdgo.GoString = (_t.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                                    {
                                        {
                                            var __tmp__ = _p._repeat(_op, (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), _before?.__copy__(), _after?.__copy__(), _lastRepeat?.__copy__());
                                            _after = __tmp__._0?.__copy__();
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
                                    _repeat = _before?.__copy__();
                                    _t = _after?.__copy__();
                                    break;
                                } else if (__value__ == ((123 : stdgo.StdGoTypes.GoUInt8))) {
                                    _op = (17 : stdgo.regexp.syntax.Syntax.Op);
                                    var _before:stdgo.GoString = _t?.__copy__();
                                    var __tmp__ = _p._parseRepeat(_t?.__copy__()), _min:stdgo.StdGoTypes.GoInt = __tmp__._0, _max:stdgo.StdGoTypes.GoInt = __tmp__._1, _after:stdgo.GoString = __tmp__._2, _ok:Bool = __tmp__._3;
                                    if (!_ok) {
                                        _p._literal((123 : stdgo.StdGoTypes.GoInt32));
                                        _t = (_t.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                                        break;
                                    };
                                    if ((((_min < (0 : stdgo.StdGoTypes.GoInt)) || (_min > (1000 : stdgo.StdGoTypes.GoInt))) || (_max > (1000 : stdgo.StdGoTypes.GoInt))) || ((_max >= (0 : stdgo.StdGoTypes.GoInt)) && (_min > _max))) {
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("invalid repeat count" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_before.__slice__(0, (_before.length) - (_after.length)) : stdgo.GoString)?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
                                        };
                                    };
                                    {
                                        {
                                            var __tmp__ = _p._repeat(_op, _min, _max, _before?.__copy__(), _after?.__copy__(), _lastRepeat?.__copy__());
                                            _after = __tmp__._0?.__copy__();
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
                                    _repeat = _before?.__copy__();
                                    _t = _after?.__copy__();
                                    break;
                                } else if (__value__ == ((92 : stdgo.StdGoTypes.GoUInt8))) {
                                    if (((_p._flags & (64 : stdgo.regexp.syntax.Syntax.Flags)) != (0 : stdgo.regexp.syntax.Syntax.Flags)) && (_t.length >= (2 : stdgo.StdGoTypes.GoInt))) {
                                        {
                                            var __switchIndex__ = -1;
                                            var __run__ = true;
                                            while (__run__) {
                                                __run__ = false;
                                                {
                                                    final __value__ = _t[(1 : stdgo.StdGoTypes.GoInt)];
                                                    if (__value__ == ((65 : stdgo.StdGoTypes.GoUInt8))) {
                                                        _p._op((9 : stdgo.regexp.syntax.Syntax.Op));
                                                        _t = (_t.__slice__((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    } else if (__value__ == ((98 : stdgo.StdGoTypes.GoUInt8))) {
                                                        _p._op((11 : stdgo.regexp.syntax.Syntax.Op));
                                                        _t = (_t.__slice__((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    } else if (__value__ == ((66 : stdgo.StdGoTypes.GoUInt8))) {
                                                        _p._op((12 : stdgo.regexp.syntax.Syntax.Op));
                                                        _t = (_t.__slice__((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    } else if (__value__ == ((67 : stdgo.StdGoTypes.GoUInt8))) {
                                                        {
                                                            for (defer in __deferstack__) {
                                                                defer();
                                                            };
                                                            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("invalid escape sequence" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_t.__slice__(0, (2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
                                                        };
                                                        break;
                                                    } else if (__value__ == ((81 : stdgo.StdGoTypes.GoUInt8))) {
                                                        var _lit:stdgo.GoString = ("" : stdgo.GoString);
                                                        {
                                                            var __tmp__ = stdgo.strings.Strings.cut((_t.__slice__((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                                                            _lit = __tmp__._0?.__copy__();
                                                            _t = __tmp__._1?.__copy__();
                                                        };
                                                        while (_lit != (stdgo.Go.str())) {
                                                            var __tmp__ = _nextRune(_lit?.__copy__()), _c:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _rest:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                                                            if (_err != null) {
                                                                {
                                                                    for (defer in __deferstack__) {
                                                                        defer();
                                                                    };
                                                                    return { _0 : null, _1 : _err };
                                                                };
                                                            };
                                                            _p._literal(_c);
                                                            _lit = _rest?.__copy__();
                                                        };
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    } else if (__value__ == ((122 : stdgo.StdGoTypes.GoUInt8))) {
                                                        _p._op((10 : stdgo.regexp.syntax.Syntax.Op));
                                                        _t = (_t.__slice__((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
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
                                    if ((_t.length >= (2 : stdgo.StdGoTypes.GoInt)) && ((_t[(1 : stdgo.StdGoTypes.GoInt)] == (112 : stdgo.StdGoTypes.GoUInt8)) || (_t[(1 : stdgo.StdGoTypes.GoInt)] == (80 : stdgo.StdGoTypes.GoUInt8)))) {
                                        var __tmp__ = _p._parseUnicodeClass(_t?.__copy__(), (_re.rune0.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>)), _r:stdgo.Slice<stdgo.StdGoTypes.GoInt32> = __tmp__._0, _rest:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
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
                                            _t = _rest?.__copy__();
                                            _p._push(_re);
                                            @:jump("BigSwitch") break;
                                        };
                                    };
                                    {
                                        var __tmp__ = _p._parsePerlClassEscape(_t?.__copy__(), (_re.rune0.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>)), _r:stdgo.Slice<stdgo.StdGoTypes.GoInt32> = __tmp__._0, _rest:stdgo.GoString = __tmp__._1;
                                        if (_r != null) {
                                            _re.rune = _r;
                                            _t = _rest?.__copy__();
                                            _p._push(_re);
                                            @:jump("BigSwitch") break;
                                        };
                                    };
                                    _p._reuse(_re);
                                    {
                                        {
                                            var __tmp__ = _p._parseEscape(_t?.__copy__());
                                            _c = __tmp__._0;
                                            _t = __tmp__._1?.__copy__();
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
                                            var __tmp__ = _nextRune(_t?.__copy__());
                                            _c = __tmp__._0;
                                            _t = __tmp__._1?.__copy__();
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
                    _lastRepeat = _repeat?.__copy__();
                };
                _p._concat();
                if (_p._swapVerticalBar()) {
                    _p._stack = (_p._stack.__slice__(0, (_p._stack.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
                };
                _p._alternate();
                var _n:stdgo.StdGoTypes.GoInt = (_p._stack.length);
                if (_n != ((1 : stdgo.StdGoTypes.GoInt))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("missing closing )" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _s?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
                    };
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : _p._stack[(0 : stdgo.StdGoTypes.GoInt)], _1 : (null : stdgo.Error) };
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return { _0 : _0, _1 : _err };
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
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
function _isValidCaptureName(_name:stdgo.GoString):Bool {
        if (_name == (stdgo.Go.str())) {
            return false;
        };
        for (__1 => _c in _name) {
            if ((_c != (95 : stdgo.StdGoTypes.GoInt32)) && !_isalnum(_c)) {
                return false;
            };
        };
        return true;
    }
/**
    // can this be represented as a character class?
    // single-rune literal string, char class, ., and .|\n.
**/
function _isCharClass(_re:stdgo.StdGoTypes.Ref<Regexp>):Bool {
        return ((((_re.op == (3 : stdgo.regexp.syntax.Syntax.Op)) && (_re.rune.length == (1 : stdgo.StdGoTypes.GoInt))) || (_re.op == (4 : stdgo.regexp.syntax.Syntax.Op))) || (_re.op == (5 : stdgo.regexp.syntax.Syntax.Op))) || (_re.op == (6 : stdgo.regexp.syntax.Syntax.Op));
    }
/**
    // does re match r?
**/
function _matchRune(_re:stdgo.StdGoTypes.Ref<Regexp>, _r:stdgo.StdGoTypes.GoRune):Bool {
        {
            final __value__ = _re.op;
            if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                return (_re.rune.length == (1 : stdgo.StdGoTypes.GoInt)) && (_re.rune[(0 : stdgo.StdGoTypes.GoInt)] == _r);
            } else if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.Op))) {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (_re.rune.length), _i = _i + ((2 : stdgo.StdGoTypes.GoInt)), {
                        if ((_re.rune[(_i : stdgo.StdGoTypes.GoInt)] <= _r) && (_r <= _re.rune[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)])) {
                            return true;
                        };
                    });
                };
                return false;
            } else if (__value__ == ((5 : stdgo.regexp.syntax.Syntax.Op))) {
                return _r != ((10 : stdgo.StdGoTypes.GoInt32));
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
function _mergeCharClass(_dst:stdgo.StdGoTypes.Ref<Regexp>, _src:stdgo.StdGoTypes.Ref<Regexp>):Void {
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
                        if (_matchRune(_src, (10 : stdgo.StdGoTypes.GoInt32))) {
                            _dst.op = (6 : stdgo.regexp.syntax.Syntax.Op);
                        };
                        break;
                    } else if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.Op))) {
                        if (_src.op == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                            _dst.rune = _appendLiteral(_dst.rune, _src.rune[(0 : stdgo.StdGoTypes.GoInt)], _src.flags);
                        } else {
                            _dst.rune = _appendClass(_dst.rune, _src.rune);
                        };
                        break;
                    } else if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                        if ((_src.rune[(0 : stdgo.StdGoTypes.GoInt)] == _dst.rune[(0 : stdgo.StdGoTypes.GoInt)]) && (_src.flags == _dst.flags)) {
                            break;
                        };
                        _dst.op = (4 : stdgo.regexp.syntax.Syntax.Op);
                        _dst.rune = _appendLiteral((_dst.rune.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _dst.rune[(0 : stdgo.StdGoTypes.GoInt)], _dst.flags);
                        _dst.rune = _appendLiteral(_dst.rune, _src.rune[(0 : stdgo.StdGoTypes.GoInt)], _src.flags);
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
function _unicodeTable(_name:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.Ref<stdgo.unicode.Unicode.RangeTable>; var _1 : stdgo.StdGoTypes.Ref<stdgo.unicode.Unicode.RangeTable>; } {
        if (_name == (("Any" : stdgo.GoString))) {
            return { _0 : _anyTable, _1 : _anyTable };
        };
        {
            var _t = (stdgo.unicode.Unicode.categories[_name] ?? (null : stdgo.StdGoTypes.Ref<stdgo.unicode.Unicode.RangeTable>));
            if (_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) {
                return { _0 : _t, _1 : (stdgo.unicode.Unicode.foldCategory[_name] ?? (null : stdgo.StdGoTypes.Ref<stdgo.unicode.Unicode.RangeTable>)) };
            };
        };
        {
            var _t = (stdgo.unicode.Unicode.scripts[_name] ?? (null : stdgo.StdGoTypes.Ref<stdgo.unicode.Unicode.RangeTable>));
            if (_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) {
                return { _0 : _t, _1 : (stdgo.unicode.Unicode.foldScript[_name] ?? (null : stdgo.StdGoTypes.Ref<stdgo.unicode.Unicode.RangeTable>)) };
            };
        };
        return { _0 : null, _1 : null };
    }
/**
    // cleanClass sorts the ranges (pairs of elements of r),
    // merges them, and eliminates duplicates.
**/
function _cleanClass(_rp:stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoRune>>):stdgo.Slice<stdgo.StdGoTypes.GoRune> {
        stdgo.sort.Sort.sort(stdgo.Go.asInterface((new stdgo.regexp.syntax.Syntax.T_ranges(_rp) : stdgo.regexp.syntax.Syntax.T_ranges)));
        var _r = (_rp : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
        if ((_r.length) < (2 : stdgo.StdGoTypes.GoInt)) {
            return _r;
        };
        var _w:stdgo.StdGoTypes.GoInt = (2 : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (2 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_r.length), _i = _i + ((2 : stdgo.StdGoTypes.GoInt)), {
                var __0:stdgo.StdGoTypes.GoInt32 = _r[(_i : stdgo.StdGoTypes.GoInt)], __1:stdgo.StdGoTypes.GoInt32 = _r[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)], _hi:stdgo.StdGoTypes.GoInt32 = __1, _lo:stdgo.StdGoTypes.GoInt32 = __0;
                if (_lo <= (_r[(_w - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] + (1 : stdgo.StdGoTypes.GoInt32))) {
                    if (_hi > _r[(_w - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]) {
                        _r[(_w - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _hi;
                    };
                    continue;
                };
                _r[(_w : stdgo.StdGoTypes.GoInt)] = _lo;
                _r[(_w + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _hi;
                _w = _w + ((2 : stdgo.StdGoTypes.GoInt));
            });
        };
        return (_r.__slice__(0, _w) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
    }
/**
    // appendLiteral returns the result of appending the literal x to the class r.
**/
function _appendLiteral(_r:stdgo.Slice<stdgo.StdGoTypes.GoRune>, _x:stdgo.StdGoTypes.GoRune, _flags:Flags):stdgo.Slice<stdgo.StdGoTypes.GoRune> {
        if (_flags & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
            return _appendFoldedRange(_r, _x, _x);
        };
        return _appendRange(_r, _x, _x);
    }
/**
    // appendRange returns the result of appending the range lo-hi to the class r.
**/
function _appendRange(_r:stdgo.Slice<stdgo.StdGoTypes.GoRune>, _lo:stdgo.StdGoTypes.GoRune, _hi:stdgo.StdGoTypes.GoRune):stdgo.Slice<stdgo.StdGoTypes.GoRune> {
        var _n:stdgo.StdGoTypes.GoInt = (_r.length);
        {
            var _i:stdgo.StdGoTypes.GoInt = (2 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (4 : stdgo.StdGoTypes.GoInt), _i = _i + ((2 : stdgo.StdGoTypes.GoInt)), {
                if (_n >= _i) {
                    var __0:stdgo.StdGoTypes.GoInt32 = _r[(_n - _i : stdgo.StdGoTypes.GoInt)], __1:stdgo.StdGoTypes.GoInt32 = _r[((_n - _i) + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)], _rhi:stdgo.StdGoTypes.GoInt32 = __1, _rlo:stdgo.StdGoTypes.GoInt32 = __0;
                    if ((_lo <= (_rhi + (1 : stdgo.StdGoTypes.GoInt32))) && (_rlo <= (_hi + (1 : stdgo.StdGoTypes.GoInt32)))) {
                        if (_lo < _rlo) {
                            _r[(_n - _i : stdgo.StdGoTypes.GoInt)] = _lo;
                        };
                        if (_hi > _rhi) {
                            _r[((_n - _i) + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _hi;
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
function _appendFoldedRange(_r:stdgo.Slice<stdgo.StdGoTypes.GoRune>, _lo:stdgo.StdGoTypes.GoRune, _hi:stdgo.StdGoTypes.GoRune):stdgo.Slice<stdgo.StdGoTypes.GoRune> {
        if ((_lo <= (65 : stdgo.StdGoTypes.GoInt32)) && (_hi >= (125251 : stdgo.StdGoTypes.GoInt32))) {
            return _appendRange(_r, _lo, _hi);
        };
        if ((_hi < (65 : stdgo.StdGoTypes.GoInt32)) || (_lo > (125251 : stdgo.StdGoTypes.GoInt32))) {
            return _appendRange(_r, _lo, _hi);
        };
        if (_lo < (65 : stdgo.StdGoTypes.GoInt32)) {
            _r = _appendRange(_r, _lo, (64 : stdgo.StdGoTypes.GoInt32));
            _lo = (65 : stdgo.StdGoTypes.GoInt32);
        };
        if (_hi > (125251 : stdgo.StdGoTypes.GoInt32)) {
            _r = _appendRange(_r, (125252 : stdgo.StdGoTypes.GoInt32), _hi);
            _hi = (125251 : stdgo.StdGoTypes.GoInt32);
        };
        {
            var _c:stdgo.StdGoTypes.GoInt32 = _lo;
            stdgo.Go.cfor(_c <= _hi, _c++, {
                _r = _appendRange(_r, _c, _c);
                var _f:stdgo.StdGoTypes.GoInt32 = stdgo.unicode.Unicode.simpleFold(_c);
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
function _appendClass(_r:stdgo.Slice<stdgo.StdGoTypes.GoRune>, _x:stdgo.Slice<stdgo.StdGoTypes.GoRune>):stdgo.Slice<stdgo.StdGoTypes.GoRune> {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_x.length), _i = _i + ((2 : stdgo.StdGoTypes.GoInt)), {
                _r = _appendRange(_r, _x[(_i : stdgo.StdGoTypes.GoInt)], _x[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]);
            });
        };
        return _r;
    }
/**
    // appendFoldedClass returns the result of appending the case folding of the class x to the class r.
**/
function _appendFoldedClass(_r:stdgo.Slice<stdgo.StdGoTypes.GoRune>, _x:stdgo.Slice<stdgo.StdGoTypes.GoRune>):stdgo.Slice<stdgo.StdGoTypes.GoRune> {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_x.length), _i = _i + ((2 : stdgo.StdGoTypes.GoInt)), {
                _r = _appendFoldedRange(_r, _x[(_i : stdgo.StdGoTypes.GoInt)], _x[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]);
            });
        };
        return _r;
    }
/**
    // appendNegatedClass returns the result of appending the negation of the class x to the class r.
    // It assumes x is clean.
**/
function _appendNegatedClass(_r:stdgo.Slice<stdgo.StdGoTypes.GoRune>, _x:stdgo.Slice<stdgo.StdGoTypes.GoRune>):stdgo.Slice<stdgo.StdGoTypes.GoRune> {
        var _nextLo:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_x.length), _i = _i + ((2 : stdgo.StdGoTypes.GoInt)), {
                var __0:stdgo.StdGoTypes.GoInt32 = _x[(_i : stdgo.StdGoTypes.GoInt)], __1:stdgo.StdGoTypes.GoInt32 = _x[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)], _hi:stdgo.StdGoTypes.GoInt32 = __1, _lo:stdgo.StdGoTypes.GoInt32 = __0;
                if (_nextLo <= (_lo - (1 : stdgo.StdGoTypes.GoInt32))) {
                    _r = _appendRange(_r, _nextLo, _lo - (1 : stdgo.StdGoTypes.GoInt32));
                };
                _nextLo = _hi + (1 : stdgo.StdGoTypes.GoInt32);
            });
        };
        if (_nextLo <= (1114111 : stdgo.StdGoTypes.GoInt32)) {
            _r = _appendRange(_r, _nextLo, (1114111 : stdgo.StdGoTypes.GoInt32));
        };
        return _r;
    }
/**
    // appendTable returns the result of appending x to the class r.
**/
function _appendTable(_r:stdgo.Slice<stdgo.StdGoTypes.GoRune>, _x:stdgo.StdGoTypes.Ref<stdgo.unicode.Unicode.RangeTable>):stdgo.Slice<stdgo.StdGoTypes.GoRune> {
        for (__1 => _xr in _x.r16) {
            var __0:stdgo.StdGoTypes.GoInt32 = (_xr.lo : stdgo.StdGoTypes.GoRune), __1:stdgo.StdGoTypes.GoInt32 = (_xr.hi : stdgo.StdGoTypes.GoRune), __2:stdgo.StdGoTypes.GoInt32 = (_xr.stride : stdgo.StdGoTypes.GoRune), _stride:stdgo.StdGoTypes.GoInt32 = __2, _hi:stdgo.StdGoTypes.GoInt32 = __1, _lo:stdgo.StdGoTypes.GoInt32 = __0;
            if (_stride == ((1 : stdgo.StdGoTypes.GoInt32))) {
                _r = _appendRange(_r, _lo, _hi);
                continue;
            };
            {
                var _c:stdgo.StdGoTypes.GoInt32 = _lo;
                stdgo.Go.cfor(_c <= _hi, _c = _c + (_stride), {
                    _r = _appendRange(_r, _c, _c);
                });
            };
        };
        for (__2 => _xr in _x.r32) {
            var __0:stdgo.StdGoTypes.GoInt32 = (_xr.lo : stdgo.StdGoTypes.GoRune), __1:stdgo.StdGoTypes.GoInt32 = (_xr.hi : stdgo.StdGoTypes.GoRune), __2:stdgo.StdGoTypes.GoInt32 = (_xr.stride : stdgo.StdGoTypes.GoRune), _stride:stdgo.StdGoTypes.GoInt32 = __2, _hi:stdgo.StdGoTypes.GoInt32 = __1, _lo:stdgo.StdGoTypes.GoInt32 = __0;
            if (_stride == ((1 : stdgo.StdGoTypes.GoInt32))) {
                _r = _appendRange(_r, _lo, _hi);
                continue;
            };
            {
                var _c:stdgo.StdGoTypes.GoInt32 = _lo;
                stdgo.Go.cfor(_c <= _hi, _c = _c + (_stride), {
                    _r = _appendRange(_r, _c, _c);
                });
            };
        };
        return _r;
    }
/**
    // appendNegatedTable returns the result of appending the negation of x to the class r.
**/
function _appendNegatedTable(_r:stdgo.Slice<stdgo.StdGoTypes.GoRune>, _x:stdgo.StdGoTypes.Ref<stdgo.unicode.Unicode.RangeTable>):stdgo.Slice<stdgo.StdGoTypes.GoRune> {
        var _nextLo:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
        for (__1 => _xr in _x.r16) {
            var __0:stdgo.StdGoTypes.GoInt32 = (_xr.lo : stdgo.StdGoTypes.GoRune), __1:stdgo.StdGoTypes.GoInt32 = (_xr.hi : stdgo.StdGoTypes.GoRune), __2:stdgo.StdGoTypes.GoInt32 = (_xr.stride : stdgo.StdGoTypes.GoRune), _stride:stdgo.StdGoTypes.GoInt32 = __2, _hi:stdgo.StdGoTypes.GoInt32 = __1, _lo:stdgo.StdGoTypes.GoInt32 = __0;
            if (_stride == ((1 : stdgo.StdGoTypes.GoInt32))) {
                if (_nextLo <= (_lo - (1 : stdgo.StdGoTypes.GoInt32))) {
                    _r = _appendRange(_r, _nextLo, _lo - (1 : stdgo.StdGoTypes.GoInt32));
                };
                _nextLo = _hi + (1 : stdgo.StdGoTypes.GoInt32);
                continue;
            };
            {
                var _c:stdgo.StdGoTypes.GoInt32 = _lo;
                stdgo.Go.cfor(_c <= _hi, _c = _c + (_stride), {
                    if (_nextLo <= (_c - (1 : stdgo.StdGoTypes.GoInt32))) {
                        _r = _appendRange(_r, _nextLo, _c - (1 : stdgo.StdGoTypes.GoInt32));
                    };
                    _nextLo = _c + (1 : stdgo.StdGoTypes.GoInt32);
                });
            };
        };
        for (__2 => _xr in _x.r32) {
            var __0:stdgo.StdGoTypes.GoInt32 = (_xr.lo : stdgo.StdGoTypes.GoRune), __1:stdgo.StdGoTypes.GoInt32 = (_xr.hi : stdgo.StdGoTypes.GoRune), __2:stdgo.StdGoTypes.GoInt32 = (_xr.stride : stdgo.StdGoTypes.GoRune), _stride:stdgo.StdGoTypes.GoInt32 = __2, _hi:stdgo.StdGoTypes.GoInt32 = __1, _lo:stdgo.StdGoTypes.GoInt32 = __0;
            if (_stride == ((1 : stdgo.StdGoTypes.GoInt32))) {
                if (_nextLo <= (_lo - (1 : stdgo.StdGoTypes.GoInt32))) {
                    _r = _appendRange(_r, _nextLo, _lo - (1 : stdgo.StdGoTypes.GoInt32));
                };
                _nextLo = _hi + (1 : stdgo.StdGoTypes.GoInt32);
                continue;
            };
            {
                var _c:stdgo.StdGoTypes.GoInt32 = _lo;
                stdgo.Go.cfor(_c <= _hi, _c = _c + (_stride), {
                    if (_nextLo <= (_c - (1 : stdgo.StdGoTypes.GoInt32))) {
                        _r = _appendRange(_r, _nextLo, _c - (1 : stdgo.StdGoTypes.GoInt32));
                    };
                    _nextLo = _c + (1 : stdgo.StdGoTypes.GoInt32);
                });
            };
        };
        if (_nextLo <= (1114111 : stdgo.StdGoTypes.GoInt32)) {
            _r = _appendRange(_r, _nextLo, (1114111 : stdgo.StdGoTypes.GoInt32));
        };
        return _r;
    }
/**
    // negateClass overwrites r and returns r's negation.
    // It assumes the class r is already clean.
**/
function _negateClass(_r:stdgo.Slice<stdgo.StdGoTypes.GoRune>):stdgo.Slice<stdgo.StdGoTypes.GoRune> {
        var _nextLo:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
        var _w:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_r.length), _i = _i + ((2 : stdgo.StdGoTypes.GoInt)), {
                var __0:stdgo.StdGoTypes.GoInt32 = _r[(_i : stdgo.StdGoTypes.GoInt)], __1:stdgo.StdGoTypes.GoInt32 = _r[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)], _hi:stdgo.StdGoTypes.GoInt32 = __1, _lo:stdgo.StdGoTypes.GoInt32 = __0;
                if (_nextLo <= (_lo - (1 : stdgo.StdGoTypes.GoInt32))) {
                    _r[(_w : stdgo.StdGoTypes.GoInt)] = _nextLo;
                    _r[(_w + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _lo - (1 : stdgo.StdGoTypes.GoInt32);
                    _w = _w + ((2 : stdgo.StdGoTypes.GoInt));
                };
                _nextLo = _hi + (1 : stdgo.StdGoTypes.GoInt32);
            });
        };
        _r = (_r.__slice__(0, _w) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
        if (_nextLo <= (1114111 : stdgo.StdGoTypes.GoInt32)) {
            _r = (_r.__append__(_nextLo, (1114111 : stdgo.StdGoTypes.GoInt32)));
        };
        return _r;
    }
function _checkUTF8(_s:stdgo.GoString):stdgo.Error {
        while (_s != (stdgo.Go.str())) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__()), _rune:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _size:stdgo.StdGoTypes.GoInt = __tmp__._1;
            if ((_rune == (65533 : stdgo.StdGoTypes.GoInt32)) && (_size == (1 : stdgo.StdGoTypes.GoInt))) {
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid UTF-8" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : _s?.__copy__() } : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>));
            };
            _s = (_s.__slice__(_size) : stdgo.GoString)?.__copy__();
        };
        return (null : stdgo.Error);
    }
function _nextRune(_s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _c:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), _t:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__()), _c:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _size:stdgo.StdGoTypes.GoInt = __tmp__._1;
        if ((_c == (65533 : stdgo.StdGoTypes.GoInt32)) && (_size == (1 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid UTF-8" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : _s?.__copy__() } : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        return { _0 : _c, _1 : (_s.__slice__(_size) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
    }
function _isalnum(_c:stdgo.StdGoTypes.GoRune):Bool {
        return ((((48 : stdgo.StdGoTypes.GoInt32) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoInt32))) || (((65 : stdgo.StdGoTypes.GoInt32) <= _c) && (_c <= (90 : stdgo.StdGoTypes.GoInt32)))) || (((97 : stdgo.StdGoTypes.GoInt32) <= _c) && (_c <= (122 : stdgo.StdGoTypes.GoInt32)));
    }
function _unhex(_c:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
        if (((48 : stdgo.StdGoTypes.GoInt32) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoInt32))) {
            return _c - (48 : stdgo.StdGoTypes.GoInt32);
        };
        if (((97 : stdgo.StdGoTypes.GoInt32) <= _c) && (_c <= (102 : stdgo.StdGoTypes.GoInt32))) {
            return (_c - (97 : stdgo.StdGoTypes.GoInt32)) + (10 : stdgo.StdGoTypes.GoInt32);
        };
        if (((65 : stdgo.StdGoTypes.GoInt32) <= _c) && (_c <= (70 : stdgo.StdGoTypes.GoInt32))) {
            return (_c - (65 : stdgo.StdGoTypes.GoInt32)) + (10 : stdgo.StdGoTypes.GoInt32);
        };
        return (-1 : stdgo.StdGoTypes.GoInt32);
    }
function testParseSimple(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        _testParseDump(_t, _parseTests, (204 : stdgo.regexp.syntax.Syntax.Flags));
    }
function testParseFoldCase(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        _testParseDump(_t, _foldcaseTests, (1 : stdgo.regexp.syntax.Syntax.Flags));
    }
function testParseLiteral(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        _testParseDump(_t, _literalTests, (2 : stdgo.regexp.syntax.Syntax.Flags));
    }
function testParseMatchNL(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        _testParseDump(_t, _matchnlTests, (12 : stdgo.regexp.syntax.Syntax.Flags));
    }
function testParseNoMatchNL(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        _testParseDump(_t, _nomatchnlTests, (0 : stdgo.regexp.syntax.Syntax.Flags));
    }
/**
    // Test Parse -> Dump.
**/
function _testParseDump(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>, _tests:stdgo.Slice<T_parseTest>, _flags:Flags):Void {
        for (__1 => _tt in _tests) {
            var __tmp__ = parse(_tt.regexp?.__copy__(), _flags), _re:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Parse(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_err));
                continue;
            };
            if (_tt.dump == (stdgo.Go.str())) {
                continue;
            };
            var _d:stdgo.GoString = _dump(_re)?.__copy__();
            if (_d != (_tt.dump)) {
                _t.errorf(("Parse(%#q).Dump() = %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_tt.dump));
            };
        };
    }
/**
    // dump prints a string representation of the regexp showing
    // the structure explicitly.
**/
function _dump(_re:stdgo.StdGoTypes.Ref<Regexp>):stdgo.GoString {
        var _b:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _dumpRegexp((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), _re);
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
/**
    // dumpRegexp writes an encoding of the syntax tree for the regexp re to b.
    // It is used during testing to distinguish between parses that might print
    // the same using re's String method.
**/
function _dumpRegexp(_b:stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>, _re:stdgo.StdGoTypes.Ref<Regexp>):Void {
        if (((_re.op : stdgo.StdGoTypes.GoInt) >= _opNames.length) || (_opNames[(_re.op : stdgo.StdGoTypes.GoInt)] == stdgo.Go.str())) {
            stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface(_b), ("op%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_re.op)));
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
                                _b.writeByte((110 : stdgo.StdGoTypes.GoUInt8));
                            };
                            _b.writeString(_opNames[(_re.op : stdgo.StdGoTypes.GoInt)]?.__copy__());
                            break;
                        } else if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                            if ((_re.rune.length) > (1 : stdgo.StdGoTypes.GoInt)) {
                                _b.writeString(("str" : stdgo.GoString));
                            } else {
                                _b.writeString(("lit" : stdgo.GoString));
                            };
                            if (_re.flags & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                                for (__1 => _r in _re.rune) {
                                    if (stdgo.unicode.Unicode.simpleFold(_r) != (_r)) {
                                        _b.writeString(("fold" : stdgo.GoString));
                                        break;
                                    };
                                };
                            };
                            break;
                        } else {
                            _b.writeString(_opNames[(_re.op : stdgo.StdGoTypes.GoInt)]?.__copy__());
                        };
                    };
                    break;
                };
            };
        };
        _b.writeByte((123 : stdgo.StdGoTypes.GoUInt8));
        {
            final __value__ = _re.op;
            if (__value__ == ((10 : stdgo.regexp.syntax.Syntax.Op))) {
                if (_re.flags & (256 : stdgo.regexp.syntax.Syntax.Flags) == ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                    _b.writeString(("\\z" : stdgo.GoString));
                };
            } else if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                for (__2 => _r in _re.rune) {
                    _b.writeRune(_r);
                };
            } else if (__value__ == ((18 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((19 : stdgo.regexp.syntax.Syntax.Op))) {
                for (__3 => _sub in _re.sub) {
                    _dumpRegexp(_b, _sub);
                };
            } else if (__value__ == ((14 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo.regexp.syntax.Syntax.Op))) {
                _dumpRegexp(_b, _re.sub[(0 : stdgo.StdGoTypes.GoInt)]);
            } else if (__value__ == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface(_b), ("%d,%d " : stdgo.GoString), stdgo.Go.toInterface(_re.min), stdgo.Go.toInterface(_re.max));
                _dumpRegexp(_b, _re.sub[(0 : stdgo.StdGoTypes.GoInt)]);
            } else if (__value__ == ((13 : stdgo.regexp.syntax.Syntax.Op))) {
                if (_re.name != (stdgo.Go.str())) {
                    _b.writeString(_re.name?.__copy__());
                    _b.writeByte((58 : stdgo.StdGoTypes.GoUInt8));
                };
                _dumpRegexp(_b, _re.sub[(0 : stdgo.StdGoTypes.GoInt)]);
            } else if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.Op))) {
                var _sep:stdgo.GoString = stdgo.Go.str()?.__copy__();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (_re.rune.length), _i = _i + ((2 : stdgo.StdGoTypes.GoInt)), {
                        _b.writeString(_sep?.__copy__());
                        _sep = (" " : stdgo.GoString);
                        var __0:stdgo.StdGoTypes.GoInt32 = _re.rune[(_i : stdgo.StdGoTypes.GoInt)], __1:stdgo.StdGoTypes.GoInt32 = _re.rune[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)], _hi:stdgo.StdGoTypes.GoInt32 = __1, _lo:stdgo.StdGoTypes.GoInt32 = __0;
                        if (_lo == (_hi)) {
                            stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface(_b), ("%#x" : stdgo.GoString), stdgo.Go.toInterface(_lo));
                        } else {
                            stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface(_b), ("%#x-%#x" : stdgo.GoString), stdgo.Go.toInterface(_lo), stdgo.Go.toInterface(_hi));
                        };
                    });
                };
            };
        };
        _b.writeByte((125 : stdgo.StdGoTypes.GoUInt8));
    }
function _mkCharClass(_f:stdgo.StdGoTypes.GoRune -> Bool):stdgo.GoString {
        var _re = (stdgo.Go.setRef(({ op : (4 : stdgo.regexp.syntax.Syntax.Op) } : stdgo.regexp.syntax.Syntax.Regexp)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
        var _lo:stdgo.StdGoTypes.GoInt32 = ((-1 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune);
        {
            var _i:stdgo.StdGoTypes.GoInt32 = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune);
            stdgo.Go.cfor(_i <= (1114111 : stdgo.StdGoTypes.GoInt32), _i++, {
                if (_f(_i)) {
                    if (_lo < (0 : stdgo.StdGoTypes.GoInt32)) {
                        _lo = _i;
                    };
                } else {
                    if (_lo >= (0 : stdgo.StdGoTypes.GoInt32)) {
                        _re.rune = (_re.rune.__append__(_lo, _i - (1 : stdgo.StdGoTypes.GoInt32)));
                        _lo = (-1 : stdgo.StdGoTypes.GoInt32);
                    };
                };
            });
        };
        if (_lo >= (0 : stdgo.StdGoTypes.GoInt32)) {
            _re.rune = (_re.rune.__append__(_lo, (1114111 : stdgo.StdGoTypes.GoInt32)));
        };
        return _dump(_re)?.__copy__();
    }
function _isUpperFold(_r:stdgo.StdGoTypes.GoRune):Bool {
        if (stdgo.unicode.Unicode.isUpper(_r)) {
            return true;
        };
        var _c:stdgo.StdGoTypes.GoInt32 = stdgo.unicode.Unicode.simpleFold(_r);
        while (_c != (_r)) {
            if (stdgo.unicode.Unicode.isUpper(_c)) {
                return true;
            };
            _c = stdgo.unicode.Unicode.simpleFold(_c);
        };
        return false;
    }
function testFoldConstants(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _last:stdgo.StdGoTypes.GoInt32 = ((-1 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune);
        {
            var _i:stdgo.StdGoTypes.GoInt32 = ((0 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune);
            stdgo.Go.cfor(_i <= (1114111 : stdgo.StdGoTypes.GoInt32), _i++, {
                if (stdgo.unicode.Unicode.simpleFold(_i) == (_i)) {
                    continue;
                };
                if ((_last == (-1 : stdgo.StdGoTypes.GoInt32)) && ((65 : stdgo.StdGoTypes.GoInt32) != _i)) {
                    _t.errorf(("minFold=%#U should be %#U" : stdgo.GoString), stdgo.Go.toInterface((65 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(_i));
                };
                _last = _i;
            });
        };
        if ((125251 : stdgo.StdGoTypes.GoInt32) != (_last)) {
            _t.errorf(("maxFold=%#U should be %#U" : stdgo.GoString), stdgo.Go.toInterface((125251 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(_last));
        };
    }
function testAppendRangeCollapse(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _r:stdgo.Slice<stdgo.StdGoTypes.GoRune> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
        {
            var _i:stdgo.StdGoTypes.GoInt32 = ((65 : stdgo.StdGoTypes.GoInt32) : stdgo.StdGoTypes.GoRune);
            stdgo.Go.cfor(_i <= (90 : stdgo.StdGoTypes.GoInt32), _i++, {
                _r = _appendRange(_r, _i, _i);
                _r = _appendRange(_r, (_i + (97 : stdgo.StdGoTypes.GoInt32)) - (65 : stdgo.StdGoTypes.GoInt32), (_i + (97 : stdgo.StdGoTypes.GoInt32)) - (65 : stdgo.StdGoTypes.GoInt32));
            });
        };
        if ((_r : stdgo.GoString) != (("AZaz" : stdgo.GoString))) {
            _t.errorf(("appendRange interlaced A-Z a-z = %s, want AZaz" : stdgo.GoString), stdgo.Go.toInterface((_r : stdgo.GoString)));
        };
    }
function testParseInvalidRegexps(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (__1 => _regexp in _invalidRegexps) {
            {
                var __tmp__ = parse(_regexp?.__copy__(), (212 : stdgo.regexp.syntax.Syntax.Flags)), _re:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, Perl) = %s, should have failed" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_dump(_re)));
                };
            };
            {
                var __tmp__ = parse(_regexp?.__copy__(), (0 : stdgo.regexp.syntax.Syntax.Flags)), _re:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, POSIX) = %s, should have failed" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_dump(_re)));
                };
            };
        };
        for (__18 => _regexp in _onlyPerl) {
            {
                var __tmp__ = parse(_regexp?.__copy__(), (212 : stdgo.regexp.syntax.Syntax.Flags)), __19:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(%#q, Perl): %v" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = parse(_regexp?.__copy__(), (0 : stdgo.regexp.syntax.Syntax.Flags)), _re:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, POSIX) = %s, should have failed" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_dump(_re)));
                };
            };
        };
        for (__36 => _regexp in _onlyPOSIX) {
            {
                var __tmp__ = parse(_regexp?.__copy__(), (212 : stdgo.regexp.syntax.Syntax.Flags)), _re:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, Perl) = %s, should have failed" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_dump(_re)));
                };
            };
            {
                var __tmp__ = parse(_regexp?.__copy__(), (0 : stdgo.regexp.syntax.Syntax.Flags)), __45:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(%#q, POSIX): %v" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function testToStringEquivalentParse(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (__1 => _tt in _parseTests) {
            var __tmp__ = parse(_tt.regexp?.__copy__(), (204 : stdgo.regexp.syntax.Syntax.Flags)), _re:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Parse(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_err));
                continue;
            };
            if (_tt.dump == (stdgo.Go.str())) {
                continue;
            };
            var _d:stdgo.GoString = _dump(_re)?.__copy__();
            if (_d != (_tt.dump)) {
                _t.errorf(("Parse(%#q).Dump() = %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_tt.dump));
                continue;
            };
            var _s:stdgo.GoString = (_re.string() : stdgo.GoString)?.__copy__();
            if (_s != (_tt.regexp)) {
                var __tmp__ = parse(_s?.__copy__(), (204 : stdgo.regexp.syntax.Syntax.Flags)), _nre:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(%#q.String() = %#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
                    continue;
                };
                var _nd:stdgo.GoString = _dump(_nre)?.__copy__();
                if (_d != (_nd)) {
                    _t.errorf(("Parse(%#q) -> %#q; %#q vs %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_nd));
                };
                var _ns:stdgo.GoString = (_nre.string() : stdgo.GoString)?.__copy__();
                if (_s != (_ns)) {
                    _t.errorf(("Parse(%#q) -> %#q -> %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_ns));
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
function emptyOpContext(_r1:stdgo.StdGoTypes.GoRune, _r2:stdgo.StdGoTypes.GoRune):EmptyOp {
        var _op:EmptyOp = (32 : stdgo.regexp.syntax.Syntax.EmptyOp);
        var _boundary:stdgo.StdGoTypes.GoByte = (0 : stdgo.StdGoTypes.GoUInt8);
        if (isWordChar(_r1)) {
            _boundary = (1 : stdgo.StdGoTypes.GoUInt8);
        } else if (_r1 == ((10 : stdgo.StdGoTypes.GoInt32))) {
            _op = _op | ((1 : stdgo.regexp.syntax.Syntax.EmptyOp));
        } else if (_r1 < (0 : stdgo.StdGoTypes.GoInt32)) {
            _op = _op | ((5 : stdgo.regexp.syntax.Syntax.EmptyOp));
        };
        if (isWordChar(_r2)) {
            _boundary = _boundary ^ ((1 : stdgo.StdGoTypes.GoUInt8));
        } else if (_r2 == ((10 : stdgo.StdGoTypes.GoInt32))) {
            _op = _op | ((2 : stdgo.regexp.syntax.Syntax.EmptyOp));
        } else if (_r2 < (0 : stdgo.StdGoTypes.GoInt32)) {
            _op = _op | ((10 : stdgo.regexp.syntax.Syntax.EmptyOp));
        };
        if (_boundary != ((0 : stdgo.StdGoTypes.GoUInt8))) {
            _op = _op ^ ((48 : stdgo.regexp.syntax.Syntax.EmptyOp));
        };
        return _op;
    }
/**
    // IsWordChar reports whether r is considered a “word character”
    // during the evaluation of the \b and \B zero-width assertions.
    // These assertions are ASCII-only: the word characters are [A-Za-z0-9_].
**/
function isWordChar(_r:stdgo.StdGoTypes.GoRune):Bool {
        return (((((97 : stdgo.StdGoTypes.GoInt32) <= _r) && (_r <= (122 : stdgo.StdGoTypes.GoInt32))) || (((65 : stdgo.StdGoTypes.GoInt32) <= _r) && (_r <= (90 : stdgo.StdGoTypes.GoInt32)))) || (((48 : stdgo.StdGoTypes.GoInt32) <= _r) && (_r <= (57 : stdgo.StdGoTypes.GoInt32)))) || (_r == (95 : stdgo.StdGoTypes.GoInt32));
    }
function _bw(_b:stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>, _args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        for (__1 => _s in _args) {
            _b.writeString(_s?.__copy__());
        };
    }
function _dumpProg(_b:stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>, _p:stdgo.StdGoTypes.Ref<Prog>):Void {
        for (_j in 0 ... _p.inst.length.toBasic()) {
            var _i = (stdgo.Go.setRef(_p.inst[(_j : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Inst>);
            var _pc:stdgo.GoString = stdgo.strconv.Strconv.itoa(_j)?.__copy__();
            if ((_pc.length) < (3 : stdgo.StdGoTypes.GoInt)) {
                _b.writeString((("   " : stdgo.GoString).__slice__((_pc.length)) : stdgo.GoString)?.__copy__());
            };
            if (_j == (_p.start)) {
                _pc = _pc + (("*" : stdgo.GoString))?.__copy__();
            };
            _bw(_b, _pc?.__copy__(), ("\t" : stdgo.GoString));
            _dumpInst(_b, _i);
            _bw(_b, ("\n" : stdgo.GoString));
        };
    }
function _u32(_i:stdgo.StdGoTypes.GoUInt32):stdgo.GoString {
        return stdgo.strconv.Strconv.formatUint((_i : stdgo.StdGoTypes.GoUInt64), (10 : stdgo.StdGoTypes.GoInt))?.__copy__();
    }
function _dumpInst(_b:stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>, _i:stdgo.StdGoTypes.Ref<Inst>):Void {
        {
            final __value__ = _i.op;
            if (__value__ == ((0 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("alt -> " : stdgo.GoString), _u32(_i.out)?.__copy__(), (", " : stdgo.GoString), _u32(_i.arg)?.__copy__());
            } else if (__value__ == ((1 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("altmatch -> " : stdgo.GoString), _u32(_i.out)?.__copy__(), (", " : stdgo.GoString), _u32(_i.arg)?.__copy__());
            } else if (__value__ == ((2 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("cap " : stdgo.GoString), _u32(_i.arg)?.__copy__(), (" -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            } else if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("empty " : stdgo.GoString), _u32(_i.arg)?.__copy__(), (" -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            } else if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("match" : stdgo.GoString));
            } else if (__value__ == ((5 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("fail" : stdgo.GoString));
            } else if (__value__ == ((6 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("nop -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            } else if (__value__ == ((7 : stdgo.regexp.syntax.Syntax.InstOp))) {
                if (_i.rune == null) {
                    _bw(_b, ("rune <nil>" : stdgo.GoString));
                };
                _bw(_b, ("rune " : stdgo.GoString), stdgo.strconv.Strconv.quoteToASCII((_i.rune : stdgo.GoString)?.__copy__())?.__copy__());
                if ((_i.arg : Flags) & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                    _bw(_b, ("/i" : stdgo.GoString));
                };
                _bw(_b, (" -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            } else if (__value__ == ((8 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("rune1 " : stdgo.GoString), stdgo.strconv.Strconv.quoteToASCII((_i.rune : stdgo.GoString)?.__copy__())?.__copy__(), (" -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            } else if (__value__ == ((9 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("any -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            } else if (__value__ == ((10 : stdgo.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("anynotnl -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            };
        };
    }
function testCompile(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (__1 => _tt in _compileTests) {
            var __tmp__ = parse(_tt.regexp?.__copy__(), (212 : stdgo.regexp.syntax.Syntax.Flags)), _re:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, __2:stdgo.Error = __tmp__._1;
            var __tmp__ = compile(_re), _p:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Prog> = __tmp__._0, __3:stdgo.Error = __tmp__._1;
            var _s:stdgo.GoString = (_p.string() : stdgo.GoString)?.__copy__();
            if (_s != (_tt.prog)) {
                _t.errorf(("compiled %#q:\n--- have\n%s---\n--- want\n%s---" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt.prog));
            };
        };
    }
function benchmarkEmptyOpContext(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                var _r1:stdgo.StdGoTypes.GoRune = (-1 : stdgo.StdGoTypes.GoInt32);
                for (__9 => _r2 in ("foo, bar, baz\nsome input text.\n" : stdgo.GoString)) {
                    emptyOpContext(_r1, _r2);
                    _r1 = _r2;
                };
                emptyOpContext(_r1, (-1 : stdgo.StdGoTypes.GoInt32));
            });
        };
    }
function benchmarkIsWordChar(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                for (__9 => _r in ("Don\'t communicate by sharing memory, share memory by communicating." : stdgo.GoString)) {
                    _sink = stdgo.Go.toInterface(isWordChar(_r));
                };
            });
        };
        if (_sink == null) {
            _b.fatal(stdgo.Go.toInterface(("Benchmark did not run" : stdgo.GoString)));
        };
        _sink = (null : stdgo.StdGoTypes.AnyInterface);
    }
/**
    // writeRegexp writes the Perl syntax for the regular expression re to b.
**/
function _writeRegexp(_b:stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>, _re:stdgo.StdGoTypes.Ref<Regexp>):Void {
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _re.op;
                    if (__value__ == ((1 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("[^\\x00-\\x{10FFFF}]" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((2 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?:)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                        if (_re.flags & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                            _b.writeString(("(?i:" : stdgo.GoString));
                        };
                        for (__1 => _r in _re.rune) {
                            _escape(_b, _r, false);
                        };
                        if (_re.flags & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                            _b.writeString((")" : stdgo.GoString));
                        };
                        break;
                    } else if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.Op))) {
                        if ((_re.rune.length) % (2 : stdgo.StdGoTypes.GoInt) != ((0 : stdgo.StdGoTypes.GoInt))) {
                            _b.writeString(("[invalid char class]" : stdgo.GoString));
                            break;
                        };
                        _b.writeRune((91 : stdgo.StdGoTypes.GoInt32));
                        if ((_re.rune.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
                            _b.writeString(("^\\x00-\\x{10FFFF}" : stdgo.GoString));
                        } else if (((_re.rune[(0 : stdgo.StdGoTypes.GoInt)] == (0 : stdgo.StdGoTypes.GoInt32)) && (_re.rune[((_re.rune.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (1114111 : stdgo.StdGoTypes.GoInt32))) && (_re.rune.length > (2 : stdgo.StdGoTypes.GoInt))) {
                            _b.writeRune((94 : stdgo.StdGoTypes.GoInt32));
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < (_re.rune.length - (1 : stdgo.StdGoTypes.GoInt)), _i = _i + ((2 : stdgo.StdGoTypes.GoInt)), {
                                    var __0:stdgo.StdGoTypes.GoInt32 = _re.rune[(_i : stdgo.StdGoTypes.GoInt)] + (1 : stdgo.StdGoTypes.GoInt32), __1:stdgo.StdGoTypes.GoInt32 = _re.rune[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] - (1 : stdgo.StdGoTypes.GoInt32), _hi:stdgo.StdGoTypes.GoInt32 = __1, _lo:stdgo.StdGoTypes.GoInt32 = __0;
                                    _escape(_b, _lo, _lo == ((45 : stdgo.StdGoTypes.GoInt32)));
                                    if (_lo != (_hi)) {
                                        _b.writeRune((45 : stdgo.StdGoTypes.GoInt32));
                                        _escape(_b, _hi, _hi == ((45 : stdgo.StdGoTypes.GoInt32)));
                                    };
                                });
                            };
                        } else {
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < (_re.rune.length), _i = _i + ((2 : stdgo.StdGoTypes.GoInt)), {
                                    var __0:stdgo.StdGoTypes.GoInt32 = _re.rune[(_i : stdgo.StdGoTypes.GoInt)], __1:stdgo.StdGoTypes.GoInt32 = _re.rune[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)], _hi:stdgo.StdGoTypes.GoInt32 = __1, _lo:stdgo.StdGoTypes.GoInt32 = __0;
                                    _escape(_b, _lo, _lo == ((45 : stdgo.StdGoTypes.GoInt32)));
                                    if (_lo != (_hi)) {
                                        _b.writeRune((45 : stdgo.StdGoTypes.GoInt32));
                                        _escape(_b, _hi, _hi == ((45 : stdgo.StdGoTypes.GoInt32)));
                                    };
                                });
                            };
                        };
                        _b.writeRune((93 : stdgo.StdGoTypes.GoInt32));
                        break;
                    } else if (__value__ == ((5 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?-s:.)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((6 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?s:.)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((7 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?m:^)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((8 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?m:$)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((9 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("\\A" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((10 : stdgo.regexp.syntax.Syntax.Op))) {
                        if (_re.flags & (256 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                            _b.writeString(("(?-m:$)" : stdgo.GoString));
                        } else {
                            _b.writeString(("\\z" : stdgo.GoString));
                        };
                        break;
                    } else if (__value__ == ((11 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("\\b" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((12 : stdgo.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("\\B" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((13 : stdgo.regexp.syntax.Syntax.Op))) {
                        if (_re.name != (stdgo.Go.str())) {
                            _b.writeString(("(?P<" : stdgo.GoString));
                            _b.writeString(_re.name?.__copy__());
                            _b.writeRune((62 : stdgo.StdGoTypes.GoInt32));
                        } else {
                            _b.writeRune((40 : stdgo.StdGoTypes.GoInt32));
                        };
                        if (_re.sub[(0 : stdgo.StdGoTypes.GoInt)].op != ((2 : stdgo.regexp.syntax.Syntax.Op))) {
                            _writeRegexp(_b, _re.sub[(0 : stdgo.StdGoTypes.GoInt)]);
                        };
                        _b.writeRune((41 : stdgo.StdGoTypes.GoInt32));
                        break;
                    } else if (__value__ == ((14 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                        {
                            var _sub = _re.sub[(0 : stdgo.StdGoTypes.GoInt)];
                            if ((_sub.op > (13 : stdgo.regexp.syntax.Syntax.Op)) || ((_sub.op == (3 : stdgo.regexp.syntax.Syntax.Op)) && (_sub.rune.length > (1 : stdgo.StdGoTypes.GoInt)))) {
                                _b.writeString(("(?:" : stdgo.GoString));
                                _writeRegexp(_b, _sub);
                                _b.writeString((")" : stdgo.GoString));
                            } else {
                                _writeRegexp(_b, _sub);
                            };
                        };
                        {
                            final __value__ = _re.op;
                            if (__value__ == ((14 : stdgo.regexp.syntax.Syntax.Op))) {
                                _b.writeRune((42 : stdgo.StdGoTypes.GoInt32));
                            } else if (__value__ == ((15 : stdgo.regexp.syntax.Syntax.Op))) {
                                _b.writeRune((43 : stdgo.StdGoTypes.GoInt32));
                            } else if (__value__ == ((16 : stdgo.regexp.syntax.Syntax.Op))) {
                                _b.writeRune((63 : stdgo.StdGoTypes.GoInt32));
                            } else if (__value__ == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                                _b.writeRune((123 : stdgo.StdGoTypes.GoInt32));
                                _b.writeString(stdgo.strconv.Strconv.itoa(_re.min)?.__copy__());
                                if (_re.max != (_re.min)) {
                                    _b.writeRune((44 : stdgo.StdGoTypes.GoInt32));
                                    if (_re.max >= (0 : stdgo.StdGoTypes.GoInt)) {
                                        _b.writeString(stdgo.strconv.Strconv.itoa(_re.max)?.__copy__());
                                    };
                                };
                                _b.writeRune((125 : stdgo.StdGoTypes.GoInt32));
                            };
                        };
                        if (_re.flags & (32 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                            _b.writeRune((63 : stdgo.StdGoTypes.GoInt32));
                        };
                        break;
                    } else if (__value__ == ((18 : stdgo.regexp.syntax.Syntax.Op))) {
                        for (__2 => _sub in _re.sub) {
                            if (_sub.op == ((19 : stdgo.regexp.syntax.Syntax.Op))) {
                                _b.writeString(("(?:" : stdgo.GoString));
                                _writeRegexp(_b, _sub);
                                _b.writeString((")" : stdgo.GoString));
                            } else {
                                _writeRegexp(_b, _sub);
                            };
                        };
                        break;
                    } else if (__value__ == ((19 : stdgo.regexp.syntax.Syntax.Op))) {
                        for (_i => _sub in _re.sub) {
                            if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                                _b.writeRune((124 : stdgo.StdGoTypes.GoInt32));
                            };
                            _writeRegexp(_b, _sub);
                        };
                        break;
                    } else {
                        _b.writeString(("<invalid op" : stdgo.GoString) + stdgo.strconv.Strconv.itoa((_re.op : stdgo.StdGoTypes.GoInt))?.__copy__() + (">" : stdgo.GoString)?.__copy__()?.__copy__());
                    };
                };
                break;
            };
        };
    }
function _escape(_b:stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>, _r:stdgo.StdGoTypes.GoRune, _force:Bool):Void {
        if (stdgo.unicode.Unicode.isPrint(_r)) {
            if (stdgo.strings.Strings.containsRune(("\\.+*?()|[]{}^$" : stdgo.GoString), _r) || _force) {
                _b.writeRune((92 : stdgo.StdGoTypes.GoInt32));
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
                    if (__value__ == ((7 : stdgo.StdGoTypes.GoInt32))) {
                        _b.writeString(("\\a" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((12 : stdgo.StdGoTypes.GoInt32))) {
                        _b.writeString(("\\f" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((10 : stdgo.StdGoTypes.GoInt32))) {
                        _b.writeString(("\\n" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((13 : stdgo.StdGoTypes.GoInt32))) {
                        _b.writeString(("\\r" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((9 : stdgo.StdGoTypes.GoInt32))) {
                        _b.writeString(("\\t" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((11 : stdgo.StdGoTypes.GoInt32))) {
                        _b.writeString(("\\v" : stdgo.GoString));
                        break;
                    } else {
                        if (_r < (256 : stdgo.StdGoTypes.GoInt32)) {
                            _b.writeString(("\\x" : stdgo.GoString));
                            var _s:stdgo.GoString = stdgo.strconv.Strconv.formatInt((_r : stdgo.StdGoTypes.GoInt64), (16 : stdgo.StdGoTypes.GoInt))?.__copy__();
                            if ((_s.length) == ((1 : stdgo.StdGoTypes.GoInt))) {
                                _b.writeRune((48 : stdgo.StdGoTypes.GoInt32));
                            };
                            _b.writeString(_s?.__copy__());
                            break;
                        };
                        _b.writeString(("\\x{" : stdgo.GoString));
                        _b.writeString(stdgo.strconv.Strconv.formatInt((_r : stdgo.StdGoTypes.GoInt64), (16 : stdgo.StdGoTypes.GoInt))?.__copy__());
                        _b.writeString(("}" : stdgo.GoString));
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
function _simplify1(_op:Op, _flags:Flags, _sub:stdgo.StdGoTypes.Ref<Regexp>, _re:stdgo.StdGoTypes.Ref<Regexp>):stdgo.StdGoTypes.Ref<Regexp> {
        if (_sub.op == ((2 : stdgo.regexp.syntax.Syntax.Op))) {
            return _sub;
        };
        if ((_op == _sub.op) && ((_flags & (32 : stdgo.regexp.syntax.Syntax.Flags)) == (_sub.flags & (32 : stdgo.regexp.syntax.Syntax.Flags)))) {
            return _sub;
        };
        if (((((_re != null) && ((_re : Dynamic).__nil__ == null || !(_re : Dynamic).__nil__)) && (_re.op == _op)) && ((_re.flags & (32 : stdgo.regexp.syntax.Syntax.Flags)) == (_flags & (32 : stdgo.regexp.syntax.Syntax.Flags)))) && (_sub == _re.sub[(0 : stdgo.StdGoTypes.GoInt)])) {
            return _re;
        };
        _re = (stdgo.Go.setRef(({ op : _op, flags : _flags } : stdgo.regexp.syntax.Syntax.Regexp)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
        _re.sub = ((_re.sub0.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>).__append__(_sub));
        return _re;
    }
function testSimplify(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (__1 => _tt in _simplifyTests) {
            var __tmp__ = parse(_tt.regexp?.__copy__(), (204 : stdgo.regexp.syntax.Syntax.Flags)), _re:stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Parse(%#q) = error %v" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_err));
                continue;
            };
            var _s:stdgo.GoString = (_re.simplify().string() : stdgo.GoString)?.__copy__();
            if (_s != (_tt.simple)) {
                _t.errorf(("Simplify(%#q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt.simple));
            };
        };
    }
class T_patchList_asInterface {
    @:keep
    public dynamic function _append(_p:stdgo.StdGoTypes.Ref<Prog>, _l2:T_patchList):T_patchList return __self__.value._append(_p, _l2);
    @:keep
    public dynamic function _patch(_p:stdgo.StdGoTypes.Ref<Prog>, _val:stdgo.StdGoTypes.GoUInt32):Void __self__.value._patch(_p, _val);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_patchList>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T_patchList_asInterface) class T_patchList_static_extension {
    @:keep
    static public function _append( _l1:T_patchList, _p:stdgo.StdGoTypes.Ref<Prog>, _l2:T_patchList):T_patchList {
        @:recv var _l1:T_patchList = _l1?.__copy__();
        if (_l1._head == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            return _l2?.__copy__();
        };
        if (_l2._head == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            return _l1?.__copy__();
        };
        var _i = (stdgo.Go.setRef(_p.inst[(_l1._tail >> (1i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Inst>);
        if (_l1._tail & (1u32 : stdgo.StdGoTypes.GoUInt32) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            _i.out = _l2._head;
        } else {
            _i.arg = _l2._head;
        };
        return (new stdgo.regexp.syntax.Syntax.T_patchList(_l1._head, _l2._tail) : stdgo.regexp.syntax.Syntax.T_patchList);
    }
    @:keep
    static public function _patch( _l:T_patchList, _p:stdgo.StdGoTypes.Ref<Prog>, _val:stdgo.StdGoTypes.GoUInt32):Void {
        @:recv var _l:T_patchList = _l?.__copy__();
        var _head:stdgo.StdGoTypes.GoUInt32 = _l._head;
        while (_head != ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            var _i = (stdgo.Go.setRef(_p.inst[(_head >> (1i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Inst>);
            if (_head & (1u32 : stdgo.StdGoTypes.GoUInt32) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
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
    public dynamic function _rune(_r:stdgo.Slice<stdgo.StdGoTypes.GoRune>, _flags:Flags):T_frag return __self__.value._rune(_r, _flags);
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
    public dynamic function _cap(_arg:stdgo.StdGoTypes.GoUInt32):T_frag return __self__.value._cap(_arg);
    @:keep
    public dynamic function _fail():T_frag return __self__.value._fail();
    @:keep
    public dynamic function _nop():T_frag return __self__.value._nop();
    @:keep
    public dynamic function _inst(_op:InstOp):T_frag return __self__.value._inst(_op);
    @:keep
    public dynamic function _compile(_re:stdgo.StdGoTypes.Ref<Regexp>):T_frag return __self__.value._compile(_re);
    @:keep
    public dynamic function _init():Void __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_compiler>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T_compiler_asInterface) class T_compiler_static_extension {
    @:keep
    static public function _rune( _c:stdgo.StdGoTypes.Ref<T_compiler>, _r:stdgo.Slice<stdgo.StdGoTypes.GoRune>, _flags:Flags):T_frag {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((7 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        _f._nullable = false;
        var _i = (stdgo.Go.setRef(_c._p.inst[(_f._i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Inst>);
        _i.rune = _r;
        _flags = _flags & ((1 : stdgo.regexp.syntax.Syntax.Flags));
        if ((_r.length != (1 : stdgo.StdGoTypes.GoInt)) || (stdgo.unicode.Unicode.simpleFold(_r[(0 : stdgo.StdGoTypes.GoInt)]) == _r[(0 : stdgo.StdGoTypes.GoInt)])) {
            _flags = _flags & ((1 : stdgo.regexp.syntax.Syntax.Flags) ^ (-1i32 : stdgo.StdGoTypes.GoInt));
        };
        _i.arg = (_flags : stdgo.StdGoTypes.GoUInt32);
        _f._out = _makePatchList(_f._i << (1i64 : stdgo.StdGoTypes.GoUInt64))?.__copy__();
        if (((_flags & (1 : stdgo.regexp.syntax.Syntax.Flags)) == (0 : stdgo.regexp.syntax.Syntax.Flags)) && ((_r.length == (1 : stdgo.StdGoTypes.GoInt)) || ((_r.length == (2 : stdgo.StdGoTypes.GoInt)) && (_r[(0 : stdgo.StdGoTypes.GoInt)] == _r[(1 : stdgo.StdGoTypes.GoInt)])))) {
            _i.op = (8 : stdgo.regexp.syntax.Syntax.InstOp);
        } else if (((_r.length == (2 : stdgo.StdGoTypes.GoInt)) && (_r[(0 : stdgo.StdGoTypes.GoInt)] == (0 : stdgo.StdGoTypes.GoInt32))) && (_r[(1 : stdgo.StdGoTypes.GoInt)] == (1114111 : stdgo.StdGoTypes.GoInt32))) {
            _i.op = (9 : stdgo.regexp.syntax.Syntax.InstOp);
        } else if (((((_r.length == (4 : stdgo.StdGoTypes.GoInt)) && (_r[(0 : stdgo.StdGoTypes.GoInt)] == (0 : stdgo.StdGoTypes.GoInt32))) && (_r[(1 : stdgo.StdGoTypes.GoInt)] == (9 : stdgo.StdGoTypes.GoInt32))) && (_r[(2 : stdgo.StdGoTypes.GoInt)] == (11 : stdgo.StdGoTypes.GoInt32))) && (_r[(3 : stdgo.StdGoTypes.GoInt)] == (1114111 : stdgo.StdGoTypes.GoInt32))) {
            _i.op = (10 : stdgo.regexp.syntax.Syntax.InstOp);
        };
        return _f?.__copy__();
    }
    @:keep
    static public function _empty( _c:stdgo.StdGoTypes.Ref<T_compiler>, _op:EmptyOp):T_frag {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((3 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        _c._p.inst[(_f._i : stdgo.StdGoTypes.GoInt)].arg = (_op : stdgo.StdGoTypes.GoUInt32);
        _f._out = _makePatchList(_f._i << (1i64 : stdgo.StdGoTypes.GoUInt64))?.__copy__();
        return _f?.__copy__();
    }
    @:keep
    static public function _plus( _c:stdgo.StdGoTypes.Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
        return (new stdgo.regexp.syntax.Syntax.T_frag(_f1._i, _c._loop(_f1?.__copy__(), _nongreedy)._out?.__copy__(), _f1._nullable) : stdgo.regexp.syntax.Syntax.T_frag);
    }
    @:keep
    static public function _star( _c:stdgo.StdGoTypes.Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
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
    static public function _loop( _c:stdgo.StdGoTypes.Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((0 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        var _i = (stdgo.Go.setRef(_c._p.inst[(_f._i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Inst>);
        if (_nongreedy) {
            _i.arg = _f1._i;
            _f._out = _makePatchList(_f._i << (1i64 : stdgo.StdGoTypes.GoUInt64))?.__copy__();
        } else {
            _i.out = _f1._i;
            _f._out = _makePatchList((_f._i << (1i64 : stdgo.StdGoTypes.GoUInt64)) | (1u32 : stdgo.StdGoTypes.GoUInt32))?.__copy__();
        };
        _f1._out._patch(_c._p, _f._i);
        return _f?.__copy__();
    }
    @:keep
    static public function _quest( _c:stdgo.StdGoTypes.Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((0 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        var _i = (stdgo.Go.setRef(_c._p.inst[(_f._i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Inst>);
        if (_nongreedy) {
            _i.arg = _f1._i;
            _f._out = _makePatchList(_f._i << (1i64 : stdgo.StdGoTypes.GoUInt64))?.__copy__();
        } else {
            _i.out = _f1._i;
            _f._out = _makePatchList((_f._i << (1i64 : stdgo.StdGoTypes.GoUInt64)) | (1u32 : stdgo.StdGoTypes.GoUInt32))?.__copy__();
        };
        _f._out = _f._out._append(_c._p, _f1._out?.__copy__())?.__copy__();
        return _f?.__copy__();
    }
    @:keep
    static public function _alt( _c:stdgo.StdGoTypes.Ref<T_compiler>, _f1:T_frag, _f2:T_frag):T_frag {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
        if (_f1._i == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            return _f2?.__copy__();
        };
        if (_f2._i == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            return _f1?.__copy__();
        };
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((0 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        var _i = (stdgo.Go.setRef(_c._p.inst[(_f._i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Inst>);
        _i.out = _f1._i;
        _i.arg = _f2._i;
        _f._out = _f1._out._append(_c._p, _f2._out?.__copy__())?.__copy__();
        _f._nullable = _f1._nullable || _f2._nullable;
        return _f?.__copy__();
    }
    @:keep
    static public function _cat( _c:stdgo.StdGoTypes.Ref<T_compiler>, _f1:T_frag, _f2:T_frag):T_frag {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
        if ((_f1._i == (0u32 : stdgo.StdGoTypes.GoUInt32)) || (_f2._i == (0u32 : stdgo.StdGoTypes.GoUInt32))) {
            return (new stdgo.regexp.syntax.Syntax.T_frag() : stdgo.regexp.syntax.Syntax.T_frag);
        };
        _f1._out._patch(_c._p, _f2._i);
        return (new stdgo.regexp.syntax.Syntax.T_frag(_f1._i, _f2._out?.__copy__(), _f1._nullable && _f2._nullable) : stdgo.regexp.syntax.Syntax.T_frag);
    }
    @:keep
    static public function _cap( _c:stdgo.StdGoTypes.Ref<T_compiler>, _arg:stdgo.StdGoTypes.GoUInt32):T_frag {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((2 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        _f._out = _makePatchList(_f._i << (1i64 : stdgo.StdGoTypes.GoUInt64))?.__copy__();
        _c._p.inst[(_f._i : stdgo.StdGoTypes.GoInt)].arg = _arg;
        if (_c._p.numCap < ((_arg : stdgo.StdGoTypes.GoInt) + (1 : stdgo.StdGoTypes.GoInt))) {
            _c._p.numCap = (_arg : stdgo.StdGoTypes.GoInt) + (1 : stdgo.StdGoTypes.GoInt);
        };
        return _f?.__copy__();
    }
    @:keep
    static public function _fail( _c:stdgo.StdGoTypes.Ref<T_compiler>):T_frag {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
        return (new stdgo.regexp.syntax.Syntax.T_frag() : stdgo.regexp.syntax.Syntax.T_frag);
    }
    @:keep
    static public function _nop( _c:stdgo.StdGoTypes.Ref<T_compiler>):T_frag {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
        var _f:stdgo.regexp.syntax.Syntax.T_frag = _c._inst((6 : stdgo.regexp.syntax.Syntax.InstOp))?.__copy__();
        _f._out = _makePatchList(_f._i << (1i64 : stdgo.StdGoTypes.GoUInt64))?.__copy__();
        return _f?.__copy__();
    }
    @:keep
    static public function _inst( _c:stdgo.StdGoTypes.Ref<T_compiler>, _op:InstOp):T_frag {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
        var _f:stdgo.regexp.syntax.Syntax.T_frag = ({ _i : (_c._p.inst.length : stdgo.StdGoTypes.GoUInt32), _nullable : true } : stdgo.regexp.syntax.Syntax.T_frag);
        _c._p.inst = (_c._p.inst.__append__(({ op : _op } : stdgo.regexp.syntax.Syntax.Inst)));
        return _f?.__copy__();
    }
    @:keep
    static public function _compile( _c:stdgo.StdGoTypes.Ref<T_compiler>, _re:stdgo.StdGoTypes.Ref<Regexp>):T_frag {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
        {
            final __value__ = _re.op;
            if (__value__ == ((1 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._fail()?.__copy__();
            } else if (__value__ == ((2 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._nop()?.__copy__();
            } else if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                if ((_re.rune.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
                    return _c._nop()?.__copy__();
                };
                var _f:T_frag = ({} : stdgo.regexp.syntax.Syntax.T_frag);
                for (_j in 0 ... _re.rune.length.toBasic()) {
                    var _f1:stdgo.regexp.syntax.Syntax.T_frag = _c._rune((_re.rune.__slice__(_j, _j + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _re.flags)?.__copy__();
                    if (_j == ((0 : stdgo.StdGoTypes.GoInt))) {
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
                var _bra:stdgo.regexp.syntax.Syntax.T_frag = _c._cap((_re.cap << (1i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt32))?.__copy__();
                var _sub:stdgo.regexp.syntax.Syntax.T_frag = _c._compile(_re.sub[(0 : stdgo.StdGoTypes.GoInt)])?.__copy__();
                var _ket:stdgo.regexp.syntax.Syntax.T_frag = _c._cap(((_re.cap << (1i64 : stdgo.StdGoTypes.GoUInt64)) | (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt32))?.__copy__();
                return _c._cat(_c._cat(_bra?.__copy__(), _sub?.__copy__())?.__copy__(), _ket?.__copy__())?.__copy__();
            } else if (__value__ == ((14 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._star(_c._compile(_re.sub[(0 : stdgo.StdGoTypes.GoInt)])?.__copy__(), _re.flags & (32 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags)))?.__copy__();
            } else if (__value__ == ((15 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._plus(_c._compile(_re.sub[(0 : stdgo.StdGoTypes.GoInt)])?.__copy__(), _re.flags & (32 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags)))?.__copy__();
            } else if (__value__ == ((16 : stdgo.regexp.syntax.Syntax.Op))) {
                return _c._quest(_c._compile(_re.sub[(0 : stdgo.StdGoTypes.GoInt)])?.__copy__(), _re.flags & (32 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags)))?.__copy__();
            } else if (__value__ == ((18 : stdgo.regexp.syntax.Syntax.Op))) {
                if ((_re.sub.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
                    return _c._nop()?.__copy__();
                };
                var _f:T_frag = ({} : stdgo.regexp.syntax.Syntax.T_frag);
                for (_i => _sub in _re.sub) {
                    if (_i == ((0 : stdgo.StdGoTypes.GoInt))) {
                        _f = _c._compile(_sub)?.__copy__();
                    } else {
                        _f = _c._cat(_f?.__copy__(), _c._compile(_sub)?.__copy__())?.__copy__();
                    };
                };
                return _f?.__copy__();
            } else if (__value__ == ((19 : stdgo.regexp.syntax.Syntax.Op))) {
                var _f:T_frag = ({} : stdgo.regexp.syntax.Syntax.T_frag);
                for (__1 => _sub in _re.sub) {
                    _f = _c._alt(_f?.__copy__(), _c._compile(_sub)?.__copy__())?.__copy__();
                };
                return _f?.__copy__();
            };
        };
        throw stdgo.Go.toInterface(("regexp: unhandled case in compile" : stdgo.GoString));
    }
    @:keep
    static public function _init( _c:stdgo.StdGoTypes.Ref<T_compiler>):Void {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_compiler> = _c;
        _c._p = (stdgo.Go.setRef(({} : stdgo.regexp.syntax.Syntax.Prog)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Prog>);
        _c._p.numCap = (2 : stdgo.StdGoTypes.GoInt);
        _c._inst((5 : stdgo.regexp.syntax.Syntax.InstOp));
    }
}
class T_error_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_error>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T_error_asInterface) class T_error_static_extension {
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<T_error>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_error> = _e;
        return ("error parsing regexp: " : stdgo.GoString) + (_e.code.string() : stdgo.GoString)?.__copy__() + (": `" : stdgo.GoString)?.__copy__() + _e.expr?.__copy__() + ("`" : stdgo.GoString)?.__copy__()?.__copy__();
    }
}
class T_parser_asInterface {
    /**
        // parseClass parses a character class at the beginning of s
        // and pushes it onto the parse stack.
    **/
    @:keep
    public dynamic function _parseClass(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._parseClass(_s);
    /**
        // parseUnicodeClass parses a leading Unicode character class like \p{Han}
        // from the beginning of s. If one is present, it appends the characters to r
        // and returns the new slice r and the remainder of the string.
    **/
    @:keep
    public dynamic function _parseUnicodeClass(_s:stdgo.GoString, _r:stdgo.Slice<stdgo.StdGoTypes.GoRune>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoRune>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value._parseUnicodeClass(_s, _r);
    @:keep
    public dynamic function _appendGroup(_r:stdgo.Slice<stdgo.StdGoTypes.GoRune>, _g:T_charGroup):stdgo.Slice<stdgo.StdGoTypes.GoRune> return __self__.value._appendGroup(_r, _g);
    /**
        // parseNamedClass parses a leading POSIX named character class like [:alnum:]
        // from the beginning of s. If one is present, it appends the characters to r
        // and returns the new slice r and the remainder of the string.
    **/
    @:keep
    public dynamic function _parseNamedClass(_s:stdgo.GoString, _r:stdgo.Slice<stdgo.StdGoTypes.GoRune>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoRune>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value._parseNamedClass(_s, _r);
    /**
        // parsePerlClassEscape parses a leading Perl character class escape like \d
        // from the beginning of s. If one is present, it appends the characters to r
        // and returns the new slice r and the remainder of the string.
    **/
    @:keep
    public dynamic function _parsePerlClassEscape(_s:stdgo.GoString, _r:stdgo.Slice<stdgo.StdGoTypes.GoRune>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoRune>; var _1 : stdgo.GoString; } return __self__.value._parsePerlClassEscape(_s, _r);
    /**
        // parseClassChar parses a character class character at the beginning of s
        // and returns it.
    **/
    @:keep
    public dynamic function _parseClassChar(_s:stdgo.GoString, _wholeClass:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value._parseClassChar(_s, _wholeClass);
    /**
        // parseEscape parses an escape sequence at the beginning of s
        // and returns the rune.
    **/
    @:keep
    public dynamic function _parseEscape(_s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value._parseEscape(_s);
    /**
        // parseRightParen handles a ) in the input.
    **/
    @:keep
    public dynamic function _parseRightParen():stdgo.Error return __self__.value._parseRightParen();
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
    public dynamic function _parseVerticalBar():stdgo.Error return __self__.value._parseVerticalBar();
    /**
        // parseInt parses a decimal integer.
    **/
    @:keep
    public dynamic function _parseInt(_s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } return __self__.value._parseInt(_s);
    /**
        // parsePerlFlags parses a Perl flag setting or non-capturing group or both,
        // like (?i) or (?: or (?i:.  It removes the prefix from s and updates the parse state.
        // The caller must have ensured that s begins with "(?".
    **/
    @:keep
    public dynamic function _parsePerlFlags(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._parsePerlFlags(_s);
    /**
        // parseRepeat parses {min} (max=min) or {min,} (max=-1) or {min,max}.
        // If s is not of that form, it returns ok == false.
        // If s has the right form but the values are too big, it returns min == -1, ok == true.
    **/
    @:keep
    public dynamic function _parseRepeat(_s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.GoString; var _3 : Bool; } return __self__.value._parseRepeat(_s);
    /**
        // removeLeadingRegexp removes the leading regexp in re.
        // It returns the replacement for re.
        // If reuse is true, it passes the removed regexp (if no longer needed) to p.reuse.
    **/
    @:keep
    public dynamic function _removeLeadingRegexp(_re:stdgo.StdGoTypes.Ref<Regexp>, _reuse:Bool):stdgo.StdGoTypes.Ref<Regexp> return __self__.value._removeLeadingRegexp(_re, _reuse);
    /**
        // leadingRegexp returns the leading regexp that re begins with.
        // The regexp refers to storage in re or its children.
    **/
    @:keep
    public dynamic function _leadingRegexp(_re:stdgo.StdGoTypes.Ref<Regexp>):stdgo.StdGoTypes.Ref<Regexp> return __self__.value._leadingRegexp(_re);
    /**
        // removeLeadingString removes the first n leading runes
        // from the beginning of re. It returns the replacement for re.
    **/
    @:keep
    public dynamic function _removeLeadingString(_re:stdgo.StdGoTypes.Ref<Regexp>, _n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<Regexp> return __self__.value._removeLeadingString(_re, _n);
    /**
        // leadingString returns the leading literal string that re begins with.
        // The string refers to storage in re or its children.
    **/
    @:keep
    public dynamic function _leadingString(_re:stdgo.StdGoTypes.Ref<Regexp>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoRune>; var _1 : Flags; } return __self__.value._leadingString(_re);
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
    public dynamic function _factor(_sub:stdgo.Slice<stdgo.StdGoTypes.Ref<Regexp>>):stdgo.Slice<stdgo.StdGoTypes.Ref<Regexp>> return __self__.value._factor(_sub);
    /**
        // collapse returns the result of applying op to sub.
        // If sub contains op nodes, they all get hoisted up
        // so that there is never a concat of a concat or an
        // alternate of an alternate.
    **/
    @:keep
    public dynamic function _collapse(_subs:stdgo.Slice<stdgo.StdGoTypes.Ref<Regexp>>, _op:Op):stdgo.StdGoTypes.Ref<Regexp> return __self__.value._collapse(_subs, _op);
    /**
        // alternate replaces the top of the stack (above the topmost '(') with its alternation.
    **/
    @:keep
    public dynamic function _alternate():stdgo.StdGoTypes.Ref<Regexp> return __self__.value._alternate();
    /**
        // concat replaces the top of the stack (above the topmost '|' or '(') with its concatenation.
    **/
    @:keep
    public dynamic function _concat():stdgo.StdGoTypes.Ref<Regexp> return __self__.value._concat();
    /**
        // repeat replaces the top stack element with itself repeated according to op, min, max.
        // before is the regexp suffix starting at the repetition operator.
        // after is the regexp suffix following after the repetition operator.
        // repeat returns an updated 'after' and an error, if any.
    **/
    @:keep
    public dynamic function _repeat(_op:Op, _min:stdgo.StdGoTypes.GoInt, _max:stdgo.StdGoTypes.GoInt, _before:stdgo.GoString, _after:stdgo.GoString, _lastRepeat:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._repeat(_op, _min, _max, _before, _after, _lastRepeat);
    /**
        // op pushes a regexp with the given op onto the stack
        // and returns that regexp.
    **/
    @:keep
    public dynamic function _op(_op:Op):stdgo.StdGoTypes.Ref<Regexp> return __self__.value._op(_op);
    /**
        // literal pushes a literal regexp for the rune r on the stack.
    **/
    @:keep
    public dynamic function _literal(_r:stdgo.StdGoTypes.GoRune):Void __self__.value._literal(_r);
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
    public dynamic function _maybeConcat(_r:stdgo.StdGoTypes.GoRune, _flags:Flags):Bool return __self__.value._maybeConcat(_r, _flags);
    /**
        // push pushes the regexp re onto the parse stack and returns the regexp.
    **/
    @:keep
    public dynamic function _push(_re:stdgo.StdGoTypes.Ref<Regexp>):stdgo.StdGoTypes.Ref<Regexp> return __self__.value._push(_re);
    @:keep
    public dynamic function _calcHeight(_re:stdgo.StdGoTypes.Ref<Regexp>, _force:Bool):stdgo.StdGoTypes.GoInt return __self__.value._calcHeight(_re, _force);
    @:keep
    public dynamic function _checkHeight(_re:stdgo.StdGoTypes.Ref<Regexp>):Void __self__.value._checkHeight(_re);
    @:keep
    public dynamic function _calcSize(_re:stdgo.StdGoTypes.Ref<Regexp>, _force:Bool):stdgo.StdGoTypes.GoInt64 return __self__.value._calcSize(_re, _force);
    @:keep
    public dynamic function _checkSize(_re:stdgo.StdGoTypes.Ref<Regexp>):Void __self__.value._checkSize(_re);
    @:keep
    public dynamic function _checkLimits(_re:stdgo.StdGoTypes.Ref<Regexp>):Void __self__.value._checkLimits(_re);
    @:keep
    public dynamic function _reuse(_re:stdgo.StdGoTypes.Ref<Regexp>):Void __self__.value._reuse(_re);
    @:keep
    public dynamic function _newRegexp(_op:Op):stdgo.StdGoTypes.Ref<Regexp> return __self__.value._newRegexp(_op);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_parser>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T_parser_asInterface) class T_parser_static_extension {
    /**
        // parseClass parses a character class at the beginning of s
        // and pushes it onto the parse stack.
    **/
    @:keep
    static public function _parseClass( _p:stdgo.StdGoTypes.Ref<T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _rest:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
        var _t:stdgo.GoString = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
        var _re = _p._newRegexp((4 : stdgo.regexp.syntax.Syntax.Op));
        _re.flags = _p._flags;
        _re.rune = (_re.rune0.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
        var _sign:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
        if ((_t != stdgo.Go.str()) && (_t[(0 : stdgo.StdGoTypes.GoInt)] == (94 : stdgo.StdGoTypes.GoUInt8))) {
            _sign = (-1 : stdgo.StdGoTypes.GoInt);
            _t = (_t.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            if (_p._flags & (4 : stdgo.regexp.syntax.Syntax.Flags) == ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                _re.rune = (_re.rune.__append__((10 : stdgo.StdGoTypes.GoInt32), (10 : stdgo.StdGoTypes.GoInt32)));
            };
        };
        var _class = _re.rune;
        var _first:Bool = true;
        while (((_t == stdgo.Go.str()) || (_t[(0 : stdgo.StdGoTypes.GoInt)] != (93 : stdgo.StdGoTypes.GoUInt8))) || _first) {
            if (((((_t != stdgo.Go.str()) && (_t[(0 : stdgo.StdGoTypes.GoInt)] == (45 : stdgo.StdGoTypes.GoUInt8))) && ((_p._flags & (64 : stdgo.regexp.syntax.Syntax.Flags)) == (0 : stdgo.regexp.syntax.Syntax.Flags))) && !_first) && ((_t.length == (1 : stdgo.StdGoTypes.GoInt)) || (_t[(1 : stdgo.StdGoTypes.GoInt)] != (93 : stdgo.StdGoTypes.GoUInt8)))) {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_t.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__()), __1:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _size:stdgo.StdGoTypes.GoInt = __tmp__._1;
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid character class range" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : (_t.__slice__(0, (1 : stdgo.StdGoTypes.GoInt) + _size) : stdgo.GoString)?.__copy__() } : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
            };
            _first = false;
            if (((_t.length > (2 : stdgo.StdGoTypes.GoInt)) && (_t[(0 : stdgo.StdGoTypes.GoInt)] == (91 : stdgo.StdGoTypes.GoUInt8))) && (_t[(1 : stdgo.StdGoTypes.GoInt)] == (58 : stdgo.StdGoTypes.GoUInt8))) {
                var __tmp__ = _p._parseNamedClass(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.StdGoTypes.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                };
                if (_nclass != null) {
                    {
                        final __tmp__0 = _nclass;
                        final __tmp__1 = _nt?.__copy__();
                        _class = __tmp__0;
                        _t = __tmp__1;
                    };
                    continue;
                };
            };
            var __tmp__ = _p._parseUnicodeClass(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.StdGoTypes.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
            };
            if (_nclass != null) {
                {
                    final __tmp__0 = _nclass;
                    final __tmp__1 = _nt?.__copy__();
                    _class = __tmp__0;
                    _t = __tmp__1;
                };
                continue;
            };
            {
                var __tmp__ = _p._parsePerlClassEscape(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.StdGoTypes.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1;
                if (_nclass != null) {
                    {
                        final __tmp__0 = _nclass;
                        final __tmp__1 = _nt?.__copy__();
                        _class = __tmp__0;
                        _t = __tmp__1;
                    };
                    continue;
                };
            };
            var _rng:stdgo.GoString = _t?.__copy__();
            var __0:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), __1:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), _hi:stdgo.StdGoTypes.GoRune = __1, _lo:stdgo.StdGoTypes.GoRune = __0;
            {
                {
                    var __tmp__ = _p._parseClassChar(_t?.__copy__(), _s?.__copy__());
                    _lo = __tmp__._0;
                    _t = __tmp__._1?.__copy__();
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                };
            };
            _hi = _lo;
            if (((_t.length >= (2 : stdgo.StdGoTypes.GoInt)) && (_t[(0 : stdgo.StdGoTypes.GoInt)] == (45 : stdgo.StdGoTypes.GoUInt8))) && (_t[(1 : stdgo.StdGoTypes.GoInt)] != (93 : stdgo.StdGoTypes.GoUInt8))) {
                _t = (_t.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                {
                    {
                        var __tmp__ = _p._parseClassChar(_t?.__copy__(), _s?.__copy__());
                        _hi = __tmp__._0;
                        _t = __tmp__._1?.__copy__();
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                    };
                };
                if (_hi < _lo) {
                    _rng = (_rng.__slice__(0, (_rng.length) - (_t.length)) : stdgo.GoString)?.__copy__();
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid character class range" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : _rng?.__copy__() } : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
                };
            };
            if (_p._flags & (1 : stdgo.regexp.syntax.Syntax.Flags) == ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                _class = _appendRange(_class, _lo, _hi);
            } else {
                _class = _appendFoldedRange(_class, _lo, _hi);
            };
        };
        _t = (_t.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
        _re.rune = _class;
        _class = _cleanClass((stdgo.Go.setRef(_re.rune) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt32>>));
        if (_sign < (0 : stdgo.StdGoTypes.GoInt)) {
            _class = _negateClass(_class);
        };
        _re.rune = _class;
        _p._push(_re);
        return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
    }
    /**
        // parseUnicodeClass parses a leading Unicode character class like \p{Han}
        // from the beginning of s. If one is present, it appends the characters to r
        // and returns the new slice r and the remainder of the string.
    **/
    @:keep
    static public function _parseUnicodeClass( _p:stdgo.StdGoTypes.Ref<T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.StdGoTypes.GoRune>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoRune>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _out:stdgo.Slice<stdgo.StdGoTypes.GoRune> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _rest:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
        if (((((_p._flags & (128 : stdgo.regexp.syntax.Syntax.Flags)) == (0 : stdgo.regexp.syntax.Syntax.Flags)) || (_s.length < (2 : stdgo.StdGoTypes.GoInt))) || (_s[(0 : stdgo.StdGoTypes.GoInt)] != (92 : stdgo.StdGoTypes.GoUInt8))) || ((_s[(1 : stdgo.StdGoTypes.GoInt)] != (112 : stdgo.StdGoTypes.GoUInt8)) && (_s[(1 : stdgo.StdGoTypes.GoInt)] != (80 : stdgo.StdGoTypes.GoUInt8)))) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _sign:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
        if (_s[(1 : stdgo.StdGoTypes.GoInt)] == ((80 : stdgo.StdGoTypes.GoUInt8))) {
            _sign = (-1 : stdgo.StdGoTypes.GoInt);
        };
        var _t:stdgo.GoString = (_s.__slice__((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
        var __tmp__ = _nextRune(_t?.__copy__()), _c:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _t:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString), _name:stdgo.GoString = __1, _seq:stdgo.GoString = __0;
        if (_c != ((123 : stdgo.StdGoTypes.GoInt32))) {
            _seq = (_s.__slice__(0, (_s.length) - (_t.length)) : stdgo.GoString)?.__copy__();
            _name = (_seq.__slice__((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            var _end:stdgo.StdGoTypes.GoInt = stdgo.strings.Strings.indexRune(_s?.__copy__(), (125 : stdgo.StdGoTypes.GoInt32));
            if (_end < (0 : stdgo.StdGoTypes.GoInt)) {
                {
                    _err = _checkUTF8(_s?.__copy__());
                    if (_err != null) {
                        return { _0 : _out, _1 : _rest, _2 : _err };
                    };
                };
                return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("invalid character class range" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _s?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
            };
            {
                final __tmp__0 = (_s.__slice__(0, _end + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                final __tmp__1 = (_s.__slice__(_end + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                _seq = __tmp__0;
                _t = __tmp__1;
            };
            _name = (_s.__slice__((3 : stdgo.StdGoTypes.GoInt), _end) : stdgo.GoString)?.__copy__();
            {
                _err = _checkUTF8(_name?.__copy__());
                if (_err != null) {
                    return { _0 : _out, _1 : _rest, _2 : _err };
                };
            };
        };
        if ((_name != stdgo.Go.str()) && (_name[(0 : stdgo.StdGoTypes.GoInt)] == (94 : stdgo.StdGoTypes.GoUInt8))) {
            _sign = -_sign;
            _name = (_name.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = _unicodeTable(_name?.__copy__()), _tab:stdgo.StdGoTypes.Ref<stdgo.unicode.Unicode.RangeTable> = __tmp__._0, _fold:stdgo.StdGoTypes.Ref<stdgo.unicode.Unicode.RangeTable> = __tmp__._1;
        if (_tab == null || (_tab : Dynamic).__nil__) {
            return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("invalid character class range" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _seq?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        if (((_p._flags & (1 : stdgo.regexp.syntax.Syntax.Flags)) == (0 : stdgo.regexp.syntax.Syntax.Flags)) || ((_fold == null) || (_fold : Dynamic).__nil__)) {
            if (_sign > (0 : stdgo.StdGoTypes.GoInt)) {
                _r = _appendTable(_r, _tab);
            } else {
                _r = _appendNegatedTable(_r, _tab);
            };
        } else {
            var _tmp = (_p._tmpClass.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
            _tmp = _appendTable(_tmp, _tab);
            _tmp = _appendTable(_tmp, _fold);
            _p._tmpClass = _tmp;
            _tmp = _cleanClass((stdgo.Go.setRef(_p._tmpClass) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt32>>));
            if (_sign > (0 : stdgo.StdGoTypes.GoInt)) {
                _r = _appendClass(_r, _tmp);
            } else {
                _r = _appendNegatedClass(_r, _tmp);
            };
        };
        return { _0 : _r, _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _appendGroup( _p:stdgo.StdGoTypes.Ref<T_parser>, _r:stdgo.Slice<stdgo.StdGoTypes.GoRune>, _g:T_charGroup):stdgo.Slice<stdgo.StdGoTypes.GoRune> {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        if (_p._flags & (1 : stdgo.regexp.syntax.Syntax.Flags) == ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
            if (_g._sign < (0 : stdgo.StdGoTypes.GoInt)) {
                _r = _appendNegatedClass(_r, _g._class);
            } else {
                _r = _appendClass(_r, _g._class);
            };
        } else {
            var _tmp = (_p._tmpClass.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
            _tmp = _appendFoldedClass(_tmp, _g._class);
            _p._tmpClass = _tmp;
            _tmp = _cleanClass((stdgo.Go.setRef(_p._tmpClass) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt32>>));
            if (_g._sign < (0 : stdgo.StdGoTypes.GoInt)) {
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
    static public function _parseNamedClass( _p:stdgo.StdGoTypes.Ref<T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.StdGoTypes.GoRune>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoRune>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _out:stdgo.Slice<stdgo.StdGoTypes.GoRune> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _rest:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
        if (((_s.length < (2 : stdgo.StdGoTypes.GoInt)) || (_s[(0 : stdgo.StdGoTypes.GoInt)] != (91 : stdgo.StdGoTypes.GoUInt8))) || (_s[(1 : stdgo.StdGoTypes.GoInt)] != (58 : stdgo.StdGoTypes.GoUInt8))) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _i:stdgo.StdGoTypes.GoInt = stdgo.strings.Strings.index((_s.__slice__((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), (":]" : stdgo.GoString));
        if (_i < (0 : stdgo.StdGoTypes.GoInt)) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        _i = _i + ((2 : stdgo.StdGoTypes.GoInt));
        var __0:stdgo.GoString = (_s.__slice__((0 : stdgo.StdGoTypes.GoInt), _i + (2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), __1:stdgo.GoString = (_s.__slice__(_i + (2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _s:stdgo.GoString = __1, _name:stdgo.GoString = __0;
        var _g:stdgo.regexp.syntax.Syntax.T_charGroup = (_posixGroup[_name] ?? ({} : stdgo.regexp.syntax.Syntax.T_charGroup))?.__copy__();
        if (_g._sign == ((0 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("invalid character class range" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _name?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        return { _0 : _p._appendGroup(_r, _g?.__copy__()), _1 : _s?.__copy__(), _2 : (null : stdgo.Error) };
    }
    /**
        // parsePerlClassEscape parses a leading Perl character class escape like \d
        // from the beginning of s. If one is present, it appends the characters to r
        // and returns the new slice r and the remainder of the string.
    **/
    @:keep
    static public function _parsePerlClassEscape( _p:stdgo.StdGoTypes.Ref<T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.StdGoTypes.GoRune>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoRune>; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _out:stdgo.Slice<stdgo.StdGoTypes.GoRune> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _rest:stdgo.GoString = ("" : stdgo.GoString);
        if ((((_p._flags & (64 : stdgo.regexp.syntax.Syntax.Flags)) == (0 : stdgo.regexp.syntax.Syntax.Flags)) || (_s.length < (2 : stdgo.StdGoTypes.GoInt))) || (_s[(0 : stdgo.StdGoTypes.GoInt)] != (92 : stdgo.StdGoTypes.GoUInt8))) {
            return { _0 : _out, _1 : _rest };
        };
        var _g:stdgo.regexp.syntax.Syntax.T_charGroup = (_perlGroup[(_s.__slice__((0 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)] ?? ({} : stdgo.regexp.syntax.Syntax.T_charGroup))?.__copy__();
        if (_g._sign == ((0 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : _out, _1 : _rest };
        };
        return { _0 : _p._appendGroup(_r, _g?.__copy__()), _1 : (_s.__slice__((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__() };
    }
    /**
        // parseClassChar parses a character class character at the beginning of s
        // and returns it.
    **/
    @:keep
    static public function _parseClassChar( _p:stdgo.StdGoTypes.Ref<T_parser>, _s:stdgo.GoString, _wholeClass:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _r:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), _rest:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
        if (_s == (stdgo.Go.str())) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("missing closing ]" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), expr : _wholeClass?.__copy__() } : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        if (_s[(0 : stdgo.StdGoTypes.GoInt)] == ((92 : stdgo.StdGoTypes.GoUInt8))) {
            return _p._parseEscape(_s?.__copy__());
        };
        return _nextRune(_s?.__copy__());
    }
    /**
        // parseEscape parses an escape sequence at the beginning of s
        // and returns the rune.
    **/
    @:keep
    static public function _parseEscape( _p:stdgo.StdGoTypes.Ref<T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        stdgo.internal.Macro.controlFlow({
            @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
            var _r:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), _rest:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
            var _t:stdgo.GoString = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            if (_t == (stdgo.Go.str())) {
                return { _0 : (0 : stdgo.StdGoTypes.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("trailing backslash at end of expression" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), stdgo.Go.str()?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
            };
            var __tmp__ = _nextRune(_t?.__copy__()), _c:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _t:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : (0 : stdgo.StdGoTypes.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
            };
            @:label("Switch") {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _c;
                        if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == ((49 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((50 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((51 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((52 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((53 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((54 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((55 : stdgo.StdGoTypes.GoInt32))))) {
                            if (((_t == stdgo.Go.str()) || (_t[(0 : stdgo.StdGoTypes.GoInt)] < (48 : stdgo.StdGoTypes.GoUInt8))) || (_t[(0 : stdgo.StdGoTypes.GoInt)] > (55 : stdgo.StdGoTypes.GoUInt8))) {
                                break;
                            };
                            @:fallthrough {
                                __switchIndex__ = 2;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (48 : stdgo.StdGoTypes.GoInt32)))) {
                            _r = _c - (48 : stdgo.StdGoTypes.GoInt32);
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < (3 : stdgo.StdGoTypes.GoInt), _i++, {
                                    if (((_t == stdgo.Go.str()) || (_t[(0 : stdgo.StdGoTypes.GoInt)] < (48 : stdgo.StdGoTypes.GoUInt8))) || (_t[(0 : stdgo.StdGoTypes.GoInt)] > (55 : stdgo.StdGoTypes.GoUInt8))) {
                                        break;
                                    };
                                    _r = ((_r * (8 : stdgo.StdGoTypes.GoInt32)) + (_t[(0 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoRune)) - (48 : stdgo.StdGoTypes.GoInt32);
                                    _t = (_t.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                                });
                            };
                            return { _0 : _r, _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (120 : stdgo.StdGoTypes.GoInt32)))) {
                            if (_t == (stdgo.Go.str())) {
                                break;
                            };
                            {
                                {
                                    var __tmp__ = _nextRune(_t?.__copy__());
                                    _c = __tmp__._0;
                                    _t = __tmp__._1?.__copy__();
                                    _err = __tmp__._2;
                                };
                                if (_err != null) {
                                    return { _0 : (0 : stdgo.StdGoTypes.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
                                };
                            };
                            if (_c == ((123 : stdgo.StdGoTypes.GoInt32))) {
                                var _nhex:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                _r = (0 : stdgo.StdGoTypes.GoInt32);
                                while (true) {
                                    if (_t == (stdgo.Go.str())) {
                                        @:jump("Switch") break;
                                    };
                                    {
                                        {
                                            var __tmp__ = _nextRune(_t?.__copy__());
                                            _c = __tmp__._0;
                                            _t = __tmp__._1?.__copy__();
                                            _err = __tmp__._2;
                                        };
                                        if (_err != null) {
                                            return { _0 : (0 : stdgo.StdGoTypes.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
                                        };
                                    };
                                    if (_c == ((125 : stdgo.StdGoTypes.GoInt32))) {
                                        break;
                                    };
                                    var _v:stdgo.StdGoTypes.GoInt32 = _unhex(_c);
                                    if (_v < (0 : stdgo.StdGoTypes.GoInt32)) {
                                        @:jump("Switch") break;
                                    };
                                    _r = (_r * (16 : stdgo.StdGoTypes.GoInt32)) + _v;
                                    if (_r > (1114111 : stdgo.StdGoTypes.GoInt32)) {
                                        @:jump("Switch") break;
                                    };
                                    _nhex++;
                                };
                                if (_nhex == ((0 : stdgo.StdGoTypes.GoInt))) {
                                    @:jump("Switch") break;
                                };
                                return { _0 : _r, _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
                            };
                            var _x:stdgo.StdGoTypes.GoInt32 = _unhex(_c);
                            {
                                {
                                    var __tmp__ = _nextRune(_t?.__copy__());
                                    _c = __tmp__._0;
                                    _t = __tmp__._1?.__copy__();
                                    _err = __tmp__._2;
                                };
                                if (_err != null) {
                                    return { _0 : (0 : stdgo.StdGoTypes.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
                                };
                            };
                            var _y:stdgo.StdGoTypes.GoInt32 = _unhex(_c);
                            if ((_x < (0 : stdgo.StdGoTypes.GoInt32)) || (_y < (0 : stdgo.StdGoTypes.GoInt32))) {
                                break;
                            };
                            return { _0 : (_x * (16 : stdgo.StdGoTypes.GoInt32)) + _y, _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (97 : stdgo.StdGoTypes.GoInt32)))) {
                            return { _0 : (7 : stdgo.StdGoTypes.GoInt32), _1 : _t?.__copy__(), _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (102 : stdgo.StdGoTypes.GoInt32)))) {
                            return { _0 : (12 : stdgo.StdGoTypes.GoInt32), _1 : _t?.__copy__(), _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (110 : stdgo.StdGoTypes.GoInt32)))) {
                            return { _0 : (10 : stdgo.StdGoTypes.GoInt32), _1 : _t?.__copy__(), _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 7 || (__switchIndex__ == -1 && (__value__ == (114 : stdgo.StdGoTypes.GoInt32)))) {
                            return { _0 : (13 : stdgo.StdGoTypes.GoInt32), _1 : _t?.__copy__(), _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 8 || (__switchIndex__ == -1 && (__value__ == (116 : stdgo.StdGoTypes.GoInt32)))) {
                            return { _0 : (9 : stdgo.StdGoTypes.GoInt32), _1 : _t?.__copy__(), _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 9 || (__switchIndex__ == -1 && (__value__ == (118 : stdgo.StdGoTypes.GoInt32)))) {
                            return { _0 : (11 : stdgo.StdGoTypes.GoInt32), _1 : _t?.__copy__(), _2 : _err };
                            break;
                            break;
                        } else {
                            if ((_c < (128 : stdgo.StdGoTypes.GoInt32)) && !_isalnum(_c)) {
                                return { _0 : _c, _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
                            };
                            break;
                        };
                    };
                    break;
                };
            };
            return { _0 : (0 : stdgo.StdGoTypes.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("invalid escape sequence" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_s.__slice__(0, (_s.length) - (_t.length)) : stdgo.GoString)?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        });
        throw "controlFlow did not return";
    }
    /**
        // parseRightParen handles a ) in the input.
    **/
    @:keep
    static public function _parseRightParen( _p:stdgo.StdGoTypes.Ref<T_parser>):stdgo.Error {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        _p._concat();
        if (_p._swapVerticalBar()) {
            _p._stack = (_p._stack.__slice__(0, (_p._stack.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        };
        _p._alternate();
        var _n:stdgo.StdGoTypes.GoInt = (_p._stack.length);
        if (_n < (2 : stdgo.StdGoTypes.GoInt)) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("unexpected )" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _p._wholeRegexp?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>));
        };
        var _re1 = _p._stack[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
        var _re2 = _p._stack[(_n - (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
        _p._stack = (_p._stack.__slice__(0, _n - (2 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        if (_re2.op != ((128 : stdgo.regexp.syntax.Syntax.Op))) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("unexpected )" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _p._wholeRegexp?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>));
        };
        _p._flags = _re2.flags;
        if (_re2.cap == ((0 : stdgo.StdGoTypes.GoInt))) {
            _p._push(_re1);
        } else {
            _re2.op = (13 : stdgo.regexp.syntax.Syntax.Op);
            _re2.sub = (_re2.sub0.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
            _re2.sub[(0 : stdgo.StdGoTypes.GoInt)] = _re1;
            _p._push(_re2);
        };
        return (null : stdgo.Error);
    }
    /**
        // If the top of the stack is an element followed by an opVerticalBar
        // swapVerticalBar swaps the two and returns true.
        // Otherwise it returns false.
    **/
    @:keep
    static public function _swapVerticalBar( _p:stdgo.StdGoTypes.Ref<T_parser>):Bool {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _n:stdgo.StdGoTypes.GoInt = (_p._stack.length);
        if ((((_n >= (3 : stdgo.StdGoTypes.GoInt)) && (_p._stack[(_n - (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)].op == (129 : stdgo.regexp.syntax.Syntax.Op))) && _isCharClass(_p._stack[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)])) && _isCharClass(_p._stack[(_n - (3 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)])) {
            var _re1 = _p._stack[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
            var _re3 = _p._stack[(_n - (3 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
            if (_re1.op > _re3.op) {
                {
                    final __tmp__0 = _re3;
                    final __tmp__1 = _re1;
                    _re1 = __tmp__0;
                    _re3 = __tmp__1;
                };
                _p._stack[(_n - (3 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _re3;
            };
            _mergeCharClass(_re3, _re1);
            _p._reuse(_re1);
            _p._stack = (_p._stack.__slice__(0, _n - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
            return true;
        };
        if (_n >= (2 : stdgo.StdGoTypes.GoInt)) {
            var _re1 = _p._stack[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
            var _re2 = _p._stack[(_n - (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
            if (_re2.op == ((129 : stdgo.regexp.syntax.Syntax.Op))) {
                if (_n >= (3 : stdgo.StdGoTypes.GoInt)) {
                    _cleanAlt(_p._stack[(_n - (3 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]);
                };
                _p._stack[(_n - (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _re1;
                _p._stack[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _re2;
                return true;
            };
        };
        return false;
    }
    /**
        // parseVerticalBar handles a | in the input.
    **/
    @:keep
    static public function _parseVerticalBar( _p:stdgo.StdGoTypes.Ref<T_parser>):stdgo.Error {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        _p._concat();
        if (!_p._swapVerticalBar()) {
            _p._op((129 : stdgo.regexp.syntax.Syntax.Op));
        };
        return (null : stdgo.Error);
    }
    /**
        // parseInt parses a decimal integer.
    **/
    @:keep
    static public function _parseInt( _p:stdgo.StdGoTypes.Ref<T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _rest:stdgo.GoString = ("" : stdgo.GoString), _ok:Bool = false;
        if (((_s == stdgo.Go.str()) || (_s[(0 : stdgo.StdGoTypes.GoInt)] < (48 : stdgo.StdGoTypes.GoUInt8))) || ((57 : stdgo.StdGoTypes.GoUInt8) < _s[(0 : stdgo.StdGoTypes.GoInt)])) {
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        if ((((_s.length >= (2 : stdgo.StdGoTypes.GoInt)) && (_s[(0 : stdgo.StdGoTypes.GoInt)] == (48 : stdgo.StdGoTypes.GoUInt8))) && ((48 : stdgo.StdGoTypes.GoUInt8) <= _s[(1 : stdgo.StdGoTypes.GoInt)])) && (_s[(1 : stdgo.StdGoTypes.GoInt)] <= (57 : stdgo.StdGoTypes.GoUInt8))) {
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        var _t:stdgo.GoString = _s?.__copy__();
        while (((_s != stdgo.Go.str()) && ((48 : stdgo.StdGoTypes.GoUInt8) <= _s[(0 : stdgo.StdGoTypes.GoInt)])) && (_s[(0 : stdgo.StdGoTypes.GoInt)] <= (57 : stdgo.StdGoTypes.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
        };
        _rest = _s?.__copy__();
        _ok = true;
        _t = (_t.__slice__(0, (_t.length) - (_s.length)) : stdgo.GoString)?.__copy__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_t.length), _i++, {
                if (_n >= (100000000 : stdgo.StdGoTypes.GoInt)) {
                    _n = (-1 : stdgo.StdGoTypes.GoInt);
                    break;
                };
                _n = ((_n * (10 : stdgo.StdGoTypes.GoInt)) + (_t[(_i : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt)) - (48 : stdgo.StdGoTypes.GoInt);
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
    static public function _parsePerlFlags( _p:stdgo.StdGoTypes.Ref<T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        stdgo.internal.Macro.controlFlow({
            @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
            var _rest:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
            var _t:stdgo.GoString = _s?.__copy__();
            if (((_t.length > (4 : stdgo.StdGoTypes.GoInt)) && (_t[(2 : stdgo.StdGoTypes.GoInt)] == (80 : stdgo.StdGoTypes.GoUInt8))) && (_t[(3 : stdgo.StdGoTypes.GoInt)] == (60 : stdgo.StdGoTypes.GoUInt8))) {
                var _end:stdgo.StdGoTypes.GoInt = stdgo.strings.Strings.indexRune(_t?.__copy__(), (62 : stdgo.StdGoTypes.GoInt32));
                if (_end < (0 : stdgo.StdGoTypes.GoInt)) {
                    {
                        _err = _checkUTF8(_t?.__copy__());
                        if (_err != null) {
                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                        };
                    };
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("invalid named capture" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _s?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
                };
                var _capture:stdgo.GoString = (_t.__slice__(0, _end + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                var _name:stdgo.GoString = (_t.__slice__((4 : stdgo.StdGoTypes.GoInt), _end) : stdgo.GoString)?.__copy__();
                {
                    _err = _checkUTF8(_name?.__copy__());
                    if (_err != null) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                    };
                };
                if (!_isValidCaptureName(_name?.__copy__())) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("invalid named capture" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), _capture?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
                };
                _p._numCap++;
                var _re = _p._op((128 : stdgo.regexp.syntax.Syntax.Op));
                _re.cap = _p._numCap;
                _re.name = _name?.__copy__();
                return { _0 : (_t.__slice__(_end + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            };
            var _c:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32);
            _t = (_t.__slice__((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            var _flags:stdgo.regexp.syntax.Syntax.Flags = _p._flags;
            var _sign:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            var _sawFlag:Bool = false;
            @:label("Loop") while (_t != (stdgo.Go.str())) {
                {
                    {
                        var __tmp__ = _nextRune(_t?.__copy__());
                        _c = __tmp__._0;
                        _t = __tmp__._1?.__copy__();
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                    };
                };
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _c;
                            if (__value__ == ((105 : stdgo.StdGoTypes.GoInt32))) {
                                _flags = _flags | ((1 : stdgo.regexp.syntax.Syntax.Flags));
                                _sawFlag = true;
                                break;
                            } else if (__value__ == ((109 : stdgo.StdGoTypes.GoInt32))) {
                                _flags = _flags & ((16 : stdgo.regexp.syntax.Syntax.Flags) ^ (-1i32 : stdgo.StdGoTypes.GoInt));
                                _sawFlag = true;
                                break;
                            } else if (__value__ == ((115 : stdgo.StdGoTypes.GoInt32))) {
                                _flags = _flags | ((8 : stdgo.regexp.syntax.Syntax.Flags));
                                _sawFlag = true;
                                break;
                            } else if (__value__ == ((85 : stdgo.StdGoTypes.GoInt32))) {
                                _flags = _flags | ((32 : stdgo.regexp.syntax.Syntax.Flags));
                                _sawFlag = true;
                                break;
                            } else if (__value__ == ((45 : stdgo.StdGoTypes.GoInt32))) {
                                if (_sign < (0 : stdgo.StdGoTypes.GoInt)) {
                                    @:jump("Loop") break;
                                };
                                _sign = (-1 : stdgo.StdGoTypes.GoInt);
                                _flags = (-1 ^ _flags);
                                _sawFlag = false;
                                break;
                            } else if (__value__ == ((58 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((41 : stdgo.StdGoTypes.GoInt32))) {
                                if (_sign < (0 : stdgo.StdGoTypes.GoInt)) {
                                    if (!_sawFlag) {
                                        @:jump("Loop") break;
                                    };
                                    _flags = (-1 ^ _flags);
                                };
                                if (_c == ((58 : stdgo.StdGoTypes.GoInt32))) {
                                    _p._op((128 : stdgo.regexp.syntax.Syntax.Op));
                                };
                                _p._flags = _flags;
                                return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
                                break;
                            } else {
                                @:jump("Loop") break;
                            };
                        };
                        break;
                    };
                };
            };
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("invalid or unsupported Perl syntax" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_s.__slice__(0, (_s.length) - (_t.length)) : stdgo.GoString)?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        });
        throw "controlFlow did not return";
    }
    /**
        // parseRepeat parses {min} (max=min) or {min,} (max=-1) or {min,max}.
        // If s is not of that form, it returns ok == false.
        // If s has the right form but the values are too big, it returns min == -1, ok == true.
    **/
    @:keep
    static public function _parseRepeat( _p:stdgo.StdGoTypes.Ref<T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.GoString; var _3 : Bool; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _min:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _max:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _rest:stdgo.GoString = ("" : stdgo.GoString), _ok:Bool = false;
        if ((_s == stdgo.Go.str()) || (_s[(0 : stdgo.StdGoTypes.GoInt)] != (123 : stdgo.StdGoTypes.GoUInt8))) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
        var _ok1:Bool = false;
        {
            {
                var __tmp__ = _p._parseInt(_s?.__copy__());
                _min = __tmp__._0;
                _s = __tmp__._1?.__copy__();
                _ok1 = __tmp__._2;
            };
            if (!_ok1) {
                return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
            };
        };
        if (_s == (stdgo.Go.str())) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        if (_s[(0 : stdgo.StdGoTypes.GoInt)] != ((44 : stdgo.StdGoTypes.GoUInt8))) {
            _max = _min;
        } else {
            _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            if (_s == (stdgo.Go.str())) {
                return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
            };
            if (_s[(0 : stdgo.StdGoTypes.GoInt)] == ((125 : stdgo.StdGoTypes.GoUInt8))) {
                _max = (-1 : stdgo.StdGoTypes.GoInt);
            } else {
                {
                    var __tmp__ = _p._parseInt(_s?.__copy__());
                    _max = __tmp__._0;
                    _s = __tmp__._1?.__copy__();
                    _ok1 = __tmp__._2;
                };
                if (!_ok1) {
                    return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
                } else if (_max < (0 : stdgo.StdGoTypes.GoInt)) {
                    _min = (-1 : stdgo.StdGoTypes.GoInt);
                };
            };
        };
        if ((_s == stdgo.Go.str()) || (_s[(0 : stdgo.StdGoTypes.GoInt)] != (125 : stdgo.StdGoTypes.GoUInt8))) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        _rest = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
        _ok = true;
        return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
    }
    /**
        // removeLeadingRegexp removes the leading regexp in re.
        // It returns the replacement for re.
        // If reuse is true, it passes the removed regexp (if no longer needed) to p.reuse.
    **/
    @:keep
    static public function _removeLeadingRegexp( _p:stdgo.StdGoTypes.Ref<T_parser>, _re:stdgo.StdGoTypes.Ref<Regexp>, _reuse:Bool):stdgo.StdGoTypes.Ref<Regexp> {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        if ((_re.op == (18 : stdgo.regexp.syntax.Syntax.Op)) && (_re.sub.length > (0 : stdgo.StdGoTypes.GoInt))) {
            if (_reuse) {
                _p._reuse(_re.sub[(0 : stdgo.StdGoTypes.GoInt)]);
            };
            _re.sub = (_re.sub.__slice__(0, stdgo.Go.copySlice(_re.sub, (_re.sub.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>))) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
            {
                final __value__ = (_re.sub.length);
                if (__value__ == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _re.op = (2 : stdgo.regexp.syntax.Syntax.Op);
                    _re.sub = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
                } else if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                    var _old = _re;
                    _re = _re.sub[(0 : stdgo.StdGoTypes.GoInt)];
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
    static public function _leadingRegexp( _p:stdgo.StdGoTypes.Ref<T_parser>, _re:stdgo.StdGoTypes.Ref<Regexp>):stdgo.StdGoTypes.Ref<Regexp> {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        if (_re.op == ((2 : stdgo.regexp.syntax.Syntax.Op))) {
            return null;
        };
        if ((_re.op == (18 : stdgo.regexp.syntax.Syntax.Op)) && (_re.sub.length > (0 : stdgo.StdGoTypes.GoInt))) {
            var _sub = _re.sub[(0 : stdgo.StdGoTypes.GoInt)];
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
    static public function _removeLeadingString( _p:stdgo.StdGoTypes.Ref<T_parser>, _re:stdgo.StdGoTypes.Ref<Regexp>, _n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<Regexp> {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        if ((_re.op == (18 : stdgo.regexp.syntax.Syntax.Op)) && (_re.sub.length > (0 : stdgo.StdGoTypes.GoInt))) {
            var _sub = _re.sub[(0 : stdgo.StdGoTypes.GoInt)];
            _sub = _p._removeLeadingString(_sub, _n);
            _re.sub[(0 : stdgo.StdGoTypes.GoInt)] = _sub;
            if (_sub.op == ((2 : stdgo.regexp.syntax.Syntax.Op))) {
                _p._reuse(_sub);
                {
                    final __value__ = (_re.sub.length);
                    if (__value__ == ((0 : stdgo.StdGoTypes.GoInt)) || __value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                        _re.op = (2 : stdgo.regexp.syntax.Syntax.Op);
                        _re.sub = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
                    } else if (__value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                        var _old = _re;
                        _re = _re.sub[(1 : stdgo.StdGoTypes.GoInt)];
                        _p._reuse(_old);
                    } else {
                        stdgo.Go.copySlice(_re.sub, (_re.sub.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>));
                        _re.sub = (_re.sub.__slice__(0, (_re.sub.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
                    };
                };
            };
            return _re;
        };
        if (_re.op == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
            _re.rune = (_re.rune.__slice__(0, stdgo.Go.copySlice(_re.rune, (_re.rune.__slice__(_n) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>))) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
            if ((_re.rune.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
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
    static public function _leadingString( _p:stdgo.StdGoTypes.Ref<T_parser>, _re:stdgo.StdGoTypes.Ref<Regexp>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoRune>; var _1 : Flags; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        if ((_re.op == (18 : stdgo.regexp.syntax.Syntax.Op)) && (_re.sub.length > (0 : stdgo.StdGoTypes.GoInt))) {
            _re = _re.sub[(0 : stdgo.StdGoTypes.GoInt)];
        };
        if (_re.op != ((3 : stdgo.regexp.syntax.Syntax.Op))) {
            return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>), _1 : (0 : stdgo.regexp.syntax.Syntax.Flags) };
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
    static public function _factor( _p:stdgo.StdGoTypes.Ref<T_parser>, _sub:stdgo.Slice<stdgo.StdGoTypes.Ref<Regexp>>):stdgo.Slice<stdgo.StdGoTypes.Ref<Regexp>> {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        if ((_sub.length) < (2 : stdgo.StdGoTypes.GoInt)) {
            return _sub;
        };
        var _str:stdgo.Slice<stdgo.StdGoTypes.GoRune> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
        var _strflags:Flags = ((0 : stdgo.StdGoTypes.GoUInt16) : stdgo.regexp.syntax.Syntax.Flags);
        var _start:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _out = (_sub.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (_sub.length), _i++, {
                var _istr:stdgo.Slice<stdgo.StdGoTypes.GoRune> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
                var _iflags:Flags = ((0 : stdgo.StdGoTypes.GoUInt16) : stdgo.regexp.syntax.Syntax.Flags);
                if (_i < (_sub.length)) {
                    {
                        var __tmp__ = _p._leadingString(_sub[(_i : stdgo.StdGoTypes.GoInt)]);
                        _istr = __tmp__._0;
                        _iflags = __tmp__._1;
                    };
                    if (_iflags == (_strflags)) {
                        var _same:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        while (((_same < _str.length) && (_same < _istr.length)) && (_str[(_same : stdgo.StdGoTypes.GoInt)] == _istr[(_same : stdgo.StdGoTypes.GoInt)])) {
                            _same++;
                        };
                        if (_same > (0 : stdgo.StdGoTypes.GoInt)) {
                            _str = (_str.__slice__(0, _same) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
                            continue;
                        };
                    };
                };
                if (_i == (_start)) {} else if (_i == (_start + (1 : stdgo.StdGoTypes.GoInt))) {
                    _out = (_out.__append__(_sub[(_start : stdgo.StdGoTypes.GoInt)]));
                } else {
                    var _prefix = _p._newRegexp((3 : stdgo.regexp.syntax.Syntax.Op));
                    _prefix.flags = _strflags;
                    _prefix.rune = ((_prefix.rune.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>).__append__(..._str.__toArray__()));
                    {
                        var _j:stdgo.StdGoTypes.GoInt = _start;
                        stdgo.Go.cfor(_j < _i, _j++, {
                            _sub[(_j : stdgo.StdGoTypes.GoInt)] = _p._removeLeadingString(_sub[(_j : stdgo.StdGoTypes.GoInt)], (_str.length));
                            _p._checkLimits(_sub[(_j : stdgo.StdGoTypes.GoInt)]);
                        });
                    };
                    var _suffix = _p._collapse((_sub.__slice__(_start, _i) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>), (19 : stdgo.regexp.syntax.Syntax.Op));
                    var _re = _p._newRegexp((18 : stdgo.regexp.syntax.Syntax.Op));
                    _re.sub = ((_re.sub.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>).__append__(_prefix, _suffix));
                    _out = (_out.__append__(_re));
                };
                _start = _i;
                _str = _istr;
                _strflags = _iflags;
            });
        };
        _sub = _out;
        _start = (0 : stdgo.StdGoTypes.GoInt);
        _out = (_sub.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        var _first:stdgo.StdGoTypes.Ref<Regexp> = (null : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (_sub.length), _i++, {
                var _ifirst:stdgo.StdGoTypes.Ref<Regexp> = (null : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
                if (_i < (_sub.length)) {
                    _ifirst = _p._leadingRegexp(_sub[(_i : stdgo.StdGoTypes.GoInt)]);
                    if ((((_first != null) && ((_first : Dynamic).__nil__ == null || !(_first : Dynamic).__nil__)) && _first.equal(_ifirst)) && (_isCharClass(_first) || (((_first.op == (17 : stdgo.regexp.syntax.Syntax.Op)) && (_first.min == _first.max)) && _isCharClass(_first.sub[(0 : stdgo.StdGoTypes.GoInt)])))) {
                        continue;
                    };
                };
                if (_i == (_start)) {} else if (_i == (_start + (1 : stdgo.StdGoTypes.GoInt))) {
                    _out = (_out.__append__(_sub[(_start : stdgo.StdGoTypes.GoInt)]));
                } else {
                    var _prefix = _first;
                    {
                        var _j:stdgo.StdGoTypes.GoInt = _start;
                        stdgo.Go.cfor(_j < _i, _j++, {
                            var _reuse:Bool = _j != (_start);
                            _sub[(_j : stdgo.StdGoTypes.GoInt)] = _p._removeLeadingRegexp(_sub[(_j : stdgo.StdGoTypes.GoInt)], _reuse);
                            _p._checkLimits(_sub[(_j : stdgo.StdGoTypes.GoInt)]);
                        });
                    };
                    var _suffix = _p._collapse((_sub.__slice__(_start, _i) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>), (19 : stdgo.regexp.syntax.Syntax.Op));
                    var _re = _p._newRegexp((18 : stdgo.regexp.syntax.Syntax.Op));
                    _re.sub = ((_re.sub.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>).__append__(_prefix, _suffix));
                    _out = (_out.__append__(_re));
                };
                _start = _i;
                _first = _ifirst;
            });
        };
        _sub = _out;
        _start = (0 : stdgo.StdGoTypes.GoInt);
        _out = (_sub.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (_sub.length), _i++, {
                if ((_i < _sub.length) && _isCharClass(_sub[(_i : stdgo.StdGoTypes.GoInt)])) {
                    continue;
                };
                if (_i == (_start)) {} else if (_i == (_start + (1 : stdgo.StdGoTypes.GoInt))) {
                    _out = (_out.__append__(_sub[(_start : stdgo.StdGoTypes.GoInt)]));
                } else {
                    var _max:stdgo.StdGoTypes.GoInt = _start;
                    {
                        var _j:stdgo.StdGoTypes.GoInt = _start + (1 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_j < _i, _j++, {
                            if ((_sub[(_max : stdgo.StdGoTypes.GoInt)].op < _sub[(_j : stdgo.StdGoTypes.GoInt)].op) || ((_sub[(_max : stdgo.StdGoTypes.GoInt)].op == _sub[(_j : stdgo.StdGoTypes.GoInt)].op) && (_sub[(_max : stdgo.StdGoTypes.GoInt)].rune.length < _sub[(_j : stdgo.StdGoTypes.GoInt)].rune.length))) {
                                _max = _j;
                            };
                        });
                    };
                    {
                        final __tmp__0 = _sub[(_max : stdgo.StdGoTypes.GoInt)];
                        final __tmp__1 = _sub[(_start : stdgo.StdGoTypes.GoInt)];
                        _sub[(_start : stdgo.StdGoTypes.GoInt)] = __tmp__0;
                        _sub[(_max : stdgo.StdGoTypes.GoInt)] = __tmp__1;
                    };
                    {
                        var _j:stdgo.StdGoTypes.GoInt = _start + (1 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_j < _i, _j++, {
                            _mergeCharClass(_sub[(_start : stdgo.StdGoTypes.GoInt)], _sub[(_j : stdgo.StdGoTypes.GoInt)]);
                            _p._reuse(_sub[(_j : stdgo.StdGoTypes.GoInt)]);
                        });
                    };
                    _cleanAlt(_sub[(_start : stdgo.StdGoTypes.GoInt)]);
                    _out = (_out.__append__(_sub[(_start : stdgo.StdGoTypes.GoInt)]));
                };
                if (_i < (_sub.length)) {
                    _out = (_out.__append__(_sub[(_i : stdgo.StdGoTypes.GoInt)]));
                };
                _start = _i + (1 : stdgo.StdGoTypes.GoInt);
            });
        };
        _sub = _out;
        _start = (0 : stdgo.StdGoTypes.GoInt);
        _out = (_sub.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        for (_i in 0 ... _sub.length.toBasic()) {
            if ((((_i + (1 : stdgo.StdGoTypes.GoInt)) < _sub.length) && (_sub[(_i : stdgo.StdGoTypes.GoInt)].op == (2 : stdgo.regexp.syntax.Syntax.Op))) && (_sub[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)].op == (2 : stdgo.regexp.syntax.Syntax.Op))) {
                continue;
            };
            _out = (_out.__append__(_sub[(_i : stdgo.StdGoTypes.GoInt)]));
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
    static public function _collapse( _p:stdgo.StdGoTypes.Ref<T_parser>, _subs:stdgo.Slice<stdgo.StdGoTypes.Ref<Regexp>>, _op:Op):stdgo.StdGoTypes.Ref<Regexp> {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        if ((_subs.length) == ((1 : stdgo.StdGoTypes.GoInt))) {
            return _subs[(0 : stdgo.StdGoTypes.GoInt)];
        };
        var _re = _p._newRegexp(_op);
        _re.sub = (_re.sub0.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        for (__1 => _sub in _subs) {
            if (_sub.op == (_op)) {
                _re.sub = (_re.sub.__append__(..._sub.sub.__toArray__()));
                _p._reuse(_sub);
            } else {
                _re.sub = (_re.sub.__append__(_sub));
            };
        };
        if (_op == ((19 : stdgo.regexp.syntax.Syntax.Op))) {
            _re.sub = _p._factor(_re.sub);
            if ((_re.sub.length) == ((1 : stdgo.StdGoTypes.GoInt))) {
                var _old = _re;
                _re = _re.sub[(0 : stdgo.StdGoTypes.GoInt)];
                _p._reuse(_old);
            };
        };
        return _re;
    }
    /**
        // alternate replaces the top of the stack (above the topmost '(') with its alternation.
    **/
    @:keep
    static public function _alternate( _p:stdgo.StdGoTypes.Ref<T_parser>):stdgo.StdGoTypes.Ref<Regexp> {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _i:stdgo.StdGoTypes.GoInt = (_p._stack.length);
        while ((_i > (0 : stdgo.StdGoTypes.GoInt)) && (_p._stack[(_i - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)].op < (128 : stdgo.regexp.syntax.Syntax.Op))) {
            _i--;
        };
        var _subs = (_p._stack.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        _p._stack = (_p._stack.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        if ((_subs.length) > (0 : stdgo.StdGoTypes.GoInt)) {
            _cleanAlt(_subs[((_subs.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]);
        };
        if ((_subs.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            return _p._push(_p._newRegexp((1 : stdgo.regexp.syntax.Syntax.Op)));
        };
        return _p._push(_p._collapse(_subs, (19 : stdgo.regexp.syntax.Syntax.Op)));
    }
    /**
        // concat replaces the top of the stack (above the topmost '|' or '(') with its concatenation.
    **/
    @:keep
    static public function _concat( _p:stdgo.StdGoTypes.Ref<T_parser>):stdgo.StdGoTypes.Ref<Regexp> {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        _p._maybeConcat((-1 : stdgo.StdGoTypes.GoInt32), (0 : stdgo.regexp.syntax.Syntax.Flags));
        var _i:stdgo.StdGoTypes.GoInt = (_p._stack.length);
        while ((_i > (0 : stdgo.StdGoTypes.GoInt)) && (_p._stack[(_i - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)].op < (128 : stdgo.regexp.syntax.Syntax.Op))) {
            _i--;
        };
        var _subs = (_p._stack.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        _p._stack = (_p._stack.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        if ((_subs.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
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
    static public function _repeat( _p:stdgo.StdGoTypes.Ref<T_parser>, _op:Op, _min:stdgo.StdGoTypes.GoInt, _max:stdgo.StdGoTypes.GoInt, _before:stdgo.GoString, _after:stdgo.GoString, _lastRepeat:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _flags:stdgo.regexp.syntax.Syntax.Flags = _p._flags;
        if (_p._flags & (64 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
            if ((_after.length > (0 : stdgo.StdGoTypes.GoInt)) && (_after[(0 : stdgo.StdGoTypes.GoInt)] == (63 : stdgo.StdGoTypes.GoUInt8))) {
                _after = (_after.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                _flags = _flags ^ ((32 : stdgo.regexp.syntax.Syntax.Flags));
            };
            if (_lastRepeat != (stdgo.Go.str())) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("invalid nested repetition operator" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_lastRepeat.__slice__(0, (_lastRepeat.length) - (_after.length)) : stdgo.GoString)?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
            };
        };
        var _n:stdgo.StdGoTypes.GoInt = (_p._stack.length);
        if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("missing argument to repetition operator" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_before.__slice__(0, (_before.length) - (_after.length)) : stdgo.GoString)?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        var _sub = _p._stack[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
        if (_sub.op >= (128 : stdgo.regexp.syntax.Syntax.Op)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("missing argument to repetition operator" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_before.__slice__(0, (_before.length) - (_after.length)) : stdgo.GoString)?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        var _re = _p._newRegexp(_op);
        _re.min = _min;
        _re.max = _max;
        _re.flags = _flags;
        _re.sub = (_re.sub0.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        _re.sub[(0 : stdgo.StdGoTypes.GoInt)] = _sub;
        _p._stack[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _re;
        _p._checkLimits(_re);
        if (((_op == (17 : stdgo.regexp.syntax.Syntax.Op)) && ((_min >= (2 : stdgo.StdGoTypes.GoInt)) || (_max >= (2 : stdgo.StdGoTypes.GoInt)))) && !_repeatIsValid(_re, (1000 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.regexp.syntax.Syntax.T_error((("invalid repeat count" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode), (_before.__slice__(0, (_before.length) - (_after.length)) : stdgo.GoString)?.__copy__()) : stdgo.regexp.syntax.Syntax.T_error)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.T_error>)) };
        };
        return { _0 : _after?.__copy__(), _1 : (null : stdgo.Error) };
    }
    /**
        // op pushes a regexp with the given op onto the stack
        // and returns that regexp.
    **/
    @:keep
    static public function _op( _p:stdgo.StdGoTypes.Ref<T_parser>, _op:Op):stdgo.StdGoTypes.Ref<Regexp> {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _re = _p._newRegexp(_op);
        _re.flags = _p._flags;
        return _p._push(_re);
    }
    /**
        // literal pushes a literal regexp for the rune r on the stack.
    **/
    @:keep
    static public function _literal( _p:stdgo.StdGoTypes.Ref<T_parser>, _r:stdgo.StdGoTypes.GoRune):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _re = _p._newRegexp((3 : stdgo.regexp.syntax.Syntax.Op));
        _re.flags = _p._flags;
        if (_p._flags & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
            _r = _minFoldRune(_r);
        };
        _re.rune0[(0 : stdgo.StdGoTypes.GoInt)] = _r;
        _re.rune = (_re.rune0.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
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
    static public function _maybeConcat( _p:stdgo.StdGoTypes.Ref<T_parser>, _r:stdgo.StdGoTypes.GoRune, _flags:Flags):Bool {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _n:stdgo.StdGoTypes.GoInt = (_p._stack.length);
        if (_n < (2 : stdgo.StdGoTypes.GoInt)) {
            return false;
        };
        var _re1 = _p._stack[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
        var _re2 = _p._stack[(_n - (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
        if (((_re1.op != (3 : stdgo.regexp.syntax.Syntax.Op)) || (_re2.op != (3 : stdgo.regexp.syntax.Syntax.Op))) || ((_re1.flags & (1 : stdgo.regexp.syntax.Syntax.Flags)) != (_re2.flags & (1 : stdgo.regexp.syntax.Syntax.Flags)))) {
            return false;
        };
        _re2.rune = (_re2.rune.__append__(..._re1.rune.__toArray__()));
        if (_r >= (0 : stdgo.StdGoTypes.GoInt32)) {
            _re1.rune = (_re1.rune0.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
            _re1.rune[(0 : stdgo.StdGoTypes.GoInt)] = _r;
            _re1.flags = _flags;
            return true;
        };
        _p._stack = (_p._stack.__slice__(0, _n - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
        _p._reuse(_re1);
        return false;
    }
    /**
        // push pushes the regexp re onto the parse stack and returns the regexp.
    **/
    @:keep
    static public function _push( _p:stdgo.StdGoTypes.Ref<T_parser>, _re:stdgo.StdGoTypes.Ref<Regexp>):stdgo.StdGoTypes.Ref<Regexp> {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        _p._numRunes = _p._numRunes + ((_re.rune.length));
        if (((_re.op == (4 : stdgo.regexp.syntax.Syntax.Op)) && (_re.rune.length == (2 : stdgo.StdGoTypes.GoInt))) && (_re.rune[(0 : stdgo.StdGoTypes.GoInt)] == _re.rune[(1 : stdgo.StdGoTypes.GoInt)])) {
            if (_p._maybeConcat(_re.rune[(0 : stdgo.StdGoTypes.GoInt)], _p._flags & ((1 : stdgo.regexp.syntax.Syntax.Flags) ^ (-1i32 : stdgo.StdGoTypes.GoInt)))) {
                return null;
            };
            _re.op = (3 : stdgo.regexp.syntax.Syntax.Op);
            _re.rune = (_re.rune.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
            _re.flags = _p._flags & ((1 : stdgo.regexp.syntax.Syntax.Flags) ^ (-1i32 : stdgo.StdGoTypes.GoInt));
        } else if (((((((_re.op == (4 : stdgo.regexp.syntax.Syntax.Op)) && (_re.rune.length == (4 : stdgo.StdGoTypes.GoInt))) && (_re.rune[(0 : stdgo.StdGoTypes.GoInt)] == _re.rune[(1 : stdgo.StdGoTypes.GoInt)])) && (_re.rune[(2 : stdgo.StdGoTypes.GoInt)] == _re.rune[(3 : stdgo.StdGoTypes.GoInt)])) && (stdgo.unicode.Unicode.simpleFold(_re.rune[(0 : stdgo.StdGoTypes.GoInt)]) == _re.rune[(2 : stdgo.StdGoTypes.GoInt)])) && (stdgo.unicode.Unicode.simpleFold(_re.rune[(2 : stdgo.StdGoTypes.GoInt)]) == _re.rune[(0 : stdgo.StdGoTypes.GoInt)])) || (((((_re.op == (4 : stdgo.regexp.syntax.Syntax.Op)) && (_re.rune.length == (2 : stdgo.StdGoTypes.GoInt))) && ((_re.rune[(0 : stdgo.StdGoTypes.GoInt)] + (1 : stdgo.StdGoTypes.GoInt32)) == _re.rune[(1 : stdgo.StdGoTypes.GoInt)])) && (stdgo.unicode.Unicode.simpleFold(_re.rune[(0 : stdgo.StdGoTypes.GoInt)]) == _re.rune[(1 : stdgo.StdGoTypes.GoInt)])) && (stdgo.unicode.Unicode.simpleFold(_re.rune[(1 : stdgo.StdGoTypes.GoInt)]) == _re.rune[(0 : stdgo.StdGoTypes.GoInt)]))) {
            if (_p._maybeConcat(_re.rune[(0 : stdgo.StdGoTypes.GoInt)], _p._flags | (1 : stdgo.regexp.syntax.Syntax.Flags))) {
                return null;
            };
            _re.op = (3 : stdgo.regexp.syntax.Syntax.Op);
            _re.rune = (_re.rune.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
            _re.flags = _p._flags | (1 : stdgo.regexp.syntax.Syntax.Flags);
        } else {
            _p._maybeConcat((-1 : stdgo.StdGoTypes.GoInt32), (0 : stdgo.regexp.syntax.Syntax.Flags));
        };
        _p._stack = (_p._stack.__append__(_re));
        _p._checkLimits(_re);
        return _re;
    }
    @:keep
    static public function _calcHeight( _p:stdgo.StdGoTypes.Ref<T_parser>, _re:stdgo.StdGoTypes.Ref<Regexp>, _force:Bool):stdgo.StdGoTypes.GoInt {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        if (!_force) {
            {
                var __tmp__ = (_p._height != null && _p._height.exists(_re) ? { _0 : _p._height[_re], _1 : true } : { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : false }), _h:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return _h;
                };
            };
        };
        var _h:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
        for (__1 => _sub in _re.sub) {
            var _hsub:stdgo.StdGoTypes.GoInt = _p._calcHeight(_sub, false);
            if (_h < ((1 : stdgo.StdGoTypes.GoInt) + _hsub)) {
                _h = (1 : stdgo.StdGoTypes.GoInt) + _hsub;
            };
        };
        _p._height[_re] = _h;
        return _h;
    }
    @:keep
    static public function _checkHeight( _p:stdgo.StdGoTypes.Ref<T_parser>, _re:stdgo.StdGoTypes.Ref<Regexp>):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        if (_p._numRegexp < (1000 : stdgo.StdGoTypes.GoInt)) {
            return;
        };
        if (_p._height == null) {
            _p._height = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>, stdgo.StdGoTypes.GoInt>();
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>, stdgo.StdGoTypes.GoInt>);
            for (__1 => _re in _p._stack) {
                _p._checkHeight(_re);
            };
        };
        if (_p._calcHeight(_re, true) > (1000 : stdgo.StdGoTypes.GoInt)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode)));
        };
    }
    @:keep
    static public function _calcSize( _p:stdgo.StdGoTypes.Ref<T_parser>, _re:stdgo.StdGoTypes.Ref<Regexp>, _force:Bool):stdgo.StdGoTypes.GoInt64 {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        if (!_force) {
            {
                var __tmp__ = (_p._size != null && _p._size.exists(_re) ? { _0 : _p._size[_re], _1 : true } : { _0 : (0 : stdgo.StdGoTypes.GoInt64), _1 : false }), _size:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return _size;
                };
            };
        };
        var _size:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _re.op;
                    if (__value__ == ((3 : stdgo.regexp.syntax.Syntax.Op))) {
                        _size = (_re.rune.length : stdgo.StdGoTypes.GoInt64);
                        break;
                    } else if (__value__ == ((13 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((14 : stdgo.regexp.syntax.Syntax.Op))) {
                        _size = (2i64 : stdgo.StdGoTypes.GoInt64) + _p._calcSize(_re.sub[(0 : stdgo.StdGoTypes.GoInt)], false);
                        break;
                    } else if (__value__ == ((15 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo.regexp.syntax.Syntax.Op))) {
                        _size = (1i64 : stdgo.StdGoTypes.GoInt64) + _p._calcSize(_re.sub[(0 : stdgo.StdGoTypes.GoInt)], false);
                        break;
                    } else if (__value__ == ((18 : stdgo.regexp.syntax.Syntax.Op))) {
                        for (__1 => _sub in _re.sub) {
                            _size = _size + (_p._calcSize(_sub, false));
                        };
                        break;
                    } else if (__value__ == ((19 : stdgo.regexp.syntax.Syntax.Op))) {
                        for (__2 => _sub in _re.sub) {
                            _size = _size + (_p._calcSize(_sub, false));
                        };
                        if ((_re.sub.length) > (1 : stdgo.StdGoTypes.GoInt)) {
                            _size = _size + ((_re.sub.length : stdgo.StdGoTypes.GoInt64) - (1i64 : stdgo.StdGoTypes.GoInt64));
                        };
                        break;
                    } else if (__value__ == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                        var _sub:stdgo.StdGoTypes.GoInt64 = _p._calcSize(_re.sub[(0 : stdgo.StdGoTypes.GoInt)], false);
                        if (_re.max == ((-1 : stdgo.StdGoTypes.GoInt))) {
                            if (_re.min == ((0 : stdgo.StdGoTypes.GoInt))) {
                                _size = (2i64 : stdgo.StdGoTypes.GoInt64) + _sub;
                            } else {
                                _size = (1i64 : stdgo.StdGoTypes.GoInt64) + ((_re.min : stdgo.StdGoTypes.GoInt64) * _sub);
                            };
                            break;
                        };
                        _size = ((_re.max : stdgo.StdGoTypes.GoInt64) * _sub) + (_re.max - _re.min : stdgo.StdGoTypes.GoInt64);
                        break;
                    };
                };
                break;
            };
        };
        if (_size < (1i64 : stdgo.StdGoTypes.GoInt64)) {
            _size = (1i64 : stdgo.StdGoTypes.GoInt64);
        };
        _p._size[_re] = _size;
        return _size;
    }
    @:keep
    static public function _checkSize( _p:stdgo.StdGoTypes.Ref<T_parser>, _re:stdgo.StdGoTypes.Ref<Regexp>):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        if (_p._size == null) {
            if (_p._repeats == ((0i64 : stdgo.StdGoTypes.GoInt64))) {
                _p._repeats = (1i64 : stdgo.StdGoTypes.GoInt64);
            };
            if (_re.op == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                var _n:stdgo.StdGoTypes.GoInt = _re.max;
                if (_n == ((-1 : stdgo.StdGoTypes.GoInt))) {
                    _n = _re.min;
                };
                if (_n <= (0 : stdgo.StdGoTypes.GoInt)) {
                    _n = (1 : stdgo.StdGoTypes.GoInt);
                };
                if ((_n : stdgo.StdGoTypes.GoInt64) > ((3355443i64 : stdgo.StdGoTypes.GoInt64) / _p._repeats)) {
                    _p._repeats = (3355443i64 : stdgo.StdGoTypes.GoInt64);
                } else {
                    _p._repeats = _p._repeats * ((_n : stdgo.StdGoTypes.GoInt64));
                };
            };
            if ((_p._numRegexp : stdgo.StdGoTypes.GoInt64) < ((3355443i64 : stdgo.StdGoTypes.GoInt64) / _p._repeats)) {
                return;
            };
            _p._size = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>, stdgo.StdGoTypes.GoInt64>();
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>, stdgo.StdGoTypes.GoInt64>);
            for (__1 => _re in _p._stack) {
                _p._checkSize(_re);
            };
        };
        if (_p._calcSize(_re, true) > (3355443i64 : stdgo.StdGoTypes.GoInt64)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode)));
        };
    }
    @:keep
    static public function _checkLimits( _p:stdgo.StdGoTypes.Ref<T_parser>, _re:stdgo.StdGoTypes.Ref<Regexp>):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        if (_p._numRunes > (33554432 : stdgo.StdGoTypes.GoInt)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo.regexp.syntax.Syntax.ErrorCode)));
        };
        _p._checkSize(_re);
        _p._checkHeight(_re);
    }
    @:keep
    static public function _reuse( _p:stdgo.StdGoTypes.Ref<T_parser>, _re:stdgo.StdGoTypes.Ref<Regexp>):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        if (_p._height != null) {
            if (_p._height != null) _p._height.remove(_re);
        };
        _re.sub0[(0 : stdgo.StdGoTypes.GoInt)] = _p._free;
        _p._free = _re;
    }
    @:keep
    static public function _newRegexp( _p:stdgo.StdGoTypes.Ref<T_parser>, _op:Op):stdgo.StdGoTypes.Ref<Regexp> {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_parser> = _p;
        var _re = _p._free;
        if (_re != null && ((_re : Dynamic).__nil__ == null || !(_re : Dynamic).__nil__)) {
            _p._free = _re.sub0[(0 : stdgo.StdGoTypes.GoInt)];
            {
                var __tmp__ = (new stdgo.regexp.syntax.Syntax.Regexp() : stdgo.regexp.syntax.Syntax.Regexp);
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
            _re = (stdgo.Go.setRef(({} : stdgo.regexp.syntax.Syntax.Regexp)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
            _p._numRegexp++;
        };
        _re.op = _op;
        return _re;
    }
}
class T_ranges_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    @:keep
    public dynamic function less(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool return __self__.value.less(_i, _j);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_ranges>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.T_ranges_asInterface) class T_ranges_static_extension {
    @:keep
    static public function swap( _ra:T_ranges, _i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _ra:T_ranges = _ra?.__copy__();
        var _p = (_ra._p : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
        _i = _i * ((2 : stdgo.StdGoTypes.GoInt));
        _j = _j * ((2 : stdgo.StdGoTypes.GoInt));
        {
            final __tmp__0 = _p[(_j : stdgo.StdGoTypes.GoInt)];
            final __tmp__1 = _p[(_j + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
            final __tmp__2 = _p[(_i : stdgo.StdGoTypes.GoInt)];
            final __tmp__3 = _p[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
            _p[(_i : stdgo.StdGoTypes.GoInt)] = __tmp__0;
            _p[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = __tmp__1;
            _p[(_j : stdgo.StdGoTypes.GoInt)] = __tmp__2;
            _p[(_j + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = __tmp__3;
        };
    }
    @:keep
    static public function len( _ra:T_ranges):stdgo.StdGoTypes.GoInt {
        @:recv var _ra:T_ranges = _ra?.__copy__();
        return ((_ra._p : stdgo.Slice<stdgo.StdGoTypes.GoInt32>).length) / (2 : stdgo.StdGoTypes.GoInt);
    }
    @:keep
    static public function less( _ra:T_ranges, _i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
        @:recv var _ra:T_ranges = _ra?.__copy__();
        var _p = (_ra._p : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
        _i = _i * ((2 : stdgo.StdGoTypes.GoInt));
        _j = _j * ((2 : stdgo.StdGoTypes.GoInt));
        return (_p[(_i : stdgo.StdGoTypes.GoInt)] < _p[(_j : stdgo.StdGoTypes.GoInt)]) || ((_p[(_i : stdgo.StdGoTypes.GoInt)] == _p[(_j : stdgo.StdGoTypes.GoInt)]) && (_p[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] > _p[(_j + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]));
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
    public dynamic function prefix():{ var _0 : stdgo.GoString; var _1 : Bool; } return __self__.value.prefix();
    /**
        // skipNop follows any no-op or capturing instructions.
    **/
    @:keep
    public dynamic function _skipNop(_pc:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.Ref<Inst> return __self__.value._skipNop(_pc);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Prog>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.Prog_asInterface) class Prog_static_extension {
    /**
        // StartCond returns the leading empty-width conditions that must
        // be true in any match. It returns ^EmptyOp(0) if no matches are possible.
    **/
    @:keep
    static public function startCond( _p:stdgo.StdGoTypes.Ref<Prog>):EmptyOp {
        stdgo.internal.Macro.controlFlow({
            @:recv var _p:stdgo.StdGoTypes.Ref<Prog> = _p;
            var _flag:EmptyOp = ((0 : stdgo.StdGoTypes.GoUInt8) : stdgo.regexp.syntax.Syntax.EmptyOp);
            var _pc:stdgo.StdGoTypes.GoUInt32 = (_p.start : stdgo.StdGoTypes.GoUInt32);
            var _i = (stdgo.Go.setRef(_p.inst[(_pc : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Inst>);
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
                _i = (stdgo.Go.setRef(_p.inst[(_pc : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Inst>);
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
    static public function prefix( _p:stdgo.StdGoTypes.Ref<Prog>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<Prog> = _p;
        var _prefix:stdgo.GoString = ("" : stdgo.GoString), _complete:Bool = false;
        var _i = _p._skipNop((_p.start : stdgo.StdGoTypes.GoUInt32));
        if ((_i._op() != (7 : stdgo.regexp.syntax.Syntax.InstOp)) || (_i.rune.length != (1 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _i.op == ((4 : stdgo.regexp.syntax.Syntax.InstOp)) };
        };
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        while ((((_i._op() == (7 : stdgo.regexp.syntax.Syntax.InstOp)) && (_i.rune.length == (1 : stdgo.StdGoTypes.GoInt))) && (((_i.arg : Flags) & (1 : stdgo.regexp.syntax.Syntax.Flags)) == (0 : stdgo.regexp.syntax.Syntax.Flags))) && (_i.rune[(0 : stdgo.StdGoTypes.GoInt)] != (65533 : stdgo.StdGoTypes.GoInt32))) {
            _buf.writeRune(_i.rune[(0 : stdgo.StdGoTypes.GoInt)]);
            _i = _p._skipNop(_i.out);
        };
        return { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : _i.op == ((4 : stdgo.regexp.syntax.Syntax.InstOp)) };
    }
    /**
        // skipNop follows any no-op or capturing instructions.
    **/
    @:keep
    static public function _skipNop( _p:stdgo.StdGoTypes.Ref<Prog>, _pc:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.Ref<Inst> {
        @:recv var _p:stdgo.StdGoTypes.Ref<Prog> = _p;
        var _i = (stdgo.Go.setRef(_p.inst[(_pc : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Inst>);
        while ((_i.op == (6 : stdgo.regexp.syntax.Syntax.InstOp)) || (_i.op == (2 : stdgo.regexp.syntax.Syntax.InstOp))) {
            _i = (stdgo.Go.setRef(_p.inst[(_i.out : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Inst>);
        };
        return _i;
    }
    @:keep
    static public function string( _p:stdgo.StdGoTypes.Ref<Prog>):stdgo.GoString {
        @:recv var _p:stdgo.StdGoTypes.Ref<Prog> = _p;
        var _b:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _dumpProg((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), _p);
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
}
class Inst_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    /**
        // MatchEmptyWidth reports whether the instruction matches
        // an empty string between the runes before and after.
        // It should only be called when i.Op == InstEmptyWidth.
    **/
    @:keep
    public dynamic function matchEmptyWidth(_before:stdgo.StdGoTypes.GoRune, _after:stdgo.StdGoTypes.GoRune):Bool return __self__.value.matchEmptyWidth(_before, _after);
    /**
        // MatchRunePos checks whether the instruction matches (and consumes) r.
        // If so, MatchRunePos returns the index of the matching rune pair
        // (or, when len(i.Rune) == 1, rune singleton).
        // If not, MatchRunePos returns -1.
        // MatchRunePos should only be called when i.Op == InstRune.
    **/
    @:keep
    public dynamic function matchRunePos(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoInt return __self__.value.matchRunePos(_r);
    /**
        // MatchRune reports whether the instruction matches (and consumes) r.
        // It should only be called when i.Op == InstRune.
    **/
    @:keep
    public dynamic function matchRune(_r:stdgo.StdGoTypes.GoRune):Bool return __self__.value.matchRune(_r);
    /**
        // op returns i.Op but merges all the Rune special cases into InstRune
    **/
    @:keep
    public dynamic function _op():InstOp return __self__.value._op();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Inst>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.Inst_asInterface) class Inst_static_extension {
    @:keep
    static public function string( _i:stdgo.StdGoTypes.Ref<Inst>):stdgo.GoString {
        @:recv var _i:stdgo.StdGoTypes.Ref<Inst> = _i;
        var _b:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _dumpInst((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), _i);
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
    /**
        // MatchEmptyWidth reports whether the instruction matches
        // an empty string between the runes before and after.
        // It should only be called when i.Op == InstEmptyWidth.
    **/
    @:keep
    static public function matchEmptyWidth( _i:stdgo.StdGoTypes.Ref<Inst>, _before:stdgo.StdGoTypes.GoRune, _after:stdgo.StdGoTypes.GoRune):Bool {
        @:recv var _i:stdgo.StdGoTypes.Ref<Inst> = _i;
        {
            final __value__ = (_i.arg : EmptyOp);
            if (__value__ == ((1 : stdgo.regexp.syntax.Syntax.EmptyOp))) {
                return (_before == (10 : stdgo.StdGoTypes.GoInt32)) || (_before == (-1 : stdgo.StdGoTypes.GoInt32));
            } else if (__value__ == ((2 : stdgo.regexp.syntax.Syntax.EmptyOp))) {
                return (_after == (10 : stdgo.StdGoTypes.GoInt32)) || (_after == (-1 : stdgo.StdGoTypes.GoInt32));
            } else if (__value__ == ((4 : stdgo.regexp.syntax.Syntax.EmptyOp))) {
                return _before == ((-1 : stdgo.StdGoTypes.GoInt32));
            } else if (__value__ == ((8 : stdgo.regexp.syntax.Syntax.EmptyOp))) {
                return _after == ((-1 : stdgo.StdGoTypes.GoInt32));
            } else if (__value__ == ((16 : stdgo.regexp.syntax.Syntax.EmptyOp))) {
                return isWordChar(_before) != (isWordChar(_after));
            } else if (__value__ == ((32 : stdgo.regexp.syntax.Syntax.EmptyOp))) {
                return isWordChar(_before) == (isWordChar(_after));
            };
        };
        throw stdgo.Go.toInterface(("unknown empty width arg" : stdgo.GoString));
    }
    /**
        // MatchRunePos checks whether the instruction matches (and consumes) r.
        // If so, MatchRunePos returns the index of the matching rune pair
        // (or, when len(i.Rune) == 1, rune singleton).
        // If not, MatchRunePos returns -1.
        // MatchRunePos should only be called when i.Op == InstRune.
    **/
    @:keep
    static public function matchRunePos( _i:stdgo.StdGoTypes.Ref<Inst>, _r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoInt {
        @:recv var _i:stdgo.StdGoTypes.Ref<Inst> = _i;
        var _rune = _i.rune;
        {
            final __value__ = (_rune.length);
            if (__value__ == ((0 : stdgo.StdGoTypes.GoInt))) {
                return (-1 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                var _r0:stdgo.StdGoTypes.GoInt32 = _rune[(0 : stdgo.StdGoTypes.GoInt)];
                if (_r == (_r0)) {
                    return (0 : stdgo.StdGoTypes.GoInt);
                };
                if ((_i.arg : Flags) & (1 : stdgo.regexp.syntax.Syntax.Flags) != ((0 : stdgo.regexp.syntax.Syntax.Flags))) {
                    {
                        var _r1:stdgo.StdGoTypes.GoInt32 = stdgo.unicode.Unicode.simpleFold(_r0);
                        stdgo.Go.cfor(_r1 != (_r0), _r1 = stdgo.unicode.Unicode.simpleFold(_r1), {
                            if (_r == (_r1)) {
                                return (0 : stdgo.StdGoTypes.GoInt);
                            };
                        });
                    };
                };
                return (-1 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                if ((_r >= _rune[(0 : stdgo.StdGoTypes.GoInt)]) && (_r <= _rune[(1 : stdgo.StdGoTypes.GoInt)])) {
                    return (0 : stdgo.StdGoTypes.GoInt);
                };
                return (-1 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((4 : stdgo.StdGoTypes.GoInt)) || __value__ == ((6 : stdgo.StdGoTypes.GoInt)) || __value__ == ((8 : stdgo.StdGoTypes.GoInt))) {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < (_rune.length), _j = _j + ((2 : stdgo.StdGoTypes.GoInt)), {
                        if (_r < _rune[(_j : stdgo.StdGoTypes.GoInt)]) {
                            return (-1 : stdgo.StdGoTypes.GoInt);
                        };
                        if (_r <= _rune[(_j + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]) {
                            return _j / (2 : stdgo.StdGoTypes.GoInt);
                        };
                    });
                };
                return (-1 : stdgo.StdGoTypes.GoInt);
            };
        };
        var _lo:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _hi:stdgo.StdGoTypes.GoInt = (_rune.length) / (2 : stdgo.StdGoTypes.GoInt);
        while (_lo < _hi) {
            var _m:stdgo.StdGoTypes.GoInt = _lo + ((_hi - _lo) / (2 : stdgo.StdGoTypes.GoInt));
            {
                var _c:stdgo.StdGoTypes.GoInt32 = _rune[((2 : stdgo.StdGoTypes.GoInt) * _m : stdgo.StdGoTypes.GoInt)];
                if (_c <= _r) {
                    if (_r <= _rune[(((2 : stdgo.StdGoTypes.GoInt) * _m) + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]) {
                        return _m;
                    };
                    _lo = _m + (1 : stdgo.StdGoTypes.GoInt);
                } else {
                    _hi = _m;
                };
            };
        };
        return (-1 : stdgo.StdGoTypes.GoInt);
    }
    /**
        // MatchRune reports whether the instruction matches (and consumes) r.
        // It should only be called when i.Op == InstRune.
    **/
    @:keep
    static public function matchRune( _i:stdgo.StdGoTypes.Ref<Inst>, _r:stdgo.StdGoTypes.GoRune):Bool {
        @:recv var _i:stdgo.StdGoTypes.Ref<Inst> = _i;
        return _i.matchRunePos(_r) != ((-1 : stdgo.StdGoTypes.GoInt));
    }
    /**
        // op returns i.Op but merges all the Rune special cases into InstRune
    **/
    @:keep
    static public function _op( _i:stdgo.StdGoTypes.Ref<Inst>):InstOp {
        @:recv var _i:stdgo.StdGoTypes.Ref<Inst> = _i;
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
    public dynamic function simplify():stdgo.StdGoTypes.Ref<Regexp> return __self__.value.simplify();
    @:keep
    public dynamic function _capNames(_names:stdgo.Slice<stdgo.GoString>):Void __self__.value._capNames(_names);
    /**
        // CapNames walks the regexp to find the names of capturing groups.
    **/
    @:keep
    public dynamic function capNames():stdgo.Slice<stdgo.GoString> return __self__.value.capNames();
    /**
        // MaxCap walks the regexp to find the maximum capture index.
    **/
    @:keep
    public dynamic function maxCap():stdgo.StdGoTypes.GoInt return __self__.value.maxCap();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    /**
        // Equal reports whether x and y have identical structure.
    **/
    @:keep
    public dynamic function equal(_y:stdgo.StdGoTypes.Ref<Regexp>):Bool return __self__.value.equal(_y);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Regexp>;
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
    static public function simplify( _re:stdgo.StdGoTypes.Ref<Regexp>):stdgo.StdGoTypes.Ref<Regexp> {
        @:recv var _re:stdgo.StdGoTypes.Ref<Regexp> = _re;
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
                        _nre = (stdgo.Go.setRef(({} : stdgo.regexp.syntax.Syntax.Regexp)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
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
                        _nre.rune = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
                        _nre.sub = ((_nre.sub0.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>).__append__(...(_re.sub.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>).__toArray__()));
                    };
                    if (_nre != (_re)) {
                        _nre.sub = (_nre.sub.__append__(_nsub));
                    };
                };
                return _nre;
            } else if (__value__ == ((14 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo.regexp.syntax.Syntax.Op))) {
                var _sub = _re.sub[(0 : stdgo.StdGoTypes.GoInt)].simplify();
                return _simplify1(_re.op, _re.flags, _sub, _re);
            } else if (__value__ == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                if ((_re.min == (0 : stdgo.StdGoTypes.GoInt)) && (_re.max == (0 : stdgo.StdGoTypes.GoInt))) {
                    return (stdgo.Go.setRef(({ op : (2 : stdgo.regexp.syntax.Syntax.Op) } : stdgo.regexp.syntax.Syntax.Regexp)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
                };
                var _sub = _re.sub[(0 : stdgo.StdGoTypes.GoInt)].simplify();
                if (_re.max == ((-1 : stdgo.StdGoTypes.GoInt))) {
                    if (_re.min == ((0 : stdgo.StdGoTypes.GoInt))) {
                        return _simplify1((14 : stdgo.regexp.syntax.Syntax.Op), _re.flags, _sub, null);
                    };
                    if (_re.min == ((1 : stdgo.StdGoTypes.GoInt))) {
                        return _simplify1((15 : stdgo.regexp.syntax.Syntax.Op), _re.flags, _sub, null);
                    };
                    var _nre = (stdgo.Go.setRef(({ op : (18 : stdgo.regexp.syntax.Syntax.Op) } : stdgo.regexp.syntax.Syntax.Regexp)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
                    _nre.sub = (_nre.sub0.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < (_re.min - (1 : stdgo.StdGoTypes.GoInt)), _i++, {
                            _nre.sub = (_nre.sub.__append__(_sub));
                        });
                    };
                    _nre.sub = (_nre.sub.__append__(_simplify1((15 : stdgo.regexp.syntax.Syntax.Op), _re.flags, _sub, null)));
                    return _nre;
                };
                if ((_re.min == (1 : stdgo.StdGoTypes.GoInt)) && (_re.max == (1 : stdgo.StdGoTypes.GoInt))) {
                    return _sub;
                };
                var _prefix:stdgo.StdGoTypes.Ref<Regexp> = (null : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
                if (_re.min > (0 : stdgo.StdGoTypes.GoInt)) {
                    _prefix = (stdgo.Go.setRef(({ op : (18 : stdgo.regexp.syntax.Syntax.Op) } : stdgo.regexp.syntax.Syntax.Regexp)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
                    _prefix.sub = (_prefix.sub0.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>);
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _re.min, _i++, {
                            _prefix.sub = (_prefix.sub.__append__(_sub));
                        });
                    };
                };
                if (_re.max > _re.min) {
                    var _suffix = _simplify1((16 : stdgo.regexp.syntax.Syntax.Op), _re.flags, _sub, null);
                    {
                        var _i:stdgo.StdGoTypes.GoInt = _re.min + (1 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _re.max, _i++, {
                            var _nre2 = (stdgo.Go.setRef(({ op : (18 : stdgo.regexp.syntax.Syntax.Op) } : stdgo.regexp.syntax.Syntax.Regexp)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
                            _nre2.sub = ((_nre2.sub0.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>>).__append__(_sub, _suffix));
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
                return (stdgo.Go.setRef(({ op : (1 : stdgo.regexp.syntax.Syntax.Op) } : stdgo.regexp.syntax.Syntax.Regexp)) : stdgo.StdGoTypes.Ref<stdgo.regexp.syntax.Syntax.Regexp>);
            };
        };
        return _re;
    }
    @:keep
    static public function _capNames( _re:stdgo.StdGoTypes.Ref<Regexp>, _names:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _re:stdgo.StdGoTypes.Ref<Regexp> = _re;
        if (_re.op == ((13 : stdgo.regexp.syntax.Syntax.Op))) {
            _names[(_re.cap : stdgo.StdGoTypes.GoInt)] = _re.name?.__copy__();
        };
        for (__1 => _sub in _re.sub) {
            _sub._capNames(_names);
        };
    }
    /**
        // CapNames walks the regexp to find the names of capturing groups.
    **/
    @:keep
    static public function capNames( _re:stdgo.StdGoTypes.Ref<Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.StdGoTypes.Ref<Regexp> = _re;
        var _names = new stdgo.Slice<stdgo.GoString>((_re.maxCap() + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setString__();
        _re._capNames(_names);
        return _names;
    }
    /**
        // MaxCap walks the regexp to find the maximum capture index.
    **/
    @:keep
    static public function maxCap( _re:stdgo.StdGoTypes.Ref<Regexp>):stdgo.StdGoTypes.GoInt {
        @:recv var _re:stdgo.StdGoTypes.Ref<Regexp> = _re;
        var _m:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        if (_re.op == ((13 : stdgo.regexp.syntax.Syntax.Op))) {
            _m = _re.cap;
        };
        for (__1 => _sub in _re.sub) {
            {
                var _n:stdgo.StdGoTypes.GoInt = _sub.maxCap();
                if (_m < _n) {
                    _m = _n;
                };
            };
        };
        return _m;
    }
    @:keep
    static public function string( _re:stdgo.StdGoTypes.Ref<Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.StdGoTypes.Ref<Regexp> = _re;
        var _b:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _writeRegexp((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>), _re);
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
    /**
        // Equal reports whether x and y have identical structure.
    **/
    @:keep
    static public function equal( _x:stdgo.StdGoTypes.Ref<Regexp>, _y:stdgo.StdGoTypes.Ref<Regexp>):Bool {
        @:recv var _x:stdgo.StdGoTypes.Ref<Regexp> = _x;
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
                    if (_r != (_y.rune[(_i : stdgo.StdGoTypes.GoInt)])) {
                        return false;
                    };
                };
            } else if (__value__ == ((19 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((18 : stdgo.regexp.syntax.Syntax.Op))) {
                if ((_x.sub.length) != ((_y.sub.length))) {
                    return false;
                };
                for (_i => _sub in _x.sub) {
                    if (!_sub.equal(_y.sub[(_i : stdgo.StdGoTypes.GoInt)])) {
                        return false;
                    };
                };
            } else if (__value__ == ((14 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo.regexp.syntax.Syntax.Op))) {
                if (((_x.flags & (32 : stdgo.regexp.syntax.Syntax.Flags)) != (_y.flags & (32 : stdgo.regexp.syntax.Syntax.Flags))) || !_x.sub[(0 : stdgo.StdGoTypes.GoInt)].equal(_y.sub[(0 : stdgo.StdGoTypes.GoInt)])) {
                    return false;
                };
            } else if (__value__ == ((17 : stdgo.regexp.syntax.Syntax.Op))) {
                if (((((_x.flags & (32 : stdgo.regexp.syntax.Syntax.Flags)) != (_y.flags & (32 : stdgo.regexp.syntax.Syntax.Flags))) || (_x.min != _y.min)) || (_x.max != _y.max)) || !_x.sub[(0 : stdgo.StdGoTypes.GoInt)].equal(_y.sub[(0 : stdgo.StdGoTypes.GoInt)])) {
                    return false;
                };
            } else if (__value__ == ((13 : stdgo.regexp.syntax.Syntax.Op))) {
                if (((_x.cap != _y.cap) || (_x.name != _y.name)) || !_x.sub[(0 : stdgo.StdGoTypes.GoInt)].equal(_y.sub[(0 : stdgo.StdGoTypes.GoInt)])) {
                    return false;
                };
            };
        };
        return true;
    }
}
class ErrorCode_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ErrorCode>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.ErrorCode_asInterface) class ErrorCode_static_extension {
    @:keep
    static public function string( _e:ErrorCode):stdgo.GoString {
        @:recv var _e:ErrorCode = _e;
        return (_e : stdgo.GoString)?.__copy__();
    }
}
class InstOp_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<InstOp>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.InstOp_asInterface) class InstOp_static_extension {
    @:keep
    static public function string( _i:InstOp):stdgo.GoString {
        @:recv var _i:InstOp = _i;
        if ((_i : stdgo.StdGoTypes.GoUInt) >= (_instOpNames.length : stdgo.StdGoTypes.GoUInt)) {
            return stdgo.Go.str()?.__copy__();
        };
        return _instOpNames[(_i : stdgo.StdGoTypes.GoInt)]?.__copy__();
    }
}
class Op_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Op>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.regexp.syntax.Syntax.Op_asInterface) class Op_static_extension {
    @:keep
    static public function string( _i:Op):stdgo.GoString {
        @:recv var _i:Op = _i;
        if (((1 : stdgo.regexp.syntax.Syntax.Op) <= _i) && (_i <= (19 : stdgo.regexp.syntax.Syntax.Op))) {
            _i = _i - ((1 : stdgo.regexp.syntax.Syntax.Op));
            return (("NoMatchEmptyMatchLiteralCharClassAnyCharNotNLAnyCharBeginLineEndLineBeginTextEndTextWordBoundaryNoWordBoundaryCaptureStarPlusQuestRepeatConcatAlternate" : stdgo.GoString).__slice__(__Op_index_0[(_i : stdgo.StdGoTypes.GoInt)], __Op_index_0[(_i + (1 : stdgo.regexp.syntax.Syntax.Op) : stdgo.StdGoTypes.GoInt)]) : stdgo.GoString)?.__copy__();
        } else if (_i == ((128 : stdgo.regexp.syntax.Syntax.Op))) {
            return ("opPseudo" : stdgo.GoString);
        } else {
            return ("Op(" : stdgo.GoString) + stdgo.strconv.Strconv.formatInt((_i : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt))?.__copy__() + (")" : stdgo.GoString)?.__copy__()?.__copy__();
        };
    }
}
