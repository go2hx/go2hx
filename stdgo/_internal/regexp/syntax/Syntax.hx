package stdgo._internal.regexp.syntax;
private var __go2hxdoc__package : Bool;
final __Op_name_0 : stdgo.GoString = ("NoMatchEmptyMatchLiteralCharClassAnyCharNotNLAnyCharBeginLineEndLineBeginTextEndTextWordBoundaryNoWordBoundaryCaptureStarPlusQuestRepeatConcatAlternate" : stdgo.GoString);
final __Op_name_1 : stdgo.GoString = ("opPseudo" : stdgo.GoString);
final errInternalError : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("regexp/syntax: internal error" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errInvalidCharClass : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("invalid character class" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errInvalidCharRange : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errInvalidEscape : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errInvalidNamedCapture : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("invalid named capture" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errInvalidPerlOp : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("invalid or unsupported Perl syntax" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errInvalidRepeatOp : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("invalid nested repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errInvalidRepeatSize : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errInvalidUTF8 : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("invalid UTF-8" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errMissingBracket : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("missing closing ]" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errMissingParen : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errMissingRepeatArgument : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("missing argument to repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errTrailingBackslash : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("trailing backslash at end of expression" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errUnexpectedParen : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("unexpected )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errNestingDepth : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final errLarge : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
final foldCase : stdgo._internal.regexp.syntax.Syntax.Flags = (512 : stdgo._internal.regexp.syntax.Syntax.Flags);
final literal = (512 : stdgo._internal.regexp.syntax.Syntax.Flags);
final classNL = (512 : stdgo._internal.regexp.syntax.Syntax.Flags);
final dotNL = (512 : stdgo._internal.regexp.syntax.Syntax.Flags);
final oneLine = (512 : stdgo._internal.regexp.syntax.Syntax.Flags);
final nonGreedy = (512 : stdgo._internal.regexp.syntax.Syntax.Flags);
final perlX = (512 : stdgo._internal.regexp.syntax.Syntax.Flags);
final unicodeGroups = (512 : stdgo._internal.regexp.syntax.Syntax.Flags);
final wasDollar = (512 : stdgo._internal.regexp.syntax.Syntax.Flags);
final simple = (512 : stdgo._internal.regexp.syntax.Syntax.Flags);
final matchNL : stdgo._internal.regexp.syntax.Syntax.Flags = (12 : stdgo._internal.regexp.syntax.Syntax.Flags);
final perl : stdgo._internal.regexp.syntax.Syntax.Flags = (212 : stdgo._internal.regexp.syntax.Syntax.Flags);
final posix : stdgo._internal.regexp.syntax.Syntax.Flags = (0 : stdgo._internal.regexp.syntax.Syntax.Flags);
final _opLeftParen : stdgo._internal.regexp.syntax.Syntax.Op = (129 : stdgo._internal.regexp.syntax.Syntax.Op);
final _opVerticalBar = (129 : stdgo._internal.regexp.syntax.Syntax.Op);
final _maxHeight : stdgo.GoUInt64 = (1000i64 : stdgo.GoUInt64);
final _maxSize : stdgo.GoUInt64 = (3355443i64 : stdgo.GoUInt64);
final _instSize : stdgo.GoUInt64 = (40i64 : stdgo.GoUInt64);
final _maxRunes : stdgo.GoUInt64 = (33554432i64 : stdgo.GoUInt64);
final _runeSize : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
final _minFold : stdgo.GoUInt64 = (65i64 : stdgo.GoUInt64);
final _maxFold : stdgo.GoUInt64 = (125251i64 : stdgo.GoUInt64);
final _testFlags : stdgo._internal.regexp.syntax.Syntax.Flags = (204 : stdgo._internal.regexp.syntax.Syntax.Flags);
final instAlt : stdgo._internal.regexp.syntax.Syntax.InstOp = (10 : stdgo._internal.regexp.syntax.Syntax.InstOp);
final instAltMatch = (10 : stdgo._internal.regexp.syntax.Syntax.InstOp);
final instCapture = (10 : stdgo._internal.regexp.syntax.Syntax.InstOp);
final instEmptyWidth = (10 : stdgo._internal.regexp.syntax.Syntax.InstOp);
final instMatch = (10 : stdgo._internal.regexp.syntax.Syntax.InstOp);
final instFail = (10 : stdgo._internal.regexp.syntax.Syntax.InstOp);
final instNop = (10 : stdgo._internal.regexp.syntax.Syntax.InstOp);
final instRune = (10 : stdgo._internal.regexp.syntax.Syntax.InstOp);
final instRune1 = (10 : stdgo._internal.regexp.syntax.Syntax.InstOp);
final instRuneAny = (10 : stdgo._internal.regexp.syntax.Syntax.InstOp);
final instRuneAnyNotNL = (10 : stdgo._internal.regexp.syntax.Syntax.InstOp);
final emptyBeginLine : stdgo._internal.regexp.syntax.Syntax.EmptyOp = (32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
final emptyEndLine = (32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
final emptyBeginText = (32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
final emptyEndText = (32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
final emptyWordBoundary = (32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
final emptyNoWordBoundary = (32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
final _noMatch : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
var _sink : stdgo.AnyInterface = (null : stdgo.AnyInterface);
final opNoMatch : stdgo._internal.regexp.syntax.Syntax.Op = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opEmptyMatch = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opLiteral = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opCharClass = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opAnyCharNotNL = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opAnyChar = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opBeginLine = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opEndLine = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opBeginText = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opEndText = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opWordBoundary = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opNoWordBoundary = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opCapture = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opStar = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opPlus = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opQuest = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opRepeat = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opConcat = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final opAlternate = (19 : stdgo._internal.regexp.syntax.Syntax.Op);
final _opPseudo : stdgo._internal.regexp.syntax.Syntax.Op = (128 : stdgo._internal.regexp.syntax.Syntax.Op);
final _meta : stdgo.GoString = ("\\.+*?()|[]{}^$" : stdgo.GoString);
var _anyRuneNotNL : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(0 : stdgo.GoInt32), (9 : stdgo.GoInt32), (11 : stdgo.GoInt32), (1114111 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _anyRune : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(0 : stdgo.GoInt32), (1114111 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var __Op_index_0 : stdgo.GoArray<stdgo.GoUInt8> = (new stdgo.GoArray<stdgo.GoUInt8>(20, 20, ...[
(0 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(24 : stdgo.GoUInt8),
(33 : stdgo.GoUInt8),
(45 : stdgo.GoUInt8),
(52 : stdgo.GoUInt8),
(61 : stdgo.GoUInt8),
(68 : stdgo.GoUInt8),
(77 : stdgo.GoUInt8),
(84 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(110 : stdgo.GoUInt8),
(117 : stdgo.GoUInt8),
(121 : stdgo.GoUInt8),
(125 : stdgo.GoUInt8),
(130 : stdgo.GoUInt8),
(136 : stdgo.GoUInt8),
(142 : stdgo.GoUInt8),
(151 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>);
var _anyTable : stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable> = (stdgo.Go.setRef(({ r16 : (new stdgo.Slice<stdgo._internal.unicode.Unicode.Range16>(1, 1, ...[({ lo : (0 : stdgo.GoUInt16), hi : (65535 : stdgo.GoUInt16), stride : (1 : stdgo.GoUInt16) } : stdgo._internal.unicode.Unicode.Range16)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.Unicode.Range16)])) : stdgo.Slice<stdgo._internal.unicode.Unicode.Range16>), r32 : (new stdgo.Slice<stdgo._internal.unicode.Unicode.Range32>(1, 1, ...[({ lo : (65536u32 : stdgo.GoUInt32), hi : (1114111u32 : stdgo.GoUInt32), stride : (1u32 : stdgo.GoUInt32) } : stdgo._internal.unicode.Unicode.Range32)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.Unicode.Range32)])) : stdgo.Slice<stdgo._internal.unicode.Unicode.Range32>) } : stdgo._internal.unicode.Unicode.RangeTable)) : stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>);
var _code1 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(48 : stdgo.GoInt32), (57 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code2 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(6, 6, ...[(9 : stdgo.GoInt32), (10 : stdgo.GoInt32), (12 : stdgo.GoInt32), (13 : stdgo.GoInt32), (32 : stdgo.GoInt32), (32 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code3 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(8, 8, ...[(48 : stdgo.GoInt32), (57 : stdgo.GoInt32), (65 : stdgo.GoInt32), (90 : stdgo.GoInt32), (95 : stdgo.GoInt32), (95 : stdgo.GoInt32), (97 : stdgo.GoInt32), (122 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _perlGroup : stdgo.GoMap<stdgo.GoString, stdgo._internal.regexp.syntax.Syntax.T_charGroup> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo._internal.regexp.syntax.Syntax.T_charGroup>();
        x.__defaultValue__ = () -> ({} : stdgo._internal.regexp.syntax.Syntax.T_charGroup);
        @:mergeBlock {
            x.set(("\\d" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code1) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\D" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code1) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\s" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code2) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\S" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code2) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\w" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code3) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("\\W" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code3) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo._internal.regexp.syntax.Syntax.T_charGroup>);
var _code4 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(6, 6, ...[(48 : stdgo.GoInt32), (57 : stdgo.GoInt32), (65 : stdgo.GoInt32), (90 : stdgo.GoInt32), (97 : stdgo.GoInt32), (122 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code5 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(65 : stdgo.GoInt32), (90 : stdgo.GoInt32), (97 : stdgo.GoInt32), (122 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code6 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(0 : stdgo.GoInt32), (127 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code7 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(9 : stdgo.GoInt32), (9 : stdgo.GoInt32), (32 : stdgo.GoInt32), (32 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code8 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(0 : stdgo.GoInt32), (31 : stdgo.GoInt32), (127 : stdgo.GoInt32), (127 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code9 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(48 : stdgo.GoInt32), (57 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code10 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(33 : stdgo.GoInt32), (126 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code11 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(97 : stdgo.GoInt32), (122 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code12 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(32 : stdgo.GoInt32), (126 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code13 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(8, 8, ...[(33 : stdgo.GoInt32), (47 : stdgo.GoInt32), (58 : stdgo.GoInt32), (64 : stdgo.GoInt32), (91 : stdgo.GoInt32), (96 : stdgo.GoInt32), (123 : stdgo.GoInt32), (126 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code14 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(4, 4, ...[(9 : stdgo.GoInt32), (13 : stdgo.GoInt32), (32 : stdgo.GoInt32), (32 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code15 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(65 : stdgo.GoInt32), (90 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code16 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(8, 8, ...[(48 : stdgo.GoInt32), (57 : stdgo.GoInt32), (65 : stdgo.GoInt32), (90 : stdgo.GoInt32), (95 : stdgo.GoInt32), (95 : stdgo.GoInt32), (97 : stdgo.GoInt32), (122 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _code17 : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(6, 6, ...[(48 : stdgo.GoInt32), (57 : stdgo.GoInt32), (65 : stdgo.GoInt32), (70 : stdgo.GoInt32), (97 : stdgo.GoInt32), (102 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _posixGroup : stdgo.GoMap<stdgo.GoString, stdgo._internal.regexp.syntax.Syntax.T_charGroup> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo._internal.regexp.syntax.Syntax.T_charGroup>();
        x.__defaultValue__ = () -> ({} : stdgo._internal.regexp.syntax.Syntax.T_charGroup);
        @:mergeBlock {
            x.set(("[:alnum:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code4) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^alnum:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code4) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:alpha:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code5) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^alpha:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code5) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:ascii:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code6) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^ascii:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code6) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:blank:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code7) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^blank:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code7) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:cntrl:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code8) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^cntrl:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code8) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:digit:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code9) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^digit:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code9) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:graph:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code10) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^graph:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code10) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:lower:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code11) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^lower:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code11) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:print:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code12) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^print:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code12) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:punct:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code13) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^punct:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code13) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:space:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code14) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^space:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code14) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:upper:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code15) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^upper:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code15) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:word:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code16) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^word:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code16) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:xdigit:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((1 : stdgo.GoInt), _code17) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
            x.set(("[:^xdigit:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax.T_charGroup((-1 : stdgo.GoInt), _code17) : stdgo._internal.regexp.syntax.Syntax.T_charGroup));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo._internal.regexp.syntax.Syntax.T_charGroup>);
var _instOpNames : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(11, 11, ...[
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
("InstRuneAnyNotNL" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _foldcaseTests : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.T_parseTest> = (new stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.T_parseTest>(6, 6, ...[(new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("AbCdE" : stdgo.GoString), ("strfold{ABCDE}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("[Aa]" : stdgo.GoString), ("litfold{A}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("a" : stdgo.GoString), ("litfold{A}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("A[F-g]" : stdgo.GoString), ("cat{litfold{A}cc{0x41-0x7a 0x17f 0x212a}}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("[[:upper:]]" : stdgo.GoString), ("cc{0x41-0x5a 0x61-0x7a 0x17f 0x212a}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("[[:lower:]]" : stdgo.GoString), ("cc{0x41-0x5a 0x61-0x7a 0x17f 0x212a}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.syntax.Syntax.T_parseTest)])) : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.T_parseTest>);
var _literalTests : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.T_parseTest> = (new stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.T_parseTest>(1, 1, ...[(new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("(|)^$.[*+?]{5,10},\\" : stdgo.GoString), ("str{(|)^$.[*+?]{5,10},\\}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.syntax.Syntax.T_parseTest)])) : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.T_parseTest>);
var _matchnlTests : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.T_parseTest> = (new stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.T_parseTest>(4, 4, ...[(new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("." : stdgo.GoString), ("dot{}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("\n" : stdgo.GoString), ("lit{\n}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("[^a]" : stdgo.GoString), ("cc{0x0-0x60 0x62-0x10ffff}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("[a\\n]" : stdgo.GoString), ("cc{0xa 0x61}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.syntax.Syntax.T_parseTest)])) : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.T_parseTest>);
var _nomatchnlTests : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.T_parseTest> = (new stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.T_parseTest>(4, 4, ...[(new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("." : stdgo.GoString), ("dnl{}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("\n" : stdgo.GoString), ("lit{\n}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("[^a]" : stdgo.GoString), ("cc{0x0-0x9 0xb-0x60 0x62-0x10ffff}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax.T_parseTest(("[a\\n]" : stdgo.GoString), ("cc{0xa 0x61}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.T_parseTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.syntax.Syntax.T_parseTest)])) : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.T_parseTest>);
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
var _parseTests : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.T_parseTest> = null;
var _invalidRegexps : stdgo.Slice<stdgo.GoString> = null;
var _onlyPerl : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("[a-b-c]" : stdgo.GoString), ("\\Qabc\\E" : stdgo.GoString), ("\\Q*+?{[\\E" : stdgo.GoString), ("\\Q\\\\E" : stdgo.GoString), ("\\Q\\\\\\E" : stdgo.GoString), ("\\Q\\\\\\\\E" : stdgo.GoString), ("\\Q\\\\\\\\\\E" : stdgo.GoString), ("(?:a)" : stdgo.GoString), ("(?P<name>a)" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _onlyPOSIX : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("a++" : stdgo.GoString), ("a**" : stdgo.GoString), ("a?*" : stdgo.GoString), ("a+*" : stdgo.GoString), ("a{1}*" : stdgo.GoString), (".{1}{2}.{3}" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _compileTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(16, 16, ...[
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
({ regexp : ("(?:|a)*" : stdgo.GoString), prog : ("  0\tfail\n  1\tnop -> 4\n  2\trune1 \"a\" -> 4\n  3\talt -> 1, 2\n  4\talt -> 3, 6\n  5*\talt -> 3, 6\n  6\tmatch\n" : stdgo.GoString) } : T__struct_1)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({ regexp : ("" : stdgo.GoString), prog : ("" : stdgo.GoString) } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
var _simplifyTests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(97, 97, ...[
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
({ regexp : ("(){0,2}" : stdgo.GoString), simple : ("(?:()()?)?" : stdgo.GoString) } : T__struct_2)].concat([for (i in 97 ... (97 > 97 ? 97 : 97 : stdgo.GoInt).toBasic()) ({ regexp : ("" : stdgo.GoString), simple : ("" : stdgo.GoString) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
@:structInit @:private @:using(stdgo._internal.regexp.syntax.Syntax.T_patchList_static_extension) class T_patchList {
    public var _head : stdgo.GoUInt32 = 0;
    public var _tail : stdgo.GoUInt32 = 0;
    public function new(?_head:stdgo.GoUInt32, ?_tail:stdgo.GoUInt32) {
        if (_head != null) this._head = _head;
        if (_tail != null) this._tail = _tail;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_patchList(_head, _tail);
    }
}
@:structInit @:private class T_frag {
    public var _i : stdgo.GoUInt32 = 0;
    public var _out : stdgo._internal.regexp.syntax.Syntax.T_patchList = ({} : stdgo._internal.regexp.syntax.Syntax.T_patchList);
    public var _nullable : Bool = false;
    public function new(?_i:stdgo.GoUInt32, ?_out:stdgo._internal.regexp.syntax.Syntax.T_patchList, ?_nullable:Bool) {
        if (_i != null) this._i = _i;
        if (_out != null) this._out = _out;
        if (_nullable != null) this._nullable = _nullable;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_frag(_i, _out, _nullable);
    }
}
@:structInit @:private @:using(stdgo._internal.regexp.syntax.Syntax.T_compiler_static_extension) class T_compiler {
    public var _p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>);
    public function new(?_p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_compiler(_p);
    }
}
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax.Error_static_extension) class Error {
    public var code : stdgo._internal.regexp.syntax.Syntax.ErrorCode = (("" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode);
    public var expr : stdgo.GoString = "";
    public function new(?code:stdgo._internal.regexp.syntax.Syntax.ErrorCode, ?expr:stdgo.GoString) {
        if (code != null) this.code = code;
        if (expr != null) this.expr = expr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Error(code, expr);
    }
}
@:structInit @:private @:using(stdgo._internal.regexp.syntax.Syntax.T_parser_static_extension) class T_parser {
    public var _flags : stdgo._internal.regexp.syntax.Syntax.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax.Flags);
    public var _stack : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
    public var _free : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
    public var _numCap : stdgo.GoInt = 0;
    public var _wholeRegexp : stdgo.GoString = "";
    public var _tmpClass : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _numRegexp : stdgo.GoInt = 0;
    public var _numRunes : stdgo.GoInt = 0;
    public var _repeats : stdgo.GoInt64 = 0;
    public var _height : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>, stdgo.GoInt>);
    public var _size : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>, stdgo.GoInt64> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>, stdgo.GoInt64>);
    public function new(?_flags:stdgo._internal.regexp.syntax.Syntax.Flags, ?_stack:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>, ?_free:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>, ?_numCap:stdgo.GoInt, ?_wholeRegexp:stdgo.GoString, ?_tmpClass:stdgo.Slice<stdgo.GoInt32>, ?_numRegexp:stdgo.GoInt, ?_numRunes:stdgo.GoInt, ?_repeats:stdgo.GoInt64, ?_height:stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>, stdgo.GoInt>, ?_size:stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>, stdgo.GoInt64>) {
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
@:structInit @:private class T_charGroup {
    public var _sign : stdgo.GoInt = 0;
    public var _class : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public function new(?_sign:stdgo.GoInt, ?_class:stdgo.Slice<stdgo.GoInt32>) {
        if (_sign != null) this._sign = _sign;
        if (_class != null) this._class = _class;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_charGroup(_sign, _class);
    }
}
@:structInit @:private @:using(stdgo._internal.regexp.syntax.Syntax.T_ranges_static_extension) class T_ranges {
    public var _p : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>);
    public function new(?_p:stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ranges(_p);
    }
}
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
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax.Prog_static_extension) class Prog {
    public var inst : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.Inst> = (null : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.Inst>);
    public var start : stdgo.GoInt = 0;
    public var numCap : stdgo.GoInt = 0;
    public function new(?inst:stdgo.Slice<stdgo._internal.regexp.syntax.Syntax.Inst>, ?start:stdgo.GoInt, ?numCap:stdgo.GoInt) {
        if (inst != null) this.inst = inst;
        if (start != null) this.start = start;
        if (numCap != null) this.numCap = numCap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Prog(inst, start, numCap);
    }
}
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax.Inst_static_extension) class Inst {
    public var op : stdgo._internal.regexp.syntax.Syntax.InstOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax.InstOp);
    public var out : stdgo.GoUInt32 = 0;
    public var arg : stdgo.GoUInt32 = 0;
    public var rune : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public function new(?op:stdgo._internal.regexp.syntax.Syntax.InstOp, ?out:stdgo.GoUInt32, ?arg:stdgo.GoUInt32, ?rune:stdgo.Slice<stdgo.GoInt32>) {
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
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax.Regexp_static_extension) class Regexp {
    public var op : stdgo._internal.regexp.syntax.Syntax.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax.Op);
    public var flags : stdgo._internal.regexp.syntax.Syntax.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax.Flags);
    public var sub : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
    public var sub0 : stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>> = new stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>(1, 1, ...[for (i in 0 ... 1) (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>)]);
    public var rune : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var rune0 : stdgo.GoArray<stdgo.GoInt32> = new stdgo.GoArray<stdgo.GoInt32>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoInt32)]);
    public var min : stdgo.GoInt = 0;
    public var max : stdgo.GoInt = 0;
    public var cap : stdgo.GoInt = 0;
    public var name : stdgo.GoString = "";
    public function new(?op:stdgo._internal.regexp.syntax.Syntax.Op, ?flags:stdgo._internal.regexp.syntax.Syntax.Flags, ?sub:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>, ?sub0:stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>, ?rune:stdgo.Slice<stdgo.GoInt32>, ?rune0:stdgo.GoArray<stdgo.GoInt32>, ?min:stdgo.GoInt, ?max:stdgo.GoInt, ?cap:stdgo.GoInt, ?name:stdgo.GoString) {
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.regexp.syntax.Syntax.T__struct_0_static_extension) typedef T__struct_0 = {};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.regexp.syntax.Syntax.T__struct_1_static_extension) typedef T__struct_1 = {
    public var regexp : stdgo.GoString;
    public var prog : stdgo.GoString;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.regexp.syntax.Syntax.T__struct_2_static_extension) typedef T__struct_2 = {
    public var regexp : stdgo.GoString;
    public var simple : stdgo.GoString;
};
@:named @:using(stdgo._internal.regexp.syntax.Syntax.ErrorCode_static_extension) typedef ErrorCode = stdgo.GoString;
@:named typedef Flags = stdgo.GoUInt16;
@:named @:using(stdgo._internal.regexp.syntax.Syntax.InstOp_static_extension) typedef InstOp = stdgo.GoUInt8;
@:named typedef EmptyOp = stdgo.GoUInt8;
@:named @:using(stdgo._internal.regexp.syntax.Syntax.Op_static_extension) typedef Op = stdgo.GoUInt8;
function _makePatchList(_n:stdgo.GoUInt32):T_patchList {
        return (new stdgo._internal.regexp.syntax.Syntax.T_patchList(_n, _n) : stdgo._internal.regexp.syntax.Syntax.T_patchList);
    }
function compile(_re:stdgo.Ref<Regexp>):{ var _0 : stdgo.Ref<Prog>; var _1 : stdgo.Error; } {
        var _c:T_compiler = ({} : stdgo._internal.regexp.syntax.Syntax.T_compiler);
        _c._init();
        var _f:stdgo._internal.regexp.syntax.Syntax.T_frag = _c._compile(_re)?.__copy__();
        _f._out._patch(_c._p, _c._inst((4 : stdgo._internal.regexp.syntax.Syntax.InstOp))._i);
        _c._p.start = (_f._i : stdgo.GoInt);
        return { _0 : _c._p, _1 : (null : stdgo.Error) };
    }
function _minFoldRune(_r:stdgo.GoRune):stdgo.GoRune {
        if (((_r < (65 : stdgo.GoInt32) : Bool) || (_r > (125251 : stdgo.GoInt32) : Bool) : Bool)) {
            return _r;
        };
        var _min:stdgo.GoInt32 = _r;
        var _r0:stdgo.GoInt32 = _r;
        {
            _r = stdgo._internal.unicode.Unicode.simpleFold(_r);
            stdgo.Go.cfor(_r != (_r0), _r = stdgo._internal.unicode.Unicode.simpleFold(_r), {
                if ((_min > _r : Bool)) {
                    _min = _r;
                };
            });
        };
        return _min;
    }
function _repeatIsValid(_re:stdgo.Ref<Regexp>, _n:stdgo.GoInt):Bool {
        if (_re.op == ((17 : stdgo._internal.regexp.syntax.Syntax.Op))) {
            var _m:stdgo.GoInt = _re.max;
            if (_m == ((0 : stdgo.GoInt))) {
                return true;
            };
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                _m = _re.min;
            };
            if ((_m > _n : Bool)) {
                return false;
            };
            if ((_m > (0 : stdgo.GoInt) : Bool)) {
                _n = (_n / (_m) : stdgo.GoInt);
            };
        };
        for (__1 => _sub in _re.sub) {
            if (!_repeatIsValid(_sub, _n)) {
                return false;
            };
        };
        return true;
    }
function _cleanAlt(_re:stdgo.Ref<Regexp>):Void {
        {
            final __value__ = _re.op;
            if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                _re.rune = _cleanClass((stdgo.Go.setRef(_re.rune) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
                if ((((_re.rune.length) == ((2 : stdgo.GoInt)) && _re.rune[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && (_re.rune[(1 : stdgo.GoInt)] == (1114111 : stdgo.GoInt32)) : Bool)) {
                    _re.rune = (null : stdgo.Slice<stdgo.GoInt32>);
                    _re.op = (6 : stdgo._internal.regexp.syntax.Syntax.Op);
                    return;
                };
                if ((((((_re.rune.length) == ((4 : stdgo.GoInt)) && _re.rune[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && _re.rune[(1 : stdgo.GoInt)] == ((9 : stdgo.GoInt32)) : Bool) && _re.rune[(2 : stdgo.GoInt)] == ((11 : stdgo.GoInt32)) : Bool) && (_re.rune[(3 : stdgo.GoInt)] == (1114111 : stdgo.GoInt32)) : Bool)) {
                    _re.rune = (null : stdgo.Slice<stdgo.GoInt32>);
                    _re.op = (5 : stdgo._internal.regexp.syntax.Syntax.Op);
                    return;
                };
                if (((_re.rune.capacity - (_re.rune.length) : stdgo.GoInt) > (100 : stdgo.GoInt) : Bool)) {
                    _re.rune = ((_re.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).__append__(...(_re.rune : Array<stdgo.GoInt32>)));
                };
            };
        };
    }
function _literalRegexp(_s:stdgo.GoString, _flags:Flags):stdgo.Ref<Regexp> {
        var _re = (stdgo.Go.setRef(({ op : (3 : stdgo._internal.regexp.syntax.Syntax.Op) } : stdgo._internal.regexp.syntax.Syntax.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
        _re.flags = _flags;
        _re.rune = (_re.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        for (__1 => _c in _s) {
            if (((_re.rune.length) >= _re.rune.capacity : Bool)) {
                _re.rune = (_s : stdgo.Slice<stdgo.GoRune>);
                break;
            };
            _re.rune = (_re.rune.__append__(_c));
        };
        return _re;
    }
function parse(_s:stdgo.GoString, _flags:Flags):{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } {
        return _parse(_s?.__copy__(), _flags);
    }
function _parse(_s:stdgo.GoString, _flags:Flags):{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } {
        stdgo._internal.internal.Macro.controlFlow({
            var __deferstack__:Array<Void -> Void> = [];
            var _0:stdgo.Ref<Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>), _err:stdgo.Error = (null : stdgo.Error);
            try {
                __deferstack__.unshift(() -> {
                    var a = function():Void {
                        {
                            var _r:stdgo.AnyInterface = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                            {
                                final __value__ = _r;
                                if (__value__ == null) {} else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))))) {
                                    _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>));
                                } else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))))) {
                                    _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>));
                                } else {
                                    throw stdgo.Go.toInterface(_r);
                                };
                            };
                        };
                    };
                    a();
                });
                if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                    {
                        var _err:stdgo.Error = _checkUTF8(_s?.__copy__());
                        if (_err != null) {
                            {
                                final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                    };
                    {
                        final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : _literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                var __0:T_parser = ({} : stdgo._internal.regexp.syntax.Syntax.T_parser), __1:stdgo.GoRune = (0 : stdgo.GoInt32), __2:Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax.Op), __3:stdgo.GoString = ("" : stdgo.GoString), _lastRepeat:stdgo.GoString = __3, _op:Op = __2, _c:stdgo.GoRune = __1, _p:T_parser = __0;
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
                                final __value__ = _t[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    if ((((_p._flags & (64 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags)) && ((_t.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                                        {
                                            {
                                                var __tmp__ = _p._parsePerlFlags(_t?.__copy__());
                                                _t = __tmp__._0?.__copy__();
                                                _err = __tmp__._1;
                                            };
                                            if (_err != null) {
                                                {
                                                    final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                    for (defer in __deferstack__) {
                                                        defer();
                                                    };
                                                    return __ret__;
                                                };
                                            };
                                        };
                                        break;
                                    };
                                    _p._numCap++;
                                    _p._op((128 : stdgo._internal.regexp.syntax.Syntax.Op)).cap = _p._numCap;
                                    _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    {
                                        _err = _p._parseVerticalBar();
                                        if (_err != null) {
                                            {
                                                final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return __ret__;
                                            };
                                        };
                                    };
                                    _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    {
                                        _err = _p._parseRightParen();
                                        if (_err != null) {
                                            {
                                                final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return __ret__;
                                            };
                                        };
                                    };
                                    _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    if ((_p._flags & (16 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                                        _p._op((9 : stdgo._internal.regexp.syntax.Syntax.Op));
                                    } else {
                                        _p._op((7 : stdgo._internal.regexp.syntax.Syntax.Op));
                                    };
                                    _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    if ((_p._flags & (16 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                                        _p._op((10 : stdgo._internal.regexp.syntax.Syntax.Op)).flags = (_p._op((10 : stdgo._internal.regexp.syntax.Syntax.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax.Flags)) : stdgo._internal.regexp.syntax.Syntax.Flags);
                                    } else {
                                        _p._op((8 : stdgo._internal.regexp.syntax.Syntax.Op));
                                    };
                                    _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    if ((_p._flags & (8 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                                        _p._op((6 : stdgo._internal.regexp.syntax.Syntax.Op));
                                    } else {
                                        _p._op((5 : stdgo._internal.regexp.syntax.Syntax.Op));
                                    };
                                    _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    break;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    {
                                        {
                                            var __tmp__ = _p._parseClass(_t?.__copy__());
                                            _t = __tmp__._0?.__copy__();
                                            _err = __tmp__._1;
                                        };
                                        if (_err != null) {
                                            {
                                                final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return __ret__;
                                            };
                                        };
                                    };
                                    break;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    var _before:stdgo.GoString = _t?.__copy__();
                                    {
                                        final __value__ = _t[(0 : stdgo.GoInt)];
                                        if (__value__ == ((42 : stdgo.GoUInt8))) {
                                            _op = (14 : stdgo._internal.regexp.syntax.Syntax.Op);
                                        } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                            _op = (15 : stdgo._internal.regexp.syntax.Syntax.Op);
                                        } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                            _op = (16 : stdgo._internal.regexp.syntax.Syntax.Op);
                                        };
                                    };
                                    var _after:stdgo.GoString = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                    {
                                        {
                                            var __tmp__ = _p._repeat(_op, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before?.__copy__(), _after?.__copy__(), _lastRepeat?.__copy__());
                                            _after = __tmp__._0?.__copy__();
                                            _err = __tmp__._1;
                                        };
                                        if (_err != null) {
                                            {
                                                final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return __ret__;
                                            };
                                        };
                                    };
                                    _repeat = _before?.__copy__();
                                    _t = _after?.__copy__();
                                    break;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _op = (17 : stdgo._internal.regexp.syntax.Syntax.Op);
                                    var _before:stdgo.GoString = _t?.__copy__();
                                    var __tmp__ = _p._parseRepeat(_t?.__copy__()), _min:stdgo.GoInt = __tmp__._0, _max:stdgo.GoInt = __tmp__._1, _after:stdgo.GoString = __tmp__._2, _ok:Bool = __tmp__._3;
                                    if (!_ok) {
                                        _p._literal((123 : stdgo.GoInt32));
                                        _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                        break;
                                    };
                                    if (((((_min < (0 : stdgo.GoInt) : Bool) || (_min > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max >= (0 : stdgo.GoInt) : Bool) && (_min > _max : Bool) : Bool) : Bool)) {
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
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
                                                final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return __ret__;
                                            };
                                        };
                                    };
                                    _repeat = _before?.__copy__();
                                    _t = _after?.__copy__();
                                    break;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    if ((((_p._flags & (64 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax.Flags)) && ((_t.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                                        {
                                            var __switchIndex__ = -1;
                                            var __run__ = true;
                                            while (__run__) {
                                                __run__ = false;
                                                {
                                                    final __value__ = _t[(1 : stdgo.GoInt)];
                                                    if (__value__ == ((65 : stdgo.GoUInt8))) {
                                                        _p._op((9 : stdgo._internal.regexp.syntax.Syntax.Op));
                                                        _t = (_t.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                                        _p._op((11 : stdgo._internal.regexp.syntax.Syntax.Op));
                                                        _t = (_t.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                                        _p._op((12 : stdgo._internal.regexp.syntax.Syntax.Op));
                                                        _t = (_t.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                                        {
                                                            final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), (_t.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
                                                            for (defer in __deferstack__) {
                                                                defer();
                                                            };
                                                            return __ret__;
                                                        };
                                                        break;
                                                    } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                                        var _lit:stdgo.GoString = ("" : stdgo.GoString);
                                                        {
                                                            var __tmp__ = stdgo._internal.strings.Strings.cut((_t.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                                                            _lit = __tmp__._0?.__copy__();
                                                            _t = __tmp__._1?.__copy__();
                                                        };
                                                        while (_lit != (stdgo.Go.str())) {
                                                            var __tmp__ = _nextRune(_lit?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _rest:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                                                            if (_err != null) {
                                                                {
                                                                    final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                                    for (defer in __deferstack__) {
                                                                        defer();
                                                                    };
                                                                    return __ret__;
                                                                };
                                                            };
                                                            _p._literal(_c);
                                                            _lit = _rest?.__copy__();
                                                        };
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                                        _p._op((10 : stdgo._internal.regexp.syntax.Syntax.Op));
                                                        _t = (_t.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                                        @:jump("BigSwitch") break;
                                                        break;
                                                    };
                                                };
                                                break;
                                            };
                                        };
                                    };
                                    var _re = _p._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax.Op));
                                    _re.flags = _p._flags;
                                    if ((((_t.length) >= (2 : stdgo.GoInt) : Bool) && (((_t[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                                        var __tmp__ = _p._parseUnicodeClass(_t?.__copy__(), (_re.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)), _r:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _rest:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                                        if (_err != null) {
                                            {
                                                final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return __ret__;
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
                                        var __tmp__ = _p._parsePerlClassEscape(_t?.__copy__(), (_re.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)), _r:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _rest:stdgo.GoString = __tmp__._1;
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
                                                final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return __ret__;
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
                                                final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return __ret__;
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
                    _p._stack = (_p._stack.__slice__(0, ((_p._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
                };
                _p._alternate();
                var _n:stdgo.GoInt = (_p._stack.length);
                if (_n != ((1 : stdgo.GoInt))) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : _p._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : _0, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                final __ret__:{ var _0 : stdgo.Ref<Regexp>; var _1 : stdgo.Error; } = { _0 : _0, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        });
        throw "controlFlow did not return";
    }
function _isValidCaptureName(_name:stdgo.GoString):Bool {
        if (_name == (stdgo.Go.str())) {
            return false;
        };
        for (__1 => _c in _name) {
            if (((_c != (95 : stdgo.GoInt32)) && !_isalnum(_c) : Bool)) {
                return false;
            };
        };
        return true;
    }
function _isCharClass(_re:stdgo.Ref<Regexp>):Bool {
        return ((((_re.op == ((3 : stdgo._internal.regexp.syntax.Syntax.Op)) && (_re.rune.length) == ((1 : stdgo.GoInt)) : Bool) || _re.op == ((4 : stdgo._internal.regexp.syntax.Syntax.Op)) : Bool) || _re.op == ((5 : stdgo._internal.regexp.syntax.Syntax.Op)) : Bool) || (_re.op == (6 : stdgo._internal.regexp.syntax.Syntax.Op)) : Bool);
    }
function _matchRune(_re:stdgo.Ref<Regexp>, _r:stdgo.GoRune):Bool {
        {
            final __value__ = _re.op;
            if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return ((_re.rune.length == (1 : stdgo.GoInt)) && (_re.rune[(0 : stdgo.GoInt)] == _r) : Bool);
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_re.rune.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                        if (((_re.rune[(_i : stdgo.GoInt)] <= _r : Bool) && (_r <= _re.rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool)) {
                            return true;
                        };
                    });
                };
                return false;
            } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _r != ((10 : stdgo.GoInt32));
            } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return true;
            };
        };
        return false;
    }
function _mergeCharClass(_dst:stdgo.Ref<Regexp>, _src:stdgo.Ref<Regexp>):Void {
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _dst.op;
                    if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        break;
                    } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        if (_matchRune(_src, (10 : stdgo.GoInt32))) {
                            _dst.op = (6 : stdgo._internal.regexp.syntax.Syntax.Op);
                        };
                        break;
                    } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        if (_src.op == ((3 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                            _dst.rune = _appendLiteral(_dst.rune, _src.rune[(0 : stdgo.GoInt)], _src.flags);
                        } else {
                            _dst.rune = _appendClass(_dst.rune, _src.rune);
                        };
                        break;
                    } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        if (((_src.rune[(0 : stdgo.GoInt)] == _dst.rune[(0 : stdgo.GoInt)]) && (_src.flags == _dst.flags) : Bool)) {
                            break;
                        };
                        _dst.op = (4 : stdgo._internal.regexp.syntax.Syntax.Op);
                        _dst.rune = _appendLiteral((_dst.rune.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>), _dst.rune[(0 : stdgo.GoInt)], _dst.flags);
                        _dst.rune = _appendLiteral(_dst.rune, _src.rune[(0 : stdgo.GoInt)], _src.flags);
                        break;
                    };
                };
                break;
            };
        };
    }
function _unicodeTable(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>; var _1 : stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>; } {
        if (_name == (("Any" : stdgo.GoString))) {
            return { _0 : _anyTable, _1 : _anyTable };
        };
        {
            var _t = (stdgo._internal.unicode.Unicode.categories[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>));
            if (_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) {
                return { _0 : _t, _1 : (stdgo._internal.unicode.Unicode.foldCategory[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>)) };
            };
        };
        {
            var _t = (stdgo._internal.unicode.Unicode.scripts[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>));
            if (_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) {
                return { _0 : _t, _1 : (stdgo._internal.unicode.Unicode.foldScript[_name] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>)) };
            };
        };
        return { _0 : null, _1 : null };
    }
function _cleanClass(_rp:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>):stdgo.Slice<stdgo.GoRune> {
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface((new stdgo._internal.regexp.syntax.Syntax.T_ranges(_rp) : stdgo._internal.regexp.syntax.Syntax.T_ranges)));
        var _r = (_rp : stdgo.Slice<stdgo.GoInt32>);
        if (((_r.length) < (2 : stdgo.GoInt) : Bool)) {
            return _r;
        };
        var _w:stdgo.GoInt = (2 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_r.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                var __0:stdgo.GoInt32 = _r[(_i : stdgo.GoInt)], __1:stdgo.GoInt32 = _r[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)], _hi:stdgo.GoInt32 = __1, _lo:stdgo.GoInt32 = __0;
                if ((_lo <= (_r[(_w - (1 : stdgo.GoInt) : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    if ((_hi > _r[(_w - (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool)) {
                        _r[(_w - (1 : stdgo.GoInt) : stdgo.GoInt)] = _hi;
                    };
                    continue;
                };
                _r[(_w : stdgo.GoInt)] = _lo;
                _r[(_w + (1 : stdgo.GoInt) : stdgo.GoInt)] = _hi;
                _w = (_w + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            });
        };
        return (_r.__slice__(0, _w) : stdgo.Slice<stdgo.GoInt32>);
    }
function _appendLiteral(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.GoRune, _flags:Flags):stdgo.Slice<stdgo.GoRune> {
        if ((_flags & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
            return _appendFoldedRange(_r, _x, _x);
        };
        return _appendRange(_r, _x, _x);
    }
function _appendRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):stdgo.Slice<stdgo.GoRune> {
        var _n:stdgo.GoInt = (_r.length);
        {
            var _i:stdgo.GoInt = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (4 : stdgo.GoInt) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                if ((_n >= _i : Bool)) {
                    var __0:stdgo.GoInt32 = _r[(_n - _i : stdgo.GoInt)], __1:stdgo.GoInt32 = _r[((_n - _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)], _rhi:stdgo.GoInt32 = __1, _rlo:stdgo.GoInt32 = __0;
                    if (((_lo <= (_rhi + (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool) && (_rlo <= (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool) : Bool)) {
                        if ((_lo < _rlo : Bool)) {
                            _r[(_n - _i : stdgo.GoInt)] = _lo;
                        };
                        if ((_hi > _rhi : Bool)) {
                            _r[((_n - _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = _hi;
                        };
                        return _r;
                    };
                };
            });
        };
        return (_r.__append__(_lo, _hi));
    }
function _appendFoldedRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):stdgo.Slice<stdgo.GoRune> {
        if (((_lo <= (65 : stdgo.GoInt32) : Bool) && (_hi >= (125251 : stdgo.GoInt32) : Bool) : Bool)) {
            return _appendRange(_r, _lo, _hi);
        };
        if (((_hi < (65 : stdgo.GoInt32) : Bool) || (_lo > (125251 : stdgo.GoInt32) : Bool) : Bool)) {
            return _appendRange(_r, _lo, _hi);
        };
        if ((_lo < (65 : stdgo.GoInt32) : Bool)) {
            _r = _appendRange(_r, _lo, (64 : stdgo.GoInt32));
            _lo = (65 : stdgo.GoInt32);
        };
        if ((_hi > (125251 : stdgo.GoInt32) : Bool)) {
            _r = _appendRange(_r, (125252 : stdgo.GoInt32), _hi);
            _hi = (125251 : stdgo.GoInt32);
        };
        {
            var _c:stdgo.GoInt32 = _lo;
            stdgo.Go.cfor((_c <= _hi : Bool), _c++, {
                _r = _appendRange(_r, _c, _c);
                var _f:stdgo.GoInt32 = stdgo._internal.unicode.Unicode.simpleFold(_c);
                while (_f != (_c)) {
                    _r = _appendRange(_r, _f, _f);
                    _f = stdgo._internal.unicode.Unicode.simpleFold(_f);
                };
            });
        };
        return _r;
    }
function _appendClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune> {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_x.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                _r = _appendRange(_r, _x[(_i : stdgo.GoInt)], _x[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]);
            });
        };
        return _r;
    }
function _appendFoldedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune> {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_x.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                _r = _appendFoldedRange(_r, _x[(_i : stdgo.GoInt)], _x[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]);
            });
        };
        return _r;
    }
function _appendNegatedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune> {
        var _nextLo:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_x.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                var __0:stdgo.GoInt32 = _x[(_i : stdgo.GoInt)], __1:stdgo.GoInt32 = _x[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)], _hi:stdgo.GoInt32 = __1, _lo:stdgo.GoInt32 = __0;
                if ((_nextLo <= (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    _r = _appendRange(_r, _nextLo, (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                };
                _nextLo = (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32);
            });
        };
        if ((_nextLo <= (1114111 : stdgo.GoInt32) : Bool)) {
            _r = _appendRange(_r, _nextLo, (1114111 : stdgo.GoInt32));
        };
        return _r;
    }
function _appendTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>):stdgo.Slice<stdgo.GoRune> {
        for (__1 => _xr in _x.r16) {
            var __0:stdgo.GoInt32 = (_xr.lo : stdgo.GoRune), __1:stdgo.GoInt32 = (_xr.hi : stdgo.GoRune), __2:stdgo.GoInt32 = (_xr.stride : stdgo.GoRune), _stride:stdgo.GoInt32 = __2, _hi:stdgo.GoInt32 = __1, _lo:stdgo.GoInt32 = __0;
            if (_stride == ((1 : stdgo.GoInt32))) {
                _r = _appendRange(_r, _lo, _hi);
                continue;
            };
            {
                var _c:stdgo.GoInt32 = _lo;
                stdgo.Go.cfor((_c <= _hi : Bool), _c = (_c + (_stride) : stdgo.GoInt32), {
                    _r = _appendRange(_r, _c, _c);
                });
            };
        };
        for (__2 => _xr in _x.r32) {
            var __0:stdgo.GoInt32 = (_xr.lo : stdgo.GoRune), __1:stdgo.GoInt32 = (_xr.hi : stdgo.GoRune), __2:stdgo.GoInt32 = (_xr.stride : stdgo.GoRune), _stride:stdgo.GoInt32 = __2, _hi:stdgo.GoInt32 = __1, _lo:stdgo.GoInt32 = __0;
            if (_stride == ((1 : stdgo.GoInt32))) {
                _r = _appendRange(_r, _lo, _hi);
                continue;
            };
            {
                var _c:stdgo.GoInt32 = _lo;
                stdgo.Go.cfor((_c <= _hi : Bool), _c = (_c + (_stride) : stdgo.GoInt32), {
                    _r = _appendRange(_r, _c, _c);
                });
            };
        };
        return _r;
    }
function _appendNegatedTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>):stdgo.Slice<stdgo.GoRune> {
        var _nextLo:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        for (__1 => _xr in _x.r16) {
            var __0:stdgo.GoInt32 = (_xr.lo : stdgo.GoRune), __1:stdgo.GoInt32 = (_xr.hi : stdgo.GoRune), __2:stdgo.GoInt32 = (_xr.stride : stdgo.GoRune), _stride:stdgo.GoInt32 = __2, _hi:stdgo.GoInt32 = __1, _lo:stdgo.GoInt32 = __0;
            if (_stride == ((1 : stdgo.GoInt32))) {
                if ((_nextLo <= (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    _r = _appendRange(_r, _nextLo, (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                };
                _nextLo = (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                continue;
            };
            {
                var _c:stdgo.GoInt32 = _lo;
                stdgo.Go.cfor((_c <= _hi : Bool), _c = (_c + (_stride) : stdgo.GoInt32), {
                    if ((_nextLo <= (_c - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                        _r = _appendRange(_r, _nextLo, (_c - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    };
                    _nextLo = (_c + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                });
            };
        };
        for (__2 => _xr in _x.r32) {
            var __0:stdgo.GoInt32 = (_xr.lo : stdgo.GoRune), __1:stdgo.GoInt32 = (_xr.hi : stdgo.GoRune), __2:stdgo.GoInt32 = (_xr.stride : stdgo.GoRune), _stride:stdgo.GoInt32 = __2, _hi:stdgo.GoInt32 = __1, _lo:stdgo.GoInt32 = __0;
            if (_stride == ((1 : stdgo.GoInt32))) {
                if ((_nextLo <= (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    _r = _appendRange(_r, _nextLo, (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                };
                _nextLo = (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                continue;
            };
            {
                var _c:stdgo.GoInt32 = _lo;
                stdgo.Go.cfor((_c <= _hi : Bool), _c = (_c + (_stride) : stdgo.GoInt32), {
                    if ((_nextLo <= (_c - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                        _r = _appendRange(_r, _nextLo, (_c - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    };
                    _nextLo = (_c + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                });
            };
        };
        if ((_nextLo <= (1114111 : stdgo.GoInt32) : Bool)) {
            _r = _appendRange(_r, _nextLo, (1114111 : stdgo.GoInt32));
        };
        return _r;
    }
function _negateClass(_r:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune> {
        var _nextLo:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _w:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_r.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                var __0:stdgo.GoInt32 = _r[(_i : stdgo.GoInt)], __1:stdgo.GoInt32 = _r[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)], _hi:stdgo.GoInt32 = __1, _lo:stdgo.GoInt32 = __0;
                if ((_nextLo <= (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    _r[(_w : stdgo.GoInt)] = _nextLo;
                    _r[(_w + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                    _w = (_w + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
                _nextLo = (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32);
            });
        };
        _r = (_r.__slice__(0, _w) : stdgo.Slice<stdgo.GoInt32>);
        if ((_nextLo <= (1114111 : stdgo.GoInt32) : Bool)) {
            _r = (_r.__append__(_nextLo, (1114111 : stdgo.GoInt32)));
        };
        return _r;
    }
function _checkUTF8(_s:stdgo.GoString):stdgo.Error {
        while (_s != (stdgo.Go.str())) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__()), _rune:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            if (((_rune == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) {
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid UTF-8" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>));
            };
            _s = (_s.__slice__(_size) : stdgo.GoString)?.__copy__();
        };
        return (null : stdgo.Error);
    }
function _nextRune(_s:stdgo.GoString):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _c:stdgo.GoRune = (0 : stdgo.GoInt32), _t:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
        if (((_c == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) {
            return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid UTF-8" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
        };
        return { _0 : _c, _1 : (_s.__slice__(_size) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
    }
function _isalnum(_c:stdgo.GoRune):Bool {
        return (((((48 : stdgo.GoInt32) <= _c : Bool) && (_c <= (57 : stdgo.GoInt32) : Bool) : Bool) || (((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (90 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (((97 : stdgo.GoInt32) <= _c : Bool) && (_c <= (122 : stdgo.GoInt32) : Bool) : Bool) : Bool);
    }
function _unhex(_c:stdgo.GoRune):stdgo.GoRune {
        if ((((48 : stdgo.GoInt32) <= _c : Bool) && (_c <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            return (_c - (48 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        if ((((97 : stdgo.GoInt32) <= _c : Bool) && (_c <= (102 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((_c - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        if ((((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (70 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((_c - (65 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        return (-1 : stdgo.GoInt32);
    }
function testParseSimple(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testParseDump(_t, _parseTests, (204 : stdgo._internal.regexp.syntax.Syntax.Flags));
    }
function testParseFoldCase(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testParseDump(_t, _foldcaseTests, (1 : stdgo._internal.regexp.syntax.Syntax.Flags));
    }
function testParseLiteral(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testParseDump(_t, _literalTests, (2 : stdgo._internal.regexp.syntax.Syntax.Flags));
    }
function testParseMatchNL(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testParseDump(_t, _matchnlTests, (12 : stdgo._internal.regexp.syntax.Syntax.Flags));
    }
function testParseNoMatchNL(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testParseDump(_t, _nomatchnlTests, (0 : stdgo._internal.regexp.syntax.Syntax.Flags));
    }
function _testParseDump(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _tests:stdgo.Slice<T_parseTest>, _flags:Flags):Void {
        for (__1 => _tt in _tests) {
            var __tmp__ = parse(_tt.regexp?.__copy__(), _flags), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
function _dump(_re:stdgo.Ref<Regexp>):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _dumpRegexp((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), _re);
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
function _dumpRegexp(_b:stdgo.Ref<stdgo._internal.strings.Strings.Builder>, _re:stdgo.Ref<Regexp>):Void {
        if ((((_re.op : stdgo.GoInt) >= (_opNames.length) : Bool) || (_opNames[(_re.op : stdgo.GoInt)] == stdgo.Go.str()) : Bool)) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(_b), ("op%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_re.op)));
        } else {
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _re.op;
                        if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((17 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                            if ((_re.flags & (32 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                                _b.writeByte((110 : stdgo.GoUInt8));
                            };
                            _b.writeString(_opNames[(_re.op : stdgo.GoInt)]?.__copy__());
                            break;
                        } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                            if (((_re.rune.length) > (1 : stdgo.GoInt) : Bool)) {
                                _b.writeString(("str" : stdgo.GoString));
                            } else {
                                _b.writeString(("lit" : stdgo.GoString));
                            };
                            if ((_re.flags & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                                for (__1 => _r in _re.rune) {
                                    if (stdgo._internal.unicode.Unicode.simpleFold(_r) != (_r)) {
                                        _b.writeString(("fold" : stdgo.GoString));
                                        break;
                                    };
                                };
                            };
                            break;
                        } else {
                            _b.writeString(_opNames[(_re.op : stdgo.GoInt)]?.__copy__());
                        };
                    };
                    break;
                };
            };
        };
        _b.writeByte((123 : stdgo.GoUInt8));
        {
            final __value__ = _re.op;
            if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                if ((_re.flags & (256 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                    _b.writeString(("\\z" : stdgo.GoString));
                };
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                for (__2 => _r in _re.rune) {
                    _b.writeRune(_r);
                };
            } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((19 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                for (__3 => _sub in _re.sub) {
                    _dumpRegexp(_b, _sub);
                };
            } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                _dumpRegexp(_b, _re.sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(_b), ("%d,%d " : stdgo.GoString), stdgo.Go.toInterface(_re.min), stdgo.Go.toInterface(_re.max));
                _dumpRegexp(_b, _re.sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                if (_re.name != (stdgo.Go.str())) {
                    _b.writeString(_re.name?.__copy__());
                    _b.writeByte((58 : stdgo.GoUInt8));
                };
                _dumpRegexp(_b, _re.sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                var _sep:stdgo.GoString = stdgo.Go.str()?.__copy__();
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_re.rune.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                        _b.writeString(_sep?.__copy__());
                        _sep = (" " : stdgo.GoString);
                        var __0:stdgo.GoInt32 = _re.rune[(_i : stdgo.GoInt)], __1:stdgo.GoInt32 = _re.rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)], _hi:stdgo.GoInt32 = __1, _lo:stdgo.GoInt32 = __0;
                        if (_lo == (_hi)) {
                            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(_b), ("%#x" : stdgo.GoString), stdgo.Go.toInterface(_lo));
                        } else {
                            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(_b), ("%#x-%#x" : stdgo.GoString), stdgo.Go.toInterface(_lo), stdgo.Go.toInterface(_hi));
                        };
                    });
                };
            };
        };
        _b.writeByte((125 : stdgo.GoUInt8));
    }
function _mkCharClass(_f:stdgo.GoRune -> Bool):stdgo.GoString {
        var _re = (stdgo.Go.setRef(({ op : (4 : stdgo._internal.regexp.syntax.Syntax.Op) } : stdgo._internal.regexp.syntax.Syntax.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
        var _lo:stdgo.GoInt32 = ((-1 : stdgo.GoInt32) : stdgo.GoRune);
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (1114111 : stdgo.GoInt32) : Bool), _i++, {
                if (_f(_i)) {
                    if ((_lo < (0 : stdgo.GoInt32) : Bool)) {
                        _lo = _i;
                    };
                } else {
                    if ((_lo >= (0 : stdgo.GoInt32) : Bool)) {
                        _re.rune = (_re.rune.__append__(_lo, (_i - (1 : stdgo.GoInt32) : stdgo.GoInt32)));
                        _lo = (-1 : stdgo.GoInt32);
                    };
                };
            });
        };
        if ((_lo >= (0 : stdgo.GoInt32) : Bool)) {
            _re.rune = (_re.rune.__append__(_lo, (1114111 : stdgo.GoInt32)));
        };
        return _dump(_re)?.__copy__();
    }
function _isUpperFold(_r:stdgo.GoRune):Bool {
        if (stdgo._internal.unicode.Unicode.isUpper(_r)) {
            return true;
        };
        var _c:stdgo.GoInt32 = stdgo._internal.unicode.Unicode.simpleFold(_r);
        while (_c != (_r)) {
            if (stdgo._internal.unicode.Unicode.isUpper(_c)) {
                return true;
            };
            _c = stdgo._internal.unicode.Unicode.simpleFold(_c);
        };
        return false;
    }
function testFoldConstants(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _last:stdgo.GoInt32 = ((-1 : stdgo.GoInt32) : stdgo.GoRune);
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (1114111 : stdgo.GoInt32) : Bool), _i++, {
                if (stdgo._internal.unicode.Unicode.simpleFold(_i) == (_i)) {
                    continue;
                };
                if (((_last == (-1 : stdgo.GoInt32)) && ((65 : stdgo.GoInt32) != _i) : Bool)) {
                    _t.errorf(("minFold=%#U should be %#U" : stdgo.GoString), stdgo.Go.toInterface((65 : stdgo.GoInt)), stdgo.Go.toInterface(_i));
                };
                _last = _i;
            });
        };
        if ((125251 : stdgo.GoInt32) != (_last)) {
            _t.errorf(("maxFold=%#U should be %#U" : stdgo.GoString), stdgo.Go.toInterface((125251 : stdgo.GoInt)), stdgo.Go.toInterface(_last));
        };
    }
function testAppendRangeCollapse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r:stdgo.Slice<stdgo.GoRune> = (null : stdgo.Slice<stdgo.GoInt32>);
        {
            var _i:stdgo.GoInt32 = ((65 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (90 : stdgo.GoInt32) : Bool), _i++, {
                _r = _appendRange(_r, _i, _i);
                _r = _appendRange(_r, ((_i + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32), ((_i + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32));
            });
        };
        if ((_r : stdgo.GoString) != (("AZaz" : stdgo.GoString))) {
            _t.errorf(("appendRange interlaced A-Z a-z = %s, want AZaz" : stdgo.GoString), stdgo.Go.toInterface((_r : stdgo.GoString)));
        };
    }
function testParseInvalidRegexps(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__1 => _regexp in _invalidRegexps) {
            {
                var __tmp__ = parse(_regexp?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, Perl) = %s, should have failed" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_dump(_re)));
                };
            };
            {
                var __tmp__ = parse(_regexp?.__copy__(), (0 : stdgo._internal.regexp.syntax.Syntax.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, POSIX) = %s, should have failed" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_dump(_re)));
                };
            };
        };
        for (__18 => _regexp in _onlyPerl) {
            {
                var __tmp__ = parse(_regexp?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax.Flags)), __19:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(%#q, Perl): %v" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = parse(_regexp?.__copy__(), (0 : stdgo._internal.regexp.syntax.Syntax.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, POSIX) = %s, should have failed" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_dump(_re)));
                };
            };
        };
        for (__36 => _regexp in _onlyPOSIX) {
            {
                var __tmp__ = parse(_regexp?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Parse(%#q, Perl) = %s, should have failed" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_dump(_re)));
                };
            };
            {
                var __tmp__ = parse(_regexp?.__copy__(), (0 : stdgo._internal.regexp.syntax.Syntax.Flags)), __45:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(%#q, POSIX): %v" : stdgo.GoString), stdgo.Go.toInterface(_regexp), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function testToStringEquivalentParse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__1 => _tt in _parseTests) {
            var __tmp__ = parse(_tt.regexp?.__copy__(), (204 : stdgo._internal.regexp.syntax.Syntax.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
                var __tmp__ = parse(_s?.__copy__(), (204 : stdgo._internal.regexp.syntax.Syntax.Flags)), _nre:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
function emptyOpContext(_r1:stdgo.GoRune, _r2:stdgo.GoRune):EmptyOp {
        var _op:EmptyOp = (32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
        var _boundary:stdgo.GoByte = (0 : stdgo.GoUInt8);
        if (isWordChar(_r1)) {
            _boundary = (1 : stdgo.GoUInt8);
        } else if (_r1 == ((10 : stdgo.GoInt32))) {
            _op = (_op | ((1 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
        } else if ((_r1 < (0 : stdgo.GoInt32) : Bool)) {
            _op = (_op | ((5 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
        };
        if (isWordChar(_r2)) {
            _boundary = (_boundary ^ ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        } else if (_r2 == ((10 : stdgo.GoInt32))) {
            _op = (_op | ((2 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
        } else if ((_r2 < (0 : stdgo.GoInt32) : Bool)) {
            _op = (_op | ((10 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
        };
        if (_boundary != ((0 : stdgo.GoUInt8))) {
            _op = (_op ^ ((48 : stdgo._internal.regexp.syntax.Syntax.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
        };
        return _op;
    }
function isWordChar(_r:stdgo.GoRune):Bool {
        return ((((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool) || (((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (_r == (95 : stdgo.GoInt32)) : Bool);
    }
function _bw(_b:stdgo.Ref<stdgo._internal.strings.Strings.Builder>, _args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        for (__1 => _s in _args) {
            _b.writeString(_s?.__copy__());
        };
    }
function _dumpProg(_b:stdgo.Ref<stdgo._internal.strings.Strings.Builder>, _p:stdgo.Ref<Prog>):Void {
        for (_j => _ in _p.inst) {
            var _i = (stdgo.Go.setRef(_p.inst[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
            var _pc:stdgo.GoString = stdgo._internal.strconv.Strconv.itoa(_j)?.__copy__();
            if (((_pc.length) < (3 : stdgo.GoInt) : Bool)) {
                _b.writeString((("   " : stdgo.GoString).__slice__((_pc.length)) : stdgo.GoString)?.__copy__());
            };
            if (_j == (_p.start)) {
                _pc = (_pc + (("*" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _bw(_b, _pc?.__copy__(), ("\t" : stdgo.GoString));
            _dumpInst(_b, _i);
            _bw(_b, ("\n" : stdgo.GoString));
        };
    }
function _u32(_i:stdgo.GoUInt32):stdgo.GoString {
        return stdgo._internal.strconv.Strconv.formatUint((_i : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__();
    }
function _dumpInst(_b:stdgo.Ref<stdgo._internal.strings.Strings.Builder>, _i:stdgo.Ref<Inst>):Void {
        {
            final __value__ = _i.op;
            if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("alt -> " : stdgo.GoString), _u32(_i.out)?.__copy__(), (", " : stdgo.GoString), _u32(_i.arg)?.__copy__());
            } else if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("altmatch -> " : stdgo.GoString), _u32(_i.out)?.__copy__(), (", " : stdgo.GoString), _u32(_i.arg)?.__copy__());
            } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("cap " : stdgo.GoString), _u32(_i.arg)?.__copy__(), (" -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("empty " : stdgo.GoString), _u32(_i.arg)?.__copy__(), (" -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("match" : stdgo.GoString));
            } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("fail" : stdgo.GoString));
            } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("nop -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                if (_i.rune == null) {
                    _bw(_b, ("rune <nil>" : stdgo.GoString));
                };
                _bw(_b, ("rune " : stdgo.GoString), stdgo._internal.strconv.Strconv.quoteToASCII((_i.rune : stdgo.GoString)?.__copy__())?.__copy__());
                if (((_i.arg : Flags) & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                    _bw(_b, ("/i" : stdgo.GoString));
                };
                _bw(_b, (" -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("rune1 " : stdgo.GoString), stdgo._internal.strconv.Strconv.quoteToASCII((_i.rune : stdgo.GoString)?.__copy__())?.__copy__(), (" -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("any -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                _bw(_b, ("anynotnl -> " : stdgo.GoString), _u32(_i.out)?.__copy__());
            };
        };
    }
function testCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__1 => _tt in _compileTests) {
            var __tmp__ = parse(_tt.regexp?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, __2:stdgo.Error = __tmp__._1;
            var __tmp__ = compile(_re), _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog> = __tmp__._0, __3:stdgo.Error = __tmp__._1;
            var _s:stdgo.GoString = (_p.string() : stdgo.GoString)?.__copy__();
            if (_s != (_tt.prog)) {
                _t.errorf(("compiled %#q:\n--- have\n%s---\n--- want\n%s---" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt.prog));
            };
        };
    }
function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _r1:stdgo.GoRune = (-1 : stdgo.GoInt32);
                for (__9 => _r2 in ("foo, bar, baz\nsome input text.\n" : stdgo.GoString)) {
                    emptyOpContext(_r1, _r2);
                    _r1 = _r2;
                };
                emptyOpContext(_r1, (-1 : stdgo.GoInt32));
            });
        };
    }
function benchmarkIsWordChar(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                for (__9 => _r in ("Don\'t communicate by sharing memory, share memory by communicating." : stdgo.GoString)) {
                    _sink = stdgo.Go.toInterface(isWordChar(_r));
                };
            });
        };
        if (_sink == null) {
            _b.fatal(stdgo.Go.toInterface(("Benchmark did not run" : stdgo.GoString)));
        };
        _sink = (null : stdgo.AnyInterface);
    }
function _writeRegexp(_b:stdgo.Ref<stdgo._internal.strings.Strings.Builder>, _re:stdgo.Ref<Regexp>):Void {
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _re.op;
                    if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("[^\\x00-\\x{10FFFF}]" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?:)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        if ((_re.flags & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                            _b.writeString(("(?i:" : stdgo.GoString));
                        };
                        for (__1 => _r in _re.rune) {
                            _escape(_b, _r, false);
                        };
                        if ((_re.flags & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                            _b.writeString((")" : stdgo.GoString));
                        };
                        break;
                    } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        if (((_re.rune.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                            _b.writeString(("[invalid char class]" : stdgo.GoString));
                            break;
                        };
                        _b.writeRune((91 : stdgo.GoInt32));
                        if ((_re.rune.length) == ((0 : stdgo.GoInt))) {
                            _b.writeString(("^\\x00-\\x{10FFFF}" : stdgo.GoString));
                        } else if (((_re.rune[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) && _re.rune[((_re.rune.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((1114111 : stdgo.GoInt32)) : Bool) && ((_re.rune.length) > (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _b.writeRune((94 : stdgo.GoInt32));
                            {
                                var _i:stdgo.GoInt = (1 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < ((_re.rune.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                                    var __0:stdgo.GoInt32 = (_re.rune[(_i : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32), __1:stdgo.GoInt32 = (_re.rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] - (1 : stdgo.GoInt32) : stdgo.GoInt32), _hi:stdgo.GoInt32 = __1, _lo:stdgo.GoInt32 = __0;
                                    _escape(_b, _lo, _lo == ((45 : stdgo.GoInt32)));
                                    if (_lo != (_hi)) {
                                        _b.writeRune((45 : stdgo.GoInt32));
                                        _escape(_b, _hi, _hi == ((45 : stdgo.GoInt32)));
                                    };
                                });
                            };
                        } else {
                            {
                                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < (_re.rune.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                                    var __0:stdgo.GoInt32 = _re.rune[(_i : stdgo.GoInt)], __1:stdgo.GoInt32 = _re.rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)], _hi:stdgo.GoInt32 = __1, _lo:stdgo.GoInt32 = __0;
                                    _escape(_b, _lo, _lo == ((45 : stdgo.GoInt32)));
                                    if (_lo != (_hi)) {
                                        _b.writeRune((45 : stdgo.GoInt32));
                                        _escape(_b, _hi, _hi == ((45 : stdgo.GoInt32)));
                                    };
                                });
                            };
                        };
                        _b.writeRune((93 : stdgo.GoInt32));
                        break;
                    } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?-s:.)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?s:.)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?m:^)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("(?m:$)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("\\A" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        if ((_re.flags & (256 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                            _b.writeString(("(?-m:$)" : stdgo.GoString));
                        } else {
                            _b.writeString(("\\z" : stdgo.GoString));
                        };
                        break;
                    } else if (__value__ == ((11 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("\\b" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((12 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        _b.writeString(("\\B" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        if (_re.name != (stdgo.Go.str())) {
                            _b.writeString(("(?P<" : stdgo.GoString));
                            _b.writeString(_re.name?.__copy__());
                            _b.writeRune((62 : stdgo.GoInt32));
                        } else {
                            _b.writeRune((40 : stdgo.GoInt32));
                        };
                        if (_re.sub[(0 : stdgo.GoInt)].op != ((2 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                            _writeRegexp(_b, _re.sub[(0 : stdgo.GoInt)]);
                        };
                        _b.writeRune((41 : stdgo.GoInt32));
                        break;
                    } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((17 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        {
                            var _sub = _re.sub[(0 : stdgo.GoInt)];
                            if (((_sub.op > (13 : stdgo._internal.regexp.syntax.Syntax.Op) : Bool) || (_sub.op == ((3 : stdgo._internal.regexp.syntax.Syntax.Op)) && ((_sub.rune.length) > (1 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                                _b.writeString(("(?:" : stdgo.GoString));
                                _writeRegexp(_b, _sub);
                                _b.writeString((")" : stdgo.GoString));
                            } else {
                                _writeRegexp(_b, _sub);
                            };
                        };
                        {
                            final __value__ = _re.op;
                            if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                                _b.writeRune((42 : stdgo.GoInt32));
                            } else if (__value__ == ((15 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                                _b.writeRune((43 : stdgo.GoInt32));
                            } else if (__value__ == ((16 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                                _b.writeRune((63 : stdgo.GoInt32));
                            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                                _b.writeRune((123 : stdgo.GoInt32));
                                _b.writeString(stdgo._internal.strconv.Strconv.itoa(_re.min)?.__copy__());
                                if (_re.max != (_re.min)) {
                                    _b.writeRune((44 : stdgo.GoInt32));
                                    if ((_re.max >= (0 : stdgo.GoInt) : Bool)) {
                                        _b.writeString(stdgo._internal.strconv.Strconv.itoa(_re.max)?.__copy__());
                                    };
                                };
                                _b.writeRune((125 : stdgo.GoInt32));
                            };
                        };
                        if ((_re.flags & (32 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                            _b.writeRune((63 : stdgo.GoInt32));
                        };
                        break;
                    } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        for (__2 => _sub in _re.sub) {
                            if (_sub.op == ((19 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                                _b.writeString(("(?:" : stdgo.GoString));
                                _writeRegexp(_b, _sub);
                                _b.writeString((")" : stdgo.GoString));
                            } else {
                                _writeRegexp(_b, _sub);
                            };
                        };
                        break;
                    } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        for (_i => _sub in _re.sub) {
                            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                _b.writeRune((124 : stdgo.GoInt32));
                            };
                            _writeRegexp(_b, _sub);
                        };
                        break;
                    } else {
                        _b.writeString(((("<invalid op" : stdgo.GoString) + stdgo._internal.strconv.Strconv.itoa((_re.op : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    };
                };
                break;
            };
        };
    }
function _escape(_b:stdgo.Ref<stdgo._internal.strings.Strings.Builder>, _r:stdgo.GoRune, _force:Bool):Void {
        if (stdgo._internal.unicode.Unicode.isPrint(_r)) {
            if ((stdgo._internal.strings.Strings.containsRune(("\\.+*?()|[]{}^$" : stdgo.GoString), _r) || _force : Bool)) {
                _b.writeRune((92 : stdgo.GoInt32));
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
                    if (__value__ == ((7 : stdgo.GoInt32))) {
                        _b.writeString(("\\a" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((12 : stdgo.GoInt32))) {
                        _b.writeString(("\\f" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((10 : stdgo.GoInt32))) {
                        _b.writeString(("\\n" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((13 : stdgo.GoInt32))) {
                        _b.writeString(("\\r" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((9 : stdgo.GoInt32))) {
                        _b.writeString(("\\t" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((11 : stdgo.GoInt32))) {
                        _b.writeString(("\\v" : stdgo.GoString));
                        break;
                    } else {
                        if ((_r < (256 : stdgo.GoInt32) : Bool)) {
                            _b.writeString(("\\x" : stdgo.GoString));
                            var _s:stdgo.GoString = stdgo._internal.strconv.Strconv.formatInt((_r : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__();
                            if ((_s.length) == ((1 : stdgo.GoInt))) {
                                _b.writeRune((48 : stdgo.GoInt32));
                            };
                            _b.writeString(_s?.__copy__());
                            break;
                        };
                        _b.writeString(("\\x{" : stdgo.GoString));
                        _b.writeString(stdgo._internal.strconv.Strconv.formatInt((_r : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__());
                        _b.writeString(("}" : stdgo.GoString));
                    };
                };
                break;
            };
        };
    }
function _simplify1(_op:Op, _flags:Flags, _sub:stdgo.Ref<Regexp>, _re:stdgo.Ref<Regexp>):stdgo.Ref<Regexp> {
        if (_sub.op == ((2 : stdgo._internal.regexp.syntax.Syntax.Op))) {
            return _sub;
        };
        if (((_op == _sub.op) && ((_flags & (32 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) == (_sub.flags & (32 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags)) : Bool)) {
            return _sub;
        };
        if ((((_re != null && ((_re : Dynamic).__nil__ == null || !(_re : Dynamic).__nil__) && _re.op == (_op) : Bool) && (_re.flags & (32 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) == ((_flags & (32 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags)) : Bool) && (_sub == _re.sub[(0 : stdgo.GoInt)]) : Bool)) {
            return _re;
        };
        _re = (stdgo.Go.setRef(({ op : _op, flags : _flags } : stdgo._internal.regexp.syntax.Syntax.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
        _re.sub = ((_re.sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>).__append__(_sub));
        return _re;
    }
function testSimplify(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__1 => _tt in _simplifyTests) {
            var __tmp__ = parse(_tt.regexp?.__copy__(), (204 : stdgo._internal.regexp.syntax.Syntax.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
    public dynamic function _append(_p:stdgo.Ref<Prog>, _l2:T_patchList):T_patchList return __self__.value._append(_p, _l2);
    @:keep
    public dynamic function _patch(_p:stdgo.Ref<Prog>, _val:stdgo.GoUInt32):Void __self__.value._patch(_p, _val);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_patchList>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T_patchList_asInterface) class T_patchList_static_extension {
    @:keep
    static public function _append( _l1:T_patchList, _p:stdgo.Ref<Prog>, _l2:T_patchList):T_patchList {
        @:recv var _l1:T_patchList = _l1?.__copy__();
        if (_l1._head == ((0u32 : stdgo.GoUInt32))) {
            return _l2?.__copy__();
        };
        if (_l2._head == ((0u32 : stdgo.GoUInt32))) {
            return _l1?.__copy__();
        };
        var _i = (stdgo.Go.setRef(_p.inst[((_l1._tail >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
        if ((_l1._tail & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            _i.out = _l2._head;
        } else {
            _i.arg = _l2._head;
        };
        return (new stdgo._internal.regexp.syntax.Syntax.T_patchList(_l1._head, _l2._tail) : stdgo._internal.regexp.syntax.Syntax.T_patchList);
    }
    @:keep
    static public function _patch( _l:T_patchList, _p:stdgo.Ref<Prog>, _val:stdgo.GoUInt32):Void {
        @:recv var _l:T_patchList = _l?.__copy__();
        var _head:stdgo.GoUInt32 = _l._head;
        while (_head != ((0u32 : stdgo.GoUInt32))) {
            var _i = (stdgo.Go.setRef(_p.inst[((_head >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
            if ((_head & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
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
    public dynamic function _rune(_r:stdgo.Slice<stdgo.GoRune>, _flags:Flags):T_frag return __self__.value._rune(_r, _flags);
    @:keep
    public dynamic function _empty(_op:EmptyOp):T_frag return __self__.value._empty(_op);
    @:keep
    public dynamic function _plus(_f1:T_frag, _nongreedy:Bool):T_frag return __self__.value._plus(_f1, _nongreedy);
    @:keep
    public dynamic function _star(_f1:T_frag, _nongreedy:Bool):T_frag return __self__.value._star(_f1, _nongreedy);
    @:keep
    public dynamic function _loop(_f1:T_frag, _nongreedy:Bool):T_frag return __self__.value._loop(_f1, _nongreedy);
    @:keep
    public dynamic function _quest(_f1:T_frag, _nongreedy:Bool):T_frag return __self__.value._quest(_f1, _nongreedy);
    @:keep
    public dynamic function _alt(_f1:T_frag, _f2:T_frag):T_frag return __self__.value._alt(_f1, _f2);
    @:keep
    public dynamic function _cat(_f1:T_frag, _f2:T_frag):T_frag return __self__.value._cat(_f1, _f2);
    @:keep
    public dynamic function _cap(_arg:stdgo.GoUInt32):T_frag return __self__.value._cap(_arg);
    @:keep
    public dynamic function _fail():T_frag return __self__.value._fail();
    @:keep
    public dynamic function _nop():T_frag return __self__.value._nop();
    @:keep
    public dynamic function _inst(_op:InstOp):T_frag return __self__.value._inst(_op);
    @:keep
    public dynamic function _compile(_re:stdgo.Ref<Regexp>):T_frag return __self__.value._compile(_re);
    @:keep
    public dynamic function _init():Void __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_compiler>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T_compiler_asInterface) class T_compiler_static_extension {
    @:keep
    static public function _rune( _c:stdgo.Ref<T_compiler>, _r:stdgo.Slice<stdgo.GoRune>, _flags:Flags):T_frag {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        var _f:stdgo._internal.regexp.syntax.Syntax.T_frag = _c._inst((7 : stdgo._internal.regexp.syntax.Syntax.InstOp))?.__copy__();
        _f._nullable = false;
        var _i = (stdgo.Go.setRef(_c._p.inst[(_f._i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
        _i.rune = _r;
        _flags = (_flags & ((1 : stdgo._internal.regexp.syntax.Syntax.Flags)) : stdgo._internal.regexp.syntax.Syntax.Flags);
        if (((_r.length != (1 : stdgo.GoInt)) || (stdgo._internal.unicode.Unicode.simpleFold(_r[(0 : stdgo.GoInt)]) == _r[(0 : stdgo.GoInt)]) : Bool)) {
            _flags = (_flags & ((((1 : stdgo._internal.regexp.syntax.Syntax.Flags)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax.Flags)) : stdgo._internal.regexp.syntax.Syntax.Flags);
        };
        _i.arg = (_flags : stdgo.GoUInt32);
        _f._out = _makePatchList((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32))?.__copy__();
        if ((((_flags & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) == (0 : stdgo._internal.regexp.syntax.Syntax.Flags)) && (((_r.length == (1 : stdgo.GoInt)) || ((_r.length) == ((2 : stdgo.GoInt)) && _r[(0 : stdgo.GoInt)] == (_r[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) : Bool)) {
            _i.op = (8 : stdgo._internal.regexp.syntax.Syntax.InstOp);
        } else if ((((_r.length) == ((2 : stdgo.GoInt)) && _r[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && (_r[(1 : stdgo.GoInt)] == (1114111 : stdgo.GoInt32)) : Bool)) {
            _i.op = (9 : stdgo._internal.regexp.syntax.Syntax.InstOp);
        } else if ((((((_r.length) == ((4 : stdgo.GoInt)) && _r[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && _r[(1 : stdgo.GoInt)] == ((9 : stdgo.GoInt32)) : Bool) && _r[(2 : stdgo.GoInt)] == ((11 : stdgo.GoInt32)) : Bool) && (_r[(3 : stdgo.GoInt)] == (1114111 : stdgo.GoInt32)) : Bool)) {
            _i.op = (10 : stdgo._internal.regexp.syntax.Syntax.InstOp);
        };
        return _f?.__copy__();
    }
    @:keep
    static public function _empty( _c:stdgo.Ref<T_compiler>, _op:EmptyOp):T_frag {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        var _f:stdgo._internal.regexp.syntax.Syntax.T_frag = _c._inst((3 : stdgo._internal.regexp.syntax.Syntax.InstOp))?.__copy__();
        _c._p.inst[(_f._i : stdgo.GoInt)].arg = (_op : stdgo.GoUInt32);
        _f._out = _makePatchList((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32))?.__copy__();
        return _f?.__copy__();
    }
    @:keep
    static public function _plus( _c:stdgo.Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        return (new stdgo._internal.regexp.syntax.Syntax.T_frag(_f1._i, _c._loop(_f1?.__copy__(), _nongreedy)._out?.__copy__(), _f1._nullable) : stdgo._internal.regexp.syntax.Syntax.T_frag);
    }
    @:keep
    static public function _star( _c:stdgo.Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        if (_f1._nullable) {
            return _c._quest(_c._plus(_f1?.__copy__(), _nongreedy)?.__copy__(), _nongreedy)?.__copy__();
        };
        return _c._loop(_f1?.__copy__(), _nongreedy)?.__copy__();
    }
    @:keep
    static public function _loop( _c:stdgo.Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        var _f:stdgo._internal.regexp.syntax.Syntax.T_frag = _c._inst((0 : stdgo._internal.regexp.syntax.Syntax.InstOp))?.__copy__();
        var _i = (stdgo.Go.setRef(_c._p.inst[(_f._i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
        if (_nongreedy) {
            _i.arg = _f1._i;
            _f._out = _makePatchList((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32))?.__copy__();
        } else {
            _i.out = _f1._i;
            _f._out = _makePatchList(((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))?.__copy__();
        };
        _f1._out._patch(_c._p, _f._i);
        return _f?.__copy__();
    }
    @:keep
    static public function _quest( _c:stdgo.Ref<T_compiler>, _f1:T_frag, _nongreedy:Bool):T_frag {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        var _f:stdgo._internal.regexp.syntax.Syntax.T_frag = _c._inst((0 : stdgo._internal.regexp.syntax.Syntax.InstOp))?.__copy__();
        var _i = (stdgo.Go.setRef(_c._p.inst[(_f._i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
        if (_nongreedy) {
            _i.arg = _f1._i;
            _f._out = _makePatchList((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32))?.__copy__();
        } else {
            _i.out = _f1._i;
            _f._out = _makePatchList(((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))?.__copy__();
        };
        _f._out = _f._out._append(_c._p, _f1._out?.__copy__())?.__copy__();
        return _f?.__copy__();
    }
    @:keep
    static public function _alt( _c:stdgo.Ref<T_compiler>, _f1:T_frag, _f2:T_frag):T_frag {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        if (_f1._i == ((0u32 : stdgo.GoUInt32))) {
            return _f2?.__copy__();
        };
        if (_f2._i == ((0u32 : stdgo.GoUInt32))) {
            return _f1?.__copy__();
        };
        var _f:stdgo._internal.regexp.syntax.Syntax.T_frag = _c._inst((0 : stdgo._internal.regexp.syntax.Syntax.InstOp))?.__copy__();
        var _i = (stdgo.Go.setRef(_c._p.inst[(_f._i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
        _i.out = _f1._i;
        _i.arg = _f2._i;
        _f._out = _f1._out._append(_c._p, _f2._out?.__copy__())?.__copy__();
        _f._nullable = (_f1._nullable || _f2._nullable : Bool);
        return _f?.__copy__();
    }
    @:keep
    static public function _cat( _c:stdgo.Ref<T_compiler>, _f1:T_frag, _f2:T_frag):T_frag {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        if (((_f1._i == (0u32 : stdgo.GoUInt32)) || (_f2._i == (0u32 : stdgo.GoUInt32)) : Bool)) {
            return (new stdgo._internal.regexp.syntax.Syntax.T_frag() : stdgo._internal.regexp.syntax.Syntax.T_frag);
        };
        _f1._out._patch(_c._p, _f2._i);
        return (new stdgo._internal.regexp.syntax.Syntax.T_frag(_f1._i, _f2._out?.__copy__(), (_f1._nullable && _f2._nullable : Bool)) : stdgo._internal.regexp.syntax.Syntax.T_frag);
    }
    @:keep
    static public function _cap( _c:stdgo.Ref<T_compiler>, _arg:stdgo.GoUInt32):T_frag {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        var _f:stdgo._internal.regexp.syntax.Syntax.T_frag = _c._inst((2 : stdgo._internal.regexp.syntax.Syntax.InstOp))?.__copy__();
        _f._out = _makePatchList((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32))?.__copy__();
        _c._p.inst[(_f._i : stdgo.GoInt)].arg = _arg;
        if ((_c._p.numCap < ((_arg : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _c._p.numCap = ((_arg : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        return _f?.__copy__();
    }
    @:keep
    static public function _fail( _c:stdgo.Ref<T_compiler>):T_frag {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        return (new stdgo._internal.regexp.syntax.Syntax.T_frag() : stdgo._internal.regexp.syntax.Syntax.T_frag);
    }
    @:keep
    static public function _nop( _c:stdgo.Ref<T_compiler>):T_frag {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        var _f:stdgo._internal.regexp.syntax.Syntax.T_frag = _c._inst((6 : stdgo._internal.regexp.syntax.Syntax.InstOp))?.__copy__();
        _f._out = _makePatchList((_f._i << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32))?.__copy__();
        return _f?.__copy__();
    }
    @:keep
    static public function _inst( _c:stdgo.Ref<T_compiler>, _op:InstOp):T_frag {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        var _f:stdgo._internal.regexp.syntax.Syntax.T_frag = ({ _i : (_c._p.inst.length : stdgo.GoUInt32), _nullable : true } : stdgo._internal.regexp.syntax.Syntax.T_frag);
        _c._p.inst = (_c._p.inst.__append__(({ op : _op } : stdgo._internal.regexp.syntax.Syntax.Inst)));
        return _f?.__copy__();
    }
    @:keep
    static public function _compile( _c:stdgo.Ref<T_compiler>, _re:stdgo.Ref<Regexp>):T_frag {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        {
            final __value__ = _re.op;
            if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._fail()?.__copy__();
            } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._nop()?.__copy__();
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                if ((_re.rune.length) == ((0 : stdgo.GoInt))) {
                    return _c._nop()?.__copy__();
                };
                var _f:T_frag = ({} : stdgo._internal.regexp.syntax.Syntax.T_frag);
                for (_j => _ in _re.rune) {
                    var _f1:stdgo._internal.regexp.syntax.Syntax.T_frag = _c._rune((_re.rune.__slice__(_j, (_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>), _re.flags)?.__copy__();
                    if (_j == ((0 : stdgo.GoInt))) {
                        _f = _f1?.__copy__();
                    } else {
                        _f = _c._cat(_f?.__copy__(), _f1?.__copy__())?.__copy__();
                    };
                };
                return _f?.__copy__();
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._rune(_re.rune, _re.flags)?.__copy__();
            } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._rune(_anyRuneNotNL, (0 : stdgo._internal.regexp.syntax.Syntax.Flags))?.__copy__();
            } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._rune(_anyRune, (0 : stdgo._internal.regexp.syntax.Syntax.Flags))?.__copy__();
            } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._empty((1 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))?.__copy__();
            } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._empty((2 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))?.__copy__();
            } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._empty((4 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))?.__copy__();
            } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._empty((8 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))?.__copy__();
            } else if (__value__ == ((11 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._empty((16 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))?.__copy__();
            } else if (__value__ == ((12 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._empty((32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))?.__copy__();
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                var _bra:stdgo._internal.regexp.syntax.Syntax.T_frag = _c._cap(((_re.cap << (1i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt32))?.__copy__();
                var _sub:stdgo._internal.regexp.syntax.Syntax.T_frag = _c._compile(_re.sub[(0 : stdgo.GoInt)])?.__copy__();
                var _ket:stdgo._internal.regexp.syntax.Syntax.T_frag = _c._cap((((_re.cap << (1i64 : stdgo.GoUInt64) : stdgo.GoInt) | (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))?.__copy__();
                return _c._cat(_c._cat(_bra?.__copy__(), _sub?.__copy__())?.__copy__(), _ket?.__copy__())?.__copy__();
            } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._star(_c._compile(_re.sub[(0 : stdgo.GoInt)])?.__copy__(), (_re.flags & (32 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags)))?.__copy__();
            } else if (__value__ == ((15 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._plus(_c._compile(_re.sub[(0 : stdgo.GoInt)])?.__copy__(), (_re.flags & (32 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags)))?.__copy__();
            } else if (__value__ == ((16 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return _c._quest(_c._compile(_re.sub[(0 : stdgo.GoInt)])?.__copy__(), (_re.flags & (32 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags)))?.__copy__();
            } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                if ((_re.sub.length) == ((0 : stdgo.GoInt))) {
                    return _c._nop()?.__copy__();
                };
                var _f:T_frag = ({} : stdgo._internal.regexp.syntax.Syntax.T_frag);
                for (_i => _sub in _re.sub) {
                    if (_i == ((0 : stdgo.GoInt))) {
                        _f = _c._compile(_sub)?.__copy__();
                    } else {
                        _f = _c._cat(_f?.__copy__(), _c._compile(_sub)?.__copy__())?.__copy__();
                    };
                };
                return _f?.__copy__();
            } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                var _f:T_frag = ({} : stdgo._internal.regexp.syntax.Syntax.T_frag);
                for (__1 => _sub in _re.sub) {
                    _f = _c._alt(_f?.__copy__(), _c._compile(_sub)?.__copy__())?.__copy__();
                };
                return _f?.__copy__();
            };
        };
        throw stdgo.Go.toInterface(("regexp: unhandled case in compile" : stdgo.GoString));
    }
    @:keep
    static public function _init( _c:stdgo.Ref<T_compiler>):Void {
        @:recv var _c:stdgo.Ref<T_compiler> = _c;
        _c._p = (stdgo.Go.setRef(({} : stdgo._internal.regexp.syntax.Syntax.Prog)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>);
        _c._p.numCap = (2 : stdgo.GoInt);
        _c._inst((5 : stdgo._internal.regexp.syntax.Syntax.InstOp));
    }
}
class Error_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Error>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Error_asInterface) class Error_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<Error> = _e;
        return ((((("error parsing regexp: " : stdgo.GoString) + (_e.code.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (": `" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _e.expr?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
class T_parser_asInterface {
    @:keep
    public dynamic function _parseClass(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._parseClass(_s);
    @:keep
    public dynamic function _parseUnicodeClass(_s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoRune>):{ var _0 : stdgo.Slice<stdgo.GoRune>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value._parseUnicodeClass(_s, _r);
    @:keep
    public dynamic function _appendGroup(_r:stdgo.Slice<stdgo.GoRune>, _g:T_charGroup):stdgo.Slice<stdgo.GoRune> return __self__.value._appendGroup(_r, _g);
    @:keep
    public dynamic function _parseNamedClass(_s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoRune>):{ var _0 : stdgo.Slice<stdgo.GoRune>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value._parseNamedClass(_s, _r);
    @:keep
    public dynamic function _parsePerlClassEscape(_s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoRune>):{ var _0 : stdgo.Slice<stdgo.GoRune>; var _1 : stdgo.GoString; } return __self__.value._parsePerlClassEscape(_s, _r);
    @:keep
    public dynamic function _parseClassChar(_s:stdgo.GoString, _wholeClass:stdgo.GoString):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value._parseClassChar(_s, _wholeClass);
    @:keep
    public dynamic function _parseEscape(_s:stdgo.GoString):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value._parseEscape(_s);
    @:keep
    public dynamic function _parseRightParen():stdgo.Error return __self__.value._parseRightParen();
    @:keep
    public dynamic function _swapVerticalBar():Bool return __self__.value._swapVerticalBar();
    @:keep
    public dynamic function _parseVerticalBar():stdgo.Error return __self__.value._parseVerticalBar();
    @:keep
    public dynamic function _parseInt(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } return __self__.value._parseInt(_s);
    @:keep
    public dynamic function _parsePerlFlags(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._parsePerlFlags(_s);
    @:keep
    public dynamic function _parseRepeat(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; var _3 : Bool; } return __self__.value._parseRepeat(_s);
    @:keep
    public dynamic function _removeLeadingRegexp(_re:stdgo.Ref<Regexp>, _reuse:Bool):stdgo.Ref<Regexp> return __self__.value._removeLeadingRegexp(_re, _reuse);
    @:keep
    public dynamic function _leadingRegexp(_re:stdgo.Ref<Regexp>):stdgo.Ref<Regexp> return __self__.value._leadingRegexp(_re);
    @:keep
    public dynamic function _removeLeadingString(_re:stdgo.Ref<Regexp>, _n:stdgo.GoInt):stdgo.Ref<Regexp> return __self__.value._removeLeadingString(_re, _n);
    @:keep
    public dynamic function _leadingString(_re:stdgo.Ref<Regexp>):{ var _0 : stdgo.Slice<stdgo.GoRune>; var _1 : Flags; } return __self__.value._leadingString(_re);
    @:keep
    public dynamic function _factor(_sub:stdgo.Slice<stdgo.Ref<Regexp>>):stdgo.Slice<stdgo.Ref<Regexp>> return __self__.value._factor(_sub);
    @:keep
    public dynamic function _collapse(_subs:stdgo.Slice<stdgo.Ref<Regexp>>, _op:Op):stdgo.Ref<Regexp> return __self__.value._collapse(_subs, _op);
    @:keep
    public dynamic function _alternate():stdgo.Ref<Regexp> return __self__.value._alternate();
    @:keep
    public dynamic function _concat():stdgo.Ref<Regexp> return __self__.value._concat();
    @:keep
    public dynamic function _repeat(_op:Op, _min:stdgo.GoInt, _max:stdgo.GoInt, _before:stdgo.GoString, _after:stdgo.GoString, _lastRepeat:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._repeat(_op, _min, _max, _before, _after, _lastRepeat);
    @:keep
    public dynamic function _op(_op:Op):stdgo.Ref<Regexp> return __self__.value._op(_op);
    @:keep
    public dynamic function _literal(_r:stdgo.GoRune):Void __self__.value._literal(_r);
    @:keep
    public dynamic function _maybeConcat(_r:stdgo.GoRune, _flags:Flags):Bool return __self__.value._maybeConcat(_r, _flags);
    @:keep
    public dynamic function _push(_re:stdgo.Ref<Regexp>):stdgo.Ref<Regexp> return __self__.value._push(_re);
    @:keep
    public dynamic function _calcHeight(_re:stdgo.Ref<Regexp>, _force:Bool):stdgo.GoInt return __self__.value._calcHeight(_re, _force);
    @:keep
    public dynamic function _checkHeight(_re:stdgo.Ref<Regexp>):Void __self__.value._checkHeight(_re);
    @:keep
    public dynamic function _calcSize(_re:stdgo.Ref<Regexp>, _force:Bool):stdgo.GoInt64 return __self__.value._calcSize(_re, _force);
    @:keep
    public dynamic function _checkSize(_re:stdgo.Ref<Regexp>):Void __self__.value._checkSize(_re);
    @:keep
    public dynamic function _checkLimits(_re:stdgo.Ref<Regexp>):Void __self__.value._checkLimits(_re);
    @:keep
    public dynamic function _reuse(_re:stdgo.Ref<Regexp>):Void __self__.value._reuse(_re);
    @:keep
    public dynamic function _newRegexp(_op:Op):stdgo.Ref<Regexp> return __self__.value._newRegexp(_op);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_parser>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T_parser_asInterface) class T_parser_static_extension {
    @:keep
    static public function _parseClass( _p:stdgo.Ref<T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _rest:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
        var _t:stdgo.GoString = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        var _re = _p._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax.Op));
        _re.flags = _p._flags;
        _re.rune = (_re.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        var _sign:stdgo.GoInt = (1 : stdgo.GoInt);
        if (((_t != stdgo.Go.str()) && (_t[(0 : stdgo.GoInt)] == (94 : stdgo.GoUInt8)) : Bool)) {
            _sign = (-1 : stdgo.GoInt);
            _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if ((_p._flags & (4 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                _re.rune = (_re.rune.__append__((10 : stdgo.GoInt32), (10 : stdgo.GoInt32)));
            };
        };
        var _class = _re.rune;
        var _first:Bool = true;
        while (((_t == (stdgo.Go.str()) || _t[(0 : stdgo.GoInt)] != ((93 : stdgo.GoUInt8)) : Bool) || _first : Bool)) {
            if (((((_t != (stdgo.Go.str()) && _t[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && (_p._flags & (64 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax.Flags)) : Bool) && !_first : Bool) && (((_t.length == (1 : stdgo.GoInt)) || (_t[(1 : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), __1:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), expr : (_t.__slice__(0, ((1 : stdgo.GoInt) + _size : stdgo.GoInt)) : stdgo.GoString)?.__copy__() } : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
            };
            _first = false;
            if (((((_t.length) > (2 : stdgo.GoInt) : Bool) && _t[(0 : stdgo.GoInt)] == ((91 : stdgo.GoUInt8)) : Bool) && (_t[(1 : stdgo.GoInt)] == (58 : stdgo.GoUInt8)) : Bool)) {
                var __tmp__ = _p._parseNamedClass(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
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
            var __tmp__ = _p._parseUnicodeClass(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
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
                var __tmp__ = _p._parsePerlClassEscape(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1;
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
            var __0:stdgo.GoRune = (0 : stdgo.GoInt32), __1:stdgo.GoRune = (0 : stdgo.GoInt32), _hi:stdgo.GoRune = __1, _lo:stdgo.GoRune = __0;
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
            if (((((_t.length) >= (2 : stdgo.GoInt) : Bool) && _t[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && (_t[(1 : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) {
                _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
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
                if ((_hi < _lo : Bool)) {
                    _rng = (_rng.__slice__(0, ((_rng.length) - (_t.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), expr : _rng?.__copy__() } : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
                };
            };
            if ((_p._flags & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                _class = _appendRange(_class, _lo, _hi);
            } else {
                _class = _appendFoldedRange(_class, _lo, _hi);
            };
        };
        _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _re.rune = _class;
        _class = _cleanClass((stdgo.Go.setRef(_re.rune) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
        if ((_sign < (0 : stdgo.GoInt) : Bool)) {
            _class = _negateClass(_class);
        };
        _re.rune = _class;
        _p._push(_re);
        return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _parseUnicodeClass( _p:stdgo.Ref<T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoRune>):{ var _0 : stdgo.Slice<stdgo.GoRune>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _out:stdgo.Slice<stdgo.GoRune> = (null : stdgo.Slice<stdgo.GoInt32>), _rest:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
        if (((((_p._flags & (128 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax.Flags)) || ((_s.length) < (2 : stdgo.GoInt) : Bool) : Bool) || _s[(0 : stdgo.GoInt)] != ((92 : stdgo.GoUInt8)) : Bool) || (_s[(1 : stdgo.GoInt)] != ((112 : stdgo.GoUInt8)) && _s[(1 : stdgo.GoInt)] != ((80 : stdgo.GoUInt8)) : Bool) : Bool)) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _sign:stdgo.GoInt = (1 : stdgo.GoInt);
        if (_s[(1 : stdgo.GoInt)] == ((80 : stdgo.GoUInt8))) {
            _sign = (-1 : stdgo.GoInt);
        };
        var _t:stdgo.GoString = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        var __tmp__ = _nextRune(_t?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _t:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString), _name:stdgo.GoString = __1, _seq:stdgo.GoString = __0;
        if (_c != ((123 : stdgo.GoInt32))) {
            _seq = (_s.__slice__(0, ((_s.length) - (_t.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _name = (_seq.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            var _end:stdgo.GoInt = stdgo._internal.strings.Strings.indexRune(_s?.__copy__(), (125 : stdgo.GoInt32));
            if ((_end < (0 : stdgo.GoInt) : Bool)) {
                {
                    _err = _checkUTF8(_s?.__copy__());
                    if (_err != null) {
                        return { _0 : _out, _1 : _rest, _2 : _err };
                    };
                };
                return { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
            };
            {
                final __tmp__0 = (_s.__slice__(0, (_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                final __tmp__1 = (_s.__slice__((_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _seq = __tmp__0;
                _t = __tmp__1;
            };
            _name = (_s.__slice__((3 : stdgo.GoInt), _end) : stdgo.GoString)?.__copy__();
            {
                _err = _checkUTF8(_name?.__copy__());
                if (_err != null) {
                    return { _0 : _out, _1 : _rest, _2 : _err };
                };
            };
        };
        if (((_name != stdgo.Go.str()) && (_name[(0 : stdgo.GoInt)] == (94 : stdgo.GoUInt8)) : Bool)) {
            _sign = -_sign;
            _name = (_name.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = _unicodeTable(_name?.__copy__()), _tab:stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable> = __tmp__._0, _fold:stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable> = __tmp__._1;
        if (_tab == null || (_tab : Dynamic).__nil__) {
            return { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), _seq?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
        };
        if ((((_p._flags & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) == (0 : stdgo._internal.regexp.syntax.Syntax.Flags)) || ((_fold == null) || (_fold : Dynamic).__nil__) : Bool)) {
            if ((_sign > (0 : stdgo.GoInt) : Bool)) {
                _r = _appendTable(_r, _tab);
            } else {
                _r = _appendNegatedTable(_r, _tab);
            };
        } else {
            var _tmp = (_p._tmpClass.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _tmp = _appendTable(_tmp, _tab);
            _tmp = _appendTable(_tmp, _fold);
            _p._tmpClass = _tmp;
            _tmp = _cleanClass((stdgo.Go.setRef(_p._tmpClass) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
            if ((_sign > (0 : stdgo.GoInt) : Bool)) {
                _r = _appendClass(_r, _tmp);
            } else {
                _r = _appendNegatedClass(_r, _tmp);
            };
        };
        return { _0 : _r, _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _appendGroup( _p:stdgo.Ref<T_parser>, _r:stdgo.Slice<stdgo.GoRune>, _g:T_charGroup):stdgo.Slice<stdgo.GoRune> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if ((_p._flags & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
            if ((_g._sign < (0 : stdgo.GoInt) : Bool)) {
                _r = _appendNegatedClass(_r, _g._class);
            } else {
                _r = _appendClass(_r, _g._class);
            };
        } else {
            var _tmp = (_p._tmpClass.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _tmp = _appendFoldedClass(_tmp, _g._class);
            _p._tmpClass = _tmp;
            _tmp = _cleanClass((stdgo.Go.setRef(_p._tmpClass) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
            if ((_g._sign < (0 : stdgo.GoInt) : Bool)) {
                _r = _appendNegatedClass(_r, _tmp);
            } else {
                _r = _appendClass(_r, _tmp);
            };
        };
        return _r;
    }
    @:keep
    static public function _parseNamedClass( _p:stdgo.Ref<T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoRune>):{ var _0 : stdgo.Slice<stdgo.GoRune>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _out:stdgo.Slice<stdgo.GoRune> = (null : stdgo.Slice<stdgo.GoInt32>), _rest:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
        if (((((_s.length) < (2 : stdgo.GoInt) : Bool) || _s[(0 : stdgo.GoInt)] != ((91 : stdgo.GoUInt8)) : Bool) || (_s[(1 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _i:stdgo.GoInt = stdgo._internal.strings.Strings.index((_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":]" : stdgo.GoString));
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        var __0:stdgo.GoString = (_s.__slice__((0 : stdgo.GoInt), (_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), __1:stdgo.GoString = (_s.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _s:stdgo.GoString = __1, _name:stdgo.GoString = __0;
        var _g:stdgo._internal.regexp.syntax.Syntax.T_charGroup = (_posixGroup[_name] ?? ({} : stdgo._internal.regexp.syntax.Syntax.T_charGroup))?.__copy__();
        if (_g._sign == ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), _name?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
        };
        return { _0 : _p._appendGroup(_r, _g?.__copy__()), _1 : _s?.__copy__(), _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _parsePerlClassEscape( _p:stdgo.Ref<T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoRune>):{ var _0 : stdgo.Slice<stdgo.GoRune>; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _out:stdgo.Slice<stdgo.GoRune> = (null : stdgo.Slice<stdgo.GoInt32>), _rest:stdgo.GoString = ("" : stdgo.GoString);
        if ((((_p._flags & (64 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax.Flags)) || ((_s.length) < (2 : stdgo.GoInt) : Bool) : Bool) || (_s[(0 : stdgo.GoInt)] != (92 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _out, _1 : _rest };
        };
        var _g:stdgo._internal.regexp.syntax.Syntax.T_charGroup = (_perlGroup[(_s.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)] ?? ({} : stdgo._internal.regexp.syntax.Syntax.T_charGroup))?.__copy__();
        if (_g._sign == ((0 : stdgo.GoInt))) {
            return { _0 : _out, _1 : _rest };
        };
        return { _0 : _p._appendGroup(_r, _g?.__copy__()), _1 : (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
    }
    @:keep
    static public function _parseClassChar( _p:stdgo.Ref<T_parser>, _s:stdgo.GoString, _wholeClass:stdgo.GoString):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _r:stdgo.GoRune = (0 : stdgo.GoInt32), _rest:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
        if (_s == (stdgo.Go.str())) {
            return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("missing closing ]" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), expr : _wholeClass?.__copy__() } : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
        };
        if (_s[(0 : stdgo.GoInt)] == ((92 : stdgo.GoUInt8))) {
            return _p._parseEscape(_s?.__copy__());
        };
        return _nextRune(_s?.__copy__());
    }
    @:keep
    static public function _parseEscape( _p:stdgo.Ref<T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _p:stdgo.Ref<T_parser> = _p;
            var _r:stdgo.GoRune = (0 : stdgo.GoInt32), _rest:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
            var _t:stdgo.GoString = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if (_t == (stdgo.Go.str())) {
                return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("trailing backslash at end of expression" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
            };
            var __tmp__ = _nextRune(_t?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _t:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
            };
            @:label("Switch") {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _c;
                        if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32))))) {
                            if (((_t == (stdgo.Go.str()) || (_t[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_t[(0 : stdgo.GoInt)] > (55 : stdgo.GoUInt8) : Bool) : Bool)) {
                                break;
                            };
                            @:fallthrough {
                                __switchIndex__ = 2;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (48 : stdgo.GoInt32)))) {
                            _r = (_c - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                            {
                                var _i:stdgo.GoInt = (1 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < (3 : stdgo.GoInt) : Bool), _i++, {
                                    if (((_t == (stdgo.Go.str()) || (_t[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_t[(0 : stdgo.GoInt)] > (55 : stdgo.GoUInt8) : Bool) : Bool)) {
                                        break;
                                    };
                                    _r = (((_r * (8 : stdgo.GoInt32) : stdgo.GoInt32) + (_t[(0 : stdgo.GoInt)] : stdgo.GoRune) : stdgo.GoInt32) - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                                    _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                });
                            };
                            return { _0 : _r, _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (120 : stdgo.GoInt32)))) {
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
                                    return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
                                };
                            };
                            if (_c == ((123 : stdgo.GoInt32))) {
                                var _nhex:stdgo.GoInt = (0 : stdgo.GoInt);
                                _r = (0 : stdgo.GoInt32);
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
                                            return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
                                        };
                                    };
                                    if (_c == ((125 : stdgo.GoInt32))) {
                                        break;
                                    };
                                    var _v:stdgo.GoInt32 = _unhex(_c);
                                    if ((_v < (0 : stdgo.GoInt32) : Bool)) {
                                        @:jump("Switch") break;
                                    };
                                    _r = ((_r * (16 : stdgo.GoInt32) : stdgo.GoInt32) + _v : stdgo.GoInt32);
                                    if ((_r > (1114111 : stdgo.GoInt32) : Bool)) {
                                        @:jump("Switch") break;
                                    };
                                    _nhex++;
                                };
                                if (_nhex == ((0 : stdgo.GoInt))) {
                                    @:jump("Switch") break;
                                };
                                return { _0 : _r, _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
                            };
                            var _x:stdgo.GoInt32 = _unhex(_c);
                            {
                                {
                                    var __tmp__ = _nextRune(_t?.__copy__());
                                    _c = __tmp__._0;
                                    _t = __tmp__._1?.__copy__();
                                    _err = __tmp__._2;
                                };
                                if (_err != null) {
                                    return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
                                };
                            };
                            var _y:stdgo.GoInt32 = _unhex(_c);
                            if (((_x < (0 : stdgo.GoInt32) : Bool) || (_y < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                                break;
                            };
                            return { _0 : ((_x * (16 : stdgo.GoInt32) : stdgo.GoInt32) + _y : stdgo.GoInt32), _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (97 : stdgo.GoInt32)))) {
                            return { _0 : (7 : stdgo.GoInt32), _1 : _t?.__copy__(), _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (102 : stdgo.GoInt32)))) {
                            return { _0 : (12 : stdgo.GoInt32), _1 : _t?.__copy__(), _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (110 : stdgo.GoInt32)))) {
                            return { _0 : (10 : stdgo.GoInt32), _1 : _t?.__copy__(), _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 7 || (__switchIndex__ == -1 && (__value__ == (114 : stdgo.GoInt32)))) {
                            return { _0 : (13 : stdgo.GoInt32), _1 : _t?.__copy__(), _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 8 || (__switchIndex__ == -1 && (__value__ == (116 : stdgo.GoInt32)))) {
                            return { _0 : (9 : stdgo.GoInt32), _1 : _t?.__copy__(), _2 : _err };
                            break;
                            break;
                        } else if (__switchIndex__ == 9 || (__switchIndex__ == -1 && (__value__ == (118 : stdgo.GoInt32)))) {
                            return { _0 : (11 : stdgo.GoInt32), _1 : _t?.__copy__(), _2 : _err };
                            break;
                            break;
                        } else {
                            if (((_c < (128 : stdgo.GoInt32) : Bool) && !_isalnum(_c) : Bool)) {
                                return { _0 : _c, _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
                            };
                            break;
                        };
                    };
                    break;
                };
            };
            return { _0 : (0 : stdgo.GoInt32), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), (_s.__slice__(0, ((_s.length) - (_t.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
        });
        throw "controlFlow did not return";
    }
    @:keep
    static public function _parseRightParen( _p:stdgo.Ref<T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._concat();
        if (_p._swapVerticalBar()) {
            _p._stack = (_p._stack.__slice__(0, ((_p._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
        };
        _p._alternate();
        var _n:stdgo.GoInt = (_p._stack.length);
        if ((_n < (2 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("unexpected )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), _p._wholeRegexp?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>));
        };
        var _re1 = _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        var _re2 = _p._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
        _p._stack = (_p._stack.__slice__(0, (_n - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
        if (_re2.op != ((128 : stdgo._internal.regexp.syntax.Syntax.Op))) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("unexpected )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), _p._wholeRegexp?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>));
        };
        _p._flags = _re2.flags;
        if (_re2.cap == ((0 : stdgo.GoInt))) {
            _p._push(_re1);
        } else {
            _re2.op = (13 : stdgo._internal.regexp.syntax.Syntax.Op);
            _re2.sub = (_re2.sub0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
            _re2.sub[(0 : stdgo.GoInt)] = _re1;
            _p._push(_re2);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _swapVerticalBar( _p:stdgo.Ref<T_parser>):Bool {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _n:stdgo.GoInt = (_p._stack.length);
        if (((((_n >= (3 : stdgo.GoInt) : Bool) && _p._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)].op == ((129 : stdgo._internal.regexp.syntax.Syntax.Op)) : Bool) && _isCharClass(_p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && _isCharClass(_p._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            var _re1 = _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
            var _re3 = _p._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)];
            if ((_re1.op > _re3.op : Bool)) {
                {
                    final __tmp__0 = _re3;
                    final __tmp__1 = _re1;
                    _re1 = __tmp__0;
                    _re3 = __tmp__1;
                };
                _p._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)] = _re3;
            };
            _mergeCharClass(_re3, _re1);
            _p._reuse(_re1);
            _p._stack = (_p._stack.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
            return true;
        };
        if ((_n >= (2 : stdgo.GoInt) : Bool)) {
            var _re1 = _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
            var _re2 = _p._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
            if (_re2.op == ((129 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                if ((_n >= (3 : stdgo.GoInt) : Bool)) {
                    _cleanAlt(_p._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)]);
                };
                _p._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] = _re1;
                _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = _re2;
                return true;
            };
        };
        return false;
    }
    @:keep
    static public function _parseVerticalBar( _p:stdgo.Ref<T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._concat();
        if (!_p._swapVerticalBar()) {
            _p._op((129 : stdgo._internal.regexp.syntax.Syntax.Op));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _parseInt( _p:stdgo.Ref<T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _rest:stdgo.GoString = ("" : stdgo.GoString), _ok:Bool = false;
        if (((_s == (stdgo.Go.str()) || (_s[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || ((57 : stdgo.GoUInt8) < _s[(0 : stdgo.GoInt)] : Bool) : Bool)) {
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        if ((((((_s.length) >= (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && ((48 : stdgo.GoUInt8) <= _s[(1 : stdgo.GoInt)] : Bool) : Bool) && (_s[(1 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        var _t:stdgo.GoString = _s?.__copy__();
        while (((_s != (stdgo.Go.str()) && ((48 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) : Bool) && (_s[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        _rest = _s?.__copy__();
        _ok = true;
        _t = (_t.__slice__(0, ((_t.length) - (_s.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_t.length) : Bool), _i++, {
                if ((_n >= (100000000 : stdgo.GoInt) : Bool)) {
                    _n = (-1 : stdgo.GoInt);
                    break;
                };
                _n = (((_n * (10 : stdgo.GoInt) : stdgo.GoInt) + (_t[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
            });
        };
        return { _0 : _n, _1 : _rest, _2 : _ok };
    }
    @:keep
    static public function _parsePerlFlags( _p:stdgo.Ref<T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _p:stdgo.Ref<T_parser> = _p;
            var _rest:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
            var _t:stdgo.GoString = _s?.__copy__();
            if (((((_t.length) > (4 : stdgo.GoInt) : Bool) && _t[(2 : stdgo.GoInt)] == ((80 : stdgo.GoUInt8)) : Bool) && (_t[(3 : stdgo.GoInt)] == (60 : stdgo.GoUInt8)) : Bool)) {
                var _end:stdgo.GoInt = stdgo._internal.strings.Strings.indexRune(_t?.__copy__(), (62 : stdgo.GoInt32));
                if ((_end < (0 : stdgo.GoInt) : Bool)) {
                    {
                        _err = _checkUTF8(_t?.__copy__());
                        if (_err != null) {
                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                        };
                    };
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("invalid named capture" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
                };
                var _capture:stdgo.GoString = (_t.__slice__(0, (_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                var _name:stdgo.GoString = (_t.__slice__((4 : stdgo.GoInt), _end) : stdgo.GoString)?.__copy__();
                {
                    _err = _checkUTF8(_name?.__copy__());
                    if (_err != null) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
                    };
                };
                if (!_isValidCaptureName(_name?.__copy__())) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("invalid named capture" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), _capture?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
                };
                _p._numCap++;
                var _re = _p._op((128 : stdgo._internal.regexp.syntax.Syntax.Op));
                _re.cap = _p._numCap;
                _re.name = _name?.__copy__();
                return { _0 : (_t.__slice__((_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            };
            var _c:stdgo.GoRune = (0 : stdgo.GoInt32);
            _t = (_t.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            var _flags:stdgo._internal.regexp.syntax.Syntax.Flags = _p._flags;
            var _sign:stdgo.GoInt = (1 : stdgo.GoInt);
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
                            if (__value__ == ((105 : stdgo.GoInt32))) {
                                _flags = (_flags | ((1 : stdgo._internal.regexp.syntax.Syntax.Flags)) : stdgo._internal.regexp.syntax.Syntax.Flags);
                                _sawFlag = true;
                                break;
                            } else if (__value__ == ((109 : stdgo.GoInt32))) {
                                _flags = (_flags & ((((16 : stdgo._internal.regexp.syntax.Syntax.Flags)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax.Flags)) : stdgo._internal.regexp.syntax.Syntax.Flags);
                                _sawFlag = true;
                                break;
                            } else if (__value__ == ((115 : stdgo.GoInt32))) {
                                _flags = (_flags | ((8 : stdgo._internal.regexp.syntax.Syntax.Flags)) : stdgo._internal.regexp.syntax.Syntax.Flags);
                                _sawFlag = true;
                                break;
                            } else if (__value__ == ((85 : stdgo.GoInt32))) {
                                _flags = (_flags | ((32 : stdgo._internal.regexp.syntax.Syntax.Flags)) : stdgo._internal.regexp.syntax.Syntax.Flags);
                                _sawFlag = true;
                                break;
                            } else if (__value__ == ((45 : stdgo.GoInt32))) {
                                if ((_sign < (0 : stdgo.GoInt) : Bool)) {
                                    @:jump("Loop") break;
                                };
                                _sign = (-1 : stdgo.GoInt);
                                _flags = (-1 ^ _flags);
                                _sawFlag = false;
                                break;
                            } else if (__value__ == ((58 : stdgo.GoInt32)) || __value__ == ((41 : stdgo.GoInt32))) {
                                if ((_sign < (0 : stdgo.GoInt) : Bool)) {
                                    if (!_sawFlag) {
                                        @:jump("Loop") break;
                                    };
                                    _flags = (-1 ^ _flags);
                                };
                                if (_c == ((58 : stdgo.GoInt32))) {
                                    _p._op((128 : stdgo._internal.regexp.syntax.Syntax.Op));
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
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("invalid or unsupported Perl syntax" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), (_s.__slice__(0, ((_s.length) - (_t.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
        });
        throw "controlFlow did not return";
    }
    @:keep
    static public function _parseRepeat( _p:stdgo.Ref<T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; var _3 : Bool; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _min:stdgo.GoInt = (0 : stdgo.GoInt), _max:stdgo.GoInt = (0 : stdgo.GoInt), _rest:stdgo.GoString = ("" : stdgo.GoString), _ok:Bool = false;
        if (((_s == stdgo.Go.str()) || (_s[(0 : stdgo.GoInt)] != (123 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
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
        if (_s[(0 : stdgo.GoInt)] != ((44 : stdgo.GoUInt8))) {
            _max = _min;
        } else {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if (_s == (stdgo.Go.str())) {
                return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
            };
            if (_s[(0 : stdgo.GoInt)] == ((125 : stdgo.GoUInt8))) {
                _max = (-1 : stdgo.GoInt);
            } else {
                {
                    var __tmp__ = _p._parseInt(_s?.__copy__());
                    _max = __tmp__._0;
                    _s = __tmp__._1?.__copy__();
                    _ok1 = __tmp__._2;
                };
                if (!_ok1) {
                    return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
                } else if ((_max < (0 : stdgo.GoInt) : Bool)) {
                    _min = (-1 : stdgo.GoInt);
                };
            };
        };
        if (((_s == stdgo.Go.str()) || (_s[(0 : stdgo.GoInt)] != (125 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        _rest = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _ok = true;
        return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
    }
    @:keep
    static public function _removeLeadingRegexp( _p:stdgo.Ref<T_parser>, _re:stdgo.Ref<Regexp>, _reuse:Bool):stdgo.Ref<Regexp> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (((_re.op == (18 : stdgo._internal.regexp.syntax.Syntax.Op)) && ((_re.sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            if (_reuse) {
                _p._reuse(_re.sub[(0 : stdgo.GoInt)]);
            };
            _re.sub = (_re.sub.__slice__(0, stdgo.Go.copySlice(_re.sub, (_re.sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>))) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
            {
                final __value__ = (_re.sub.length);
                if (__value__ == ((0 : stdgo.GoInt))) {
                    _re.op = (2 : stdgo._internal.regexp.syntax.Syntax.Op);
                    _re.sub = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    var _old = _re;
                    _re = _re.sub[(0 : stdgo.GoInt)];
                    _p._reuse(_old);
                };
            };
            return _re;
        };
        if (_reuse) {
            _p._reuse(_re);
        };
        return _p._newRegexp((2 : stdgo._internal.regexp.syntax.Syntax.Op));
    }
    @:keep
    static public function _leadingRegexp( _p:stdgo.Ref<T_parser>, _re:stdgo.Ref<Regexp>):stdgo.Ref<Regexp> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (_re.op == ((2 : stdgo._internal.regexp.syntax.Syntax.Op))) {
            return null;
        };
        if (((_re.op == (18 : stdgo._internal.regexp.syntax.Syntax.Op)) && ((_re.sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _sub = _re.sub[(0 : stdgo.GoInt)];
            if (_sub.op == ((2 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                return null;
            };
            return _sub;
        };
        return _re;
    }
    @:keep
    static public function _removeLeadingString( _p:stdgo.Ref<T_parser>, _re:stdgo.Ref<Regexp>, _n:stdgo.GoInt):stdgo.Ref<Regexp> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (((_re.op == (18 : stdgo._internal.regexp.syntax.Syntax.Op)) && ((_re.sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _sub = _re.sub[(0 : stdgo.GoInt)];
            _sub = _p._removeLeadingString(_sub, _n);
            _re.sub[(0 : stdgo.GoInt)] = _sub;
            if (_sub.op == ((2 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                _p._reuse(_sub);
                {
                    final __value__ = (_re.sub.length);
                    if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                        _re.op = (2 : stdgo._internal.regexp.syntax.Syntax.Op);
                        _re.sub = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        var _old = _re;
                        _re = _re.sub[(1 : stdgo.GoInt)];
                        _p._reuse(_old);
                    } else {
                        stdgo.Go.copySlice(_re.sub, (_re.sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>));
                        _re.sub = (_re.sub.__slice__(0, ((_re.sub.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
                    };
                };
            };
            return _re;
        };
        if (_re.op == ((3 : stdgo._internal.regexp.syntax.Syntax.Op))) {
            _re.rune = (_re.rune.__slice__(0, stdgo.Go.copySlice(_re.rune, (_re.rune.__slice__(_n) : stdgo.Slice<stdgo.GoInt32>))) : stdgo.Slice<stdgo.GoInt32>);
            if ((_re.rune.length) == ((0 : stdgo.GoInt))) {
                _re.op = (2 : stdgo._internal.regexp.syntax.Syntax.Op);
            };
        };
        return _re;
    }
    @:keep
    static public function _leadingString( _p:stdgo.Ref<T_parser>, _re:stdgo.Ref<Regexp>):{ var _0 : stdgo.Slice<stdgo.GoRune>; var _1 : Flags; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (((_re.op == (18 : stdgo._internal.regexp.syntax.Syntax.Op)) && ((_re.sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _re = _re.sub[(0 : stdgo.GoInt)];
        };
        if (_re.op != ((3 : stdgo._internal.regexp.syntax.Syntax.Op))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (0 : stdgo._internal.regexp.syntax.Syntax.Flags) };
        };
        return { _0 : _re.rune, _1 : (_re.flags & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) };
    }
    @:keep
    static public function _factor( _p:stdgo.Ref<T_parser>, _sub:stdgo.Slice<stdgo.Ref<Regexp>>):stdgo.Slice<stdgo.Ref<Regexp>> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (((_sub.length) < (2 : stdgo.GoInt) : Bool)) {
            return _sub;
        };
        var _str:stdgo.Slice<stdgo.GoRune> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _strflags:Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax.Flags);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt);
        var _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (_sub.length) : Bool), _i++, {
                var _istr:stdgo.Slice<stdgo.GoRune> = (null : stdgo.Slice<stdgo.GoInt32>);
                var _iflags:Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax.Flags);
                if ((_i < (_sub.length) : Bool)) {
                    {
                        var __tmp__ = _p._leadingString(_sub[(_i : stdgo.GoInt)]);
                        _istr = __tmp__._0;
                        _iflags = __tmp__._1;
                    };
                    if (_iflags == (_strflags)) {
                        var _same:stdgo.GoInt = (0 : stdgo.GoInt);
                        while ((((_same < (_str.length) : Bool) && (_same < (_istr.length) : Bool) : Bool) && (_str[(_same : stdgo.GoInt)] == _istr[(_same : stdgo.GoInt)]) : Bool)) {
                            _same++;
                        };
                        if ((_same > (0 : stdgo.GoInt) : Bool)) {
                            _str = (_str.__slice__(0, _same) : stdgo.Slice<stdgo.GoInt32>);
                            continue;
                        };
                    };
                };
                if (_i == (_start)) {} else if (_i == ((_start + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _out = (_out.__append__(_sub[(_start : stdgo.GoInt)]));
                } else {
                    var _prefix = _p._newRegexp((3 : stdgo._internal.regexp.syntax.Syntax.Op));
                    _prefix.flags = _strflags;
                    _prefix.rune = ((_prefix.rune.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).__append__(...(_str : Array<stdgo.GoInt32>)));
                    {
                        var _j:stdgo.GoInt = _start;
                        stdgo.Go.cfor((_j < _i : Bool), _j++, {
                            _sub[(_j : stdgo.GoInt)] = _p._removeLeadingString(_sub[(_j : stdgo.GoInt)], (_str.length));
                            _p._checkLimits(_sub[(_j : stdgo.GoInt)]);
                        });
                    };
                    var _suffix = _p._collapse((_sub.__slice__(_start, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>), (19 : stdgo._internal.regexp.syntax.Syntax.Op));
                    var _re = _p._newRegexp((18 : stdgo._internal.regexp.syntax.Syntax.Op));
                    _re.sub = ((_re.sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>).__append__(_prefix, _suffix));
                    _out = (_out.__append__(_re));
                };
                _start = _i;
                _str = _istr;
                _strflags = _iflags;
            });
        };
        _sub = _out;
        _start = (0 : stdgo.GoInt);
        _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
        var _first:stdgo.Ref<Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (_sub.length) : Bool), _i++, {
                var _ifirst:stdgo.Ref<Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
                if ((_i < (_sub.length) : Bool)) {
                    _ifirst = _p._leadingRegexp(_sub[(_i : stdgo.GoInt)]);
                    if (((_first != null && ((_first : Dynamic).__nil__ == null || !(_first : Dynamic).__nil__) && _first.equal(_ifirst) : Bool) && ((_isCharClass(_first) || (((_first.op == ((17 : stdgo._internal.regexp.syntax.Syntax.Op)) && _first.min == (_first.max) : Bool) && _isCharClass(_first.sub[(0 : stdgo.GoInt)]) : Bool)) : Bool)) : Bool)) {
                        continue;
                    };
                };
                if (_i == (_start)) {} else if (_i == ((_start + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _out = (_out.__append__(_sub[(_start : stdgo.GoInt)]));
                } else {
                    var _prefix = _first;
                    {
                        var _j:stdgo.GoInt = _start;
                        stdgo.Go.cfor((_j < _i : Bool), _j++, {
                            var _reuse:Bool = _j != (_start);
                            _sub[(_j : stdgo.GoInt)] = _p._removeLeadingRegexp(_sub[(_j : stdgo.GoInt)], _reuse);
                            _p._checkLimits(_sub[(_j : stdgo.GoInt)]);
                        });
                    };
                    var _suffix = _p._collapse((_sub.__slice__(_start, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>), (19 : stdgo._internal.regexp.syntax.Syntax.Op));
                    var _re = _p._newRegexp((18 : stdgo._internal.regexp.syntax.Syntax.Op));
                    _re.sub = ((_re.sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>).__append__(_prefix, _suffix));
                    _out = (_out.__append__(_re));
                };
                _start = _i;
                _first = _ifirst;
            });
        };
        _sub = _out;
        _start = (0 : stdgo.GoInt);
        _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (_sub.length) : Bool), _i++, {
                if (((_i < (_sub.length) : Bool) && _isCharClass(_sub[(_i : stdgo.GoInt)]) : Bool)) {
                    continue;
                };
                if (_i == (_start)) {} else if (_i == ((_start + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _out = (_out.__append__(_sub[(_start : stdgo.GoInt)]));
                } else {
                    var _max:stdgo.GoInt = _start;
                    {
                        var _j:stdgo.GoInt = (_start + (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _i : Bool), _j++, {
                            if (((_sub[(_max : stdgo.GoInt)].op < _sub[(_j : stdgo.GoInt)].op : Bool) || (_sub[(_max : stdgo.GoInt)].op == (_sub[(_j : stdgo.GoInt)].op) && ((_sub[(_max : stdgo.GoInt)].rune.length) < (_sub[(_j : stdgo.GoInt)].rune.length) : Bool) : Bool) : Bool)) {
                                _max = _j;
                            };
                        });
                    };
                    {
                        final __tmp__0 = _sub[(_max : stdgo.GoInt)];
                        final __tmp__1 = _sub[(_start : stdgo.GoInt)];
                        final __tmp__2 = _sub;
                        final __tmp__3 = (_start : stdgo.GoInt);
                        final __tmp__4 = _sub;
                        final __tmp__5 = (_max : stdgo.GoInt);
                        __tmp__2[__tmp__3] = __tmp__0;
                        __tmp__4[__tmp__5] = __tmp__1;
                    };
                    {
                        var _j:stdgo.GoInt = (_start + (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _i : Bool), _j++, {
                            _mergeCharClass(_sub[(_start : stdgo.GoInt)], _sub[(_j : stdgo.GoInt)]);
                            _p._reuse(_sub[(_j : stdgo.GoInt)]);
                        });
                    };
                    _cleanAlt(_sub[(_start : stdgo.GoInt)]);
                    _out = (_out.__append__(_sub[(_start : stdgo.GoInt)]));
                };
                if ((_i < (_sub.length) : Bool)) {
                    _out = (_out.__append__(_sub[(_i : stdgo.GoInt)]));
                };
                _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
            });
        };
        _sub = _out;
        _start = (0 : stdgo.GoInt);
        _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
        for (_i => _ in _sub) {
            if (((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_sub.length) : Bool) && _sub[(_i : stdgo.GoInt)].op == ((2 : stdgo._internal.regexp.syntax.Syntax.Op)) : Bool) && (_sub[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].op == (2 : stdgo._internal.regexp.syntax.Syntax.Op)) : Bool)) {
                continue;
            };
            _out = (_out.__append__(_sub[(_i : stdgo.GoInt)]));
        };
        _sub = _out;
        return _sub;
    }
    @:keep
    static public function _collapse( _p:stdgo.Ref<T_parser>, _subs:stdgo.Slice<stdgo.Ref<Regexp>>, _op:Op):stdgo.Ref<Regexp> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if ((_subs.length) == ((1 : stdgo.GoInt))) {
            return _subs[(0 : stdgo.GoInt)];
        };
        var _re = _p._newRegexp(_op);
        _re.sub = (_re.sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
        for (__1 => _sub in _subs) {
            if (_sub.op == (_op)) {
                _re.sub = (_re.sub.__append__(...(_sub.sub : Array<stdgo._internal.regexp.syntax.Syntax.Regexp>)));
                _p._reuse(_sub);
            } else {
                _re.sub = (_re.sub.__append__(_sub));
            };
        };
        if (_op == ((19 : stdgo._internal.regexp.syntax.Syntax.Op))) {
            _re.sub = _p._factor(_re.sub);
            if ((_re.sub.length) == ((1 : stdgo.GoInt))) {
                var _old = _re;
                _re = _re.sub[(0 : stdgo.GoInt)];
                _p._reuse(_old);
            };
        };
        return _re;
    }
    @:keep
    static public function _alternate( _p:stdgo.Ref<T_parser>):stdgo.Ref<Regexp> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _i:stdgo.GoInt = (_p._stack.length);
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_p._stack[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)].op < (128 : stdgo._internal.regexp.syntax.Syntax.Op) : Bool) : Bool)) {
            _i--;
        };
        var _subs = (_p._stack.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
        _p._stack = (_p._stack.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
        if (((_subs.length) > (0 : stdgo.GoInt) : Bool)) {
            _cleanAlt(_subs[((_subs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]);
        };
        if ((_subs.length) == ((0 : stdgo.GoInt))) {
            return _p._push(_p._newRegexp((1 : stdgo._internal.regexp.syntax.Syntax.Op)));
        };
        return _p._push(_p._collapse(_subs, (19 : stdgo._internal.regexp.syntax.Syntax.Op)));
    }
    @:keep
    static public function _concat( _p:stdgo.Ref<T_parser>):stdgo.Ref<Regexp> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._maybeConcat((-1 : stdgo.GoInt32), (0 : stdgo._internal.regexp.syntax.Syntax.Flags));
        var _i:stdgo.GoInt = (_p._stack.length);
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_p._stack[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)].op < (128 : stdgo._internal.regexp.syntax.Syntax.Op) : Bool) : Bool)) {
            _i--;
        };
        var _subs = (_p._stack.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
        _p._stack = (_p._stack.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
        if ((_subs.length) == ((0 : stdgo.GoInt))) {
            return _p._push(_p._newRegexp((2 : stdgo._internal.regexp.syntax.Syntax.Op)));
        };
        return _p._push(_p._collapse(_subs, (18 : stdgo._internal.regexp.syntax.Syntax.Op)));
    }
    @:keep
    static public function _repeat( _p:stdgo.Ref<T_parser>, _op:Op, _min:stdgo.GoInt, _max:stdgo.GoInt, _before:stdgo.GoString, _after:stdgo.GoString, _lastRepeat:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _flags:stdgo._internal.regexp.syntax.Syntax.Flags = _p._flags;
        if ((_p._flags & (64 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
            if ((((_after.length) > (0 : stdgo.GoInt) : Bool) && (_after[(0 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                _after = (_after.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _flags = (_flags ^ ((32 : stdgo._internal.regexp.syntax.Syntax.Flags)) : stdgo._internal.regexp.syntax.Syntax.Flags);
            };
            if (_lastRepeat != (stdgo.Go.str())) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("invalid nested repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), (_lastRepeat.__slice__(0, ((_lastRepeat.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
            };
        };
        var _n:stdgo.GoInt = (_p._stack.length);
        if (_n == ((0 : stdgo.GoInt))) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("missing argument to repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
        };
        var _sub = _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        if ((_sub.op >= (128 : stdgo._internal.regexp.syntax.Syntax.Op) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("missing argument to repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
        };
        var _re = _p._newRegexp(_op);
        _re.min = _min;
        _re.max = _max;
        _re.flags = _flags;
        _re.sub = (_re.sub0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
        _re.sub[(0 : stdgo.GoInt)] = _sub;
        _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = _re;
        _p._checkLimits(_re);
        if (((_op == ((17 : stdgo._internal.regexp.syntax.Syntax.Op)) && (((_min >= (2 : stdgo.GoInt) : Bool) || (_max >= (2 : stdgo.GoInt) : Bool) : Bool)) : Bool) && !_repeatIsValid(_re, (1000 : stdgo.GoInt)) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Error>)) };
        };
        return { _0 : _after?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _op( _p:stdgo.Ref<T_parser>, _op:Op):stdgo.Ref<Regexp> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _re = _p._newRegexp(_op);
        _re.flags = _p._flags;
        return _p._push(_re);
    }
    @:keep
    static public function _literal( _p:stdgo.Ref<T_parser>, _r:stdgo.GoRune):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _re = _p._newRegexp((3 : stdgo._internal.regexp.syntax.Syntax.Op));
        _re.flags = _p._flags;
        if ((_p._flags & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
            _r = _minFoldRune(_r);
        };
        _re.rune0[(0 : stdgo.GoInt)] = _r;
        _re.rune = (_re.rune0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        _p._push(_re);
    }
    @:keep
    static public function _maybeConcat( _p:stdgo.Ref<T_parser>, _r:stdgo.GoRune, _flags:Flags):Bool {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _n:stdgo.GoInt = (_p._stack.length);
        if ((_n < (2 : stdgo.GoInt) : Bool)) {
            return false;
        };
        var _re1 = _p._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        var _re2 = _p._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
        if (((_re1.op != ((3 : stdgo._internal.regexp.syntax.Syntax.Op)) || _re2.op != ((3 : stdgo._internal.regexp.syntax.Syntax.Op)) : Bool) || ((_re1.flags & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != (_re2.flags & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags)) : Bool)) {
            return false;
        };
        _re2.rune = (_re2.rune.__append__(...(_re1.rune : Array<stdgo.GoInt32>)));
        if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
            _re1.rune = (_re1.rune0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _re1.rune[(0 : stdgo.GoInt)] = _r;
            _re1.flags = _flags;
            return true;
        };
        _p._stack = (_p._stack.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
        _p._reuse(_re1);
        return false;
    }
    @:keep
    static public function _push( _p:stdgo.Ref<T_parser>, _re:stdgo.Ref<Regexp>):stdgo.Ref<Regexp> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._numRunes = (_p._numRunes + ((_re.rune.length)) : stdgo.GoInt);
        if (((_re.op == ((4 : stdgo._internal.regexp.syntax.Syntax.Op)) && (_re.rune.length) == ((2 : stdgo.GoInt)) : Bool) && (_re.rune[(0 : stdgo.GoInt)] == _re.rune[(1 : stdgo.GoInt)]) : Bool)) {
            if (_p._maybeConcat(_re.rune[(0 : stdgo.GoInt)], (_p._flags & (((1 : stdgo._internal.regexp.syntax.Syntax.Flags) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax.Flags)) : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                return null;
            };
            _re.op = (3 : stdgo._internal.regexp.syntax.Syntax.Op);
            _re.rune = (_re.rune.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _re.flags = (_p._flags & (((1 : stdgo._internal.regexp.syntax.Syntax.Flags) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.regexp.syntax.Syntax.Flags)) : stdgo._internal.regexp.syntax.Syntax.Flags);
        } else if (((((((_re.op == ((4 : stdgo._internal.regexp.syntax.Syntax.Op)) && (_re.rune.length) == ((4 : stdgo.GoInt)) : Bool) && _re.rune[(0 : stdgo.GoInt)] == (_re.rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && _re.rune[(2 : stdgo.GoInt)] == (_re.rune[((3 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode.simpleFold(_re.rune[(0 : stdgo.GoInt)]) == (_re.rune[((2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode.simpleFold(_re.rune[(2 : stdgo.GoInt)]) == (_re.rune[((0 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) || ((((_re.op == ((4 : stdgo._internal.regexp.syntax.Syntax.Op)) && (_re.rune.length) == ((2 : stdgo.GoInt)) : Bool) && (_re.rune[(0 : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32) == (_re.rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode.simpleFold(_re.rune[(0 : stdgo.GoInt)]) == (_re.rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode.simpleFold(_re.rune[(1 : stdgo.GoInt)]) == (_re.rune[((0 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
            if (_p._maybeConcat(_re.rune[(0 : stdgo.GoInt)], (_p._flags | (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                return null;
            };
            _re.op = (3 : stdgo._internal.regexp.syntax.Syntax.Op);
            _re.rune = (_re.rune.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _re.flags = (_p._flags | (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags);
        } else {
            _p._maybeConcat((-1 : stdgo.GoInt32), (0 : stdgo._internal.regexp.syntax.Syntax.Flags));
        };
        _p._stack = (_p._stack.__append__(_re));
        _p._checkLimits(_re);
        return _re;
    }
    @:keep
    static public function _calcHeight( _p:stdgo.Ref<T_parser>, _re:stdgo.Ref<Regexp>, _force:Bool):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (!_force) {
            {
                var __tmp__ = (_p._height != null && _p._height.exists(_re) ? { _0 : _p._height[_re], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _h:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return _h;
                };
            };
        };
        var _h:stdgo.GoInt = (1 : stdgo.GoInt);
        for (__1 => _sub in _re.sub) {
            var _hsub:stdgo.GoInt = _p._calcHeight(_sub, false);
            if ((_h < ((1 : stdgo.GoInt) + _hsub : stdgo.GoInt) : Bool)) {
                _h = ((1 : stdgo.GoInt) + _hsub : stdgo.GoInt);
            };
        };
        _p._height[_re] = _h;
        return _h;
    }
    @:keep
    static public function _checkHeight( _p:stdgo.Ref<T_parser>, _re:stdgo.Ref<Regexp>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if ((_p._numRegexp < (1000 : stdgo.GoInt) : Bool)) {
            return;
        };
        if (_p._height == null) {
            _p._height = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>, stdgo.GoInt>();
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>, stdgo.GoInt>);
            for (__1 => _re in _p._stack) {
                _p._checkHeight(_re);
            };
        };
        if ((_p._calcHeight(_re, true) > (1000 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode)));
        };
    }
    @:keep
    static public function _calcSize( _p:stdgo.Ref<T_parser>, _re:stdgo.Ref<Regexp>, _force:Bool):stdgo.GoInt64 {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (!_force) {
            {
                var __tmp__ = (_p._size != null && _p._size.exists(_re) ? { _0 : _p._size[_re], _1 : true } : { _0 : (0 : stdgo.GoInt64), _1 : false }), _size:stdgo.GoInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return _size;
                };
            };
        };
        var _size:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _re.op;
                    if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        _size = (_re.rune.length : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((14 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        _size = ((2i64 : stdgo.GoInt64) + _p._calcSize(_re.sub[(0 : stdgo.GoInt)], false) : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((15 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        _size = ((1i64 : stdgo.GoInt64) + _p._calcSize(_re.sub[(0 : stdgo.GoInt)], false) : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        for (__1 => _sub in _re.sub) {
                            _size = (_size + (_p._calcSize(_sub, false)) : stdgo.GoInt64);
                        };
                        break;
                    } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        for (__2 => _sub in _re.sub) {
                            _size = (_size + (_p._calcSize(_sub, false)) : stdgo.GoInt64);
                        };
                        if (((_re.sub.length) > (1 : stdgo.GoInt) : Bool)) {
                            _size = (_size + (((_re.sub.length : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                        };
                        break;
                    } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                        var _sub:stdgo.GoInt64 = _p._calcSize(_re.sub[(0 : stdgo.GoInt)], false);
                        if (_re.max == ((-1 : stdgo.GoInt))) {
                            if (_re.min == ((0 : stdgo.GoInt))) {
                                _size = ((2i64 : stdgo.GoInt64) + _sub : stdgo.GoInt64);
                            } else {
                                _size = ((1i64 : stdgo.GoInt64) + ((_re.min : stdgo.GoInt64) * _sub : stdgo.GoInt64) : stdgo.GoInt64);
                            };
                            break;
                        };
                        _size = (((_re.max : stdgo.GoInt64) * _sub : stdgo.GoInt64) + ((_re.max - _re.min : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64);
                        break;
                    };
                };
                break;
            };
        };
        if ((_size < (1i64 : stdgo.GoInt64) : Bool)) {
            _size = (1i64 : stdgo.GoInt64);
        };
        _p._size[_re] = _size;
        return _size;
    }
    @:keep
    static public function _checkSize( _p:stdgo.Ref<T_parser>, _re:stdgo.Ref<Regexp>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (_p._size == null) {
            if (_p._repeats == ((0i64 : stdgo.GoInt64))) {
                _p._repeats = (1i64 : stdgo.GoInt64);
            };
            if (_re.op == ((17 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                var _n:stdgo.GoInt = _re.max;
                if (_n == ((-1 : stdgo.GoInt))) {
                    _n = _re.min;
                };
                if ((_n <= (0 : stdgo.GoInt) : Bool)) {
                    _n = (1 : stdgo.GoInt);
                };
                if (((_n : stdgo.GoInt64) > ((3355443i64 : stdgo.GoInt64) / _p._repeats : stdgo.GoInt64) : Bool)) {
                    _p._repeats = (3355443i64 : stdgo.GoInt64);
                } else {
                    _p._repeats = (_p._repeats * ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
                };
            };
            if (((_p._numRegexp : stdgo.GoInt64) < ((3355443i64 : stdgo.GoInt64) / _p._repeats : stdgo.GoInt64) : Bool)) {
                return;
            };
            _p._size = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>, stdgo.GoInt64>();
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>, stdgo.GoInt64>);
            for (__1 => _re in _p._stack) {
                _p._checkSize(_re);
            };
        };
        if ((_p._calcSize(_re, true) > (3355443i64 : stdgo.GoInt64) : Bool)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode)));
        };
    }
    @:keep
    static public function _checkLimits( _p:stdgo.Ref<T_parser>, _re:stdgo.Ref<Regexp>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if ((_p._numRunes > (33554432 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax.ErrorCode)));
        };
        _p._checkSize(_re);
        _p._checkHeight(_re);
    }
    @:keep
    static public function _reuse( _p:stdgo.Ref<T_parser>, _re:stdgo.Ref<Regexp>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (_p._height != null) {
            if (_p._height != null) _p._height.remove(_re);
        };
        _re.sub0[(0 : stdgo.GoInt)] = _p._free;
        _p._free = _re;
    }
    @:keep
    static public function _newRegexp( _p:stdgo.Ref<T_parser>, _op:Op):stdgo.Ref<Regexp> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _re = _p._free;
        if (_re != null && ((_re : Dynamic).__nil__ == null || !(_re : Dynamic).__nil__)) {
            _p._free = _re.sub0[(0 : stdgo.GoInt)];
            {
                var __tmp__ = (new stdgo._internal.regexp.syntax.Syntax.Regexp() : stdgo._internal.regexp.syntax.Syntax.Regexp);
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
            _re = (stdgo.Go.setRef(({} : stdgo._internal.regexp.syntax.Syntax.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
            _p._numRegexp++;
        };
        _re.op = _op;
        return _re;
    }
}
class T_ranges_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_ranges>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T_ranges_asInterface) class T_ranges_static_extension {
    @:keep
    static public function swap( _ra:T_ranges, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _ra:T_ranges = _ra?.__copy__();
        var _p = (_ra._p : stdgo.Slice<stdgo.GoInt32>);
        _i = (_i * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        _j = (_j * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        {
            final __tmp__0 = _p[(_j : stdgo.GoInt)];
            final __tmp__1 = _p[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)];
            final __tmp__2 = _p[(_i : stdgo.GoInt)];
            final __tmp__3 = _p[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)];
            final __tmp__4 = _p;
            final __tmp__5 = (_i : stdgo.GoInt);
            final __tmp__6 = _p;
            final __tmp__7 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
            final __tmp__8 = _p;
            final __tmp__9 = (_j : stdgo.GoInt);
            final __tmp__10 = _p;
            final __tmp__11 = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
            __tmp__4[__tmp__5] = __tmp__0;
            __tmp__6[__tmp__7] = __tmp__1;
            __tmp__8[__tmp__9] = __tmp__2;
            __tmp__10[__tmp__11] = __tmp__3;
        };
    }
    @:keep
    static public function len( _ra:T_ranges):stdgo.GoInt {
        @:recv var _ra:T_ranges = _ra?.__copy__();
        return (((_ra._p : stdgo.Slice<stdgo.GoInt32>).length) / (2 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function less( _ra:T_ranges, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _ra:T_ranges = _ra?.__copy__();
        var _p = (_ra._p : stdgo.Slice<stdgo.GoInt32>);
        _i = (_i * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        _j = (_j * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        return ((_p[(_i : stdgo.GoInt)] < _p[(_j : stdgo.GoInt)] : Bool) || (_p[(_i : stdgo.GoInt)] == (_p[(_j : stdgo.GoInt)]) && (_p[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] > _p[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool) : Bool);
    }
}
class Prog_asInterface {
    @:keep
    public dynamic function startCond():EmptyOp return __self__.value.startCond();
    @:keep
    public dynamic function prefix():{ var _0 : stdgo.GoString; var _1 : Bool; } return __self__.value.prefix();
    @:keep
    public dynamic function _skipNop(_pc:stdgo.GoUInt32):stdgo.Ref<Inst> return __self__.value._skipNop(_pc);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Prog>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Prog_asInterface) class Prog_static_extension {
    @:keep
    static public function startCond( _p:stdgo.Ref<Prog>):EmptyOp {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _p:stdgo.Ref<Prog> = _p;
            var _flag:EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
            var _pc:stdgo.GoUInt32 = (_p.start : stdgo.GoUInt32);
            var _i = (stdgo.Go.setRef(_p.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
            @:label("Loop") while (true) {
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _i.op;
                            if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                                _flag = (_flag | ((_i.arg : EmptyOp)) : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
                                break;
                            } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                                return (255 : stdgo._internal.regexp.syntax.Syntax.EmptyOp);
                                break;
                            } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((6 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                                break;
                            } else {
                                @:jump("Loop") break;
                            };
                        };
                        break;
                    };
                };
                _pc = _i.out;
                _i = (stdgo.Go.setRef(_p.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
            };
            return _flag;
        });
        throw "controlFlow did not return";
    }
    @:keep
    static public function prefix( _p:stdgo.Ref<Prog>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<Prog> = _p;
        var _prefix:stdgo.GoString = ("" : stdgo.GoString), _complete:Bool = false;
        var _i = _p._skipNop((_p.start : stdgo.GoUInt32));
        if (((_i._op() != (7 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || (_i.rune.length != (1 : stdgo.GoInt)) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _i.op == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp)) };
        };
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        while ((((_i._op() == ((7 : stdgo._internal.regexp.syntax.Syntax.InstOp)) && (_i.rune.length) == ((1 : stdgo.GoInt)) : Bool) && ((_i.arg : Flags) & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax.Flags)) : Bool) && (_i.rune[(0 : stdgo.GoInt)] != (65533 : stdgo.GoInt32)) : Bool)) {
            _buf.writeRune(_i.rune[(0 : stdgo.GoInt)]);
            _i = _p._skipNop(_i.out);
        };
        return { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : _i.op == ((4 : stdgo._internal.regexp.syntax.Syntax.InstOp)) };
    }
    @:keep
    static public function _skipNop( _p:stdgo.Ref<Prog>, _pc:stdgo.GoUInt32):stdgo.Ref<Inst> {
        @:recv var _p:stdgo.Ref<Prog> = _p;
        var _i = (stdgo.Go.setRef(_p.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
        while (((_i.op == (6 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || (_i.op == (2 : stdgo._internal.regexp.syntax.Syntax.InstOp)) : Bool)) {
            _i = (stdgo.Go.setRef(_p.inst[(_i.out : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>);
        };
        return _i;
    }
    @:keep
    static public function string( _p:stdgo.Ref<Prog>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<Prog> = _p;
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _dumpProg((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), _p);
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
}
class Inst_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function matchEmptyWidth(_before:stdgo.GoRune, _after:stdgo.GoRune):Bool return __self__.value.matchEmptyWidth(_before, _after);
    @:keep
    public dynamic function matchRunePos(_r:stdgo.GoRune):stdgo.GoInt return __self__.value.matchRunePos(_r);
    @:keep
    public dynamic function matchRune(_r:stdgo.GoRune):Bool return __self__.value.matchRune(_r);
    @:keep
    public dynamic function _op():InstOp return __self__.value._op();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Inst>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Inst_asInterface) class Inst_static_extension {
    @:keep
    static public function string( _i:stdgo.Ref<Inst>):stdgo.GoString {
        @:recv var _i:stdgo.Ref<Inst> = _i;
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _dumpInst((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), _i);
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function matchEmptyWidth( _i:stdgo.Ref<Inst>, _before:stdgo.GoRune, _after:stdgo.GoRune):Bool {
        @:recv var _i:stdgo.Ref<Inst> = _i;
        {
            final __value__ = (_i.arg : EmptyOp);
            if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
                return ((_before == (10 : stdgo.GoInt32)) || (_before == (-1 : stdgo.GoInt32)) : Bool);
            } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
                return ((_after == (10 : stdgo.GoInt32)) || (_after == (-1 : stdgo.GoInt32)) : Bool);
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
                return _before == ((-1 : stdgo.GoInt32));
            } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
                return _after == ((-1 : stdgo.GoInt32));
            } else if (__value__ == ((16 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
                return isWordChar(_before) != (isWordChar(_after));
            } else if (__value__ == ((32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))) {
                return isWordChar(_before) == (isWordChar(_after));
            };
        };
        throw stdgo.Go.toInterface(("unknown empty width arg" : stdgo.GoString));
    }
    @:keep
    static public function matchRunePos( _i:stdgo.Ref<Inst>, _r:stdgo.GoRune):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<Inst> = _i;
        var _rune = _i.rune;
        {
            final __value__ = (_rune.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                return (-1 : stdgo.GoInt);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _r0:stdgo.GoInt32 = _rune[(0 : stdgo.GoInt)];
                if (_r == (_r0)) {
                    return (0 : stdgo.GoInt);
                };
                if (((_i.arg : Flags) & (1 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                    {
                        var _r1:stdgo.GoInt32 = stdgo._internal.unicode.Unicode.simpleFold(_r0);
                        stdgo.Go.cfor(_r1 != (_r0), _r1 = stdgo._internal.unicode.Unicode.simpleFold(_r1), {
                            if (_r == (_r1)) {
                                return (0 : stdgo.GoInt);
                            };
                        });
                    };
                };
                return (-1 : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                if (((_r >= _rune[(0 : stdgo.GoInt)] : Bool) && (_r <= _rune[(1 : stdgo.GoInt)] : Bool) : Bool)) {
                    return (0 : stdgo.GoInt);
                };
                return (-1 : stdgo.GoInt);
            } else if (__value__ == ((4 : stdgo.GoInt)) || __value__ == ((6 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt))) {
                {
                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_rune.length) : Bool), _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                        if ((_r < _rune[(_j : stdgo.GoInt)] : Bool)) {
                            return (-1 : stdgo.GoInt);
                        };
                        if ((_r <= _rune[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool)) {
                            return (_j / (2 : stdgo.GoInt) : stdgo.GoInt);
                        };
                    });
                };
                return (-1 : stdgo.GoInt);
            };
        };
        var _lo:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hi:stdgo.GoInt = ((_rune.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
        while ((_lo < _hi : Bool)) {
            var _m:stdgo.GoInt = (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            {
                var _c:stdgo.GoInt32 = _rune[((2 : stdgo.GoInt) * _m : stdgo.GoInt)];
                if ((_c <= _r : Bool)) {
                    if ((_r <= _rune[(((2 : stdgo.GoInt) * _m : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool)) {
                        return _m;
                    };
                    _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _hi = _m;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
    @:keep
    static public function matchRune( _i:stdgo.Ref<Inst>, _r:stdgo.GoRune):Bool {
        @:recv var _i:stdgo.Ref<Inst> = _i;
        return _i.matchRunePos(_r) != ((-1 : stdgo.GoInt));
    }
    @:keep
    static public function _op( _i:stdgo.Ref<Inst>):InstOp {
        @:recv var _i:stdgo.Ref<Inst> = _i;
        var _op:stdgo._internal.regexp.syntax.Syntax.InstOp = _i.op;
        {
            final __value__ = _op;
            if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))) {
                _op = (7 : stdgo._internal.regexp.syntax.Syntax.InstOp);
            };
        };
        return _op;
    }
}
class Regexp_asInterface {
    @:keep
    public dynamic function simplify():stdgo.Ref<Regexp> return __self__.value.simplify();
    @:keep
    public dynamic function _capNames(_names:stdgo.Slice<stdgo.GoString>):Void __self__.value._capNames(_names);
    @:keep
    public dynamic function capNames():stdgo.Slice<stdgo.GoString> return __self__.value.capNames();
    @:keep
    public dynamic function maxCap():stdgo.GoInt return __self__.value.maxCap();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function equal(_y:stdgo.Ref<Regexp>):Bool return __self__.value.equal(_y);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Regexp>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    static public function simplify( _re:stdgo.Ref<Regexp>):stdgo.Ref<Regexp> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if (_re == null || (_re : Dynamic).__nil__) {
            return null;
        };
        {
            final __value__ = _re.op;
            if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((18 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((19 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                var _nre = _re;
                for (_i => _sub in _re.sub) {
                    var _nsub = _sub.simplify();
                    if (((_nre == _re) && (_nsub != _sub) : Bool)) {
                        _nre = (stdgo.Go.setRef(({} : stdgo._internal.regexp.syntax.Syntax.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
                        {
                            var __tmp__ = (_re : stdgo._internal.regexp.syntax.Syntax.Regexp)?.__copy__();
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
                        _nre.rune = (null : stdgo.Slice<stdgo.GoInt32>);
                        _nre.sub = ((_nre.sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>).__append__(...((_re.sub.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>) : Array<stdgo._internal.regexp.syntax.Syntax.Regexp>)));
                    };
                    if (_nre != (_re)) {
                        _nre.sub = (_nre.sub.__append__(_nsub));
                    };
                };
                return _nre;
            } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                var _sub = _re.sub[(0 : stdgo.GoInt)].simplify();
                return _simplify1(_re.op, _re.flags, _sub, _re);
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                if (((_re.min == (0 : stdgo.GoInt)) && (_re.max == (0 : stdgo.GoInt)) : Bool)) {
                    return (stdgo.Go.setRef(({ op : (2 : stdgo._internal.regexp.syntax.Syntax.Op) } : stdgo._internal.regexp.syntax.Syntax.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
                };
                var _sub = _re.sub[(0 : stdgo.GoInt)].simplify();
                if (_re.max == ((-1 : stdgo.GoInt))) {
                    if (_re.min == ((0 : stdgo.GoInt))) {
                        return _simplify1((14 : stdgo._internal.regexp.syntax.Syntax.Op), _re.flags, _sub, null);
                    };
                    if (_re.min == ((1 : stdgo.GoInt))) {
                        return _simplify1((15 : stdgo._internal.regexp.syntax.Syntax.Op), _re.flags, _sub, null);
                    };
                    var _nre = (stdgo.Go.setRef(({ op : (18 : stdgo._internal.regexp.syntax.Syntax.Op) } : stdgo._internal.regexp.syntax.Syntax.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
                    _nre.sub = (_nre.sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
                    {
                        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (_re.min - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                            _nre.sub = (_nre.sub.__append__(_sub));
                        });
                    };
                    _nre.sub = (_nre.sub.__append__(_simplify1((15 : stdgo._internal.regexp.syntax.Syntax.Op), _re.flags, _sub, null)));
                    return _nre;
                };
                if (((_re.min == (1 : stdgo.GoInt)) && (_re.max == (1 : stdgo.GoInt)) : Bool)) {
                    return _sub;
                };
                var _prefix:stdgo.Ref<Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
                if ((_re.min > (0 : stdgo.GoInt) : Bool)) {
                    _prefix = (stdgo.Go.setRef(({ op : (18 : stdgo._internal.regexp.syntax.Syntax.Op) } : stdgo._internal.regexp.syntax.Syntax.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
                    _prefix.sub = (_prefix.sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>);
                    {
                        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _re.min : Bool), _i++, {
                            _prefix.sub = (_prefix.sub.__append__(_sub));
                        });
                    };
                };
                if ((_re.max > _re.min : Bool)) {
                    var _suffix = _simplify1((16 : stdgo._internal.regexp.syntax.Syntax.Op), _re.flags, _sub, null);
                    {
                        var _i:stdgo.GoInt = (_re.min + (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _re.max : Bool), _i++, {
                            var _nre2 = (stdgo.Go.setRef(({ op : (18 : stdgo._internal.regexp.syntax.Syntax.Op) } : stdgo._internal.regexp.syntax.Syntax.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
                            _nre2.sub = ((_nre2.sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>>).__append__(_sub, _suffix));
                            _suffix = _simplify1((16 : stdgo._internal.regexp.syntax.Syntax.Op), _re.flags, _nre2, null);
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
                return (stdgo.Go.setRef(({ op : (1 : stdgo._internal.regexp.syntax.Syntax.Op) } : stdgo._internal.regexp.syntax.Syntax.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>);
            };
        };
        return _re;
    }
    @:keep
    static public function _capNames( _re:stdgo.Ref<Regexp>, _names:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        if (_re.op == ((13 : stdgo._internal.regexp.syntax.Syntax.Op))) {
            _names[(_re.cap : stdgo.GoInt)] = _re.name?.__copy__();
        };
        for (__1 => _sub in _re.sub) {
            _sub._capNames(_names);
        };
    }
    @:keep
    static public function capNames( _re:stdgo.Ref<Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _names = (new stdgo.Slice<stdgo.GoString>((_re.maxCap() + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        _re._capNames(_names);
        return _names;
    }
    @:keep
    static public function maxCap( _re:stdgo.Ref<Regexp>):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_re.op == ((13 : stdgo._internal.regexp.syntax.Syntax.Op))) {
            _m = _re.cap;
        };
        for (__1 => _sub in _re.sub) {
            {
                var _n:stdgo.GoInt = _sub.maxCap();
                if ((_m < _n : Bool)) {
                    _m = _n;
                };
            };
        };
        return _m;
    }
    @:keep
    static public function string( _re:stdgo.Ref<Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.Ref<Regexp> = _re;
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _writeRegexp((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>), _re);
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function equal( _x:stdgo.Ref<Regexp>, _y:stdgo.Ref<Regexp>):Bool {
        @:recv var _x:stdgo.Ref<Regexp> = _x;
        if ((((_x == null) || (_x : Dynamic).__nil__) || ((_y == null) || (_y : Dynamic).__nil__) : Bool)) {
            return _x == (_y);
        };
        if (_x.op != (_y.op)) {
            return false;
        };
        {
            final __value__ = _x.op;
            if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                if ((_x.flags & (256 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((_y.flags & (256 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags))) {
                    return false;
                };
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((4 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                if ((_x.rune.length) != ((_y.rune.length))) {
                    return false;
                };
                for (_i => _r in _x.rune) {
                    if (_r != (_y.rune[(_i : stdgo.GoInt)])) {
                        return false;
                    };
                };
            } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((18 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                if ((_x.sub.length) != ((_y.sub.length))) {
                    return false;
                };
                for (_i => _sub in _x.sub) {
                    if (!_sub.equal(_y.sub[(_i : stdgo.GoInt)])) {
                        return false;
                    };
                };
            } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                if ((((_x.flags & (32 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != (_y.flags & (32 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags)) || !_x.sub[(0 : stdgo.GoInt)].equal(_y.sub[(0 : stdgo.GoInt)]) : Bool)) {
                    return false;
                };
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                if (((((_x.flags & (32 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags) != ((_y.flags & (32 : stdgo._internal.regexp.syntax.Syntax.Flags) : stdgo._internal.regexp.syntax.Syntax.Flags)) || _x.min != (_y.min) : Bool) || _x.max != (_y.max) : Bool) || !_x.sub[(0 : stdgo.GoInt)].equal(_y.sub[(0 : stdgo.GoInt)]) : Bool)) {
                    return false;
                };
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax.Op))) {
                if (((_x.cap != (_y.cap) || _x.name != (_y.name) : Bool) || !_x.sub[(0 : stdgo.GoInt)].equal(_y.sub[(0 : stdgo.GoInt)]) : Bool)) {
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ErrorCode>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.ErrorCode_asInterface) class ErrorCode_static_extension {
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<InstOp>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.InstOp_asInterface) class InstOp_static_extension {
    @:keep
    static public function string( _i:InstOp):stdgo.GoString {
        @:recv var _i:InstOp = _i;
        if (((_i : stdgo.GoUInt) >= (_instOpNames.length : stdgo.GoUInt) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        return _instOpNames[(_i : stdgo.GoInt)]?.__copy__();
    }
}
class Op_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Op>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Op_asInterface) class Op_static_extension {
    @:keep
    static public function string( _i:Op):stdgo.GoString {
        @:recv var _i:Op = _i;
        if ((((1 : stdgo._internal.regexp.syntax.Syntax.Op) <= _i : Bool) && (_i <= (19 : stdgo._internal.regexp.syntax.Syntax.Op) : Bool) : Bool)) {
            _i = (_i - ((1 : stdgo._internal.regexp.syntax.Syntax.Op)) : stdgo._internal.regexp.syntax.Syntax.Op);
            return (("NoMatchEmptyMatchLiteralCharClassAnyCharNotNLAnyCharBeginLineEndLineBeginTextEndTextWordBoundaryNoWordBoundaryCaptureStarPlusQuestRepeatConcatAlternate" : stdgo.GoString).__slice__(__Op_index_0[(_i : stdgo.GoInt)], __Op_index_0[((_i + (1 : stdgo._internal.regexp.syntax.Syntax.Op) : stdgo._internal.regexp.syntax.Syntax.Op) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else if (_i == ((128 : stdgo._internal.regexp.syntax.Syntax.Op))) {
            return ("opPseudo" : stdgo.GoString);
        } else {
            return ((("Op(" : stdgo.GoString) + stdgo._internal.strconv.Strconv.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
    }
}
