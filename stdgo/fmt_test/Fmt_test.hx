package stdgo.fmt_test;
import stdgo.fmt.Fmt;
import stdgo.fmt.Fmt;
import stdgo.fmt.Fmt;
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
    
    
    
**/
var naN = stdgo.math.Math.naN();
/**
    
    
    
**/
private var _posInf = stdgo.math.Math.inf((1 : GoInt));
/**
    
    
    
**/
private var _negInf = stdgo.math.Math.inf((-1 : GoInt));
/**
    
    
    
**/
private var _intVar = (0 : GoInt);
/**
    
    
    
**/
private var _array = (new GoArray<GoInt>((1 : GoInt), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt)) : GoArray<GoInt>);
/**
    
    
    
**/
private var _iarray = (new GoArray<AnyInterface>(Go.toInterface((1 : GoInt)), Go.toInterface(("hello" : GoString)), Go.toInterface((2.5 : GoFloat64)), (null : AnyInterface)) : GoArray<AnyInterface>);
/**
    
    
    
**/
private var _slice = (_array.__slice__(0) : Slice<GoInt>);
/**
    
    
    
**/
private var _islice = (_iarray.__slice__(0) : Slice<AnyInterface>);
/**
    
    
    
**/
private var _barray = (new GoArray<stdgo.fmt_test.Fmt_test.T_renamedUint8>((1 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (2 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (3 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (4 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (5 : stdgo.fmt_test.Fmt_test.T_renamedUint8)) : GoArray<stdgo.fmt_test.Fmt_test.T_renamedUint8>);
/**
    
    
    
**/
private var _bslice = (_barray.__slice__(0) : Slice<stdgo.fmt_test.Fmt_test.T_renamedUint8>);
/**
    
    
    
**/
private var _byteStringerSlice = (new Slice<stdgo.fmt_test.Fmt_test.T_byteStringer>(0, 0, (104 : stdgo.fmt_test.Fmt_test.T_byteStringer), (101 : stdgo.fmt_test.Fmt_test.T_byteStringer), (108 : stdgo.fmt_test.Fmt_test.T_byteStringer), (108 : stdgo.fmt_test.Fmt_test.T_byteStringer), (111 : stdgo.fmt_test.Fmt_test.T_byteStringer)) : Slice<stdgo.fmt_test.Fmt_test.T_byteStringer>);
/**
    
    
    
**/
private var _byteFormatterSlice = (new Slice<stdgo.fmt_test.Fmt_test.T_byteFormatter>(0, 0, (104 : stdgo.fmt_test.Fmt_test.T_byteFormatter), (101 : stdgo.fmt_test.Fmt_test.T_byteFormatter), (108 : stdgo.fmt_test.Fmt_test.T_byteFormatter), (108 : stdgo.fmt_test.Fmt_test.T_byteFormatter), (111 : stdgo.fmt_test.Fmt_test.T_byteFormatter)) : Slice<stdgo.fmt_test.Fmt_test.T_byteFormatter>);
/**
    
    
    
**/
private var _fmtTests = (new Slice<T__struct_2>(
0,
0,
({ _fmt : ("%d" : GoString), _val : Go.toInterface((12345 : GoInt)), _out : ("12345" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((12345 : GoInt)), _out : ("12345" : GoString) } : T__struct_2),
({ _fmt : ("%t" : GoString), _val : Go.toInterface(true), _out : ("true" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface(("abc" : GoString)), _out : ("abc" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(("abc" : GoString)), _out : ("\"abc\"" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface(("abc" : GoString)), _out : ("616263" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface(Go.str(255, 240, 15, 255)), _out : ("fff00fff" : GoString) } : T__struct_2),
({ _fmt : ("%X" : GoString), _val : Go.toInterface(Go.str(255, 240, 15, 255)), _out : ("FFF00FFF" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface(Go.str()), _out : Go.str() } : T__struct_2),
({ _fmt : ("% x" : GoString), _val : Go.toInterface(Go.str()), _out : Go.str() } : T__struct_2),
({ _fmt : ("%#x" : GoString), _val : Go.toInterface(Go.str()), _out : Go.str() } : T__struct_2),
({ _fmt : ("%# x" : GoString), _val : Go.toInterface(Go.str()), _out : Go.str() } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface(("xyz" : GoString)), _out : ("78797a" : GoString) } : T__struct_2),
({ _fmt : ("%X" : GoString), _val : Go.toInterface(("xyz" : GoString)), _out : ("78797A" : GoString) } : T__struct_2),
({ _fmt : ("% x" : GoString), _val : Go.toInterface(("xyz" : GoString)), _out : ("78 79 7a" : GoString) } : T__struct_2),
({ _fmt : ("% X" : GoString), _val : Go.toInterface(("xyz" : GoString)), _out : ("78 79 7A" : GoString) } : T__struct_2),
({ _fmt : ("%#x" : GoString), _val : Go.toInterface(("xyz" : GoString)), _out : ("0x78797a" : GoString) } : T__struct_2),
({ _fmt : ("%#X" : GoString), _val : Go.toInterface(("xyz" : GoString)), _out : ("0X78797A" : GoString) } : T__struct_2),
({ _fmt : ("%# x" : GoString), _val : Go.toInterface(("xyz" : GoString)), _out : ("0x78 0x79 0x7a" : GoString) } : T__struct_2),
({ _fmt : ("%# X" : GoString), _val : Go.toInterface(("xyz" : GoString)), _out : ("0X78 0X79 0X7A" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface((("abc" : GoString) : Slice<GoByte>)), _out : ("abc" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((97 : GoUInt8), (98 : GoUInt8), (99 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("abc" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface(((new GoArray<GoUInt8>((97 : GoUInt8), (98 : GoUInt8), (99 : GoUInt8)) : GoArray<GoUInt8>) : Ref<GoArray<GoUInt8>>)), _out : ("&abc" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((("abc" : GoString) : Slice<GoByte>)), _out : ("\"abc\"" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface((("abc" : GoString) : Slice<GoByte>)), _out : ("616263" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface((Go.str(255, 240, 15, 255) : Slice<GoByte>)), _out : ("fff00fff" : GoString) } : T__struct_2),
({ _fmt : ("%X" : GoString), _val : Go.toInterface((Go.str(255, 240, 15, 255) : Slice<GoByte>)), _out : ("FFF00FFF" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface((Go.str() : Slice<GoByte>)), _out : Go.str() } : T__struct_2),
({ _fmt : ("% x" : GoString), _val : Go.toInterface((Go.str() : Slice<GoByte>)), _out : Go.str() } : T__struct_2),
({ _fmt : ("%#x" : GoString), _val : Go.toInterface((Go.str() : Slice<GoByte>)), _out : Go.str() } : T__struct_2),
({ _fmt : ("%# x" : GoString), _val : Go.toInterface((Go.str() : Slice<GoByte>)), _out : Go.str() } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface((("xyz" : GoString) : Slice<GoByte>)), _out : ("78797a" : GoString) } : T__struct_2),
({ _fmt : ("%X" : GoString), _val : Go.toInterface((("xyz" : GoString) : Slice<GoByte>)), _out : ("78797A" : GoString) } : T__struct_2),
({ _fmt : ("% x" : GoString), _val : Go.toInterface((("xyz" : GoString) : Slice<GoByte>)), _out : ("78 79 7a" : GoString) } : T__struct_2),
({ _fmt : ("% X" : GoString), _val : Go.toInterface((("xyz" : GoString) : Slice<GoByte>)), _out : ("78 79 7A" : GoString) } : T__struct_2),
({ _fmt : ("%#x" : GoString), _val : Go.toInterface((("xyz" : GoString) : Slice<GoByte>)), _out : ("0x78797a" : GoString) } : T__struct_2),
({ _fmt : ("%#X" : GoString), _val : Go.toInterface((("xyz" : GoString) : Slice<GoByte>)), _out : ("0X78797A" : GoString) } : T__struct_2),
({ _fmt : ("%# x" : GoString), _val : Go.toInterface((("xyz" : GoString) : Slice<GoByte>)), _out : ("0x78 0x79 0x7a" : GoString) } : T__struct_2),
({ _fmt : ("%# X" : GoString), _val : Go.toInterface((("xyz" : GoString) : Slice<GoByte>)), _out : ("0X78 0X79 0X7A" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(Go.str()), _out : ("\"\"" : GoString) } : T__struct_2),
({ _fmt : ("%#q" : GoString), _val : Go.toInterface(Go.str()), _out : ("``" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(("\"" : GoString)), _out : ("\"\\\"\"" : GoString) } : T__struct_2),
({ _fmt : ("%#q" : GoString), _val : Go.toInterface(("\"" : GoString)), _out : ("`\"`" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(("`" : GoString)), _out : ("\"`\"" : GoString) } : T__struct_2),
({ _fmt : ("%#q" : GoString), _val : Go.toInterface(("`" : GoString)), _out : ("\"`\"" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(("\n" : GoString)), _out : ("\"\\n\"" : GoString) } : T__struct_2),
({ _fmt : ("%#q" : GoString), _val : Go.toInterface(("\n" : GoString)), _out : ("\"\\n\"" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(("\\n" : GoString)), _out : ("\"\\\\n\"" : GoString) } : T__struct_2),
({ _fmt : ("%#q" : GoString), _val : Go.toInterface(("\\n" : GoString)), _out : ("`\\n`" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(("abc" : GoString)), _out : ("\"abc\"" : GoString) } : T__struct_2),
({ _fmt : ("%#q" : GoString), _val : Go.toInterface(("abc" : GoString)), _out : ("`abc`" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(("日本語" : GoString)), _out : ("\"日本語\"" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface(("日本語" : GoString)), _out : ("\"\\u65e5\\u672c\\u8a9e\"" : GoString) } : T__struct_2),
({ _fmt : ("%#q" : GoString), _val : Go.toInterface(("日本語" : GoString)), _out : ("`日本語`" : GoString) } : T__struct_2),
({ _fmt : ("%#+q" : GoString), _val : Go.toInterface(("日本語" : GoString)), _out : ("`日本語`" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(("\x07\x08\x0C\n\r\t\x0B\"\\" : GoString)), _out : ("\"\\a\\b\\f\\n\\r\\t\\v\\\"\\\\\"" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface(("\x07\x08\x0C\n\r\t\x0B\"\\" : GoString)), _out : ("\"\\a\\b\\f\\n\\r\\t\\v\\\"\\\\\"" : GoString) } : T__struct_2),
({ _fmt : ("%#q" : GoString), _val : Go.toInterface(("\x07\x08\x0C\n\r\t\x0B\"\\" : GoString)), _out : ("\"\\a\\b\\f\\n\\r\\t\\v\\\"\\\\\"" : GoString) } : T__struct_2),
({ _fmt : ("%#+q" : GoString), _val : Go.toInterface(("\x07\x08\x0C\n\r\t\x0B\"\\" : GoString)), _out : ("\"\\a\\b\\f\\n\\r\\t\\v\\\"\\\\\"" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(("☺" : GoString)), _out : ("\"☺\"" : GoString) } : T__struct_2),
({ _fmt : ("% q" : GoString), _val : Go.toInterface(("☺" : GoString)), _out : ("\"☺\"" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface(("☺" : GoString)), _out : ("\"\\u263a\"" : GoString) } : T__struct_2),
({ _fmt : ("%#q" : GoString), _val : Go.toInterface(("☺" : GoString)), _out : ("`☺`" : GoString) } : T__struct_2),
({ _fmt : ("%#+q" : GoString), _val : Go.toInterface(("☺" : GoString)), _out : ("`☺`" : GoString) } : T__struct_2),
({ _fmt : ("%10q" : GoString), _val : Go.toInterface(("⌘" : GoString)), _out : ("       \"⌘\"" : GoString) } : T__struct_2),
({ _fmt : ("%+10q" : GoString), _val : Go.toInterface(("⌘" : GoString)), _out : ("  \"\\u2318\"" : GoString) } : T__struct_2),
({ _fmt : ("%-10q" : GoString), _val : Go.toInterface(("⌘" : GoString)), _out : ("\"⌘\"       " : GoString) } : T__struct_2),
({ _fmt : ("%+-10q" : GoString), _val : Go.toInterface(("⌘" : GoString)), _out : ("\"\\u2318\"  " : GoString) } : T__struct_2),
({ _fmt : ("%010q" : GoString), _val : Go.toInterface(("⌘" : GoString)), _out : ("0000000\"⌘\"" : GoString) } : T__struct_2),
({ _fmt : ("%+010q" : GoString), _val : Go.toInterface(("⌘" : GoString)), _out : ("00\"\\u2318\"" : GoString) } : T__struct_2),
({ _fmt : ("%-010q" : GoString), _val : Go.toInterface(("⌘" : GoString)), _out : ("\"⌘\"       " : GoString) } : T__struct_2),
({ _fmt : ("%+-010q" : GoString), _val : Go.toInterface(("⌘" : GoString)), _out : ("\"\\u2318\"  " : GoString) } : T__struct_2),
({ _fmt : ("%#8q" : GoString), _val : Go.toInterface(("\n" : GoString)), _out : ("    \"\\n\"" : GoString) } : T__struct_2),
({ _fmt : ("%#+8q" : GoString), _val : Go.toInterface(("\r" : GoString)), _out : ("    \"\\r\"" : GoString) } : T__struct_2),
({ _fmt : ("%#-8q" : GoString), _val : Go.toInterface(("\t" : GoString)), _out : ("`\t`     " : GoString) } : T__struct_2),
({ _fmt : ("%#+-8q" : GoString), _val : Go.toInterface(("\x08" : GoString)), _out : ("\"\\b\"    " : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(Go.str("abc", 255, "def")), _out : ("\"abc\\xffdef\"" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface(Go.str("abc", 255, "def")), _out : ("\"abc\\xffdef\"" : GoString) } : T__struct_2),
({ _fmt : ("%#q" : GoString), _val : Go.toInterface(Go.str("abc", 255, "def")), _out : ("\"abc\\xffdef\"" : GoString) } : T__struct_2),
({ _fmt : ("%#+q" : GoString), _val : Go.toInterface(Go.str("abc", 255, "def")), _out : ("\"abc\\xffdef\"" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(("\u{0010ffff}" : GoString)), _out : ("\"\\U0010ffff\"" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface(("\u{0010ffff}" : GoString)), _out : ("\"\\U0010ffff\"" : GoString) } : T__struct_2),
({ _fmt : ("%#q" : GoString), _val : Go.toInterface(("\u{0010ffff}" : GoString)), _out : ("`\u{0010ffff}`" : GoString) } : T__struct_2),
({ _fmt : ("%#+q" : GoString), _val : Go.toInterface(("\u{0010ffff}" : GoString)), _out : ("`\u{0010ffff}`" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((((1114112 : GoInt32) : GoRune) : GoString)), _out : ("\"�\"" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface((((1114112 : GoInt32) : GoRune) : GoString)), _out : ("\"\\ufffd\"" : GoString) } : T__struct_2),
({ _fmt : ("%#q" : GoString), _val : Go.toInterface((((1114112 : GoInt32) : GoRune) : GoString)), _out : ("`�`" : GoString) } : T__struct_2),
({ _fmt : ("%#+q" : GoString), _val : Go.toInterface((((1114112 : GoInt32) : GoRune) : GoString)), _out : ("`�`" : GoString) } : T__struct_2),
({ _fmt : ("%c" : GoString), _val : Go.toInterface((("120" : GoUInt) : GoUInt)), _out : ("x" : GoString) } : T__struct_2),
({ _fmt : ("%c" : GoString), _val : Go.toInterface((228 : GoInt)), _out : ("ä" : GoString) } : T__struct_2),
({ _fmt : ("%c" : GoString), _val : Go.toInterface((26412 : GoInt)), _out : ("本" : GoString) } : T__struct_2),
({ _fmt : ("%c" : GoString), _val : Go.toInterface((26085 : GoInt32)), _out : ("日" : GoString) } : T__struct_2),
({ _fmt : ("%.0c" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("⌘" : GoString) } : T__struct_2),
({ _fmt : ("%3c" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("  ⌘" : GoString) } : T__struct_2),
({ _fmt : ("%-3c" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("⌘  " : GoString) } : T__struct_2),
({ _fmt : ("%c" : GoString), _val : Go.toInterface((("4294967296" : GoUInt64) : GoUInt64)), _out : ("�" : GoString) } : T__struct_2),
({ _fmt : ("%c" : GoString), _val : Go.toInterface((3584 : GoInt32)), _out : ("\u0e00" : GoString) } : T__struct_2),
({ _fmt : ("%c" : GoString), _val : Go.toInterface((1114111 : GoInt32)), _out : ("\u{0010ffff}" : GoString) } : T__struct_2),
({ _fmt : ("%c" : GoString), _val : Go.toInterface((-1 : GoInt)), _out : ("�" : GoString) } : T__struct_2),
({ _fmt : ("%c" : GoString), _val : Go.toInterface((56448 : GoInt)), _out : ("�" : GoString) } : T__struct_2),
({ _fmt : ("%c" : GoString), _val : Go.toInterface(((1114112 : GoInt32) : GoRune)), _out : ("�" : GoString) } : T__struct_2),
({ _fmt : ("%c" : GoString), _val : Go.toInterface((("68719476735" : GoInt64) : GoInt64)), _out : ("�" : GoString) } : T__struct_2),
({ _fmt : ("%c" : GoString), _val : Go.toInterface((("68719476735" : GoUInt64) : GoUInt64)), _out : ("�" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((("0" : GoUInt) : GoUInt)), _out : ("\'\\x00\'" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface((("0" : GoUInt) : GoUInt)), _out : ("\'\\x00\'" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((34 : GoInt32)), _out : ("\'\"\'" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface((34 : GoInt32)), _out : ("\'\"\'" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((39 : GoInt32)), _out : ("\'\\\'\'" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface((39 : GoInt32)), _out : ("\'\\\'\'" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((96 : GoInt32)), _out : ("\'`\'" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface((96 : GoInt32)), _out : ("\'`\'" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((120 : GoInt32)), _out : ("\'x\'" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface((120 : GoInt32)), _out : ("\'x\'" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((255 : GoInt32)), _out : ("\'ÿ\'" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface((255 : GoInt32)), _out : ("\'\\u00ff\'" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((10 : GoInt32)), _out : ("\'\\n\'" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface((10 : GoInt32)), _out : ("\'\\n\'" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((9786 : GoInt32)), _out : ("\'☺\'" : GoString) } : T__struct_2),
({ _fmt : ("%+q" : GoString), _val : Go.toInterface((9786 : GoInt32)), _out : ("\'\\u263a\'" : GoString) } : T__struct_2),
({ _fmt : ("% q" : GoString), _val : Go.toInterface((9786 : GoInt32)), _out : ("\'☺\'" : GoString) } : T__struct_2),
({ _fmt : ("%.0q" : GoString), _val : Go.toInterface((9786 : GoInt32)), _out : ("\'☺\'" : GoString) } : T__struct_2),
({ _fmt : ("%10q" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("       \'⌘\'" : GoString) } : T__struct_2),
({ _fmt : ("%+10q" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("  \'\\u2318\'" : GoString) } : T__struct_2),
({ _fmt : ("%-10q" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("\'⌘\'       " : GoString) } : T__struct_2),
({ _fmt : ("%+-10q" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("\'\\u2318\'  " : GoString) } : T__struct_2),
({ _fmt : ("%010q" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("0000000\'⌘\'" : GoString) } : T__struct_2),
({ _fmt : ("%+010q" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("00\'\\u2318\'" : GoString) } : T__struct_2),
({ _fmt : ("%-010q" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("\'⌘\'       " : GoString) } : T__struct_2),
({ _fmt : ("%+-010q" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("\'\\u2318\'  " : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((3584 : GoInt32)), _out : ("\'\\u0e00\'" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((1114111 : GoInt32)), _out : ("\'\\U0010ffff\'" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((-1 : GoInt32)), _out : ("\'�\'" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((56448 : GoInt)), _out : ("\'�\'" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(((1114112 : GoInt32) : GoRune)), _out : ("\'�\'" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((("68719476735" : GoInt64) : GoInt64)), _out : ("\'�\'" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((("68719476735" : GoUInt64) : GoUInt64)), _out : ("\'�\'" : GoString) } : T__struct_2),
({ _fmt : ("%5s" : GoString), _val : Go.toInterface(("abc" : GoString)), _out : ("  abc" : GoString) } : T__struct_2),
({ _fmt : ("%5s" : GoString), _val : Go.toInterface((("abc" : GoString) : Slice<GoByte>)), _out : ("  abc" : GoString) } : T__struct_2),
({ _fmt : ("%2s" : GoString), _val : Go.toInterface(("☺" : GoString)), _out : (" ☺" : GoString) } : T__struct_2),
({ _fmt : ("%2s" : GoString), _val : Go.toInterface((("☺" : GoString) : Slice<GoByte>)), _out : (" ☺" : GoString) } : T__struct_2),
({ _fmt : ("%-5s" : GoString), _val : Go.toInterface(("abc" : GoString)), _out : ("abc  " : GoString) } : T__struct_2),
({ _fmt : ("%-5s" : GoString), _val : Go.toInterface((("abc" : GoString) : Slice<GoByte>)), _out : ("abc  " : GoString) } : T__struct_2),
({ _fmt : ("%05s" : GoString), _val : Go.toInterface(("abc" : GoString)), _out : ("00abc" : GoString) } : T__struct_2),
({ _fmt : ("%05s" : GoString), _val : Go.toInterface((("abc" : GoString) : Slice<GoByte>)), _out : ("00abc" : GoString) } : T__struct_2),
({ _fmt : ("%5s" : GoString), _val : Go.toInterface(("abcdefghijklmnopqrstuvwxyz" : GoString)), _out : ("abcdefghijklmnopqrstuvwxyz" : GoString) } : T__struct_2),
({ _fmt : ("%5s" : GoString), _val : Go.toInterface((("abcdefghijklmnopqrstuvwxyz" : GoString) : Slice<GoByte>)), _out : ("abcdefghijklmnopqrstuvwxyz" : GoString) } : T__struct_2),
({ _fmt : ("%.5s" : GoString), _val : Go.toInterface(("abcdefghijklmnopqrstuvwxyz" : GoString)), _out : ("abcde" : GoString) } : T__struct_2),
({ _fmt : ("%.5s" : GoString), _val : Go.toInterface((("abcdefghijklmnopqrstuvwxyz" : GoString) : Slice<GoByte>)), _out : ("abcde" : GoString) } : T__struct_2),
({ _fmt : ("%.0s" : GoString), _val : Go.toInterface(("日本語日本語" : GoString)), _out : Go.str() } : T__struct_2),
({ _fmt : ("%.0s" : GoString), _val : Go.toInterface((("日本語日本語" : GoString) : Slice<GoByte>)), _out : Go.str() } : T__struct_2),
({ _fmt : ("%.5s" : GoString), _val : Go.toInterface(("日本語日本語" : GoString)), _out : ("日本語日本" : GoString) } : T__struct_2),
({ _fmt : ("%.5s" : GoString), _val : Go.toInterface((("日本語日本語" : GoString) : Slice<GoByte>)), _out : ("日本語日本" : GoString) } : T__struct_2),
({ _fmt : ("%.10s" : GoString), _val : Go.toInterface(("日本語日本語" : GoString)), _out : ("日本語日本語" : GoString) } : T__struct_2),
({ _fmt : ("%.10s" : GoString), _val : Go.toInterface((("日本語日本語" : GoString) : Slice<GoByte>)), _out : ("日本語日本語" : GoString) } : T__struct_2),
({ _fmt : ("%08q" : GoString), _val : Go.toInterface(("abc" : GoString)), _out : ("000\"abc\"" : GoString) } : T__struct_2),
({ _fmt : ("%08q" : GoString), _val : Go.toInterface((("abc" : GoString) : Slice<GoByte>)), _out : ("000\"abc\"" : GoString) } : T__struct_2),
({ _fmt : ("%-8q" : GoString), _val : Go.toInterface(("abc" : GoString)), _out : ("\"abc\"   " : GoString) } : T__struct_2),
({ _fmt : ("%-8q" : GoString), _val : Go.toInterface((("abc" : GoString) : Slice<GoByte>)), _out : ("\"abc\"   " : GoString) } : T__struct_2),
({ _fmt : ("%.5q" : GoString), _val : Go.toInterface(("abcdefghijklmnopqrstuvwxyz" : GoString)), _out : ("\"abcde\"" : GoString) } : T__struct_2),
({ _fmt : ("%.5q" : GoString), _val : Go.toInterface((("abcdefghijklmnopqrstuvwxyz" : GoString) : Slice<GoByte>)), _out : ("\"abcde\"" : GoString) } : T__struct_2),
({ _fmt : ("%.5x" : GoString), _val : Go.toInterface(("abcdefghijklmnopqrstuvwxyz" : GoString)), _out : ("6162636465" : GoString) } : T__struct_2),
({ _fmt : ("%.5x" : GoString), _val : Go.toInterface((("abcdefghijklmnopqrstuvwxyz" : GoString) : Slice<GoByte>)), _out : ("6162636465" : GoString) } : T__struct_2),
({ _fmt : ("%.3q" : GoString), _val : Go.toInterface(("日本語日本語" : GoString)), _out : ("\"日本語\"" : GoString) } : T__struct_2),
({ _fmt : ("%.3q" : GoString), _val : Go.toInterface((("日本語日本語" : GoString) : Slice<GoByte>)), _out : ("\"日本語\"" : GoString) } : T__struct_2),
({ _fmt : ("%.1q" : GoString), _val : Go.toInterface(("日本語" : GoString)), _out : ("\"日\"" : GoString) } : T__struct_2),
({ _fmt : ("%.1q" : GoString), _val : Go.toInterface((("日本語" : GoString) : Slice<GoByte>)), _out : ("\"日\"" : GoString) } : T__struct_2),
({ _fmt : ("%.1x" : GoString), _val : Go.toInterface(("日本語" : GoString)), _out : ("e6" : GoString) } : T__struct_2),
({ _fmt : ("%.1X" : GoString), _val : Go.toInterface((("日本語" : GoString) : Slice<GoByte>)), _out : ("E6" : GoString) } : T__struct_2),
({ _fmt : ("%10.1q" : GoString), _val : Go.toInterface(("日本語日本語" : GoString)), _out : ("       \"日\"" : GoString) } : T__struct_2),
({ _fmt : ("%10.1q" : GoString), _val : Go.toInterface((("日本語日本語" : GoString) : Slice<GoByte>)), _out : ("       \"日\"" : GoString) } : T__struct_2),
({ _fmt : ("%10v" : GoString), _val : (null : AnyInterface), _out : ("     <nil>" : GoString) } : T__struct_2),
({ _fmt : ("%-10v" : GoString), _val : (null : AnyInterface), _out : ("<nil>     " : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface((("12345" : GoUInt) : GoUInt)), _out : ("12345" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface((-12345 : GoInt)), _out : ("-12345" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface((255 : GoUInt8)), _out : ("255" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface((65535 : GoUInt16)), _out : ("65535" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface(("4294967295" : GoUInt32)), _out : ("4294967295" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface(("18446744073709551615" : GoUInt64)), _out : ("18446744073709551615" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface((-128 : GoInt8)), _out : ("-128" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface((-32768 : GoInt16)), _out : ("-32768" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface((-2147483648 : GoInt32)), _out : ("-2147483648" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface((("-9223372036854775808" : GoInt64) : GoInt64)), _out : ("-9223372036854775808" : GoString) } : T__struct_2),
({ _fmt : ("%.d" : GoString), _val : Go.toInterface((0 : GoInt)), _out : Go.str() } : T__struct_2),
({ _fmt : ("%.0d" : GoString), _val : Go.toInterface((0 : GoInt)), _out : Go.str() } : T__struct_2),
({ _fmt : ("%6.0d" : GoString), _val : Go.toInterface((0 : GoInt)), _out : ("      " : GoString) } : T__struct_2),
({ _fmt : ("%06.0d" : GoString), _val : Go.toInterface((0 : GoInt)), _out : ("      " : GoString) } : T__struct_2),
({ _fmt : ("% d" : GoString), _val : Go.toInterface((12345 : GoInt)), _out : (" 12345" : GoString) } : T__struct_2),
({ _fmt : ("%+d" : GoString), _val : Go.toInterface((12345 : GoInt)), _out : ("+12345" : GoString) } : T__struct_2),
({ _fmt : ("%+d" : GoString), _val : Go.toInterface((-12345 : GoInt)), _out : ("-12345" : GoString) } : T__struct_2),
({ _fmt : ("%b" : GoString), _val : Go.toInterface((7 : GoInt)), _out : ("111" : GoString) } : T__struct_2),
({ _fmt : ("%b" : GoString), _val : Go.toInterface((-6 : GoInt)), _out : ("-110" : GoString) } : T__struct_2),
({ _fmt : ("%#b" : GoString), _val : Go.toInterface((7 : GoInt)), _out : ("0b111" : GoString) } : T__struct_2),
({ _fmt : ("%#b" : GoString), _val : Go.toInterface((-6 : GoInt)), _out : ("-0b110" : GoString) } : T__struct_2),
({ _fmt : ("%b" : GoString), _val : Go.toInterface(("4294967295" : GoUInt32)), _out : ("11111111111111111111111111111111" : GoString) } : T__struct_2),
({ _fmt : ("%b" : GoString), _val : Go.toInterface(("18446744073709551615" : GoUInt64)), _out : ("1111111111111111111111111111111111111111111111111111111111111111" : GoString) } : T__struct_2),
({ _fmt : ("%b" : GoString), _val : Go.toInterface((("-9223372036854775808" : GoInt64) : GoInt64)), _out : _zeroFill(("-1" : GoString), (63 : GoInt), Go.str()) } : T__struct_2),
({ _fmt : ("%o" : GoString), _val : Go.toInterface((668 : GoInt)), _out : ("1234" : GoString) } : T__struct_2),
({ _fmt : ("%o" : GoString), _val : Go.toInterface((-668 : GoInt)), _out : ("-1234" : GoString) } : T__struct_2),
({ _fmt : ("%#o" : GoString), _val : Go.toInterface((668 : GoInt)), _out : ("01234" : GoString) } : T__struct_2),
({ _fmt : ("%#o" : GoString), _val : Go.toInterface((-668 : GoInt)), _out : ("-01234" : GoString) } : T__struct_2),
({ _fmt : ("%O" : GoString), _val : Go.toInterface((668 : GoInt)), _out : ("0o1234" : GoString) } : T__struct_2),
({ _fmt : ("%O" : GoString), _val : Go.toInterface((-668 : GoInt)), _out : ("-0o1234" : GoString) } : T__struct_2),
({ _fmt : ("%o" : GoString), _val : Go.toInterface(("4294967295" : GoUInt32)), _out : ("37777777777" : GoString) } : T__struct_2),
({ _fmt : ("%o" : GoString), _val : Go.toInterface(("18446744073709551615" : GoUInt64)), _out : ("1777777777777777777777" : GoString) } : T__struct_2),
({ _fmt : ("%#X" : GoString), _val : Go.toInterface((0 : GoInt)), _out : ("0X0" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface((313249263 : GoInt)), _out : ("12abcdef" : GoString) } : T__struct_2),
({ _fmt : ("%X" : GoString), _val : Go.toInterface((313249263 : GoInt)), _out : ("12ABCDEF" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface(("4294967295" : GoUInt32)), _out : ("ffffffff" : GoString) } : T__struct_2),
({ _fmt : ("%X" : GoString), _val : Go.toInterface(("18446744073709551615" : GoUInt64)), _out : ("FFFFFFFFFFFFFFFF" : GoString) } : T__struct_2),
({ _fmt : ("%.20b" : GoString), _val : Go.toInterface((7 : GoInt)), _out : ("00000000000000000111" : GoString) } : T__struct_2),
({ _fmt : ("%10d" : GoString), _val : Go.toInterface((12345 : GoInt)), _out : ("     12345" : GoString) } : T__struct_2),
({ _fmt : ("%10d" : GoString), _val : Go.toInterface((-12345 : GoInt)), _out : ("    -12345" : GoString) } : T__struct_2),
({ _fmt : ("%+10d" : GoString), _val : Go.toInterface((12345 : GoInt)), _out : ("    +12345" : GoString) } : T__struct_2),
({ _fmt : ("%010d" : GoString), _val : Go.toInterface((12345 : GoInt)), _out : ("0000012345" : GoString) } : T__struct_2),
({ _fmt : ("%010d" : GoString), _val : Go.toInterface((-12345 : GoInt)), _out : ("-000012345" : GoString) } : T__struct_2),
({ _fmt : ("%20.8d" : GoString), _val : Go.toInterface((1234 : GoInt)), _out : ("            00001234" : GoString) } : T__struct_2),
({ _fmt : ("%20.8d" : GoString), _val : Go.toInterface((-1234 : GoInt)), _out : ("           -00001234" : GoString) } : T__struct_2),
({ _fmt : ("%020.8d" : GoString), _val : Go.toInterface((1234 : GoInt)), _out : ("            00001234" : GoString) } : T__struct_2),
({ _fmt : ("%020.8d" : GoString), _val : Go.toInterface((-1234 : GoInt)), _out : ("           -00001234" : GoString) } : T__struct_2),
({ _fmt : ("%-20.8d" : GoString), _val : Go.toInterface((1234 : GoInt)), _out : ("00001234            " : GoString) } : T__struct_2),
({ _fmt : ("%-20.8d" : GoString), _val : Go.toInterface((-1234 : GoInt)), _out : ("-00001234           " : GoString) } : T__struct_2),
({ _fmt : ("%-#20.8x" : GoString), _val : Go.toInterface((19090108 : GoInt)), _out : ("0x01234abc          " : GoString) } : T__struct_2),
({ _fmt : ("%-#20.8X" : GoString), _val : Go.toInterface((19090108 : GoInt)), _out : ("0X01234ABC          " : GoString) } : T__struct_2),
({ _fmt : ("%-#20.8o" : GoString), _val : Go.toInterface((668 : GoInt)), _out : ("00001234            " : GoString) } : T__struct_2),
({ _fmt : ("%068d" : GoString), _val : Go.toInterface((1 : GoInt)), _out : _zeroFill(Go.str(), (68 : GoInt), ("1" : GoString)) } : T__struct_2),
({ _fmt : ("%068d" : GoString), _val : Go.toInterface((-1 : GoInt)), _out : _zeroFill(("-" : GoString), (67 : GoInt), ("1" : GoString)) } : T__struct_2),
({ _fmt : ("%#.68x" : GoString), _val : Go.toInterface((42 : GoInt)), _out : _zeroFill(("0x" : GoString), (68 : GoInt), ("2a" : GoString)) } : T__struct_2),
({ _fmt : ("%.68d" : GoString), _val : Go.toInterface((-42 : GoInt)), _out : _zeroFill(("-" : GoString), (68 : GoInt), ("42" : GoString)) } : T__struct_2),
({ _fmt : ("%+.68d" : GoString), _val : Go.toInterface((42 : GoInt)), _out : _zeroFill(("+" : GoString), (68 : GoInt), ("42" : GoString)) } : T__struct_2),
({ _fmt : ("% .68d" : GoString), _val : Go.toInterface((42 : GoInt)), _out : _zeroFill((" " : GoString), (68 : GoInt), ("42" : GoString)) } : T__struct_2),
({ _fmt : ("% +.68d" : GoString), _val : Go.toInterface((42 : GoInt)), _out : _zeroFill(("+" : GoString), (68 : GoInt), ("42" : GoString)) } : T__struct_2),
({ _fmt : ("%U" : GoString), _val : Go.toInterface((0 : GoInt)), _out : ("U+0000" : GoString) } : T__struct_2),
({ _fmt : ("%U" : GoString), _val : Go.toInterface((-1 : GoInt)), _out : ("U+FFFFFFFFFFFFFFFF" : GoString) } : T__struct_2),
({ _fmt : ("%U" : GoString), _val : Go.toInterface((10 : GoInt32)), _out : ("U+000A" : GoString) } : T__struct_2),
({ _fmt : ("%#U" : GoString), _val : Go.toInterface((10 : GoInt32)), _out : ("U+000A" : GoString) } : T__struct_2),
({ _fmt : ("%+U" : GoString), _val : Go.toInterface((120 : GoInt32)), _out : ("U+0078" : GoString) } : T__struct_2),
({ _fmt : ("%# U" : GoString), _val : Go.toInterface((120 : GoInt32)), _out : ("U+0078 \'x\'" : GoString) } : T__struct_2),
({ _fmt : ("%#.2U" : GoString), _val : Go.toInterface((120 : GoInt32)), _out : ("U+0078 \'x\'" : GoString) } : T__struct_2),
({ _fmt : ("%U" : GoString), _val : Go.toInterface((9786 : GoInt32)), _out : ("U+263A" : GoString) } : T__struct_2),
({ _fmt : ("%#U" : GoString), _val : Go.toInterface((9786 : GoInt32)), _out : ("U+263A \'☺\'" : GoString) } : T__struct_2),
({ _fmt : ("%U" : GoString), _val : Go.toInterface((120514 : GoInt32)), _out : ("U+1D6C2" : GoString) } : T__struct_2),
({ _fmt : ("%#U" : GoString), _val : Go.toInterface((120514 : GoInt32)), _out : ("U+1D6C2 \'𝛂\'" : GoString) } : T__struct_2),
({ _fmt : ("%#14.6U" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("  U+002318 \'⌘\'" : GoString) } : T__struct_2),
({ _fmt : ("%#-14.6U" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("U+002318 \'⌘\'  " : GoString) } : T__struct_2),
({ _fmt : ("%#014.6U" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("  U+002318 \'⌘\'" : GoString) } : T__struct_2),
({ _fmt : ("%#-014.6U" : GoString), _val : Go.toInterface((8984 : GoInt32)), _out : ("U+002318 \'⌘\'  " : GoString) } : T__struct_2),
({ _fmt : ("%.68U" : GoString), _val : Go.toInterface((("42" : GoUInt) : GoUInt)), _out : _zeroFill(("U+" : GoString), (68 : GoInt), ("2A" : GoString)) } : T__struct_2),
({ _fmt : ("%#.68U" : GoString), _val : Go.toInterface((26085 : GoInt32)), _out : _zeroFill(("U+" : GoString), (68 : GoInt), ("65E5" : GoString)) + (" \'日\'" : GoString) } : T__struct_2),
({ _fmt : ("%+.3e" : GoString), _val : Go.toInterface((0 : GoFloat64)), _out : ("+0.000e+00" : GoString) } : T__struct_2),
({ _fmt : ("%+.3e" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("+1.000e+00" : GoString) } : T__struct_2),
({ _fmt : ("%+.3x" : GoString), _val : Go.toInterface((0 : GoFloat64)), _out : ("+0x0.000p+00" : GoString) } : T__struct_2),
({ _fmt : ("%+.3x" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("+0x1.000p+00" : GoString) } : T__struct_2),
({ _fmt : ("%+.3f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-1.000" : GoString) } : T__struct_2),
({ _fmt : ("%+.3F" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-1.000" : GoString) } : T__struct_2),
({ _fmt : ("%+.3F" : GoString), _val : Go.toInterface(((-1 : GoFloat64) : GoFloat32)), _out : ("-1.000" : GoString) } : T__struct_2),
({ _fmt : ("%+07.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("+001.00" : GoString) } : T__struct_2),
({ _fmt : ("%+07.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-001.00" : GoString) } : T__struct_2),
({ _fmt : ("%-07.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("1.00   " : GoString) } : T__struct_2),
({ _fmt : ("%-07.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-1.00  " : GoString) } : T__struct_2),
({ _fmt : ("%+-07.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("+1.00  " : GoString) } : T__struct_2),
({ _fmt : ("%+-07.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-1.00  " : GoString) } : T__struct_2),
({ _fmt : ("%-+07.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("+1.00  " : GoString) } : T__struct_2),
({ _fmt : ("%-+07.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-1.00  " : GoString) } : T__struct_2),
({ _fmt : ("%+10.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("     +1.00" : GoString) } : T__struct_2),
({ _fmt : ("%+10.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("     -1.00" : GoString) } : T__struct_2),
({ _fmt : ("% .3E" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-1.000E+00" : GoString) } : T__struct_2),
({ _fmt : ("% .3e" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : (" 1.000e+00" : GoString) } : T__struct_2),
({ _fmt : ("% .3X" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-0X1.000P+00" : GoString) } : T__struct_2),
({ _fmt : ("% .3x" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : (" 0x1.000p+00" : GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : GoString), _val : Go.toInterface((0 : GoFloat64)), _out : ("+0" : GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("+1" : GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-1" : GoString) } : T__struct_2),
({ _fmt : ("% .3g" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-1" : GoString) } : T__struct_2),
({ _fmt : ("% .3g" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : (" 1" : GoString) } : T__struct_2),
({ _fmt : ("%b" : GoString), _val : Go.toInterface(((1 : GoFloat64) : GoFloat32)), _out : ("8388608p-23" : GoString) } : T__struct_2),
({ _fmt : ("%b" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("4503599627370496p-52" : GoString) } : T__struct_2),
({ _fmt : ("%#g" : GoString), _val : Go.toInterface((1e-323 : GoFloat64)), _out : ("1.00000e-323" : GoString) } : T__struct_2),
({ _fmt : ("%#g" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-1.00000" : GoString) } : T__struct_2),
({ _fmt : ("%#g" : GoString), _val : Go.toInterface((1.1 : GoFloat64)), _out : ("1.10000" : GoString) } : T__struct_2),
({ _fmt : ("%#g" : GoString), _val : Go.toInterface((123456 : GoFloat64)), _out : ("123456." : GoString) } : T__struct_2),
({ _fmt : ("%#g" : GoString), _val : Go.toInterface((1.234567e+06 : GoFloat64)), _out : ("1.234567e+06" : GoString) } : T__struct_2),
({ _fmt : ("%#g" : GoString), _val : Go.toInterface((1.23e+06 : GoFloat64)), _out : ("1.23000e+06" : GoString) } : T__struct_2),
({ _fmt : ("%#g" : GoString), _val : Go.toInterface((1e+06 : GoFloat64)), _out : ("1.00000e+06" : GoString) } : T__struct_2),
({ _fmt : ("%#.0f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("1." : GoString) } : T__struct_2),
({ _fmt : ("%#.0e" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("1.e+00" : GoString) } : T__struct_2),
({ _fmt : ("%#.0x" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("0x1.p+00" : GoString) } : T__struct_2),
({ _fmt : ("%#.0g" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("1." : GoString) } : T__struct_2),
({ _fmt : ("%#.0g" : GoString), _val : Go.toInterface((1.1e+06 : GoFloat64)), _out : ("1.e+06" : GoString) } : T__struct_2),
({ _fmt : ("%#.4f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("1.0000" : GoString) } : T__struct_2),
({ _fmt : ("%#.4e" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("1.0000e+00" : GoString) } : T__struct_2),
({ _fmt : ("%#.4x" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("0x1.0000p+00" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("1.000" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface((100000 : GoFloat64)), _out : ("1.000e+05" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface((1.234 : GoFloat64)), _out : ("1.234" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface((0.1234 : GoFloat64)), _out : ("0.1234" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface((1.23 : GoFloat64)), _out : ("1.230" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface((0.123 : GoFloat64)), _out : ("0.1230" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface((1.2 : GoFloat64)), _out : ("1.200" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface((0.12 : GoFloat64)), _out : ("0.1200" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface((10.2 : GoFloat64)), _out : ("10.20" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface((0 : GoFloat64)), _out : ("0.000" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface((0.012 : GoFloat64)), _out : ("0.01200" : GoString) } : T__struct_2),
({ _fmt : ("%#.0f" : GoString), _val : Go.toInterface((123 : GoFloat64)), _out : ("123." : GoString) } : T__struct_2),
({ _fmt : ("%#.0e" : GoString), _val : Go.toInterface((123 : GoFloat64)), _out : ("1.e+02" : GoString) } : T__struct_2),
({ _fmt : ("%#.0x" : GoString), _val : Go.toInterface((123 : GoFloat64)), _out : ("0x1.p+07" : GoString) } : T__struct_2),
({ _fmt : ("%#.0g" : GoString), _val : Go.toInterface((123 : GoFloat64)), _out : ("1.e+02" : GoString) } : T__struct_2),
({ _fmt : ("%#.4f" : GoString), _val : Go.toInterface((123 : GoFloat64)), _out : ("123.0000" : GoString) } : T__struct_2),
({ _fmt : ("%#.4e" : GoString), _val : Go.toInterface((123 : GoFloat64)), _out : ("1.2300e+02" : GoString) } : T__struct_2),
({ _fmt : ("%#.4x" : GoString), _val : Go.toInterface((123 : GoFloat64)), _out : ("0x1.ec00p+06" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface((123 : GoFloat64)), _out : ("123.0" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface((123000 : GoFloat64)), _out : ("1.230e+05" : GoString) } : T__struct_2),
({ _fmt : ("%#9.4g" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("    1.000" : GoString) } : T__struct_2),
({ _fmt : ("%#b" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("4503599627370496p-52" : GoString) } : T__struct_2),
({ _fmt : ("%.4b" : GoString), _val : Go.toInterface(((1 : GoFloat64) : GoFloat32)), _out : ("8388608p-23" : GoString) } : T__struct_2),
({ _fmt : ("%.4b" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-4503599627370496p-52" : GoString) } : T__struct_2),
({ _fmt : ("%.68f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : _zeroFill(("1." : GoString), (68 : GoInt), Go.str()) } : T__struct_2),
({ _fmt : ("%.68f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : _zeroFill(("-1." : GoString), (68 : GoInt), Go.str()) } : T__struct_2),
({ _fmt : ("%f" : GoString), _val : Go.toInterface(_posInf), _out : ("+Inf" : GoString) } : T__struct_2),
({ _fmt : ("%.1f" : GoString), _val : Go.toInterface(_negInf), _out : ("-Inf" : GoString) } : T__struct_2),
({ _fmt : ("% f" : GoString), _val : Go.toInterface(naN), _out : (" NaN" : GoString) } : T__struct_2),
({ _fmt : ("%20f" : GoString), _val : Go.toInterface(_posInf), _out : ("                +Inf" : GoString) } : T__struct_2),
({ _fmt : ("% 20F" : GoString), _val : Go.toInterface(_posInf), _out : ("                 Inf" : GoString) } : T__struct_2),
({ _fmt : ("% 20e" : GoString), _val : Go.toInterface(_negInf), _out : ("                -Inf" : GoString) } : T__struct_2),
({ _fmt : ("% 20x" : GoString), _val : Go.toInterface(_negInf), _out : ("                -Inf" : GoString) } : T__struct_2),
({ _fmt : ("%+20E" : GoString), _val : Go.toInterface(_negInf), _out : ("                -Inf" : GoString) } : T__struct_2),
({ _fmt : ("%+20X" : GoString), _val : Go.toInterface(_negInf), _out : ("                -Inf" : GoString) } : T__struct_2),
({ _fmt : ("% +20g" : GoString), _val : Go.toInterface(_negInf), _out : ("                -Inf" : GoString) } : T__struct_2),
({ _fmt : ("%+-20G" : GoString), _val : Go.toInterface(_posInf), _out : ("+Inf                " : GoString) } : T__struct_2),
({ _fmt : ("%20e" : GoString), _val : Go.toInterface(naN), _out : ("                 NaN" : GoString) } : T__struct_2),
({ _fmt : ("%20x" : GoString), _val : Go.toInterface(naN), _out : ("                 NaN" : GoString) } : T__struct_2),
({ _fmt : ("% +20E" : GoString), _val : Go.toInterface(naN), _out : ("                +NaN" : GoString) } : T__struct_2),
({ _fmt : ("% +20X" : GoString), _val : Go.toInterface(naN), _out : ("                +NaN" : GoString) } : T__struct_2),
({ _fmt : ("% -20g" : GoString), _val : Go.toInterface(naN), _out : (" NaN                " : GoString) } : T__struct_2),
({ _fmt : ("%+-20G" : GoString), _val : Go.toInterface(naN), _out : ("+NaN                " : GoString) } : T__struct_2),
({ _fmt : ("%+020e" : GoString), _val : Go.toInterface(_posInf), _out : ("                +Inf" : GoString) } : T__struct_2),
({ _fmt : ("%+020x" : GoString), _val : Go.toInterface(_posInf), _out : ("                +Inf" : GoString) } : T__struct_2),
({ _fmt : ("%-020f" : GoString), _val : Go.toInterface(_negInf), _out : ("-Inf                " : GoString) } : T__struct_2),
({ _fmt : ("%-020E" : GoString), _val : Go.toInterface(naN), _out : ("NaN                 " : GoString) } : T__struct_2),
({ _fmt : ("%-020X" : GoString), _val : Go.toInterface(naN), _out : ("NaN                 " : GoString) } : T__struct_2),
({ _fmt : ("%.f" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(0+0i)" : GoString) } : T__struct_2),
({ _fmt : ("% .f" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), _out : ("( 0+0i)" : GoString) } : T__struct_2),
({ _fmt : ("%+.f" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(+0+0i)" : GoString) } : T__struct_2),
({ _fmt : ("% +.f" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(+0+0i)" : GoString) } : T__struct_2),
({ _fmt : ("%+.3e" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(+0.000e+00+0.000e+00i)" : GoString) } : T__struct_2),
({ _fmt : ("%+.3x" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(+0x0.000p+00+0x0.000p+00i)" : GoString) } : T__struct_2),
({ _fmt : ("%+.3f" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(+0.000+0.000i)" : GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(+0+0i)" : GoString) } : T__struct_2),
({ _fmt : ("%+.3e" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(+1.000e+00+2.000e+00i)" : GoString) } : T__struct_2),
({ _fmt : ("%+.3x" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(+0x1.000p+00+0x1.000p+01i)" : GoString) } : T__struct_2),
({ _fmt : ("%+.3f" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(+1.000+2.000i)" : GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(+1+2i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3e" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(0.000e+00+0.000e+00i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3x" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(0x0.000p+00+0x0.000p+00i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3f" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(0.000+0.000i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3F" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(0.000+0.000i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3F" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0) : GoComplex64)), _out : ("(0.000+0.000i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3g" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(0+0i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3e" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(1.000e+00+2.000e+00i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3x" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(0x1.000p+00+0x1.000p+01i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3f" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(1.000+2.000i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3g" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(1+2i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3e" : GoString), _val : Go.toInterface(((-1 : GoFloat64) + new GoComplex128(0, -2))), _out : ("(-1.000e+00-2.000e+00i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3x" : GoString), _val : Go.toInterface(((-1 : GoFloat64) + new GoComplex128(0, -2))), _out : ("(-0x1.000p+00-0x1.000p+01i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3f" : GoString), _val : Go.toInterface(((-1 : GoFloat64) + new GoComplex128(0, -2))), _out : ("(-1.000-2.000i)" : GoString) } : T__struct_2),
({ _fmt : ("%.3g" : GoString), _val : Go.toInterface(((-1 : GoFloat64) + new GoComplex128(0, -2))), _out : ("(-1-2i)" : GoString) } : T__struct_2),
({ _fmt : ("% .3E" : GoString), _val : Go.toInterface(((-1 : GoFloat64) + new GoComplex128(0, -2))), _out : ("(-1.000E+00-2.000E+00i)" : GoString) } : T__struct_2),
({ _fmt : ("% .3X" : GoString), _val : Go.toInterface(((-1 : GoFloat64) + new GoComplex128(0, -2))), _out : ("(-0X1.000P+00-0X1.000P+01i)" : GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(+1+2i)" : GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2) : GoComplex64)), _out : ("(+1+2i)" : GoString) } : T__struct_2),
({ _fmt : ("%#g" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(1.00000+2.00000i)" : GoString) } : T__struct_2),
({ _fmt : ("%#g" : GoString), _val : Go.toInterface(((123456 : GoFloat64) + new GoComplex128(0, 789012))), _out : ("(123456.+789012.i)" : GoString) } : T__struct_2),
({ _fmt : ("%#g" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 1e-10))), _out : ("(0.00000+1.00000e-10i)" : GoString) } : T__struct_2),
({ _fmt : ("%#g" : GoString), _val : Go.toInterface(((-1e+10 : GoFloat64) + new GoComplex128(0, -1.11e+100))), _out : ("(-1.00000e+10-1.11000e+100i)" : GoString) } : T__struct_2),
({ _fmt : ("%#.0f" : GoString), _val : Go.toInterface(((1.23 : GoFloat64) + new GoComplex128(0, 1))), _out : ("(1.+1.i)" : GoString) } : T__struct_2),
({ _fmt : ("%#.0e" : GoString), _val : Go.toInterface(((1.23 : GoFloat64) + new GoComplex128(0, 1))), _out : ("(1.e+00+1.e+00i)" : GoString) } : T__struct_2),
({ _fmt : ("%#.0x" : GoString), _val : Go.toInterface(((1.23 : GoFloat64) + new GoComplex128(0, 1))), _out : ("(0x1.p+00+0x1.p+00i)" : GoString) } : T__struct_2),
({ _fmt : ("%#.0g" : GoString), _val : Go.toInterface(((1.23 : GoFloat64) + new GoComplex128(0, 1))), _out : ("(1.+1.i)" : GoString) } : T__struct_2),
({ _fmt : ("%#.0g" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 100000))), _out : ("(0.+1.e+05i)" : GoString) } : T__struct_2),
({ _fmt : ("%#.0g" : GoString), _val : Go.toInterface(((1.23e+06 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(1.e+06+0.i)" : GoString) } : T__struct_2),
({ _fmt : ("%#.4f" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 1.23))), _out : ("(1.0000+1.2300i)" : GoString) } : T__struct_2),
({ _fmt : ("%#.4e" : GoString), _val : Go.toInterface(((123 : GoFloat64) + new GoComplex128(0, 1))), _out : ("(1.2300e+02+1.0000e+00i)" : GoString) } : T__struct_2),
({ _fmt : ("%#.4x" : GoString), _val : Go.toInterface(((123 : GoFloat64) + new GoComplex128(0, 1))), _out : ("(0x1.ec00p+06+0x1.0000p+00i)" : GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : GoString), _val : Go.toInterface(((123 : GoFloat64) + new GoComplex128(0, 1.23))), _out : ("(123.0+1.230i)" : GoString) } : T__struct_2),
({ _fmt : ("%#12.5g" : GoString), _val : Go.toInterface(((0 : GoFloat64) + new GoComplex128(0, 100000))), _out : ("(      0.0000 +1.0000e+05i)" : GoString) } : T__struct_2),
({ _fmt : ("%#12.5g" : GoString), _val : Go.toInterface(((1.23e+06 : GoFloat64) + new GoComplex128(0, 0))), _out : ("(  1.2300e+06     +0.0000i)" : GoString) } : T__struct_2),
({ _fmt : ("%b" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(4503599627370496p-52+4503599627370496p-51i)" : GoString) } : T__struct_2),
({ _fmt : ("%b" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2) : GoComplex64)), _out : ("(8388608p-23+8388608p-22i)" : GoString) } : T__struct_2),
({ _fmt : ("%#b" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(4503599627370496p-52+4503599627370496p-51i)" : GoString) } : T__struct_2),
({ _fmt : ("%.4b" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(4503599627370496p-52+4503599627370496p-51i)" : GoString) } : T__struct_2),
({ _fmt : ("%.4b" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2) : GoComplex64)), _out : ("(8388608p-23+8388608p-22i)" : GoString) } : T__struct_2),
({ _fmt : ("%f" : GoString), _val : Go.toInterface(new GoComplex128(_posInf, _posInf)), _out : ("(+Inf+Infi)" : GoString) } : T__struct_2),
({ _fmt : ("%f" : GoString), _val : Go.toInterface(new GoComplex128(_negInf, _negInf)), _out : ("(-Inf-Infi)" : GoString) } : T__struct_2),
({ _fmt : ("%f" : GoString), _val : Go.toInterface(new GoComplex128(naN, naN)), _out : ("(NaN+NaNi)" : GoString) } : T__struct_2),
({ _fmt : ("%.1f" : GoString), _val : Go.toInterface(new GoComplex128(_posInf, _posInf)), _out : ("(+Inf+Infi)" : GoString) } : T__struct_2),
({ _fmt : ("% f" : GoString), _val : Go.toInterface(new GoComplex128(_posInf, _posInf)), _out : ("( Inf+Infi)" : GoString) } : T__struct_2),
({ _fmt : ("% f" : GoString), _val : Go.toInterface(new GoComplex128(_negInf, _negInf)), _out : ("(-Inf-Infi)" : GoString) } : T__struct_2),
({ _fmt : ("% f" : GoString), _val : Go.toInterface(new GoComplex128(naN, naN)), _out : ("( NaN+NaNi)" : GoString) } : T__struct_2),
({ _fmt : ("%8e" : GoString), _val : Go.toInterface(new GoComplex128(_posInf, _posInf)), _out : ("(    +Inf    +Infi)" : GoString) } : T__struct_2),
({ _fmt : ("%8x" : GoString), _val : Go.toInterface(new GoComplex128(_posInf, _posInf)), _out : ("(    +Inf    +Infi)" : GoString) } : T__struct_2),
({ _fmt : ("% 8E" : GoString), _val : Go.toInterface(new GoComplex128(_posInf, _posInf)), _out : ("(     Inf    +Infi)" : GoString) } : T__struct_2),
({ _fmt : ("% 8X" : GoString), _val : Go.toInterface(new GoComplex128(_posInf, _posInf)), _out : ("(     Inf    +Infi)" : GoString) } : T__struct_2),
({ _fmt : ("%+8f" : GoString), _val : Go.toInterface(new GoComplex128(_negInf, _negInf)), _out : ("(    -Inf    -Infi)" : GoString) } : T__struct_2),
({ _fmt : ("% +8g" : GoString), _val : Go.toInterface(new GoComplex128(_negInf, _negInf)), _out : ("(    -Inf    -Infi)" : GoString) } : T__struct_2),
({ _fmt : ("% -8G" : GoString), _val : Go.toInterface(new GoComplex128(naN, naN)), _out : ("( NaN    +NaN    i)" : GoString) } : T__struct_2),
({ _fmt : ("%+-8b" : GoString), _val : Go.toInterface(new GoComplex128(naN, naN)), _out : ("(+NaN    +NaN    i)" : GoString) } : T__struct_2),
({ _fmt : ("%08f" : GoString), _val : Go.toInterface(new GoComplex128(_posInf, _posInf)), _out : ("(    +Inf    +Infi)" : GoString) } : T__struct_2),
({ _fmt : ("%-08g" : GoString), _val : Go.toInterface(new GoComplex128(_negInf, _negInf)), _out : ("(-Inf    -Inf    i)" : GoString) } : T__struct_2),
({ _fmt : ("%-08G" : GoString), _val : Go.toInterface(new GoComplex128(naN, naN)), _out : ("(NaN     +NaN    i)" : GoString) } : T__struct_2),
({ _fmt : ("%e" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("1.000000e+00" : GoString) } : T__struct_2),
({ _fmt : ("%e" : GoString), _val : Go.toInterface((1.2345678e+06 : GoFloat64)), _out : ("1.234568e+06" : GoString) } : T__struct_2),
({ _fmt : ("%e" : GoString), _val : Go.toInterface((1.2345678e-05 : GoFloat64)), _out : ("1.234568e-05" : GoString) } : T__struct_2),
({ _fmt : ("%e" : GoString), _val : Go.toInterface((-7 : GoFloat64)), _out : ("-7.000000e+00" : GoString) } : T__struct_2),
({ _fmt : ("%e" : GoString), _val : Go.toInterface((-1e-09 : GoFloat64)), _out : ("-1.000000e-09" : GoString) } : T__struct_2),
({ _fmt : ("%f" : GoString), _val : Go.toInterface((1.2345678e+06 : GoFloat64)), _out : ("1234567.800000" : GoString) } : T__struct_2),
({ _fmt : ("%f" : GoString), _val : Go.toInterface((1.2345678e-05 : GoFloat64)), _out : ("0.000012" : GoString) } : T__struct_2),
({ _fmt : ("%f" : GoString), _val : Go.toInterface((-7 : GoFloat64)), _out : ("-7.000000" : GoString) } : T__struct_2),
({ _fmt : ("%f" : GoString), _val : Go.toInterface((-1e-09 : GoFloat64)), _out : ("-0.000000" : GoString) } : T__struct_2),
({ _fmt : ("%g" : GoString), _val : Go.toInterface((1.2345678e+06 : GoFloat64)), _out : ("1.2345678e+06" : GoString) } : T__struct_2),
({ _fmt : ("%g" : GoString), _val : Go.toInterface(((1.2345678e+06 : GoFloat64) : GoFloat32)), _out : ("1.2345678e+06" : GoString) } : T__struct_2),
({ _fmt : ("%g" : GoString), _val : Go.toInterface((1.2345678e-05 : GoFloat64)), _out : ("1.2345678e-05" : GoString) } : T__struct_2),
({ _fmt : ("%g" : GoString), _val : Go.toInterface((-7 : GoFloat64)), _out : ("-7" : GoString) } : T__struct_2),
({ _fmt : ("%g" : GoString), _val : Go.toInterface((-1e-09 : GoFloat64)), _out : ("-1e-09" : GoString) } : T__struct_2),
({ _fmt : ("%g" : GoString), _val : Go.toInterface(((-1e-09 : GoFloat64) : GoFloat32)), _out : ("-1e-09" : GoString) } : T__struct_2),
({ _fmt : ("%E" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("1.000000E+00" : GoString) } : T__struct_2),
({ _fmt : ("%E" : GoString), _val : Go.toInterface((1.2345678e+06 : GoFloat64)), _out : ("1.234568E+06" : GoString) } : T__struct_2),
({ _fmt : ("%E" : GoString), _val : Go.toInterface((1.2345678e-05 : GoFloat64)), _out : ("1.234568E-05" : GoString) } : T__struct_2),
({ _fmt : ("%E" : GoString), _val : Go.toInterface((-7 : GoFloat64)), _out : ("-7.000000E+00" : GoString) } : T__struct_2),
({ _fmt : ("%E" : GoString), _val : Go.toInterface((-1e-09 : GoFloat64)), _out : ("-1.000000E-09" : GoString) } : T__struct_2),
({ _fmt : ("%G" : GoString), _val : Go.toInterface((1.2345678e+06 : GoFloat64)), _out : ("1.2345678E+06" : GoString) } : T__struct_2),
({ _fmt : ("%G" : GoString), _val : Go.toInterface(((1.2345678e+06 : GoFloat64) : GoFloat32)), _out : ("1.2345678E+06" : GoString) } : T__struct_2),
({ _fmt : ("%G" : GoString), _val : Go.toInterface((1.2345678e-05 : GoFloat64)), _out : ("1.2345678E-05" : GoString) } : T__struct_2),
({ _fmt : ("%G" : GoString), _val : Go.toInterface((-7 : GoFloat64)), _out : ("-7" : GoString) } : T__struct_2),
({ _fmt : ("%G" : GoString), _val : Go.toInterface((-1e-09 : GoFloat64)), _out : ("-1E-09" : GoString) } : T__struct_2),
({ _fmt : ("%G" : GoString), _val : Go.toInterface(((-1e-09 : GoFloat64) : GoFloat32)), _out : ("-1E-09" : GoString) } : T__struct_2),
({ _fmt : ("%20.5s" : GoString), _val : Go.toInterface(("qwertyuiop" : GoString)), _out : ("               qwert" : GoString) } : T__struct_2),
({ _fmt : ("%.5s" : GoString), _val : Go.toInterface(("qwertyuiop" : GoString)), _out : ("qwert" : GoString) } : T__struct_2),
({ _fmt : ("%-20.5s" : GoString), _val : Go.toInterface(("qwertyuiop" : GoString)), _out : ("qwert               " : GoString) } : T__struct_2),
({ _fmt : ("%20c" : GoString), _val : Go.toInterface((120 : GoInt32)), _out : ("                   x" : GoString) } : T__struct_2),
({ _fmt : ("%-20c" : GoString), _val : Go.toInterface((120 : GoInt32)), _out : ("x                   " : GoString) } : T__struct_2),
({ _fmt : ("%20.6e" : GoString), _val : Go.toInterface((1234.5 : GoFloat64)), _out : ("        1.234500e+03" : GoString) } : T__struct_2),
({ _fmt : ("%20.6e" : GoString), _val : Go.toInterface((0.0012345 : GoFloat64)), _out : ("        1.234500e-03" : GoString) } : T__struct_2),
({ _fmt : ("%20e" : GoString), _val : Go.toInterface((1234.5 : GoFloat64)), _out : ("        1.234500e+03" : GoString) } : T__struct_2),
({ _fmt : ("%20e" : GoString), _val : Go.toInterface((0.0012345 : GoFloat64)), _out : ("        1.234500e-03" : GoString) } : T__struct_2),
({ _fmt : ("%20.8e" : GoString), _val : Go.toInterface((1234.5 : GoFloat64)), _out : ("      1.23450000e+03" : GoString) } : T__struct_2),
({ _fmt : ("%20f" : GoString), _val : Go.toInterface((1234.56789 : GoFloat64)), _out : ("         1234.567890" : GoString) } : T__struct_2),
({ _fmt : ("%20f" : GoString), _val : Go.toInterface((0.00123456789 : GoFloat64)), _out : ("            0.001235" : GoString) } : T__struct_2),
({ _fmt : ("%20f" : GoString), _val : Go.toInterface((1.2345678901234568e+10 : GoFloat64)), _out : ("  12345678901.234568" : GoString) } : T__struct_2),
({ _fmt : ("%-20f" : GoString), _val : Go.toInterface((1234.56789 : GoFloat64)), _out : ("1234.567890         " : GoString) } : T__struct_2),
({ _fmt : ("%20.8f" : GoString), _val : Go.toInterface((1234.56789 : GoFloat64)), _out : ("       1234.56789000" : GoString) } : T__struct_2),
({ _fmt : ("%20.8f" : GoString), _val : Go.toInterface((0.00123456789 : GoFloat64)), _out : ("          0.00123457" : GoString) } : T__struct_2),
({ _fmt : ("%g" : GoString), _val : Go.toInterface((1234.56789 : GoFloat64)), _out : ("1234.56789" : GoString) } : T__struct_2),
({ _fmt : ("%g" : GoString), _val : Go.toInterface((0.00123456789 : GoFloat64)), _out : ("0.00123456789" : GoString) } : T__struct_2),
({ _fmt : ("%g" : GoString), _val : Go.toInterface((1.23456789e+20 : GoFloat64)), _out : ("1.23456789e+20" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(_array), _out : ("[1 2 3 4 5]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(_iarray), _out : ("[1 hello 2.5 <nil>]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(_barray), _out : ("[1 2 3 4 5]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((_array : Ref<GoArray<GoInt>>)), _out : ("&[1 2 3 4 5]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((_iarray : Ref<GoArray<AnyInterface>>)), _out : ("&[1 hello 2.5 <nil>]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((_barray : Ref<GoArray<stdgo.fmt_test.Fmt_test.T_renamedUint8>>)), _out : ("&[1 2 3 4 5]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(_slice), _out : ("[1 2 3 4 5]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(_islice), _out : ("[1 hello 2.5 <nil>]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(_bslice), _out : ("[1 2 3 4 5]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((_slice : Ref<Slice<GoInt>>)), _out : ("&[1 2 3 4 5]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((_islice : Ref<Slice<AnyInterface>>)), _out : ("&[1 hello 2.5 <nil>]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((_bslice : Ref<Slice<stdgo.fmt_test.Fmt_test.T_renamedUint8>>)), _out : ("&[1 2 3 4 5]" : GoString) } : T__struct_2),
({ _fmt : ("%b" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((65 : GoUInt8), (66 : GoUInt8), (67 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("[1000001 1000010 1000011]" : GoString) } : T__struct_2),
({ _fmt : ("%c" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((65 : GoUInt8), (66 : GoUInt8), (67 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("[A B C]" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((65 : GoUInt8), (66 : GoUInt8), (67 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("[65 66 67]" : GoString) } : T__struct_2),
({ _fmt : ("%o" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((65 : GoUInt8), (66 : GoUInt8), (67 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("[101 102 103]" : GoString) } : T__struct_2),
({ _fmt : ("%U" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((65 : GoUInt8), (66 : GoUInt8), (67 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("[U+0041 U+0042 U+0043]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((65 : GoUInt8), (66 : GoUInt8), (67 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("[65 66 67]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((123 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("[123]" : GoString) } : T__struct_2),
({ _fmt : ("%012v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)), _out : ("[]" : GoString) } : T__struct_2),
({ _fmt : ("%#012v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)), _out : ("[]byte{}" : GoString) } : T__struct_2),
({ _fmt : ("%6v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[     1     11    111]" : GoString) } : T__struct_2),
({ _fmt : ("%06v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[000001 000011 000111]" : GoString) } : T__struct_2),
({ _fmt : ("%-6v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[1      11     111   ]" : GoString) } : T__struct_2),
({ _fmt : ("%-06v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[1      11     111   ]" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[]byte{0x1, 0xb, 0x6f}" : GoString) } : T__struct_2),
({ _fmt : ("%#6v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[]byte{   0x1,    0xb,   0x6f}" : GoString) } : T__struct_2),
({ _fmt : ("%#06v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[]byte{0x000001, 0x00000b, 0x00006f}" : GoString) } : T__struct_2),
({ _fmt : ("%#-6v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[]byte{0x1   , 0xb   , 0x6f  }" : GoString) } : T__struct_2),
({ _fmt : ("%#-06v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[]byte{0x1   , 0xb   , 0x6f  }" : GoString) } : T__struct_2),
({ _fmt : ("% v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[ 1  11  111]" : GoString) } : T__struct_2),
({ _fmt : ("%+v" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("[1 11 111]" : GoString) } : T__struct_2),
({ _fmt : ("%# -6v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[]byte{ 0x1  ,  0xb  ,  0x6f }" : GoString) } : T__struct_2),
({ _fmt : ("%#+-6v" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("[3]uint8{0x1   , 0xb   , 0x6f  }" : GoString) } : T__struct_2),
({ _fmt : ("% d" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[ 1  11  111]" : GoString) } : T__struct_2),
({ _fmt : ("%+d" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("[+1 +11 +111]" : GoString) } : T__struct_2),
({ _fmt : ("%# -6d" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[ 1      11     111  ]" : GoString) } : T__struct_2),
({ _fmt : ("%#+-6d" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((1 : GoUInt8), (11 : GoUInt8), (111 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("[+1     +11    +111  ]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((1.2345678 : GoFloat64)), _out : ("1.2345678" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(((1.2345678 : GoFloat64) : GoFloat32)), _out : ("1.2345678" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(1+2i)" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2) : GoComplex64)), _out : ("(1+2i)" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((new A((1 : GoInt), ("2" : GoUInt), ("a" : GoString), (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt)) : Slice<GoInt>)) : A)), _out : ("{1 2 a [1 2]}" : GoString) } : T__struct_2),
({ _fmt : ("%+v" : GoString), _val : Go.toInterface((new A((1 : GoInt), ("2" : GoUInt), ("a" : GoString), (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt)) : Slice<GoInt>)) : A)), _out : ("{i:1 j:2 s:a x:[1 2]}" : GoString) } : T__struct_2),
({ _fmt : ("%+v" : GoString), _val : Go.toInterface((new B((1 : stdgo.fmt_test.Fmt_test.I), (2 : GoInt)) : B)), _out : ("{I:<1> j:2}" : GoString) } : T__struct_2),
({ _fmt : ("%+v" : GoString), _val : Go.toInterface((new C((1 : GoInt), (new B((2 : stdgo.fmt_test.Fmt_test.I), (3 : GoInt)) : B)) : C)), _out : ("{i:1 B:{I:<2> j:3}}" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface(Go.asInterface(((23 : stdgo.fmt_test.Fmt_test.I) : I))), _out : ("<23>" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(Go.asInterface(((23 : stdgo.fmt_test.Fmt_test.I) : I))), _out : ("\"<23>\"" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface(Go.asInterface(((23 : stdgo.fmt_test.Fmt_test.I) : I))), _out : ("3c32333e" : GoString) } : T__struct_2),
({ _fmt : ("%#x" : GoString), _val : Go.toInterface(Go.asInterface(((23 : stdgo.fmt_test.Fmt_test.I) : I))), _out : ("0x3c32333e" : GoString) } : T__struct_2),
({ _fmt : ("%# x" : GoString), _val : Go.toInterface(Go.asInterface(((23 : stdgo.fmt_test.Fmt_test.I) : I))), _out : ("0x3c 0x32 0x33 0x3e" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface(Go.asInterface(((23 : stdgo.fmt_test.Fmt_test.I) : I))), _out : ("23" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface(Go.asInterface(stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface(((23 : stdgo.fmt_test.Fmt_test.I) : I)))))), _out : ("<23>" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((new A((1 : GoInt), ("2" : GoUInt), ("a" : GoString), (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt)) : Slice<GoInt>)) : A)), _out : ("fmt_test.A{i:1, j:0x2, s:\"a\", x:[]int{1, 2}}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(Go.pointer((0 : GoUInt8))), _out : ("(*uint8)(0xPTR)" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(testFmtInterface), _out : ("(func(*testing.T))(0xPTR)" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(new Chan<GoInt>(0, () -> (0 : GoInt))), _out : ("(chan int)(0xPTR)" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((("18446744073709551615" : GoUInt64) : GoUInt64)), _out : ("0xffffffffffffffff" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((1000000000 : GoInt)), _out : ("1000000000" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<GoString, GoInt>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) })));
        @:privateAccess x._keys = [("a" : GoString)];
        @:privateAccess x._values = [(1 : GoInt)];
        x;
    } : stdgo.GoMap<GoString, GoInt>)), _out : ("map[string]int{\"a\":1}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<GoString, stdgo.fmt_test.Fmt_test.B>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.fmt_test.Fmt_test.B", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "i", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.fmt_test.Fmt_test.I", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) }, optional : false }, { name : "_j", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })));
        @:privateAccess x._keys = [("a" : GoString)];
        @:privateAccess x._values = [(new stdgo.fmt_test.Fmt_test.B((1 : stdgo.fmt_test.Fmt_test.I), (2 : GoInt)) : stdgo.fmt_test.Fmt_test.B)];
        x;
    } : stdgo.GoMap<GoString, stdgo.fmt_test.Fmt_test.B>)), _out : ("map[string]fmt_test.B{\"a\":fmt_test.B{I:1, j:2}}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((new Slice<GoString>(0, 0, ("a" : GoString), ("b" : GoString)) : Slice<GoString>)), _out : ("[]string{\"a\", \"b\"}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((new SI() : SI)), _out : ("fmt_test.SI{I:interface {}(nil)}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((null : Slice<GoInt>)), _out : ("[]int(nil)" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((new Slice<GoInt>(0, 0) : Slice<GoInt>)), _out : ("[]int{}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(_array), _out : ("[5]int{1, 2, 3, 4, 5}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((_array : Ref<GoArray<GoInt>>)), _out : ("&[5]int{1, 2, 3, 4, 5}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(_iarray), _out : ("[4]interface {}{1, \"hello\", 2.5, interface {}(nil)}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((_iarray : Ref<GoArray<AnyInterface>>)), _out : ("&[4]interface {}{1, \"hello\", 2.5, interface {}(nil)}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(((null : GoMap<GoInt, GoUInt8>) : GoMap<GoInt, GoByte>)), _out : ("map[int]uint8(nil)" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<GoInt, GoUInt8>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) })));
        @:privateAccess x._keys = [];
        @:privateAccess x._values = [];
        x;
    } : stdgo.GoMap<GoInt, GoUInt8>)), _out : ("map[int]uint8{}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(("foo" : GoString)), _out : ("\"foo\"" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(_barray), _out : ("[5]fmt_test.renamedUint8{0x1, 0x2, 0x3, 0x4, 0x5}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(_bslice), _out : ("[]fmt_test.renamedUint8{0x1, 0x2, 0x3, 0x4, 0x5}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((null : Slice<GoInt32>)), _out : ("[]int32(nil)" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((1.2345678 : GoFloat64)), _out : ("1.2345678" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(((1.2345678 : GoFloat64) : GoFloat32)), _out : ("1.2345678" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("1" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((1e+06 : GoFloat64)), _out : ("1e+06" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(((1 : GoFloat64) : GoFloat32)), _out : ("1" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(((1e+06 : GoFloat64) : GoFloat32)), _out : ("1e+06" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(((null : Slice<GoUInt8>) : Slice<GoByte>)), _out : ("[]byte(nil)" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((null : Slice<GoUInt8>)), _out : ("[]byte(nil)" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)), _out : ("[]byte{}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)), _out : ("[]byte{}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(Go.asInterface(stdgo.reflect.Reflect.valueOf(Go.toInterface((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>))))), _out : ("[]uint8{}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(Go.asInterface(stdgo.reflect.Reflect.valueOf(Go.toInterface((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>))))), _out : ("[]uint8{}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>) : Ref<Slice<GoUInt8>>)), _out : ("&[]uint8{}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>) : Ref<Slice<GoUInt8>>)), _out : ("&[]uint8{}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 3) (0 : GoUInt8)]))) : GoArray<GoUInt8>)), _out : ("[3]uint8{0x0, 0x0, 0x0}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 3) (0 : GoUInt8)]))) : GoArray<GoUInt8>)), _out : ("[3]uint8{0x0, 0x0, 0x0}" : GoString) } : T__struct_2),
({ _fmt : ("%#x" : GoString), _val : Go.toInterface((new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (15 : GoInt)) : Slice<GoInt>)), _out : ("[0x1 0x2 0xf]" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface((new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (15 : GoInt)) : Slice<GoInt>)), _out : ("[1 2 f]" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface((new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (15 : GoInt)) : Slice<GoInt>)), _out : ("[1 2 15]" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (2 : GoUInt8), (15 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[1 2 15]" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((new Slice<GoString>(0, 0, ("a" : GoString), ("b" : GoString)) : Slice<GoString>)), _out : ("[\"a\" \"b\"]" : GoString) } : T__struct_2),
({ _fmt : ("% 02x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8)) : Slice<GoUInt8>)), _out : ("01" : GoString) } : T__struct_2),
({ _fmt : ("% 02x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (2 : GoUInt8), (3 : GoUInt8)) : Slice<GoUInt8>)), _out : ("01 02 03" : GoString) } : T__struct_2),
({ _fmt : ("%2x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)), _out : ("  " : GoString) } : T__struct_2),
({ _fmt : ("%#2x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)), _out : ("  " : GoString) } : T__struct_2),
({ _fmt : ("% 02x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)), _out : ("00" : GoString) } : T__struct_2),
({ _fmt : ("%# 02x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)), _out : ("00" : GoString) } : T__struct_2),
({ _fmt : ("%-2x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)), _out : ("  " : GoString) } : T__struct_2),
({ _fmt : ("%-02x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>)), _out : ("  " : GoString) } : T__struct_2),
({ _fmt : ("%8x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8)) : Slice<GoUInt8>)), _out : ("      ab" : GoString) } : T__struct_2),
({ _fmt : ("% 8x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8)) : Slice<GoUInt8>)), _out : ("      ab" : GoString) } : T__struct_2),
({ _fmt : ("%#8x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8)) : Slice<GoUInt8>)), _out : ("    0xab" : GoString) } : T__struct_2),
({ _fmt : ("%# 8x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8)) : Slice<GoUInt8>)), _out : ("    0xab" : GoString) } : T__struct_2),
({ _fmt : ("%08x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8)) : Slice<GoUInt8>)), _out : ("000000ab" : GoString) } : T__struct_2),
({ _fmt : ("% 08x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8)) : Slice<GoUInt8>)), _out : ("000000ab" : GoString) } : T__struct_2),
({ _fmt : ("%#08x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8)) : Slice<GoUInt8>)), _out : ("00000xab" : GoString) } : T__struct_2),
({ _fmt : ("%# 08x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8)) : Slice<GoUInt8>)), _out : ("00000xab" : GoString) } : T__struct_2),
({ _fmt : ("%10x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8), (205 : GoUInt8)) : Slice<GoUInt8>)), _out : ("      abcd" : GoString) } : T__struct_2),
({ _fmt : ("% 10x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8), (205 : GoUInt8)) : Slice<GoUInt8>)), _out : ("     ab cd" : GoString) } : T__struct_2),
({ _fmt : ("%#10x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8), (205 : GoUInt8)) : Slice<GoUInt8>)), _out : ("    0xabcd" : GoString) } : T__struct_2),
({ _fmt : ("%# 10x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8), (205 : GoUInt8)) : Slice<GoUInt8>)), _out : (" 0xab 0xcd" : GoString) } : T__struct_2),
({ _fmt : ("%010x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8), (205 : GoUInt8)) : Slice<GoUInt8>)), _out : ("000000abcd" : GoString) } : T__struct_2),
({ _fmt : ("% 010x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8), (205 : GoUInt8)) : Slice<GoUInt8>)), _out : ("00000ab cd" : GoString) } : T__struct_2),
({ _fmt : ("%#010x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8), (205 : GoUInt8)) : Slice<GoUInt8>)), _out : ("00000xabcd" : GoString) } : T__struct_2),
({ _fmt : ("%# 010x" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8), (205 : GoUInt8)) : Slice<GoUInt8>)), _out : ("00xab 0xcd" : GoString) } : T__struct_2),
({ _fmt : ("%-10X" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8)) : Slice<GoUInt8>)), _out : ("AB        " : GoString) } : T__struct_2),
({ _fmt : ("% -010X" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8)) : Slice<GoUInt8>)), _out : ("AB        " : GoString) } : T__struct_2),
({ _fmt : ("%#-10X" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8), (205 : GoUInt8)) : Slice<GoUInt8>)), _out : ("0XABCD    " : GoString) } : T__struct_2),
({ _fmt : ("%# -010X" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (171 : GoUInt8), (205 : GoUInt8)) : Slice<GoUInt8>)), _out : ("0XAB 0XCD " : GoString) } : T__struct_2),
({ _fmt : ("%2x" : GoString), _val : Go.toInterface(Go.str()), _out : ("  " : GoString) } : T__struct_2),
({ _fmt : ("%#2x" : GoString), _val : Go.toInterface(Go.str()), _out : ("  " : GoString) } : T__struct_2),
({ _fmt : ("% 02x" : GoString), _val : Go.toInterface(Go.str()), _out : ("00" : GoString) } : T__struct_2),
({ _fmt : ("%# 02x" : GoString), _val : Go.toInterface(Go.str()), _out : ("00" : GoString) } : T__struct_2),
({ _fmt : ("%-2x" : GoString), _val : Go.toInterface(Go.str()), _out : ("  " : GoString) } : T__struct_2),
({ _fmt : ("%-02x" : GoString), _val : Go.toInterface(Go.str()), _out : ("  " : GoString) } : T__struct_2),
({ _fmt : ("%8x" : GoString), _val : Go.toInterface(Go.str(171)), _out : ("      ab" : GoString) } : T__struct_2),
({ _fmt : ("% 8x" : GoString), _val : Go.toInterface(Go.str(171)), _out : ("      ab" : GoString) } : T__struct_2),
({ _fmt : ("%#8x" : GoString), _val : Go.toInterface(Go.str(171)), _out : ("    0xab" : GoString) } : T__struct_2),
({ _fmt : ("%# 8x" : GoString), _val : Go.toInterface(Go.str(171)), _out : ("    0xab" : GoString) } : T__struct_2),
({ _fmt : ("%08x" : GoString), _val : Go.toInterface(Go.str(171)), _out : ("000000ab" : GoString) } : T__struct_2),
({ _fmt : ("% 08x" : GoString), _val : Go.toInterface(Go.str(171)), _out : ("000000ab" : GoString) } : T__struct_2),
({ _fmt : ("%#08x" : GoString), _val : Go.toInterface(Go.str(171)), _out : ("00000xab" : GoString) } : T__struct_2),
({ _fmt : ("%# 08x" : GoString), _val : Go.toInterface(Go.str(171)), _out : ("00000xab" : GoString) } : T__struct_2),
({ _fmt : ("%10x" : GoString), _val : Go.toInterface(Go.str(171, 205)), _out : ("      abcd" : GoString) } : T__struct_2),
({ _fmt : ("% 10x" : GoString), _val : Go.toInterface(Go.str(171, 205)), _out : ("     ab cd" : GoString) } : T__struct_2),
({ _fmt : ("%#10x" : GoString), _val : Go.toInterface(Go.str(171, 205)), _out : ("    0xabcd" : GoString) } : T__struct_2),
({ _fmt : ("%# 10x" : GoString), _val : Go.toInterface(Go.str(171, 205)), _out : (" 0xab 0xcd" : GoString) } : T__struct_2),
({ _fmt : ("%010x" : GoString), _val : Go.toInterface(Go.str(171, 205)), _out : ("000000abcd" : GoString) } : T__struct_2),
({ _fmt : ("% 010x" : GoString), _val : Go.toInterface(Go.str(171, 205)), _out : ("00000ab cd" : GoString) } : T__struct_2),
({ _fmt : ("%#010x" : GoString), _val : Go.toInterface(Go.str(171, 205)), _out : ("00000xabcd" : GoString) } : T__struct_2),
({ _fmt : ("%# 010x" : GoString), _val : Go.toInterface(Go.str(171, 205)), _out : ("00xab 0xcd" : GoString) } : T__struct_2),
({ _fmt : ("%-10X" : GoString), _val : Go.toInterface(Go.str(171)), _out : ("AB        " : GoString) } : T__struct_2),
({ _fmt : ("% -010X" : GoString), _val : Go.toInterface(Go.str(171)), _out : ("AB        " : GoString) } : T__struct_2),
({ _fmt : ("%#-10X" : GoString), _val : Go.toInterface(Go.str(171, 205)), _out : ("0XABCD    " : GoString) } : T__struct_2),
({ _fmt : ("%# -010X" : GoString), _val : Go.toInterface(Go.str(171, 205)), _out : ("0XAB 0XCD " : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((true : T_renamedBool)), _out : ("true" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface((true : T_renamedBool)), _out : ("%!d(fmt_test.renamedBool=true)" : GoString) } : T__struct_2),
({ _fmt : ("%o" : GoString), _val : Go.toInterface(((8 : stdgo.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt)), _out : ("10" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface(((-9 : stdgo.fmt_test.Fmt_test.T_renamedInt8) : T_renamedInt8)), _out : ("-9" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(((10 : stdgo.fmt_test.Fmt_test.T_renamedInt16) : T_renamedInt16)), _out : ("10" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(((-11 : stdgo.fmt_test.Fmt_test.T_renamedInt32) : T_renamedInt32)), _out : ("-11" : GoString) } : T__struct_2),
({ _fmt : ("%X" : GoString), _val : Go.toInterface(((("255" : GoInt64) : stdgo.fmt_test.Fmt_test.T_renamedInt64) : T_renamedInt64)), _out : ("FF" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(((("13" : GoUInt) : stdgo.fmt_test.Fmt_test.T_renamedUint) : T_renamedUint)), _out : ("13" : GoString) } : T__struct_2),
({ _fmt : ("%o" : GoString), _val : Go.toInterface(((14 : stdgo.fmt_test.Fmt_test.T_renamedUint8) : T_renamedUint8)), _out : ("16" : GoString) } : T__struct_2),
({ _fmt : ("%X" : GoString), _val : Go.toInterface(((15 : stdgo.fmt_test.Fmt_test.T_renamedUint16) : T_renamedUint16)), _out : ("F" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface(((("16" : GoUInt32) : stdgo.fmt_test.Fmt_test.T_renamedUint32) : T_renamedUint32)), _out : ("16" : GoString) } : T__struct_2),
({ _fmt : ("%X" : GoString), _val : Go.toInterface(((("17" : GoUInt64) : stdgo.fmt_test.Fmt_test.T_renamedUint64) : T_renamedUint64)), _out : ("11" : GoString) } : T__struct_2),
({ _fmt : ("%o" : GoString), _val : Go.toInterface(((18 : stdgo.fmt_test.Fmt_test.T_renamedUintptr) : T_renamedUintptr)), _out : ("22" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface((("thing" : GoString) : T_renamedString)), _out : ("7468696e67" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface(((new Slice<GoUInt8>(0, 0, (1 : GoUInt8), (2 : GoUInt8), (15 : GoUInt8)) : Slice<GoUInt8>) : T_renamedBytes)), _out : ("[1 2 15]" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(((("hello" : GoString) : Slice<GoByte>) : T_renamedBytes)), _out : ("\"hello\"" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface((new Slice<stdgo.fmt_test.Fmt_test.T_renamedUint8>(0, 0, (104 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (101 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (111 : stdgo.fmt_test.Fmt_test.T_renamedUint8)) : Slice<stdgo.fmt_test.Fmt_test.T_renamedUint8>)), _out : ("68656c6c6f" : GoString) } : T__struct_2),
({ _fmt : ("%X" : GoString), _val : Go.toInterface((new Slice<stdgo.fmt_test.Fmt_test.T_renamedUint8>(0, 0, (104 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (101 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (111 : stdgo.fmt_test.Fmt_test.T_renamedUint8)) : Slice<stdgo.fmt_test.Fmt_test.T_renamedUint8>)), _out : ("68656C6C6F" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface((new Slice<stdgo.fmt_test.Fmt_test.T_renamedUint8>(0, 0, (104 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (101 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (111 : stdgo.fmt_test.Fmt_test.T_renamedUint8)) : Slice<stdgo.fmt_test.Fmt_test.T_renamedUint8>)), _out : ("hello" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface((new Slice<stdgo.fmt_test.Fmt_test.T_renamedUint8>(0, 0, (104 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (101 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo.fmt_test.Fmt_test.T_renamedUint8), (111 : stdgo.fmt_test.Fmt_test.T_renamedUint8)) : Slice<stdgo.fmt_test.Fmt_test.T_renamedUint8>)), _out : ("\"hello\"" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(((22 : GoFloat64) : T_renamedFloat32)), _out : ("22" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(((33 : GoFloat64) : T_renamedFloat64)), _out : ("33" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(((3 : GoFloat64) + new GoComplex128(0, 4) : T_renamedComplex64)), _out : ("(3+4i)" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(((4 : GoFloat64) + new GoComplex128(0, -3) : T_renamedComplex128)), _out : ("(4-3i)" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface(Go.asInterface(((1 : stdgo.fmt_test.Fmt_test.F) : F))), _out : ("<x=F(1)>" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface(Go.asInterface(((2 : stdgo.fmt_test.Fmt_test.G) : G))), _out : ("2" : GoString) } : T__struct_2),
({ _fmt : ("%+v" : GoString), _val : Go.toInterface((new S(((4 : stdgo.fmt_test.Fmt_test.F) : F), ((5 : stdgo.fmt_test.Fmt_test.G) : G)) : S)), _out : ("{F:<v=F(4)> G:5}" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(Go.asInterface(((6 : stdgo.fmt_test.Fmt_test.G) : G))), _out : ("GoString(6)" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((new S(((7 : stdgo.fmt_test.Fmt_test.F) : F), ((8 : stdgo.fmt_test.Fmt_test.G) : G)) : S)), _out : ("fmt_test.S{F:<v=F(7)>, G:GoString(8)}" : GoString) } : T__struct_2),
({ _fmt : ("%T" : GoString), _val : Go.toInterface(((0 : GoUInt8) : GoByte)), _out : ("uint8" : GoString) } : T__struct_2),
({ _fmt : ("%T" : GoString), _val : Go.toInterface(Go.asInterface(stdgo.reflect.Reflect.valueOf((null : AnyInterface)))), _out : ("reflect.Value" : GoString) } : T__struct_2),
({ _fmt : ("%T" : GoString), _val : Go.toInterface(((4 : GoFloat64) + new GoComplex128(0, -3))), _out : ("complex128" : GoString) } : T__struct_2),
({ _fmt : ("%T" : GoString), _val : Go.toInterface(((4 : GoFloat64) + new GoComplex128(0, -3) : T_renamedComplex128)), _out : ("fmt_test.renamedComplex128" : GoString) } : T__struct_2),
({ _fmt : ("%T" : GoString), _val : Go.toInterface(_intVar), _out : ("int" : GoString) } : T__struct_2),
({ _fmt : ("%6T" : GoString), _val : Go.toInterface(Go.pointer(_intVar)), _out : ("  *int" : GoString) } : T__struct_2),
({ _fmt : ("%10T" : GoString), _val : (null : AnyInterface), _out : ("     <nil>" : GoString) } : T__struct_2),
({ _fmt : ("%-10T" : GoString), _val : (null : AnyInterface), _out : ("<nil>     " : GoString) } : T__struct_2),
({ _fmt : ("%p" : GoString), _val : Go.toInterface((null : Pointer<GoInt>)), _out : ("0x0" : GoString) } : T__struct_2),
({ _fmt : ("%#p" : GoString), _val : Go.toInterface((null : Pointer<GoInt>)), _out : ("0" : GoString) } : T__struct_2),
({ _fmt : ("%p" : GoString), _val : Go.toInterface(Go.pointer(_intVar)), _out : ("0xPTR" : GoString) } : T__struct_2),
({ _fmt : ("%#p" : GoString), _val : Go.toInterface(Go.pointer(_intVar)), _out : ("PTR" : GoString) } : T__struct_2),
({ _fmt : ("%p" : GoString), _val : Go.toInterface((_array : Ref<GoArray<GoInt>>)), _out : ("0xPTR" : GoString) } : T__struct_2),
({ _fmt : ("%p" : GoString), _val : Go.toInterface((_slice : Ref<Slice<GoInt>>)), _out : ("0xPTR" : GoString) } : T__struct_2),
({ _fmt : ("%8.2p" : GoString), _val : Go.toInterface((null : Pointer<GoInt>)), _out : ("    0x00" : GoString) } : T__struct_2),
({ _fmt : ("%-20.16p" : GoString), _val : Go.toInterface(Go.pointer(_intVar)), _out : ("0xPTR  " : GoString) } : T__struct_2),
({ _fmt : ("%p" : GoString), _val : Go.toInterface(new Chan<GoInt>(0, () -> (0 : GoInt))), _out : ("0xPTR" : GoString) } : T__struct_2),
({ _fmt : ("%p" : GoString), _val : Go.toInterface((new GoObjectMap<GoInt, GoInt>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }))) : GoMap<GoInt, GoInt>)), _out : ("0xPTR" : GoString) } : T__struct_2),
({ _fmt : ("%p" : GoString), _val : Go.toInterface(function():Void {}), _out : ("0xPTR" : GoString) } : T__struct_2),
({ _fmt : ("%p" : GoString), _val : Go.toInterface((27 : GoInt)), _out : ("%!p(int=27)" : GoString) } : T__struct_2),
({ _fmt : ("%p" : GoString), _val : (null : AnyInterface), _out : ("%!p(<nil>)" : GoString) } : T__struct_2),
({ _fmt : ("%#p" : GoString), _val : (null : AnyInterface), _out : ("%!p(<nil>)" : GoString) } : T__struct_2),
({ _fmt : ("%b" : GoString), _val : Go.toInterface(Go.pointer(_intVar)), _out : ("PTR_b" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface(Go.pointer(_intVar)), _out : ("PTR_d" : GoString) } : T__struct_2),
({ _fmt : ("%o" : GoString), _val : Go.toInterface(Go.pointer(_intVar)), _out : ("PTR_o" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface(Go.pointer(_intVar)), _out : ("PTR_x" : GoString) } : T__struct_2),
({ _fmt : ("%X" : GoString), _val : Go.toInterface(Go.pointer(_intVar)), _out : ("PTR_X" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : (null : AnyInterface), _out : ("<nil>" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : (null : AnyInterface), _out : ("<nil>" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((null : Pointer<GoInt>)), _out : ("<nil>" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface((null : Pointer<GoInt>)), _out : ("(*int)(nil)" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(Go.pointer(_intVar)), _out : ("0xPTR" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(Go.pointer(_intVar)), _out : ("(*int)(0xPTR)" : GoString) } : T__struct_2),
({ _fmt : ("%8.2v" : GoString), _val : Go.toInterface((null : Pointer<GoInt>)), _out : ("   <nil>" : GoString) } : T__struct_2),
({ _fmt : ("%-20.16v" : GoString), _val : Go.toInterface(Go.pointer(_intVar)), _out : ("0xPTR  " : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface(Go.pointer(_pValue)), _out : ("String(p)" : GoString) } : T__struct_2),
({ _fmt : ("%p" : GoString), _val : Go.toInterface(Go.pointer(_pValue)), _out : ("0xPTR" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface(Go.asInterface((new stdgo.time.Time.Time() : stdgo.time.Time.Time).month())), _out : ("January" : GoString) } : T__struct_2),
({ _fmt : ("%d" : GoString), _val : Go.toInterface(Go.asInterface((new stdgo.time.Time.Time() : stdgo.time.Time.Time).month())), _out : ("1" : GoString) } : T__struct_2),
({ _fmt : Go.str(), _val : (null : AnyInterface), _out : ("%!(EXTRA <nil>)" : GoString) } : T__struct_2),
({ _fmt : Go.str(), _val : Go.toInterface((2 : GoInt)), _out : ("%!(EXTRA int=2)" : GoString) } : T__struct_2),
({ _fmt : ("no args" : GoString), _val : Go.toInterface(("hello" : GoString)), _out : ("no args%!(EXTRA string=hello)" : GoString) } : T__struct_2),
({ _fmt : ("%s %" : GoString), _val : Go.toInterface(("hello" : GoString)), _out : ("hello %!(NOVERB)" : GoString) } : T__struct_2),
({ _fmt : ("%s %.2" : GoString), _val : Go.toInterface(("hello" : GoString)), _out : ("hello %!(NOVERB)" : GoString) } : T__struct_2),
({ _fmt : ("%017091901790959340919092959340919017929593813360" : GoString), _val : Go.toInterface((0 : GoInt)), _out : ("%!(NOVERB)%!(EXTRA int=0)" : GoString) } : T__struct_2),
({ _fmt : ("%184467440737095516170v" : GoString), _val : Go.toInterface((0 : GoInt)), _out : ("%!(NOVERB)%!(EXTRA int=0)" : GoString) } : T__struct_2),
({ _fmt : ("%010.2" : GoString), _val : Go.toInterface(("12345" : GoString)), _out : ("%!(NOVERB)%!(EXTRA string=12345)" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<GoFloat64, GoInt>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(float64_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) })));
        @:privateAccess x._keys = [naN, naN];
        @:privateAccess x._values = [(1 : GoInt), (1 : GoInt)];
        x;
    } : stdgo.GoMap<GoFloat64, GoInt>)), _out : ("map[NaN:1 NaN:1]" : GoString) } : T__struct_2),
({ _fmt : ("%.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("1.00" : GoString) } : T__struct_2),
({ _fmt : ("%.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-1.00" : GoString) } : T__struct_2),
({ _fmt : ("% .2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : (" 1.00" : GoString) } : T__struct_2),
({ _fmt : ("% .2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-1.00" : GoString) } : T__struct_2),
({ _fmt : ("%+.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("+1.00" : GoString) } : T__struct_2),
({ _fmt : ("%+.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-1.00" : GoString) } : T__struct_2),
({ _fmt : ("%7.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("   1.00" : GoString) } : T__struct_2),
({ _fmt : ("%7.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("  -1.00" : GoString) } : T__struct_2),
({ _fmt : ("% 7.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("   1.00" : GoString) } : T__struct_2),
({ _fmt : ("% 7.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("  -1.00" : GoString) } : T__struct_2),
({ _fmt : ("%+7.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("  +1.00" : GoString) } : T__struct_2),
({ _fmt : ("%+7.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("  -1.00" : GoString) } : T__struct_2),
({ _fmt : ("% +7.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("  +1.00" : GoString) } : T__struct_2),
({ _fmt : ("% +7.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("  -1.00" : GoString) } : T__struct_2),
({ _fmt : ("%07.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("0001.00" : GoString) } : T__struct_2),
({ _fmt : ("%07.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-001.00" : GoString) } : T__struct_2),
({ _fmt : ("% 07.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : (" 001.00" : GoString) } : T__struct_2),
({ _fmt : ("% 07.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-001.00" : GoString) } : T__struct_2),
({ _fmt : ("%+07.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("+001.00" : GoString) } : T__struct_2),
({ _fmt : ("%+07.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-001.00" : GoString) } : T__struct_2),
({ _fmt : ("% +07.2f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("+001.00" : GoString) } : T__struct_2),
({ _fmt : ("% +07.2f" : GoString), _val : Go.toInterface((-1 : GoFloat64)), _out : ("-001.00" : GoString) } : T__struct_2),
({ _fmt : ("%7.2f" : GoString), _val : Go.toInterface(((1 : GoFloat64) + new GoComplex128(0, 2))), _out : ("(   1.00  +2.00i)" : GoString) } : T__struct_2),
({ _fmt : ("%+07.2f" : GoString), _val : Go.toInterface(((-1 : GoFloat64) + new GoComplex128(0, -2))), _out : ("(-001.00-002.00i)" : GoString) } : T__struct_2),
({ _fmt : ("%0-5s" : GoString), _val : Go.toInterface(("abc" : GoString)), _out : ("abc  " : GoString) } : T__struct_2),
({ _fmt : ("%-05.1f" : GoString), _val : Go.toInterface((1 : GoFloat64)), _out : ("1.0  " : GoString) } : T__struct_2),
({ _fmt : ("%06v" : GoString), _val : Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface((10 : GoFloat64)), Go.toInterface((10 : GoInt))) : Slice<AnyInterface>)), _out : ("[000010 000010]" : GoString) } : T__struct_2),
({ _fmt : ("%06v" : GoString), _val : Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface((-10 : GoFloat64)), Go.toInterface((10 : GoInt))) : Slice<AnyInterface>)), _out : ("[-00010 000010]" : GoString) } : T__struct_2),
({ _fmt : ("%06v" : GoString), _val : Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface(((10 : GoFloat64) + new GoComplex128(0, 10))), Go.toInterface((10 : GoInt))) : Slice<AnyInterface>)), _out : ("[(000010+00010i) 000010]" : GoString) } : T__struct_2),
({ _fmt : ("%06v" : GoString), _val : Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface(((-10 : GoFloat64) + new GoComplex128(0, 10))), Go.toInterface((10 : GoInt))) : Slice<AnyInterface>)), _out : ("[(-00010+00010i) 000010]" : GoString) } : T__struct_2),
({ _fmt : ("%03.6v" : GoString), _val : Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface((1 : GoInt)), Go.toInterface((2 : GoFloat64)), Go.toInterface(("x" : GoString))) : Slice<AnyInterface>)), _out : ("[000001 002 00x]" : GoString) } : T__struct_2),
({ _fmt : ("%03.0v" : GoString), _val : Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface((0 : GoInt)), Go.toInterface((2 : GoFloat64)), Go.toInterface(("x" : GoString))) : Slice<AnyInterface>)), _out : ("[    002 000]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((new Slice<GoComplex64>(0, 0, ((1 : GoFloat64) + new GoComplex128(0, 0)), ((2 : GoFloat64) + new GoComplex128(0, 0)), ((3 : GoFloat64) + new GoComplex128(0, 0))) : Slice<GoComplex64>)), _out : ("[(1+0i) (2+0i) (3+0i)]" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((new Slice<GoComplex128>(0, 0, ((1 : GoFloat64) + new GoComplex128(0, 0)), ((2 : GoFloat64) + new GoComplex128(0, 0)), ((3 : GoFloat64) + new GoComplex128(0, 0))) : Slice<GoComplex128>)), _out : ("[(1+0i) (2+0i) (3+0i)]" : GoString) } : T__struct_2),
({ _fmt : ("%." : GoString), _val : Go.toInterface((3 : GoInt)), _out : ("%!.(int=3)" : GoString) } : T__struct_2),
({ _fmt : ("%+10.2f" : GoString), _val : Go.toInterface(((104.66 : GoFloat64) + new GoComplex128(0, 440.51))), _out : ("(   +104.66   +440.51i)" : GoString) } : T__struct_2),
({ _fmt : ("%+10.2f" : GoString), _val : Go.toInterface(((-104.66 : GoFloat64) + new GoComplex128(0, 440.51))), _out : ("(   -104.66   +440.51i)" : GoString) } : T__struct_2),
({ _fmt : ("%+10.2f" : GoString), _val : Go.toInterface(((104.66 : GoFloat64) + new GoComplex128(0, -440.51))), _out : ("(   +104.66   -440.51i)" : GoString) } : T__struct_2),
({ _fmt : ("%+10.2f" : GoString), _val : Go.toInterface(((-104.66 : GoFloat64) + new GoComplex128(0, -440.51))), _out : ("(   -104.66   -440.51i)" : GoString) } : T__struct_2),
({ _fmt : ("%+010.2f" : GoString), _val : Go.toInterface(((104.66 : GoFloat64) + new GoComplex128(0, 440.51))), _out : ("(+000104.66+000440.51i)" : GoString) } : T__struct_2),
({ _fmt : ("%+010.2f" : GoString), _val : Go.toInterface(((-104.66 : GoFloat64) + new GoComplex128(0, 440.51))), _out : ("(-000104.66+000440.51i)" : GoString) } : T__struct_2),
({ _fmt : ("%+010.2f" : GoString), _val : Go.toInterface(((104.66 : GoFloat64) + new GoComplex128(0, -440.51))), _out : ("(+000104.66-000440.51i)" : GoString) } : T__struct_2),
({ _fmt : ("%+010.2f" : GoString), _val : Go.toInterface(((-104.66 : GoFloat64) + new GoComplex128(0, -440.51))), _out : ("(-000104.66-000440.51i)" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(_byteStringerSlice), _out : ("[X X X X X]" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface(_byteStringerSlice), _out : ("hello" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(_byteStringerSlice), _out : ("\"hello\"" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface(_byteStringerSlice), _out : ("68656c6c6f" : GoString) } : T__struct_2),
({ _fmt : ("%X" : GoString), _val : Go.toInterface(_byteStringerSlice), _out : ("68656C6C6F" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(_byteStringerSlice), _out : ("[]fmt_test.byteStringer{0x68, 0x65, 0x6c, 0x6c, 0x6f}" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(_byteFormatterSlice), _out : ("[X X X X X]" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface(_byteFormatterSlice), _out : ("hello" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(_byteFormatterSlice), _out : ("\"hello\"" : GoString) } : T__struct_2),
({ _fmt : ("%x" : GoString), _val : Go.toInterface(_byteFormatterSlice), _out : ("68656c6c6f" : GoString) } : T__struct_2),
({ _fmt : ("%X" : GoString), _val : Go.toInterface(_byteFormatterSlice), _out : ("68656C6C6F" : GoString) } : T__struct_2),
({ _fmt : ("%#v" : GoString), _val : Go.toInterface(_byteFormatterSlice), _out : ("[]fmt_test.byteFormatter{X, X, X, X, X}" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface(Go.asInterface((Go.str() : T_writeStringFormatter))), _out : ("******" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface(Go.asInterface((("xyz" : GoString) : T_writeStringFormatter))), _out : ("***xyz***" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface(Go.asInterface((("⌘/⌘" : GoString) : T_writeStringFormatter))), _out : ("***⌘/⌘***" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((stdgo.reflect.Reflect.valueOf(Go.toInterface((new A() : A))).field((0 : GoInt)).string() : GoString)), _out : ("<int Value>" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(Go.asInterface(stdgo.reflect.Reflect.valueOf(Go.toInterface((new A() : A))).field((0 : GoInt)))), _out : ("0" : GoString) } : T__struct_2),
({ _fmt : ("%s" : GoString), _val : Go.toInterface(Go.asInterface(stdgo.reflect.Reflect.valueOf(Go.toInterface(("hello" : GoString))))), _out : ("hello" : GoString) } : T__struct_2),
({ _fmt : ("%q" : GoString), _val : Go.toInterface(Go.asInterface(stdgo.reflect.Reflect.valueOf(Go.toInterface(("hello" : GoString))))), _out : ("\"hello\"" : GoString) } : T__struct_2),
({ _fmt : ("%#04x" : GoString), _val : Go.toInterface(Go.asInterface(stdgo.reflect.Reflect.valueOf(Go.toInterface((256 : GoInt))))), _out : ("0x0100" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(Go.asInterface((new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value))), _out : ("<invalid reflect.Value>" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface(Go.asInterface(((new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value) : Ref<stdgo.reflect.Reflect.Value>))), _out : ("<invalid Value>" : GoString) } : T__struct_2),
({ _fmt : ("%v" : GoString), _val : Go.toInterface((new SI(Go.toInterface(Go.asInterface((new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value)))) : SI)), _out : ("{<invalid Value>}" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : (null : AnyInterface), _out : ("%!☠(<nil>)" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : (null : AnyInterface), _out : ("%!☠(<nil>)" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface((0 : GoInt)), _out : ("%!☠(int=0)" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface((("0" : GoUInt) : GoUInt)), _out : ("%!☠(uint=0)" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (0 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[%!☠(uint8=0) %!☠(uint8=1)]" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface((new Slice<GoUInt8>(0, 0, (0 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>)), _out : ("[%!☠(uint8=0) %!☠(uint8=1)]" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((0 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("[%!☠(uint8=0)]" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface((new GoArray<GoUInt8>((0 : GoUInt8)) : GoArray<GoUInt8>)), _out : ("[%!☠(uint8=0)]" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface(("hello" : GoString)), _out : ("%!☠(string=hello)" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface((1.2345678 : GoFloat64)), _out : ("%!☠(float64=1.2345678)" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface(((1.2345678 : GoFloat64) : GoFloat32)), _out : ("%!☠(float32=1.2345678)" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface(((1.2345678 : GoFloat64) + new GoComplex128(0, 1.2345678))), _out : ("%!☠(complex128=(1.2345678+1.2345678i))" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface(((1.2345678 : GoFloat64) + new GoComplex128(0, 1.2345678) : GoComplex64)), _out : ("%!☠(complex64=(1.2345678+1.2345678i))" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface(Go.pointer(_intVar)), _out : ("%!☠(*int=0xPTR)" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface(new Chan<GoInt>(0, () -> (0 : GoInt))), _out : ("%!☠(chan int=0xPTR)" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface(function():Void {}), _out : ("%!☠(func()=0xPTR)" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface(Go.asInterface(stdgo.reflect.Reflect.valueOf(Go.toInterface(((0 : stdgo.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))))), _out : ("%!☠(fmt_test.renamedInt=0)" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface((new SI(Go.toInterface(((0 : stdgo.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))) : SI)), _out : ("{%!☠(fmt_test.renamedInt=0)}" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface(((new Slice<AnyInterface>(0, 0, Go.toInterface(Go.asInterface(((1 : stdgo.fmt_test.Fmt_test.I) : I))), Go.toInterface(Go.asInterface(((2 : stdgo.fmt_test.Fmt_test.G) : G)))) : Slice<AnyInterface>) : Ref<Slice<AnyInterface>>)), _out : ("&[%!☠(fmt_test.I=1) %!☠(fmt_test.G=2)]" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface((new SI(Go.toInterface(((new Slice<AnyInterface>(0, 0, Go.toInterface(Go.asInterface(((1 : stdgo.fmt_test.Fmt_test.I) : I))), Go.toInterface(Go.asInterface(((2 : stdgo.fmt_test.Fmt_test.G) : G)))) : Slice<AnyInterface>) : Ref<Slice<AnyInterface>>))) : SI)), _out : ("{%!☠(*[]interface {}=&[1 2])}" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface(Go.asInterface((new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value))), _out : ("<invalid reflect.Value>" : GoString) } : T__struct_2),
({ _fmt : ("%☠" : GoString), _val : Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<GoFloat64, GoInt>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(float64_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) })));
        @:privateAccess x._keys = [naN];
        @:privateAccess x._values = [(1 : GoInt)];
        x;
    } : stdgo.GoMap<GoFloat64, GoInt>)), _out : ("map[%!☠(float64=NaN):%!☠(int=1)]" : GoString) } : T__struct_2)) : Slice<T__struct_2>);
/**
    
    
    
**/
private var _reorderTests = (new Slice<T__struct_3>(
0,
0,
({ _fmt : ("%[1]d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((1 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("1" : GoString) } : T__struct_3),
({ _fmt : ("%[2]d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((2 : GoInt)), Go.toInterface((1 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("1" : GoString) } : T__struct_3),
({ _fmt : ("%[2]d %[1]d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((1 : GoInt)), Go.toInterface((2 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("2 1" : GoString) } : T__struct_3),
({ _fmt : ("%[2]*[1]d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((2 : GoInt)), Go.toInterface((5 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("    2" : GoString) } : T__struct_3),
({ _fmt : ("%6.2f" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((12 : GoFloat64))) : stdgo.fmt_test.Fmt_test.SE), _out : (" 12.00" : GoString) } : T__struct_3),
({ _fmt : ("%[3]*.[2]*[1]f" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((12 : GoFloat64)), Go.toInterface((2 : GoInt)), Go.toInterface((6 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : (" 12.00" : GoString) } : T__struct_3),
({ _fmt : ("%[1]*.[2]*[3]f" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((6 : GoInt)), Go.toInterface((2 : GoInt)), Go.toInterface((12 : GoFloat64))) : stdgo.fmt_test.Fmt_test.SE), _out : (" 12.00" : GoString) } : T__struct_3),
({ _fmt : ("%10f" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((12 : GoFloat64))) : stdgo.fmt_test.Fmt_test.SE), _out : (" 12.000000" : GoString) } : T__struct_3),
({ _fmt : ("%[1]*[3]f" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((10 : GoInt)), Go.toInterface((99 : GoInt)), Go.toInterface((12 : GoFloat64))) : stdgo.fmt_test.Fmt_test.SE), _out : (" 12.000000" : GoString) } : T__struct_3),
({ _fmt : ("%.6f" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((12 : GoFloat64))) : stdgo.fmt_test.Fmt_test.SE), _out : ("12.000000" : GoString) } : T__struct_3),
({ _fmt : ("%.[1]*[3]f" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((6 : GoInt)), Go.toInterface((99 : GoInt)), Go.toInterface((12 : GoFloat64))) : stdgo.fmt_test.Fmt_test.SE), _out : ("12.000000" : GoString) } : T__struct_3),
({ _fmt : ("%6.f" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((12 : GoFloat64))) : stdgo.fmt_test.Fmt_test.SE), _out : ("    12" : GoString) } : T__struct_3),
({ _fmt : ("%[1]*.[3]f" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((6 : GoInt)), Go.toInterface((3 : GoInt)), Go.toInterface((12 : GoFloat64))) : stdgo.fmt_test.Fmt_test.SE), _out : ("    12" : GoString) } : T__struct_3),
({ _fmt : ("%d %d %d %#[1]o %#o %#o" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((11 : GoInt)), Go.toInterface((12 : GoInt)), Go.toInterface((13 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("11 12 13 013 014 015" : GoString) } : T__struct_3),
({ _fmt : ("%[d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((2 : GoInt)), Go.toInterface((1 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : GoString) } : T__struct_3),
({ _fmt : ("%]d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((2 : GoInt)), Go.toInterface((1 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!](int=2)d%!(EXTRA int=1)" : GoString) } : T__struct_3),
({ _fmt : ("%[]d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((2 : GoInt)), Go.toInterface((1 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : GoString) } : T__struct_3),
({ _fmt : ("%[-3]d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((2 : GoInt)), Go.toInterface((1 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : GoString) } : T__struct_3),
({ _fmt : ("%[99]d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((2 : GoInt)), Go.toInterface((1 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : GoString) } : T__struct_3),
({ _fmt : ("%[3]" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((2 : GoInt)), Go.toInterface((1 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!(NOVERB)" : GoString) } : T__struct_3),
({ _fmt : ("%[1].2d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((5 : GoInt)), Go.toInterface((6 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : GoString) } : T__struct_3),
({ _fmt : ("%[1]2d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((2 : GoInt)), Go.toInterface((1 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : GoString) } : T__struct_3),
({ _fmt : ("%3.[2]d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((7 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : GoString) } : T__struct_3),
({ _fmt : ("%.[2]d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((7 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : GoString) } : T__struct_3),
({ _fmt : ("%d %d %d %#[1]o %#o %#o %#o" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((11 : GoInt)), Go.toInterface((12 : GoInt)), Go.toInterface((13 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("11 12 13 013 014 015 %!o(MISSING)" : GoString) } : T__struct_3),
({ _fmt : ("%[5]d %[2]d %d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((1 : GoInt)), Go.toInterface((2 : GoInt)), Go.toInterface((3 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX) 2 3" : GoString) } : T__struct_3),
({ _fmt : ("%d %[3]d %d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((1 : GoInt)), Go.toInterface((2 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("1 %!d(BADINDEX) 2" : GoString) } : T__struct_3),
({ _fmt : ("%.[]" : GoString), _val : (new Slice<AnyInterface>(0, 0) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!](BADINDEX)" : GoString) } : T__struct_3),
({ _fmt : ("%.-3d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((42 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!-(int=42)3d" : GoString) } : T__struct_3),
({ _fmt : ("%2147483648d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((42 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!(NOVERB)%!(EXTRA int=42)" : GoString) } : T__struct_3),
({ _fmt : ("%-2147483648d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((42 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!(NOVERB)%!(EXTRA int=42)" : GoString) } : T__struct_3),
({ _fmt : ("%.2147483648d" : GoString), _val : (new Slice<AnyInterface>(0, 0, Go.toInterface((42 : GoInt))) : stdgo.fmt_test.Fmt_test.SE), _out : ("%!(NOVERB)%!(EXTRA int=42)" : GoString) } : T__struct_3)) : Slice<T__struct_3>);
/**
    
    
    
**/
private var _mallocTest = (new Slice<T__struct_4>(
0,
0,
({ _count : (0 : GoInt), _desc : ("Sprintf(\"\")" : GoString), _fn : function():Void {
        sprintf(Go.str());
    } } : T__struct_4),
({ _count : (1 : GoInt), _desc : ("Sprintf(\"xxx\")" : GoString), _fn : function():Void {
        sprintf(("xxx" : GoString));
    } } : T__struct_4),
({ _count : (0 : GoInt), _desc : ("Sprintf(\"%x\")" : GoString), _fn : function():Void {
        sprintf(("%x" : GoString), Go.toInterface((7 : GoInt)));
    } } : T__struct_4),
({ _count : (1 : GoInt), _desc : ("Sprintf(\"%x\")" : GoString), _fn : function():Void {
        sprintf(("%x" : GoString), Go.toInterface((65536 : GoInt)));
    } } : T__struct_4),
({ _count : (3 : GoInt), _desc : ("Sprintf(\"%80000s\")" : GoString), _fn : function():Void {
        sprintf(("%80000s" : GoString), Go.toInterface(("hello" : GoString)));
    } } : T__struct_4),
({ _count : (1 : GoInt), _desc : ("Sprintf(\"%s\")" : GoString), _fn : function():Void {
        sprintf(("%s" : GoString), Go.toInterface(("hello" : GoString)));
    } } : T__struct_4),
({ _count : (1 : GoInt), _desc : ("Sprintf(\"%x %x\")" : GoString), _fn : function():Void {
        sprintf(("%x %x" : GoString), Go.toInterface((7 : GoInt)), Go.toInterface((112 : GoInt)));
    } } : T__struct_4),
({ _count : (1 : GoInt), _desc : ("Sprintf(\"%g\")" : GoString), _fn : function():Void {
        sprintf(("%g" : GoString), Go.toInterface(((3.14159 : GoFloat64) : GoFloat32)));
    } } : T__struct_4),
({ _count : (0 : GoInt), _desc : ("Fprintf(buf, \"%s\")" : GoString), _fn : function():Void {
        _mallocBuf.reset();
        fprintf(Go.asInterface((_mallocBuf : Ref<stdgo.bytes.Bytes.Buffer>)), ("%s" : GoString), Go.toInterface(("hello" : GoString)));
    } } : T__struct_4),
({ _count : (0 : GoInt), _desc : ("Fprintf(buf, \"%x\")" : GoString), _fn : function():Void {
        _mallocBuf.reset();
        fprintf(Go.asInterface((_mallocBuf : Ref<stdgo.bytes.Bytes.Buffer>)), ("%x" : GoString), Go.toInterface((7 : GoInt)));
    } } : T__struct_4),
({ _count : (0 : GoInt), _desc : ("Fprintf(buf, \"%x\")" : GoString), _fn : function():Void {
        _mallocBuf.reset();
        fprintf(Go.asInterface((_mallocBuf : Ref<stdgo.bytes.Bytes.Buffer>)), ("%x" : GoString), Go.toInterface((65536 : GoInt)));
    } } : T__struct_4),
({ _count : (2 : GoInt), _desc : ("Fprintf(buf, \"%80000s\")" : GoString), _fn : function():Void {
        _mallocBuf.reset();
        fprintf(Go.asInterface((_mallocBuf : Ref<stdgo.bytes.Bytes.Buffer>)), ("%80000s" : GoString), Go.toInterface(("hello" : GoString)));
    } } : T__struct_4),
({ _count : (0 : GoInt), _desc : ("Fprintf(buf, \"%x %x %x\")" : GoString), _fn : function():Void {
        _mallocBuf.reset();
        fprintf(Go.asInterface((_mallocBuf : Ref<stdgo.bytes.Bytes.Buffer>)), ("%x %x %x" : GoString), Go.toInterface(_mallocPointer), Go.toInterface(_mallocPointer), Go.toInterface(_mallocPointer));
    } } : T__struct_4)) : Slice<T__struct_4>);
/**
    
    
    
**/
private var _flagtests = (new Slice<T__struct_5>(
0,
0,
({ _in : ("%a" : GoString), _out : ("[%a]" : GoString) } : T__struct_5),
({ _in : ("%-a" : GoString), _out : ("[%-a]" : GoString) } : T__struct_5),
({ _in : ("%+a" : GoString), _out : ("[%+a]" : GoString) } : T__struct_5),
({ _in : ("%#a" : GoString), _out : ("[%#a]" : GoString) } : T__struct_5),
({ _in : ("% a" : GoString), _out : ("[% a]" : GoString) } : T__struct_5),
({ _in : ("%0a" : GoString), _out : ("[%0a]" : GoString) } : T__struct_5),
({ _in : ("%1.2a" : GoString), _out : ("[%1.2a]" : GoString) } : T__struct_5),
({ _in : ("%-1.2a" : GoString), _out : ("[%-1.2a]" : GoString) } : T__struct_5),
({ _in : ("%+1.2a" : GoString), _out : ("[%+1.2a]" : GoString) } : T__struct_5),
({ _in : ("%-+1.2a" : GoString), _out : ("[%+-1.2a]" : GoString) } : T__struct_5),
({ _in : ("%-+1.2abc" : GoString), _out : ("[%+-1.2a]bc" : GoString) } : T__struct_5),
({ _in : ("%-1.2abc" : GoString), _out : ("[%-1.2a]bc" : GoString) } : T__struct_5)) : Slice<T__struct_5>);
/**
    
    
    
**/
private var _startests = (new Slice<T__struct_7>(
0,
0,
({ _fmt : ("%*d" : GoString), _in : _args(Go.toInterface((4 : GoInt)), Go.toInterface((42 : GoInt))), _out : ("  42" : GoString) } : T__struct_7),
({ _fmt : ("%-*d" : GoString), _in : _args(Go.toInterface((4 : GoInt)), Go.toInterface((42 : GoInt))), _out : ("42  " : GoString) } : T__struct_7),
({ _fmt : ("%*d" : GoString), _in : _args(Go.toInterface((-4 : GoInt)), Go.toInterface((42 : GoInt))), _out : ("42  " : GoString) } : T__struct_7),
({ _fmt : ("%-*d" : GoString), _in : _args(Go.toInterface((-4 : GoInt)), Go.toInterface((42 : GoInt))), _out : ("42  " : GoString) } : T__struct_7),
({ _fmt : ("%.*d" : GoString), _in : _args(Go.toInterface((4 : GoInt)), Go.toInterface((42 : GoInt))), _out : ("0042" : GoString) } : T__struct_7),
({ _fmt : ("%*.*d" : GoString), _in : _args(Go.toInterface((8 : GoInt)), Go.toInterface((4 : GoInt)), Go.toInterface((42 : GoInt))), _out : ("    0042" : GoString) } : T__struct_7),
({ _fmt : ("%0*d" : GoString), _in : _args(Go.toInterface((4 : GoInt)), Go.toInterface((42 : GoInt))), _out : ("0042" : GoString) } : T__struct_7),
({ _fmt : ("%0*d" : GoString), _in : _args(Go.toInterface((("4" : GoUInt) : GoUInt)), Go.toInterface((42 : GoInt))), _out : ("0042" : GoString) } : T__struct_7),
({ _fmt : ("%0*d" : GoString), _in : _args(Go.toInterface((("4" : GoUInt64) : GoUInt64)), Go.toInterface((42 : GoInt))), _out : ("0042" : GoString) } : T__struct_7),
({ _fmt : ("%0*d" : GoString), _in : _args(Go.toInterface((4 : GoInt32)), Go.toInterface((42 : GoInt))), _out : ("0042" : GoString) } : T__struct_7),
({ _fmt : ("%0*d" : GoString), _in : _args(Go.toInterface((4 : GoUIntptr)), Go.toInterface((42 : GoInt))), _out : ("0042" : GoString) } : T__struct_7),
({ _fmt : ("%*d" : GoString), _in : _args((null : AnyInterface), Go.toInterface((42 : GoInt))), _out : ("%!(BADWIDTH)42" : GoString) } : T__struct_7),
({ _fmt : ("%*d" : GoString), _in : _args(Go.toInterface((10000000 : GoInt)), Go.toInterface((42 : GoInt))), _out : ("%!(BADWIDTH)42" : GoString) } : T__struct_7),
({ _fmt : ("%*d" : GoString), _in : _args(Go.toInterface((-10000000 : GoInt)), Go.toInterface((42 : GoInt))), _out : ("%!(BADWIDTH)42" : GoString) } : T__struct_7),
({ _fmt : ("%.*d" : GoString), _in : _args((null : AnyInterface), Go.toInterface((42 : GoInt))), _out : ("%!(BADPREC)42" : GoString) } : T__struct_7),
({ _fmt : ("%.*d" : GoString), _in : _args(Go.toInterface((-1 : GoInt)), Go.toInterface((42 : GoInt))), _out : ("%!(BADPREC)42" : GoString) } : T__struct_7),
({ _fmt : ("%.*d" : GoString), _in : _args(Go.toInterface((10000000 : GoInt)), Go.toInterface((42 : GoInt))), _out : ("%!(BADPREC)42" : GoString) } : T__struct_7),
({ _fmt : ("%.*d" : GoString), _in : _args(Go.toInterface((("10000000" : GoUInt) : GoUInt)), Go.toInterface((42 : GoInt))), _out : ("%!(BADPREC)42" : GoString) } : T__struct_7),
({ _fmt : ("%.*d" : GoString), _in : _args(Go.toInterface((("9223372036854775808" : GoUInt64) : GoUInt64)), Go.toInterface((42 : GoInt))), _out : ("%!(BADPREC)42" : GoString) } : T__struct_7),
({ _fmt : ("%.*d" : GoString), _in : _args(Go.toInterface((("18446744073709551615" : GoUInt64) : GoUInt64)), Go.toInterface((42 : GoInt))), _out : ("%!(BADPREC)42" : GoString) } : T__struct_7),
({ _fmt : ("%*d" : GoString), _in : _args(Go.toInterface((5 : GoInt)), Go.toInterface(("foo" : GoString))), _out : ("%!d(string=  foo)" : GoString) } : T__struct_7),
({ _fmt : ("%*% %d" : GoString), _in : _args(Go.toInterface((20 : GoInt)), Go.toInterface((5 : GoInt))), _out : ("% 5" : GoString) } : T__struct_7),
({ _fmt : ("%*" : GoString), _in : _args(Go.toInterface((4 : GoInt))), _out : ("%!(NOVERB)" : GoString) } : T__struct_7)) : Slice<T__struct_7>);
/**
    
    
    
**/
private var _panictests = (new Slice<T__struct_8>(
0,
0,
({ _fmt : ("%s" : GoString), _in : Go.toInterface(Go.asInterface(((null : Ref<stdgo.fmt_test.Fmt_test.PanicS>) : Ref<PanicS>))), _out : ("<nil>" : GoString) } : T__struct_8),
({ _fmt : ("%s" : GoString), _in : Go.toInterface(Go.asInterface((new PanicS(Go.toInterface(stdgo.io.Io.errUnexpectedEOF)) : PanicS))), _out : ("%!s(PANIC=String method: unexpected EOF)" : GoString) } : T__struct_8),
({ _fmt : ("%s" : GoString), _in : Go.toInterface(Go.asInterface((new PanicS(Go.toInterface((3 : GoInt))) : PanicS))), _out : ("%!s(PANIC=String method: 3)" : GoString) } : T__struct_8),
({ _fmt : ("%#v" : GoString), _in : Go.toInterface(Go.asInterface(((null : Ref<stdgo.fmt_test.Fmt_test.PanicGo>) : Ref<PanicGo>))), _out : ("<nil>" : GoString) } : T__struct_8),
({ _fmt : ("%#v" : GoString), _in : Go.toInterface(Go.asInterface((new PanicGo(Go.toInterface(stdgo.io.Io.errUnexpectedEOF)) : PanicGo))), _out : ("%!v(PANIC=GoString method: unexpected EOF)" : GoString) } : T__struct_8),
({ _fmt : ("%#v" : GoString), _in : Go.toInterface(Go.asInterface((new PanicGo(Go.toInterface((3 : GoInt))) : PanicGo))), _out : ("%!v(PANIC=GoString method: 3)" : GoString) } : T__struct_8),
({ _fmt : ("%#v" : GoString), _in : Go.toInterface((new Slice<AnyInterface>(0, 0, Go.toInterface(Go.asInterface((new PanicGo(Go.toInterface((3 : GoInt))) : PanicGo))), Go.toInterface(Go.asInterface((new PanicGo(Go.toInterface((3 : GoInt))) : PanicGo)))) : Slice<AnyInterface>)), _out : ("[]interface {}{%!v(PANIC=GoString method: 3), %!v(PANIC=GoString method: 3)}" : GoString) } : T__struct_8),
({ _fmt : ("%s" : GoString), _in : Go.toInterface(Go.asInterface(((null : Ref<stdgo.fmt_test.Fmt_test.PanicF>) : Ref<PanicF>))), _out : ("<nil>" : GoString) } : T__struct_8),
({ _fmt : ("%s" : GoString), _in : Go.toInterface(Go.asInterface((new PanicF(Go.toInterface(stdgo.io.Io.errUnexpectedEOF)) : PanicF))), _out : ("%!s(PANIC=Format method: unexpected EOF)" : GoString) } : T__struct_8),
({ _fmt : ("%s" : GoString), _in : Go.toInterface(Go.asInterface((new PanicF(Go.toInterface((3 : GoInt))) : PanicF))), _out : ("%!s(PANIC=Format method: 3)" : GoString) } : T__struct_8)) : Slice<T__struct_8>);
/**
    // recurCount tests that erroneous String routine doesn't cause fatal recursion.
    
    
**/
private var _recurCount = (0 : GoInt);
/**
    
    
    
**/
private var _formatterFlagTests = (new Slice<T__struct_9>(
0,
0,
({ _in : ("%a" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%a]" : GoString) } : T__struct_9),
({ _in : ("%-a" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%-a]" : GoString) } : T__struct_9),
({ _in : ("%+a" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%+a]" : GoString) } : T__struct_9),
({ _in : ("%#a" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%#a]" : GoString) } : T__struct_9),
({ _in : ("% a" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[% a]" : GoString) } : T__struct_9),
({ _in : ("%0a" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%0a]" : GoString) } : T__struct_9),
({ _in : ("%1.2a" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%1.2a]" : GoString) } : T__struct_9),
({ _in : ("%-1.2a" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%-1.2a]" : GoString) } : T__struct_9),
({ _in : ("%+1.2a" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%+1.2a]" : GoString) } : T__struct_9),
({ _in : ("%-+1.2a" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%+-1.2a]" : GoString) } : T__struct_9),
({ _in : ("%-+1.2abc" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%+-1.2a]bc" : GoString) } : T__struct_9),
({ _in : ("%-1.2abc" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%-1.2a]bc" : GoString) } : T__struct_9),
({ _in : ("%a" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%a]]" : GoString) } : T__struct_9),
({ _in : ("%-a" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%-a]]" : GoString) } : T__struct_9),
({ _in : ("%+a" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+a]]" : GoString) } : T__struct_9),
({ _in : ("%#a" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%#a]]" : GoString) } : T__struct_9),
({ _in : ("% a" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[% a]]" : GoString) } : T__struct_9),
({ _in : ("%0a" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%0a]]" : GoString) } : T__struct_9),
({ _in : ("%1.2a" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%1.2a]]" : GoString) } : T__struct_9),
({ _in : ("%-1.2a" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%-1.2a]]" : GoString) } : T__struct_9),
({ _in : ("%+1.2a" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+1.2a]]" : GoString) } : T__struct_9),
({ _in : ("%-+1.2a" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+-1.2a]]" : GoString) } : T__struct_9),
({ _in : ("%-+1.2abc" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+-1.2a]]bc" : GoString) } : T__struct_9),
({ _in : ("%-1.2abc" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%-1.2a]]bc" : GoString) } : T__struct_9),
({ _in : ("%v" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%v]" : GoString) } : T__struct_9),
({ _in : ("%-v" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%-v]" : GoString) } : T__struct_9),
({ _in : ("%+v" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%+v]" : GoString) } : T__struct_9),
({ _in : ("%#v" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%#v]" : GoString) } : T__struct_9),
({ _in : ("% v" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[% v]" : GoString) } : T__struct_9),
({ _in : ("%0v" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%0v]" : GoString) } : T__struct_9),
({ _in : ("%1.2v" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%1.2v]" : GoString) } : T__struct_9),
({ _in : ("%-1.2v" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%-1.2v]" : GoString) } : T__struct_9),
({ _in : ("%+1.2v" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%+1.2v]" : GoString) } : T__struct_9),
({ _in : ("%-+1.2v" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%+-1.2v]" : GoString) } : T__struct_9),
({ _in : ("%-+1.2vbc" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%+-1.2v]bc" : GoString) } : T__struct_9),
({ _in : ("%-1.2vbc" : GoString), _val : Go.toInterface(Go.asInterface((new T_flagPrinter() : T_flagPrinter))), _out : ("[%-1.2v]bc" : GoString) } : T__struct_9),
({ _in : ("%v" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%v]]" : GoString) } : T__struct_9),
({ _in : ("%-v" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%-v]]" : GoString) } : T__struct_9),
({ _in : ("%+v" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+v]]" : GoString) } : T__struct_9),
({ _in : ("%#v" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[1]fmt_test.flagPrinter{[%#v]}" : GoString) } : T__struct_9),
({ _in : ("% v" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[% v]]" : GoString) } : T__struct_9),
({ _in : ("%0v" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%0v]]" : GoString) } : T__struct_9),
({ _in : ("%1.2v" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%1.2v]]" : GoString) } : T__struct_9),
({ _in : ("%-1.2v" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%-1.2v]]" : GoString) } : T__struct_9),
({ _in : ("%+1.2v" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+1.2v]]" : GoString) } : T__struct_9),
({ _in : ("%-+1.2v" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+-1.2v]]" : GoString) } : T__struct_9),
({ _in : ("%-+1.2vbc" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+-1.2v]]bc" : GoString) } : T__struct_9),
({ _in : ("%-1.2vbc" : GoString), _val : Go.toInterface((new GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>(...([].concat([for (i in 0 ... 1) ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter)]))) : GoArray<stdgo.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%-1.2v]]bc" : GoString) } : T__struct_9)) : Slice<T__struct_9>);
/**
    
    
    
**/
private var _scanTests = (new Slice<stdgo.fmt_test.Fmt_test.ScanTest>(
0,
0,
(new stdgo.fmt_test.Fmt_test.ScanTest(("T\n" : GoString), Go.toInterface(Go.pointer(_boolVal)), Go.toInterface(true)) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("F\n" : GoString), Go.toInterface(Go.pointer(_boolVal)), Go.toInterface(false)) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("21\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((21 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("2_1\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((21 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("0\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("000\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("0x10\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((16 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("0x_1_0\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((16 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-0x10\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((-16 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("0377\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((255 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("0_3_7_7\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((255 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("0o377\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((255 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("0o_3_7_7\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((255 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-0377\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((-255 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-0o377\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((-255 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("0\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("0" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("000\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("0" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("0x10\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("16" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("0377\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("255" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("22\n" : GoString), Go.toInterface(Go.pointer(_int8Val)), Go.toInterface((22 : GoInt8))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("23\n" : GoString), Go.toInterface(Go.pointer(_int16Val)), Go.toInterface((23 : GoInt16))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("24\n" : GoString), Go.toInterface(Go.pointer(_int32Val)), Go.toInterface((24 : GoInt32))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("25\n" : GoString), Go.toInterface(Go.pointer(_int64Val)), Go.toInterface((("25" : GoInt64) : GoInt64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("127\n" : GoString), Go.toInterface(Go.pointer(_int8Val)), Go.toInterface((127 : GoInt8))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-21\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((-21 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-22\n" : GoString), Go.toInterface(Go.pointer(_int8Val)), Go.toInterface((-22 : GoInt8))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-23\n" : GoString), Go.toInterface(Go.pointer(_int16Val)), Go.toInterface((-23 : GoInt16))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-24\n" : GoString), Go.toInterface(Go.pointer(_int32Val)), Go.toInterface((-24 : GoInt32))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-25\n" : GoString), Go.toInterface(Go.pointer(_int64Val)), Go.toInterface((("-25" : GoInt64) : GoInt64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-128\n" : GoString), Go.toInterface(Go.pointer(_int8Val)), Go.toInterface((-128 : GoInt8))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("+21\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((21 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("+22\n" : GoString), Go.toInterface(Go.pointer(_int8Val)), Go.toInterface((22 : GoInt8))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("+23\n" : GoString), Go.toInterface(Go.pointer(_int16Val)), Go.toInterface((23 : GoInt16))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("+24\n" : GoString), Go.toInterface(Go.pointer(_int32Val)), Go.toInterface((24 : GoInt32))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("+25\n" : GoString), Go.toInterface(Go.pointer(_int64Val)), Go.toInterface((("25" : GoInt64) : GoInt64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("+127\n" : GoString), Go.toInterface(Go.pointer(_int8Val)), Go.toInterface((127 : GoInt8))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("26\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("26" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("27\n" : GoString), Go.toInterface(Go.pointer(_uint8Val)), Go.toInterface((27 : GoUInt8))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("28\n" : GoString), Go.toInterface(Go.pointer(_uint16Val)), Go.toInterface((28 : GoUInt16))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("29\n" : GoString), Go.toInterface(Go.pointer(_uint32Val)), Go.toInterface((("29" : GoUInt32) : GoUInt32))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("30\n" : GoString), Go.toInterface(Go.pointer(_uint64Val)), Go.toInterface((("30" : GoUInt64) : GoUInt64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("31\n" : GoString), Go.toInterface(Go.pointer(_uintptrVal)), Go.toInterface((31 : GoUIntptr))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("255\n" : GoString), Go.toInterface(Go.pointer(_uint8Val)), Go.toInterface((255 : GoUInt8))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("32767\n" : GoString), Go.toInterface(Go.pointer(_int16Val)), Go.toInterface((32767 : GoInt16))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("2.3\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((2.3 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("2.3e1\n" : GoString), Go.toInterface(Go.pointer(_float32Val)), Go.toInterface(((23 : GoFloat64) : GoFloat32))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("2.3e2\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((230 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("2.3p2\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((9.2 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("2.3p+2\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((9.2 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("2.3p+66\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((1.6971004547812786e+20 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("2.3p-66\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((3.117081245895825e-20 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("0x2.3p-66\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((2.964615315390051e-20 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("2_3.4_5\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((23.45 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("2.35\n" : GoString), Go.toInterface(Go.pointer(_stringVal)), Go.toInterface(("2.35" : GoString))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("2345678\n" : GoString), Go.toInterface((_bytesVal : Ref<Slice<GoUInt8>>)), Go.toInterface((("2345678" : GoString) : Slice<GoByte>))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("(3.4e1-2i)\n" : GoString), Go.toInterface(Go.pointer(_complex128Val)), Go.toInterface(((34 : GoFloat64) + new GoComplex128(0, -2)))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-3.45e1-3i\n" : GoString), Go.toInterface(Go.pointer(_complex64Val)), Go.toInterface(((-34.5 : GoFloat64) + new GoComplex128(0, -3) : GoComplex64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-.45e1-1e2i\n" : GoString), Go.toInterface(Go.pointer(_complex128Val)), Go.toInterface(((-4.5 : GoFloat64) + new GoComplex128(0, -100) : GoComplex128))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-.4_5e1-1E2i\n" : GoString), Go.toInterface(Go.pointer(_complex128Val)), Go.toInterface(((-4.5 : GoFloat64) + new GoComplex128(0, -100) : GoComplex128))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("0x1.0p1+0x1.0P2i\n" : GoString), Go.toInterface(Go.pointer(_complex128Val)), Go.toInterface(((2 : GoFloat64) + new GoComplex128(0, 4) : GoComplex128))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-0x1p1-0x1p2i\n" : GoString), Go.toInterface(Go.pointer(_complex128Val)), Go.toInterface(((-2 : GoFloat64) + new GoComplex128(0, -4) : GoComplex128))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-0x1ep-1-0x1p2i\n" : GoString), Go.toInterface(Go.pointer(_complex128Val)), Go.toInterface(((-15 : GoFloat64) + new GoComplex128(0, -4) : GoComplex128))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-0x1_Ep-1-0x1p0_2i\n" : GoString), Go.toInterface(Go.pointer(_complex128Val)), Go.toInterface(((-15 : GoFloat64) + new GoComplex128(0, -4) : GoComplex128))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("hello\n" : GoString), Go.toInterface(Go.pointer(_stringVal)), Go.toInterface(("hello" : GoString))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("hello\r\n" : GoString), Go.toInterface(Go.pointer(_stringVal)), Go.toInterface(("hello" : GoString))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("27\r\n" : GoString), Go.toInterface(Go.pointer(_uint8Val)), Go.toInterface((27 : GoUInt8))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("true\n" : GoString), Go.toInterface(Go.pointer(_renamedBoolVal)), Go.toInterface((true : T_renamedBool))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("F\n" : GoString), Go.toInterface(Go.pointer(_renamedBoolVal)), Go.toInterface((false : T_renamedBool))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("101\n" : GoString), Go.toInterface(Go.pointer(_renamedIntVal)), Go.toInterface(((101 : stdgo.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("102\n" : GoString), Go.toInterface(Go.pointer(_renamedIntVal)), Go.toInterface(((102 : stdgo.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("103\n" : GoString), Go.toInterface(Go.pointer(_renamedUintVal)), Go.toInterface(((("103" : GoUInt) : stdgo.fmt_test.Fmt_test.T_renamedUint) : T_renamedUint))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("104\n" : GoString), Go.toInterface(Go.pointer(_renamedUintVal)), Go.toInterface(((("104" : GoUInt) : stdgo.fmt_test.Fmt_test.T_renamedUint) : T_renamedUint))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("105\n" : GoString), Go.toInterface(Go.pointer(_renamedInt8Val)), Go.toInterface(((105 : stdgo.fmt_test.Fmt_test.T_renamedInt8) : T_renamedInt8))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("106\n" : GoString), Go.toInterface(Go.pointer(_renamedInt16Val)), Go.toInterface(((106 : stdgo.fmt_test.Fmt_test.T_renamedInt16) : T_renamedInt16))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("107\n" : GoString), Go.toInterface(Go.pointer(_renamedInt32Val)), Go.toInterface(((107 : stdgo.fmt_test.Fmt_test.T_renamedInt32) : T_renamedInt32))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("108\n" : GoString), Go.toInterface(Go.pointer(_renamedInt64Val)), Go.toInterface(((("108" : GoInt64) : stdgo.fmt_test.Fmt_test.T_renamedInt64) : T_renamedInt64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("109\n" : GoString), Go.toInterface(Go.pointer(_renamedUint8Val)), Go.toInterface(((109 : stdgo.fmt_test.Fmt_test.T_renamedUint8) : T_renamedUint8))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("110\n" : GoString), Go.toInterface(Go.pointer(_renamedUint16Val)), Go.toInterface(((110 : stdgo.fmt_test.Fmt_test.T_renamedUint16) : T_renamedUint16))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("111\n" : GoString), Go.toInterface(Go.pointer(_renamedUint32Val)), Go.toInterface(((("111" : GoUInt32) : stdgo.fmt_test.Fmt_test.T_renamedUint32) : T_renamedUint32))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("112\n" : GoString), Go.toInterface(Go.pointer(_renamedUint64Val)), Go.toInterface(((("112" : GoUInt64) : stdgo.fmt_test.Fmt_test.T_renamedUint64) : T_renamedUint64))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("113\n" : GoString), Go.toInterface(Go.pointer(_renamedUintptrVal)), Go.toInterface(((113 : stdgo.fmt_test.Fmt_test.T_renamedUintptr) : T_renamedUintptr))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("114\n" : GoString), Go.toInterface(Go.pointer(_renamedStringVal)), Go.toInterface((("114" : GoString) : T_renamedString))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("115\n" : GoString), Go.toInterface((_renamedBytesVal : Ref<stdgo.fmt_test.Fmt_test.T_renamedBytes>)), Go.toInterface(((("115" : GoString) : Slice<GoByte>) : T_renamedBytes))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("  vvv " : GoString), Go.toInterface(Go.pointer(_xVal)), Go.toInterface(Go.asInterface((("vvv" : GoString) : Xs)))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest((" 1234hello" : GoString), Go.toInterface(Go.asInterface((_intStringVal : Ref<stdgo.fmt_test.Fmt_test.IntString>))), Go.toInterface(Go.asInterface((new IntString((1234 : GoInt), ("hello" : GoString)) : IntString)))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("2147483648\n" : GoString), Go.toInterface(Go.pointer(_int64Val)), Go.toInterface((("2147483648" : GoInt64) : GoInt64))) : stdgo.fmt_test.Fmt_test.ScanTest)) : Slice<stdgo.fmt_test.Fmt_test.ScanTest>);
/**
    
    
    
**/
private var _scanfTests = (new Slice<stdgo.fmt_test.Fmt_test.ScanfTest>(
0,
0,
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("TRUE\n" : GoString), Go.toInterface(Go.pointer(_boolVal)), Go.toInterface(true)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%t" : GoString), ("false\n" : GoString), Go.toInterface(Go.pointer(_boolVal)), Go.toInterface(false)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("-71\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((-71 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("-7_1\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((-71 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("0b111\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((7 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("0b_1_1_1\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((7 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("0377\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((255 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("0_3_7_7\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((255 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("0o377\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((255 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("0o_3_7_7\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((255 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("0x44\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((68 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("0x_4_4\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((68 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("72\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((72 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%c" : GoString), ("a\n" : GoString), Go.toInterface(Go.pointer(_runeVal)), Go.toInterface((97 : GoInt32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%c" : GoString), ("偲\n" : GoString), Go.toInterface(Go.pointer(_runeVal)), Go.toInterface((20594 : GoInt32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%c" : GoString), ("ሴ\n" : GoString), Go.toInterface(Go.pointer(_runeVal)), Go.toInterface((4660 : GoInt32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("73\n" : GoString), Go.toInterface(Go.pointer(_int8Val)), Go.toInterface((73 : GoInt8))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("+74\n" : GoString), Go.toInterface(Go.pointer(_int16Val)), Go.toInterface((74 : GoInt16))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("75\n" : GoString), Go.toInterface(Go.pointer(_int32Val)), Go.toInterface((75 : GoInt32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("76\n" : GoString), Go.toInterface(Go.pointer(_int64Val)), Go.toInterface((("76" : GoInt64) : GoInt64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%b" : GoString), ("1001001\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((73 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%o" : GoString), ("075\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((61 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%x" : GoString), ("a75\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((2677 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("71\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("71" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("72\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("72" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("7_2\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("7" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("73\n" : GoString), Go.toInterface(Go.pointer(_uint8Val)), Go.toInterface((73 : GoUInt8))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("74\n" : GoString), Go.toInterface(Go.pointer(_uint16Val)), Go.toInterface((74 : GoUInt16))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("75\n" : GoString), Go.toInterface(Go.pointer(_uint32Val)), Go.toInterface((("75" : GoUInt32) : GoUInt32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("76\n" : GoString), Go.toInterface(Go.pointer(_uint64Val)), Go.toInterface((("76" : GoUInt64) : GoUInt64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("77\n" : GoString), Go.toInterface(Go.pointer(_uintptrVal)), Go.toInterface((77 : GoUIntptr))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%b" : GoString), ("1001001\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("73" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%b" : GoString), ("100_1001\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("4" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%o" : GoString), ("075\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("61" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%o" : GoString), ("07_5\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("7" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%x" : GoString), ("a75\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("2677" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%x" : GoString), ("A75\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("2677" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%x" : GoString), ("A7_5\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("167" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%U" : GoString), ("U+1234\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((4660 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%U" : GoString), ("U+4567\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("17767" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%e" : GoString), ("2.3\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((2.3 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%E" : GoString), ("2.3e1\n" : GoString), Go.toInterface(Go.pointer(_float32Val)), Go.toInterface(((23 : GoFloat64) : GoFloat32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%f" : GoString), ("2.3e2\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((230 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%g" : GoString), ("2.3p2\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((9.2 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%G" : GoString), ("2.3p+2\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((9.2 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("2.3p+66\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((1.6971004547812786e+20 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%f" : GoString), ("2.3p-66\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((3.117081245895825e-20 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%G" : GoString), ("0x2.3p-66\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((2.964615315390051e-20 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%E" : GoString), ("2_3.4_5\n" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((23.45 : GoFloat64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%s" : GoString), ("using-%s\n" : GoString), Go.toInterface(Go.pointer(_stringVal)), Go.toInterface(("using-%s" : GoString))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%x" : GoString), ("7573696e672d2578\n" : GoString), Go.toInterface(Go.pointer(_stringVal)), Go.toInterface(("using-%x" : GoString))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%X" : GoString), ("7573696E672D2558\n" : GoString), Go.toInterface(Go.pointer(_stringVal)), Go.toInterface(("using-%X" : GoString))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%q" : GoString), ("\"quoted\\twith\\\\do\\u0075bl\\x65s\"\n" : GoString), Go.toInterface(Go.pointer(_stringVal)), Go.toInterface(("quoted\twith\\doubles" : GoString))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%q" : GoString), ("`quoted with backs`\n" : GoString), Go.toInterface(Go.pointer(_stringVal)), Go.toInterface(("quoted with backs" : GoString))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%s" : GoString), ("bytes-%s\n" : GoString), Go.toInterface((_bytesVal : Ref<Slice<GoUInt8>>)), Go.toInterface((("bytes-%s" : GoString) : Slice<GoByte>))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%x" : GoString), ("62797465732d2578\n" : GoString), Go.toInterface((_bytesVal : Ref<Slice<GoUInt8>>)), Go.toInterface((("bytes-%x" : GoString) : Slice<GoByte>))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%X" : GoString), ("62797465732D2558\n" : GoString), Go.toInterface((_bytesVal : Ref<Slice<GoUInt8>>)), Go.toInterface((("bytes-%X" : GoString) : Slice<GoByte>))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%q" : GoString), ("\"bytes\\rwith\\vdo\\u0075bl\\x65s\"\n" : GoString), Go.toInterface((_bytesVal : Ref<Slice<GoUInt8>>)), Go.toInterface((("bytes\rwith\x0Bdoubles" : GoString) : Slice<GoByte>))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%q" : GoString), ("`bytes with backs`\n" : GoString), Go.toInterface((_bytesVal : Ref<Slice<GoUInt8>>)), Go.toInterface((("bytes with backs" : GoString) : Slice<GoByte>))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v\n" : GoString), ("true\n" : GoString), Go.toInterface(Go.pointer(_renamedBoolVal)), Go.toInterface((true : T_renamedBool))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%t\n" : GoString), ("F\n" : GoString), Go.toInterface(Go.pointer(_renamedBoolVal)), Go.toInterface((false : T_renamedBool))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("101\n" : GoString), Go.toInterface(Go.pointer(_renamedIntVal)), Go.toInterface(((101 : stdgo.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%c" : GoString), ("ā\n" : GoString), Go.toInterface(Go.pointer(_renamedIntVal)), Go.toInterface(((257 : stdgo.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%o" : GoString), ("0146\n" : GoString), Go.toInterface(Go.pointer(_renamedIntVal)), Go.toInterface(((102 : stdgo.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("103\n" : GoString), Go.toInterface(Go.pointer(_renamedUintVal)), Go.toInterface(((("103" : GoUInt) : stdgo.fmt_test.Fmt_test.T_renamedUint) : T_renamedUint))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("104\n" : GoString), Go.toInterface(Go.pointer(_renamedUintVal)), Go.toInterface(((("104" : GoUInt) : stdgo.fmt_test.Fmt_test.T_renamedUint) : T_renamedUint))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("105\n" : GoString), Go.toInterface(Go.pointer(_renamedInt8Val)), Go.toInterface(((105 : stdgo.fmt_test.Fmt_test.T_renamedInt8) : T_renamedInt8))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("106\n" : GoString), Go.toInterface(Go.pointer(_renamedInt16Val)), Go.toInterface(((106 : stdgo.fmt_test.Fmt_test.T_renamedInt16) : T_renamedInt16))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("107\n" : GoString), Go.toInterface(Go.pointer(_renamedInt32Val)), Go.toInterface(((107 : stdgo.fmt_test.Fmt_test.T_renamedInt32) : T_renamedInt32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("108\n" : GoString), Go.toInterface(Go.pointer(_renamedInt64Val)), Go.toInterface(((("108" : GoInt64) : stdgo.fmt_test.Fmt_test.T_renamedInt64) : T_renamedInt64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%x" : GoString), ("6D\n" : GoString), Go.toInterface(Go.pointer(_renamedUint8Val)), Go.toInterface(((109 : stdgo.fmt_test.Fmt_test.T_renamedUint8) : T_renamedUint8))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%o" : GoString), ("0156\n" : GoString), Go.toInterface(Go.pointer(_renamedUint16Val)), Go.toInterface(((110 : stdgo.fmt_test.Fmt_test.T_renamedUint16) : T_renamedUint16))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("111\n" : GoString), Go.toInterface(Go.pointer(_renamedUint32Val)), Go.toInterface(((("111" : GoUInt32) : stdgo.fmt_test.Fmt_test.T_renamedUint32) : T_renamedUint32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("112\n" : GoString), Go.toInterface(Go.pointer(_renamedUint64Val)), Go.toInterface(((("112" : GoUInt64) : stdgo.fmt_test.Fmt_test.T_renamedUint64) : T_renamedUint64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("113\n" : GoString), Go.toInterface(Go.pointer(_renamedUintptrVal)), Go.toInterface(((113 : stdgo.fmt_test.Fmt_test.T_renamedUintptr) : T_renamedUintptr))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%s" : GoString), ("114\n" : GoString), Go.toInterface(Go.pointer(_renamedStringVal)), Go.toInterface((("114" : GoString) : T_renamedString))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%q" : GoString), ("\"1155\"\n" : GoString), Go.toInterface((_renamedBytesVal : Ref<stdgo.fmt_test.Fmt_test.T_renamedBytes>)), Go.toInterface(((("1155" : GoString) : Slice<GoByte>) : T_renamedBytes))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%g" : GoString), ("116e1\n" : GoString), Go.toInterface(Go.pointer(_renamedFloat32Val)), Go.toInterface(((1160 : GoFloat64) : T_renamedFloat32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%g" : GoString), ("-11.7e+1" : GoString), Go.toInterface(Go.pointer(_renamedFloat64Val)), Go.toInterface(((-117 : GoFloat64) : T_renamedFloat64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%g" : GoString), ("11+6e1i\n" : GoString), Go.toInterface(Go.pointer(_renamedComplex64Val)), Go.toInterface(((11 : GoFloat64) + new GoComplex128(0, 60) : T_renamedComplex64))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%g" : GoString), ("-11.+7e+1i" : GoString), Go.toInterface(Go.pointer(_renamedComplex128Val)), Go.toInterface(((-11 : GoFloat64) + new GoComplex128(0, 70) : T_renamedComplex128))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("here is\tthe value:%d" : GoString), ("here is   the\tvalue:118\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((118 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%% %%:%d" : GoString), ("% %:119\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((119 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d%%" : GoString), ("42%" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((42 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%x" : GoString), ("FFFFFFFF\n" : GoString), Go.toInterface(Go.pointer(_uint32Val)), Go.toInterface((("4294967295" : GoUInt32) : GoUInt32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%s" : GoString), ("  sss " : GoString), Go.toInterface(Go.pointer(_xVal)), Go.toInterface(Go.asInterface((("sss" : GoString) : Xs)))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%2s" : GoString), ("sssss" : GoString), Go.toInterface(Go.pointer(_xVal)), Go.toInterface(Go.asInterface((("ss" : GoString) : Xs)))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d\n" : GoString), ("27\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d\n" : GoString), ("28 \n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((28 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("0" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%v" : GoString), ("0" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("0" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%c" : GoString), (" " : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("32" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%c" : GoString), ("\t" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("9" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%c" : GoString), ("\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("10" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d%%" : GoString), ("23%\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("23" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%%%d" : GoString), ("%23\n" : GoString), Go.toInterface(Go.pointer(_uintVal)), Go.toInterface((("23" : GoUInt) : GoUInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("27" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), ("27 " : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), (" 27" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d" : GoString), (" 27 " : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%d" : GoString), ("X27" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%d" : GoString), ("X27 " : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%d" : GoString), ("X 27" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%d" : GoString), ("X 27 " : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %d" : GoString), ("X27" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %d" : GoString), ("X27 " : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %d" : GoString), ("X 27" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %d" : GoString), ("X 27 " : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%dX" : GoString), ("27X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%dX" : GoString), ("27 X" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%dX" : GoString), (" 27X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%dX" : GoString), (" 27 X" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d X" : GoString), ("27X" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d X" : GoString), ("27 X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d X" : GoString), (" 27X" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d X" : GoString), (" 27 X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %d X" : GoString), ("X27X" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %d X" : GoString), ("X27 X" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %d X" : GoString), ("X 27X" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %d X" : GoString), ("X 27 X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %s X" : GoString), ("X27X" : GoString), Go.toInterface(Go.pointer(_stringVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %s X" : GoString), ("X27 X" : GoString), Go.toInterface(Go.pointer(_stringVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %s X" : GoString), ("X 27X" : GoString), Go.toInterface(Go.pointer(_stringVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %s X" : GoString), ("X 27 X" : GoString), Go.toInterface(Go.pointer(_stringVal)), Go.toInterface(("27" : GoString))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%sX" : GoString), ("X27X" : GoString), Go.toInterface(Go.pointer(_stringVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%sX" : GoString), ("X27 X" : GoString), Go.toInterface(Go.pointer(_stringVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%sX" : GoString), ("X 27X" : GoString), Go.toInterface(Go.pointer(_stringVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%sX" : GoString), ("X 27 X" : GoString), Go.toInterface(Go.pointer(_stringVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%s" : GoString), ("X27" : GoString), Go.toInterface(Go.pointer(_stringVal)), Go.toInterface(("27" : GoString))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%s" : GoString), ("X27 " : GoString), Go.toInterface(Go.pointer(_stringVal)), Go.toInterface(("27" : GoString))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%s" : GoString), ("X 27" : GoString), Go.toInterface(Go.pointer(_stringVal)), Go.toInterface(("27" : GoString))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%s" : GoString), ("X 27 " : GoString), Go.toInterface(Go.pointer(_stringVal)), Go.toInterface(("27" : GoString))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX" : GoString), ("X27X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX" : GoString), ("X27 X" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX" : GoString), ("X 27X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX" : GoString), ("X 27 X" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX" : GoString), ("X27X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX" : GoString), ("X27X " : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX" : GoString), (" X27X" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX" : GoString), (" X27X " : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX\n" : GoString), ("X27X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX \n" : GoString), ("X27X " : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX\n" : GoString), ("X27X\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX\n" : GoString), ("X27X \n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX \n" : GoString), ("X27X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX \n" : GoString), ("X27X " : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX \n" : GoString), ("X27X\n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX \n" : GoString), ("X27X \n" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%c" : GoString), ("X\n" : GoString), Go.toInterface(Go.pointer(_runeVal)), Go.toInterface((10 : GoInt32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%c" : GoString), ("X \n" : GoString), Go.toInterface(Go.pointer(_runeVal)), Go.toInterface((32 : GoInt32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %c" : GoString), ("X!" : GoString), Go.toInterface(Go.pointer(_runeVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %c" : GoString), ("X\n" : GoString), Go.toInterface(Go.pointer(_runeVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %c" : GoString), ("X !" : GoString), Go.toInterface(Go.pointer(_runeVal)), Go.toInterface((33 : GoInt32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X %c" : GoString), ("X \n" : GoString), Go.toInterface(Go.pointer(_runeVal)), Go.toInterface((10 : GoInt32))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest((" X%dX" : GoString), ("X27X" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest((" X%dX" : GoString), ("X27X " : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest((" X%dX" : GoString), (" X27X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest((" X%dX" : GoString), (" X27X " : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX " : GoString), ("X27X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX " : GoString), ("X27X " : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX " : GoString), (" X27X" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("X%dX " : GoString), (" X27X " : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest((" X%dX " : GoString), ("X27X" : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest((" X%dX " : GoString), ("X27X " : GoString), Go.toInterface(Go.pointer(_intVal)), (null : AnyInterface)) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest((" X%dX " : GoString), (" X27X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest((" X%dX " : GoString), (" X27X " : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%d\nX" : GoString), ("27\nX" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest),
(new stdgo.fmt_test.Fmt_test.ScanfTest(("%dX\n X" : GoString), ("27X\n X" : GoString), Go.toInterface(Go.pointer(_intVal)), Go.toInterface((27 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanfTest)) : Slice<stdgo.fmt_test.Fmt_test.ScanfTest>);
/**
    
    
    
**/
private var _overflowTests = (new Slice<stdgo.fmt_test.Fmt_test.ScanTest>(
0,
0,
(new stdgo.fmt_test.Fmt_test.ScanTest(("128" : GoString), Go.toInterface(Go.pointer(_int8Val)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("32768" : GoString), Go.toInterface(Go.pointer(_int16Val)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-129" : GoString), Go.toInterface(Go.pointer(_int8Val)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("-32769" : GoString), Go.toInterface(Go.pointer(_int16Val)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("256" : GoString), Go.toInterface(Go.pointer(_uint8Val)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("65536" : GoString), Go.toInterface(Go.pointer(_uint16Val)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("1e100" : GoString), Go.toInterface(Go.pointer(_float32Val)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("1e500" : GoString), Go.toInterface(Go.pointer(_float64Val)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("(1e100+0i)" : GoString), Go.toInterface(Go.pointer(_complex64Val)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("(1+1e100i)" : GoString), Go.toInterface(Go.pointer(_complex64Val)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest),
(new stdgo.fmt_test.Fmt_test.ScanTest(("(1-1e500i)" : GoString), Go.toInterface(Go.pointer(_complex128Val)), Go.toInterface((0 : GoInt))) : stdgo.fmt_test.Fmt_test.ScanTest)) : Slice<stdgo.fmt_test.Fmt_test.ScanTest>);
/**
    
    
    
**/
private var _multiTests = (new Slice<stdgo.fmt_test.Fmt_test.ScanfMultiTest>(
0,
0,
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(Go.str(), Go.str(), (new Slice<AnyInterface>(0, 0) : Slice<AnyInterface>), (new Slice<AnyInterface>(0, 0) : Slice<AnyInterface>), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%d" : GoString), ("23" : GoString), _args(Go.toInterface(Go.pointer(_i))), _args(Go.toInterface((23 : GoInt))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%2s%3s" : GoString), ("22333" : GoString), _args(Go.toInterface(Go.pointer(_s)), Go.toInterface(Go.pointer(_t))), _args(Go.toInterface(("22" : GoString)), Go.toInterface(("333" : GoString))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%2d%3d" : GoString), ("44555" : GoString), _args(Go.toInterface(Go.pointer(_i)), Go.toInterface(Go.pointer(_j))), _args(Go.toInterface((44 : GoInt)), Go.toInterface((555 : GoInt))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%2d.%3d" : GoString), ("66.777" : GoString), _args(Go.toInterface(Go.pointer(_i)), Go.toInterface(Go.pointer(_j))), _args(Go.toInterface((66 : GoInt)), Go.toInterface((777 : GoInt))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%d, %d" : GoString), ("23, 18" : GoString), _args(Go.toInterface(Go.pointer(_i)), Go.toInterface(Go.pointer(_j))), _args(Go.toInterface((23 : GoInt)), Go.toInterface((18 : GoInt))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%3d22%3d" : GoString), ("33322333" : GoString), _args(Go.toInterface(Go.pointer(_i)), Go.toInterface(Go.pointer(_j))), _args(Go.toInterface((333 : GoInt)), Go.toInterface((333 : GoInt))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%6vX=%3fY" : GoString), ("3+2iX=2.5Y" : GoString), _args(Go.toInterface(Go.pointer(_c)), Go.toInterface(Go.pointer(_f))), _args(Go.toInterface(((3 : GoFloat64) + new GoComplex128(0, 2))), Go.toInterface((2.5 : GoFloat64))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%d%s" : GoString), ("123abc" : GoString), _args(Go.toInterface(Go.pointer(_i)), Go.toInterface(Go.pointer(_s))), _args(Go.toInterface((123 : GoInt)), Go.toInterface(("abc" : GoString))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%c%c%c" : GoString), ("2僂X" : GoString), _args(Go.toInterface(Go.pointer(_r1)), Go.toInterface(Go.pointer(_r2)), Go.toInterface(Go.pointer(_r3))), _args(Go.toInterface((50 : GoInt32)), Go.toInterface((20674 : GoInt32)), Go.toInterface((88 : GoInt32))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%5s%d" : GoString), (" 1234567 " : GoString), _args(Go.toInterface(Go.pointer(_s)), Go.toInterface(Go.pointer(_i))), _args(Go.toInterface(("12345" : GoString)), Go.toInterface((67 : GoInt))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%5s%d" : GoString), (" 12 34 567 " : GoString), _args(Go.toInterface(Go.pointer(_s)), Go.toInterface(Go.pointer(_i))), _args(Go.toInterface(("12" : GoString)), Go.toInterface((34 : GoInt))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%e%f" : GoString), ("eefffff" : GoString), _args(Go.toInterface(Go.pointer(_x)), Go.toInterface(Go.pointer(_y))), _args(Go.toInterface(Go.asInterface((("ee" : GoString) : Xs))), Go.toInterface(Go.asInterface((("fffff" : GoString) : Xs)))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%4v%s" : GoString), ("12abcd" : GoString), _args(Go.toInterface(Go.asInterface((_z : Ref<stdgo.fmt_test.Fmt_test.IntString>))), Go.toInterface(Go.pointer(_s))), _args(Go.toInterface(Go.asInterface((new IntString((12 : GoInt), ("ab" : GoString)) : IntString))), Go.toInterface(("cd" : GoString))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%t" : GoString), ("23 18" : GoString), _args(Go.toInterface(Go.pointer(_i))), (null : Slice<AnyInterface>), ("bad verb" : GoString)) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%d %d %d" : GoString), ("23 18" : GoString), _args(Go.toInterface(Go.pointer(_i)), Go.toInterface(Go.pointer(_j))), _args(Go.toInterface((23 : GoInt)), Go.toInterface((18 : GoInt))), ("too few operands" : GoString)) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%d %d" : GoString), ("23 18 27" : GoString), _args(Go.toInterface(Go.pointer(_i)), Go.toInterface(Go.pointer(_j)), Go.toInterface(Go.pointer(_k))), _args(Go.toInterface((23 : GoInt)), Go.toInterface((18 : GoInt))), ("too many operands" : GoString)) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%c" : GoString), ("Ā" : GoString), _args(Go.toInterface(Go.pointer(_int8Val))), (null : Slice<AnyInterface>), ("overflow" : GoString)) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("X%d" : GoString), ("10X" : GoString), _args(Go.toInterface(Go.pointer(_intVal))), (null : Slice<AnyInterface>), ("input does not match format" : GoString)) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%d%" : GoString), ("42%" : GoString), _args(Go.toInterface(Go.pointer(_intVal))), _args(Go.toInterface((42 : GoInt))), ("missing verb: % at end of format string" : GoString)) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%d% " : GoString), ("42%" : GoString), _args(Go.toInterface(Go.pointer(_intVal))), _args(Go.toInterface((42 : GoInt))), ("too few operands for format \'% \'" : GoString)) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%%%d" : GoString), ("xxx 42" : GoString), _args(Go.toInterface(Go.pointer(_intVal))), _args(Go.toInterface((42 : GoInt))), ("missing literal %" : GoString)) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%%%d" : GoString), ("x42" : GoString), _args(Go.toInterface(Go.pointer(_intVal))), _args(Go.toInterface((42 : GoInt))), ("missing literal %" : GoString)) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%%%d" : GoString), ("42" : GoString), _args(Go.toInterface(Go.pointer(_intVal))), _args(Go.toInterface((42 : GoInt))), ("missing literal %" : GoString)) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%c%c%c" : GoString), Go.str(194, "X", 194), _args(Go.toInterface(Go.pointer(_r1)), Go.toInterface(Go.pointer(_r2)), Go.toInterface(Go.pointer(_r3))), _args(Go.toInterface((65533 : GoInt32)), Go.toInterface((88 : GoInt32)), Go.toInterface((65533 : GoInt32))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo.fmt_test.Fmt_test.ScanfMultiTest(("%v%v" : GoString), ("FALSE23" : GoString), _args(Go.toInterface(Go.pointer(_truth)), Go.toInterface(Go.pointer(_i))), _args(Go.toInterface(false), Go.toInterface((23 : GoInt))), Go.str()) : stdgo.fmt_test.Fmt_test.ScanfMultiTest)) : Slice<stdgo.fmt_test.Fmt_test.ScanfMultiTest>);
/**
    
    
    
**/
private var _readers = (new Slice<T__struct_11>(0, 0, ({ _name : ("StringReader" : GoString), _f : function(_s:GoString):stdgo.io.Io.Reader {
        return Go.asInterface(stdgo.strings.Strings.newReader(_s));
    } } : T__struct_11), ({ _name : ("ReaderOnly" : GoString), _f : function(_s:GoString):stdgo.io.Io.Reader {
        return Go.asInterface(({ reader : Go.asInterface(stdgo.strings.Strings.newReader(_s)) } : T__struct_12));
    } } : T__struct_11), ({ _name : ("OneByteReader" : GoString), _f : function(_s:GoString):stdgo.io.Io.Reader {
        return stdgo.testing.iotest.Iotest.oneByteReader(Go.asInterface(stdgo.strings.Strings.newReader(_s)));
    } } : T__struct_11), ({ _name : ("DataErrReader" : GoString), _f : function(_s:GoString):stdgo.io.Io.Reader {
        return stdgo.testing.iotest.Iotest.dataErrReader(Go.asInterface(stdgo.strings.Strings.newReader(_s)));
    } } : T__struct_11)) : Slice<T__struct_11>);
/**
    
    
    
**/
private var _eofTests = (new Slice<T__struct_13>(
0,
0,
({ _format : ("%s" : GoString), _v : Go.toInterface(Go.pointer(_stringVal)) } : T__struct_13),
({ _format : ("%q" : GoString), _v : Go.toInterface(Go.pointer(_stringVal)) } : T__struct_13),
({ _format : ("%x" : GoString), _v : Go.toInterface(Go.pointer(_stringVal)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface(Go.pointer(_stringVal)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface((_bytesVal : Ref<Slice<GoUInt8>>)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface(Go.pointer(_intVal)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface(Go.pointer(_uintVal)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface(Go.pointer(_boolVal)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface(Go.pointer(_float32Val)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface(Go.pointer(_complex64Val)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface(Go.pointer(_renamedStringVal)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface((_renamedBytesVal : Ref<stdgo.fmt_test.Fmt_test.T_renamedBytes>)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface(Go.pointer(_renamedIntVal)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface(Go.pointer(_renamedUintVal)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface(Go.pointer(_renamedBoolVal)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface(Go.pointer(_renamedFloat32Val)) } : T__struct_13),
({ _format : ("%v" : GoString), _v : Go.toInterface(Go.pointer(_renamedComplex64Val)) } : T__struct_13)) : Slice<T__struct_13>);
/**
    
    
    
**/
private var _pValue : P = ((0 : GoInt) : stdgo.fmt_test.Fmt_test.P);
/**
    
    
    
**/
private var _mallocBuf : stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
/**
    
    
    // A pointer so we know the interface value won't allocate.
**/
private var _mallocPointer : Pointer<GoInt> = (null : Pointer<GoInt>);
/**
    
    
    
**/
private var _1 : stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
/**
    
    
    
**/
private final _appendResult = ("hello world, 23" : GoString);
/**
    
    
    
**/
private final _hello = ("hello " : GoString);
/**
    
    
    
**/
private var _boolVal : Bool = false;
/**
    
    
    
**/
private var _intVal : GoInt = (0 : GoInt);
/**
    
    
    
**/
private var _int8Val : GoInt8 = (0 : GoInt8);
/**
    
    
    
**/
private var _int16Val : GoInt16 = (0 : GoInt16);
/**
    
    
    
**/
private var _int32Val : GoInt32 = (0 : GoInt32);
/**
    
    
    
**/
private var _int64Val : GoInt64 = (0 : GoInt64);
/**
    
    
    
**/
private var _uintVal : GoUInt = (0 : GoUInt);
/**
    
    
    
**/
private var _uint8Val : GoUInt8 = (0 : GoUInt8);
/**
    
    
    
**/
private var _uint16Val : GoUInt16 = (0 : GoUInt16);
/**
    
    
    
**/
private var _uint32Val : GoUInt32 = (0 : GoUInt32);
/**
    
    
    
**/
private var _uint64Val : GoUInt64 = (0 : GoUInt64);
/**
    
    
    
**/
private var _uintptrVal : GoUIntptr = (0 : GoUIntptr);
/**
    
    
    
**/
private var _float32Val : GoFloat32 = (0 : GoFloat32);
/**
    
    
    
**/
private var _float64Val : GoFloat64 = (0 : GoFloat64);
/**
    
    
    
**/
private var _stringVal : GoString = ("" : GoString);
/**
    
    
    
**/
private var _bytesVal : Slice<GoByte> = (null : Slice<GoUInt8>);
/**
    
    
    
**/
private var _runeVal : GoRune = (0 : GoInt32);
/**
    
    
    
**/
private var _complex64Val : GoComplex64 = new GoComplex64(0, 0);
/**
    
    
    
**/
private var _complex128Val : GoComplex128 = new GoComplex128(0, 0);
/**
    
    
    
**/
private var _renamedBoolVal : T_renamedBool = (false : stdgo.fmt_test.Fmt_test.T_renamedBool);
/**
    
    
    
**/
private var _renamedIntVal : T_renamedInt = ((0 : GoInt) : stdgo.fmt_test.Fmt_test.T_renamedInt);
/**
    
    
    
**/
private var _renamedInt8Val : T_renamedInt8 = ((0 : GoInt8) : stdgo.fmt_test.Fmt_test.T_renamedInt8);
/**
    
    
    
**/
private var _renamedInt16Val : T_renamedInt16 = ((0 : GoInt16) : stdgo.fmt_test.Fmt_test.T_renamedInt16);
/**
    
    
    
**/
private var _renamedInt32Val : T_renamedInt32 = ((0 : GoInt32) : stdgo.fmt_test.Fmt_test.T_renamedInt32);
/**
    
    
    
**/
private var _renamedInt64Val : T_renamedInt64 = ((0 : GoInt64) : stdgo.fmt_test.Fmt_test.T_renamedInt64);
/**
    
    
    
**/
private var _renamedUintVal : T_renamedUint = ((0 : GoUInt) : stdgo.fmt_test.Fmt_test.T_renamedUint);
/**
    
    
    
**/
private var _renamedUint8Val : T_renamedUint8 = ((0 : GoUInt8) : stdgo.fmt_test.Fmt_test.T_renamedUint8);
/**
    
    
    
**/
private var _renamedUint16Val : T_renamedUint16 = ((0 : GoUInt16) : stdgo.fmt_test.Fmt_test.T_renamedUint16);
/**
    
    
    
**/
private var _renamedUint32Val : T_renamedUint32 = ((0 : GoUInt32) : stdgo.fmt_test.Fmt_test.T_renamedUint32);
/**
    
    
    
**/
private var _renamedUint64Val : T_renamedUint64 = ((0 : GoUInt64) : stdgo.fmt_test.Fmt_test.T_renamedUint64);
/**
    
    
    
**/
private var _renamedUintptrVal : T_renamedUintptr = ((0 : GoUIntptr) : stdgo.fmt_test.Fmt_test.T_renamedUintptr);
/**
    
    
    
**/
private var _renamedStringVal : T_renamedString = (("" : GoString) : stdgo.fmt_test.Fmt_test.T_renamedString);
/**
    
    
    
**/
private var _renamedBytesVal : T_renamedBytes = new stdgo.fmt_test.Fmt_test.T_renamedBytes(0, 0);
/**
    
    
    
**/
private var _renamedFloat32Val : T_renamedFloat32 = ((0 : GoFloat32) : stdgo.fmt_test.Fmt_test.T_renamedFloat32);
/**
    
    
    
**/
private var _renamedFloat64Val : T_renamedFloat64 = ((0 : GoFloat64) : stdgo.fmt_test.Fmt_test.T_renamedFloat64);
/**
    
    
    
**/
private var _renamedComplex64Val : T_renamedComplex64 = (new GoComplex64(0, 0) : stdgo.fmt_test.Fmt_test.T_renamedComplex64);
/**
    
    
    
**/
private var _renamedComplex128Val : T_renamedComplex128 = (new GoComplex128(0, 0) : stdgo.fmt_test.Fmt_test.T_renamedComplex128);
/**
    
    
    
**/
private var _xVal : Xs = (("" : GoString) : stdgo.fmt_test.Fmt_test.Xs);
/**
    
    
    
**/
private var _intStringVal : IntString = ({} : stdgo.fmt_test.Fmt_test.IntString);
/**
    
    
    
**/
private var _truth : Bool = false;
/**
    
    
    
**/
private var _i : GoInt = (0 : GoInt);
/**
    
    
    
**/
private var _j : GoInt = (0 : GoInt);
/**
    
    
    
**/
private var _k : GoInt = (0 : GoInt);
/**
    
    
    
**/
private var _f : GoFloat64 = (0 : GoFloat64);
/**
    
    
    
**/
private var _s : GoString = ("" : GoString);
/**
    
    
    
**/
private var _t : GoString = ("" : GoString);
/**
    
    
    
**/
private var _c : GoComplex128 = new GoComplex128(0, 0);
/**
    
    
    
**/
private var _x : Xs = (("" : GoString) : stdgo.fmt_test.Fmt_test.Xs);
/**
    
    
    
**/
private var _y : Xs = (("" : GoString) : stdgo.fmt_test.Fmt_test.Xs);
/**
    
    
    
**/
private var _z : IntString = ({} : stdgo.fmt_test.Fmt_test.IntString);
/**
    
    
    
**/
private var _r1 : GoRune = (0 : GoInt32);
/**
    
    
    
**/
private var _r2 : GoRune = (0 : GoInt32);
/**
    
    
    
**/
private var _r3 : GoRune = (0 : GoInt32);
/**
    // 800 is small enough to not overflow the stack when using gccgo on a
    // platform that does not support split stack.
    
    
**/
private final _intCount = ("800" : GoUInt64);
/**
    
    
    
**/
private var _2 : State = Go.asInterface((new T_testState() : T_testState));
/**
    
    
    
**/
final no = ("0" : GoUInt64);
/**
    
    
    
**/
private typedef T__interface_0 = StructType & {
    /**
        
        
        
    **/
    public function unwrap():Slice<Error>;
};
/**
    
    
    
**/
@:structInit class A {
    public var _i : GoInt = 0;
    public var _j : GoUInt = 0;
    public var _s : GoString = "";
    public var _x : Slice<GoInt> = (null : Slice<GoInt>);
    public function new(?_i:GoInt, ?_j:GoUInt, ?_s:GoString, ?_x:Slice<GoInt>) {
        if (_i != null) this._i = _i;
        if (_j != null) this._j = _j;
        if (_s != null) this._s = _s;
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new A(_i, _j, _s, _x);
    }
}
/**
    
    
    
**/
@:structInit class B {
    public var i : stdgo.fmt_test.Fmt_test.I = ((0 : GoInt) : stdgo.fmt_test.Fmt_test.I);
    public var _j : GoInt = 0;
    public function new(?i:stdgo.fmt_test.Fmt_test.I, ?_j:GoInt) {
        if (i != null) this.i = i;
        if (_j != null) this._j = _j;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new B(i, _j);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.fmt_test.Fmt_test.C_static_extension) class C {
    public var _i : GoInt = 0;
    @:embedded
    public var b : stdgo.fmt_test.Fmt_test.B = ({} : stdgo.fmt_test.Fmt_test.B);
    public function new(?_i:GoInt, ?b:stdgo.fmt_test.Fmt_test.B) {
        if (_i != null) this._i = _i;
        if (b != null) this.b = b;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new C(_i, b);
    }
}
/**
    
    
    
**/
@:structInit class S {
    public var f : stdgo.fmt_test.Fmt_test.F = ((0 : GoInt) : stdgo.fmt_test.Fmt_test.F);
    public var g : stdgo.fmt_test.Fmt_test.G = ((0 : GoInt) : stdgo.fmt_test.Fmt_test.G);
    public function new(?f:stdgo.fmt_test.Fmt_test.F, ?g:stdgo.fmt_test.Fmt_test.G) {
        if (f != null) this.f = f;
        if (g != null) this.g = g;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new S(f, g);
    }
}
/**
    
    
    
**/
@:structInit class SI {
    public var i : AnyInterface = (null : AnyInterface);
    public function new(?i:AnyInterface) {
        if (i != null) this.i = i;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SI(i);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.fmt_test.Fmt_test.T_flagPrinter_static_extension) class T_flagPrinter {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_flagPrinter();
    }
}
/**
    // PanicS is a type that panics in String.
    
    
**/
@:structInit @:using(stdgo.fmt_test.Fmt_test.PanicS_static_extension) class PanicS {
    public var _message : AnyInterface = (null : AnyInterface);
    public function new(?_message:AnyInterface) {
        if (_message != null) this._message = _message;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new PanicS(_message);
    }
}
/**
    // PanicGo is a type that panics in GoString.
    
    
**/
@:structInit @:using(stdgo.fmt_test.Fmt_test.PanicGo_static_extension) class PanicGo {
    public var _message : AnyInterface = (null : AnyInterface);
    public function new(?_message:AnyInterface) {
        if (_message != null) this._message = _message;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new PanicGo(_message);
    }
}
/**
    // PanicF is a type that panics in Format.
    
    
**/
@:structInit @:using(stdgo.fmt_test.Fmt_test.PanicF_static_extension) class PanicF {
    public var _message : AnyInterface = (null : AnyInterface);
    public function new(?_message:AnyInterface) {
        if (_message != null) this._message = _message;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new PanicF(_message);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.fmt_test.Fmt_test.Recur_static_extension) class Recur {
    public var _i : GoInt = 0;
    public var _failed : Pointer<Bool> = (null : Pointer<Bool>);
    public function new(?_i:GoInt, ?_failed:Pointer<Bool>) {
        if (_i != null) this._i = _i;
        if (_failed != null) this._failed = _failed;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Recur(_i, _failed);
    }
}
/**
    // Address has a City, State and a Country.
    
    
**/
@:structInit class Address {
    public var city : GoString = "";
    public var state : GoString = "";
    public var country : GoString = "";
    public function new(?city:GoString, ?state:GoString, ?country:GoString) {
        if (city != null) this.city = city;
        if (state != null) this.state = state;
        if (country != null) this.country = country;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Address(city, state, country);
    }
}
/**
    // Person has a Name, Age and Address.
    
    
**/
@:structInit @:using(stdgo.fmt_test.Fmt_test.Person_static_extension) class Person {
    public var name : GoString = "";
    public var age : GoUInt = 0;
    public var addr : Ref<stdgo.fmt_test.Fmt_test.Address> = (null : Ref<stdgo.fmt_test.Fmt_test.Address>);
    public function new(?name:GoString, ?age:GoUInt, ?addr:Ref<stdgo.fmt_test.Fmt_test.Address>) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Person(name, age, addr);
    }
}
/**
    
    
    
**/
@:structInit class ScanTest {
    public var _text : GoString = "";
    public var _in : AnyInterface = (null : AnyInterface);
    public var _out : AnyInterface = (null : AnyInterface);
    public function new(?_text:GoString, ?_in:AnyInterface, ?_out:AnyInterface) {
        if (_text != null) this._text = _text;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ScanTest(_text, _in, _out);
    }
}
/**
    
    
    
**/
@:structInit class ScanfTest {
    public var _format : GoString = "";
    public var _text : GoString = "";
    public var _in : AnyInterface = (null : AnyInterface);
    public var _out : AnyInterface = (null : AnyInterface);
    public function new(?_format:GoString, ?_text:GoString, ?_in:AnyInterface, ?_out:AnyInterface) {
        if (_format != null) this._format = _format;
        if (_text != null) this._text = _text;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ScanfTest(_format, _text, _in, _out);
    }
}
/**
    
    
    
**/
@:structInit class ScanfMultiTest {
    public var _format : GoString = "";
    public var _text : GoString = "";
    public var _in : Slice<AnyInterface> = (null : Slice<AnyInterface>);
    public var _out : Slice<AnyInterface> = (null : Slice<AnyInterface>);
    public var _err : GoString = "";
    public function new(?_format:GoString, ?_text:GoString, ?_in:Slice<AnyInterface>, ?_out:Slice<AnyInterface>, ?_err:GoString) {
        if (_format != null) this._format = _format;
        if (_text != null) this._text = _text;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ScanfMultiTest(_format, _text, _in, _out, _err);
    }
}
/**
    // IntString accepts an integer followed immediately by a string.
    // It tests the embedding of a scan within a scan.
    
    
**/
@:structInit @:using(stdgo.fmt_test.Fmt_test.IntString_static_extension) class IntString {
    public var _i : GoInt = 0;
    public var _s : GoString = "";
    public function new(?_i:GoInt, ?_s:GoString) {
        if (_i != null) this._i = _i;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new IntString(_i, _s);
    }
}
/**
    // eofCounter is a special Reader that counts reads at end of file.
    
    
**/
@:structInit @:private @:using(stdgo.fmt_test.Fmt_test.T_eofCounter_static_extension) class T_eofCounter {
    public var _reader : Ref<stdgo.strings.Strings.Reader> = (null : Ref<stdgo.strings.Strings.Reader>);
    public var _eofCount : GoInt = 0;
    public function new(?_reader:Ref<stdgo.strings.Strings.Reader>, ?_eofCount:GoInt) {
        if (_reader != null) this._reader = _reader;
        if (_eofCount != null) this._eofCount = _eofCount;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_eofCounter(_reader, _eofCount);
    }
}
/**
    // runeScanner implements the Scanner interface for TestScanStateCount.
    
    
**/
@:structInit @:private @:using(stdgo.fmt_test.Fmt_test.T_runeScanner_static_extension) class T_runeScanner {
    public var _rune : GoInt32 = 0;
    public var _size : GoInt = 0;
    public function new(?_rune:GoInt32, ?_size:GoInt) {
        if (_rune != null) this._rune = _rune;
        if (_size != null) this._size = _size;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_runeScanner(_rune, _size);
    }
}
/**
    // RecursiveInt accepts a string matching %d.%d.%d....
    // and parses it into a linked list.
    // It allows us to benchmark recursive descent style scanners.
    
    
**/
@:structInit @:using(stdgo.fmt_test.Fmt_test.RecursiveInt_static_extension) class RecursiveInt {
    public var _i : GoInt = 0;
    public var _next : Ref<stdgo.fmt_test.Fmt_test.RecursiveInt> = (null : Ref<stdgo.fmt_test.Fmt_test.RecursiveInt>);
    public function new(?_i:GoInt, ?_next:Ref<stdgo.fmt_test.Fmt_test.RecursiveInt>) {
        if (_i != null) this._i = _i;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new RecursiveInt(_i, _next);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.fmt_test.Fmt_test.T_testState_static_extension) class T_testState {
    public var _width : GoInt = 0;
    public var _widthOK : Bool = false;
    public var _prec : GoInt = 0;
    public var _precOK : Bool = false;
    public var _flag : GoMap<GoInt, Bool> = (null : GoMap<GoInt, Bool>);
    public function new(?_width:GoInt, ?_widthOK:Bool, ?_prec:GoInt, ?_precOK:Bool, ?_flag:GoMap<GoInt, Bool>) {
        if (_width != null) this._width = _width;
        if (_widthOK != null) this._widthOK = _widthOK;
        if (_prec != null) this._prec = _prec;
        if (_precOK != null) this._precOK = _precOK;
        if (_flag != null) this._flag = _flag;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_testState(_width, _widthOK, _prec, _precOK, _flag);
    }
}
/**
    // Animal has a Name and an Age to represent an animal.
    
    
**/
@:structInit @:using(stdgo.fmt_test.Fmt_test.Animal_static_extension) class Animal {
    public var name : GoString = "";
    public var age : GoUInt = 0;
    public function new(?name:GoString, ?age:GoUInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Animal(name, age);
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
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _err : Error;
    public var _wantText : GoString;
    public var _wantUnwrap : Error;
    public var _wantSplit : Slice<Error>;
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
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var name : GoString;
    public var age : GoInt;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _fmt : GoString;
    public var _val : AnyInterface;
    public var _out : GoString;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_3_static_extension) private typedef T__struct_3 = {
    public var _fmt : GoString;
    public var _val : stdgo.fmt_test.Fmt_test.SE;
    public var _out : GoString;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_4_static_extension) private typedef T__struct_4 = {
    public var _count : GoInt;
    public var _desc : GoString;
    public var _fn : () -> Void;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_5_static_extension) private typedef T__struct_5 = {
    public var _in : GoString;
    public var _out : GoString;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_6>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_6_static_extension) private typedef T__struct_6 = {
    public var _fmt : GoString;
    public var _out : GoString;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_7>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_7_static_extension) private typedef T__struct_7 = {
    public var _fmt : GoString;
    public var _in : Slice<AnyInterface>;
    public var _out : GoString;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_8>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_8_static_extension) private typedef T__struct_8 = {
    public var _fmt : GoString;
    public var _in : AnyInterface;
    public var _out : GoString;
};
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_9>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_9_static_extension) private typedef T__struct_9 = {
    public var _in : GoString;
    public var _val : AnyInterface;
    public var _out : GoString;
};
class T__struct_10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_10>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_10_static_extension) private typedef T__struct_10 = {
    public var _s : GoString;
    public var _start : GoInt;
    public var _end : GoInt;
    public var _num : GoInt;
    public var _isnum : Bool;
    public var _newi : GoInt;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_11>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_11_static_extension) private typedef T__struct_11 = {
    public var _name : GoString;
    public var _f : GoString -> stdgo.io.Io.Reader;
};
class T__struct_12_asInterface {
    @:embedded
    public function read(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(__0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_12>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_12_asInterface) class T__struct_12_static_extension {
    @:embedded
    public static function read( __self__:T__struct_12, __0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return return __self__.reader.read(__0);
}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_12_static_extension) private typedef T__struct_12 = {
    @:embedded
    public var reader : stdgo.io.Io.Reader;
};
class T__struct_13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_13>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_13_static_extension) private typedef T__struct_13 = {
    public var _format : GoString;
    public var _v : AnyInterface;
};
class T__struct_14_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_14>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_14_static_extension) private typedef T__struct_14 = {
    public var _name : GoString;
    public var _text : GoString;
    public var _count : GoInt;
};
class T__struct_15_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_15>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_15_static_extension) private typedef T__struct_15 = {
    public var _name : GoString;
    public var _text : GoString;
    public var _count : GoInt;
    public var _ok : Bool;
};
class T__struct_16_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_16_static_extension) private typedef T__struct_16 = {
    public var _name : GoString;
    public var _text : GoString;
    public var _format : GoString;
    public var _count : GoInt;
    public var _ok : Bool;
};
class T__struct_17_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_17>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T__struct_17_asInterface) class T__struct_17_static_extension {

}
@:local @:using(stdgo.fmt_test.Fmt_test.T__struct_17_static_extension) private typedef T__struct_17 = {
    public var _width : GoInt;
    public var _prec : GoInt;
    public var _flags : GoString;
    public var _result : GoString;
};
@:named @:using(stdgo.fmt_test.Fmt_test.T_errString_static_extension) private typedef T_errString = GoString;
@:named private typedef T_renamedBool = Bool;
@:named private typedef T_renamedInt = GoInt;
@:named private typedef T_renamedInt8 = GoInt8;
@:named private typedef T_renamedInt16 = GoInt16;
@:named private typedef T_renamedInt32 = GoInt32;
@:named private typedef T_renamedInt64 = GoInt64;
@:named private typedef T_renamedUint = GoUInt;
@:named private typedef T_renamedUint8 = GoUInt8;
@:named private typedef T_renamedUint16 = GoUInt16;
@:named private typedef T_renamedUint32 = GoUInt32;
@:named private typedef T_renamedUint64 = GoUInt64;
@:named private typedef T_renamedUintptr = GoUIntptr;
@:named private typedef T_renamedString = GoString;
@:named private typedef T_renamedBytes = Slice<GoUInt8>;
@:named private typedef T_renamedFloat32 = GoFloat32;
@:named private typedef T_renamedFloat64 = GoFloat64;
@:named private typedef T_renamedComplex64 = GoComplex64;
@:named private typedef T_renamedComplex128 = GoComplex128;
@:named @:using(stdgo.fmt_test.Fmt_test.I_static_extension) typedef I = GoInt;
@:named @:using(stdgo.fmt_test.Fmt_test.F_static_extension) typedef F = GoInt;
@:named @:using(stdgo.fmt_test.Fmt_test.G_static_extension) typedef G = GoInt;
/**
    // P is a type with a String method with pointer receiver for testing %p.
**/
@:named @:using(stdgo.fmt_test.Fmt_test.P_static_extension) typedef P = GoInt;
@:named @:using(stdgo.fmt_test.Fmt_test.T_byteStringer_static_extension) private typedef T_byteStringer = GoUInt8;
@:named @:using(stdgo.fmt_test.Fmt_test.T_byteFormatter_static_extension) private typedef T_byteFormatter = GoUInt8;
@:named @:using(stdgo.fmt_test.Fmt_test.T_writeStringFormatter_static_extension) private typedef T_writeStringFormatter = GoString;
@:named typedef SE = Slice<AnyInterface>;
/**
    // Xs accepts any non-empty run of the verb character
**/
@:named @:using(stdgo.fmt_test.Fmt_test.Xs_static_extension) typedef Xs = GoString;
@:named @:using(stdgo.fmt_test.Fmt_test.TwoLines_static_extension) typedef TwoLines = GoString;
@:named @:using(stdgo.fmt_test.Fmt_test.T_hexBytes_static_extension) private typedef T_hexBytes = GoArray<GoUInt8>;
@:named @:using(stdgo.fmt_test.Fmt_test.TI_static_extension) typedef TI = GoInt;
@:named @:using(stdgo.fmt_test.Fmt_test.TI8_static_extension) typedef TI8 = GoInt8;
@:named @:using(stdgo.fmt_test.Fmt_test.TI16_static_extension) typedef TI16 = GoInt16;
@:named @:using(stdgo.fmt_test.Fmt_test.TI32_static_extension) typedef TI32 = GoInt32;
@:named @:using(stdgo.fmt_test.Fmt_test.TI64_static_extension) typedef TI64 = GoInt64;
@:named @:using(stdgo.fmt_test.Fmt_test.TU_static_extension) typedef TU = GoUInt;
@:named @:using(stdgo.fmt_test.Fmt_test.TU8_static_extension) typedef TU8 = GoUInt8;
@:named @:using(stdgo.fmt_test.Fmt_test.TU16_static_extension) typedef TU16 = GoUInt16;
@:named @:using(stdgo.fmt_test.Fmt_test.TU32_static_extension) typedef TU32 = GoUInt32;
@:named @:using(stdgo.fmt_test.Fmt_test.TU64_static_extension) typedef TU64 = GoUInt64;
@:named @:using(stdgo.fmt_test.Fmt_test.TUI_static_extension) typedef TUI = GoUIntptr;
@:named @:using(stdgo.fmt_test.Fmt_test.TF_static_extension) typedef TF = GoFloat64;
@:named @:using(stdgo.fmt_test.Fmt_test.TF32_static_extension) typedef TF32 = GoFloat32;
@:named @:using(stdgo.fmt_test.Fmt_test.TF64_static_extension) typedef TF64 = GoFloat64;
@:named @:using(stdgo.fmt_test.Fmt_test.TB_static_extension) typedef TB = Bool;
@:named @:using(stdgo.fmt_test.Fmt_test.TS_static_extension) typedef TS = GoString;
function testErrorf(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _noVetErrorf = stdgo.fmt.Fmt.errorf;
        var _wrapped:Error = stdgo.errors.Errors.new_(("inner error" : GoString));
        for (_0 => _test in (new Slice<T__struct_0>(
0,
0,
({ _err : stdgo.fmt.Fmt.errorf(("%w" : GoString), Go.toInterface(_wrapped)), _wantText : ("inner error" : GoString), _wantUnwrap : _wrapped, _wantSplit : (null : Slice<Error>) } : T__struct_0),
({ _err : stdgo.fmt.Fmt.errorf(("added context: %w" : GoString), Go.toInterface(_wrapped)), _wantText : ("added context: inner error" : GoString), _wantUnwrap : _wrapped, _wantSplit : (null : Slice<Error>) } : T__struct_0),
({ _err : stdgo.fmt.Fmt.errorf(("%w with added context" : GoString), Go.toInterface(_wrapped)), _wantText : ("inner error with added context" : GoString), _wantUnwrap : _wrapped, _wantSplit : (null : Slice<Error>) } : T__struct_0),
({ _err : stdgo.fmt.Fmt.errorf(("%s %w %v" : GoString), Go.toInterface(("prefix" : GoString)), Go.toInterface(_wrapped), Go.toInterface(("suffix" : GoString))), _wantText : ("prefix inner error suffix" : GoString), _wantUnwrap : _wrapped, _wantSplit : (null : Slice<Error>) } : T__struct_0),
({ _err : stdgo.fmt.Fmt.errorf(("%[2]s: %[1]w" : GoString), Go.toInterface(_wrapped), Go.toInterface(("positional verb" : GoString))), _wantText : ("positional verb: inner error" : GoString), _wantUnwrap : _wrapped, _wantSplit : (null : Slice<Error>) } : T__struct_0),
({ _err : stdgo.fmt.Fmt.errorf(("%v" : GoString), Go.toInterface(_wrapped)), _wantText : ("inner error" : GoString), _wantUnwrap : (null : Error), _wantSplit : (null : Slice<Error>) } : T__struct_0),
({ _err : stdgo.fmt.Fmt.errorf(("added context: %v" : GoString), Go.toInterface(_wrapped)), _wantText : ("added context: inner error" : GoString), _wantUnwrap : (null : Error), _wantSplit : (null : Slice<Error>) } : T__struct_0),
({ _err : stdgo.fmt.Fmt.errorf(("%v with added context" : GoString), Go.toInterface(_wrapped)), _wantText : ("inner error with added context" : GoString), _wantUnwrap : (null : Error), _wantSplit : (null : Slice<Error>) } : T__struct_0),
({ _err : _noVetErrorf(("%w is not an error" : GoString), Go.toInterface(("not-an-error" : GoString))), _wantText : ("%!w(string=not-an-error) is not an error" : GoString), _wantUnwrap : (null : Error), _wantSplit : (null : Slice<Error>) } : T__struct_0),
({ _err : _noVetErrorf(("wrapped two errors: %w %w" : GoString), Go.toInterface(Go.asInterface((("1" : GoString) : T_errString))), Go.toInterface(Go.asInterface((("2" : GoString) : T_errString)))), _wantText : ("wrapped two errors: 1 2" : GoString), _wantUnwrap : (null : Error), _wantSplit : (new Slice<Error>(0, 0, Go.asInterface((("1" : GoString) : T_errString)), Go.asInterface((("2" : GoString) : T_errString))) : Slice<Error>) } : T__struct_0),
({ _err : _noVetErrorf(("wrapped three errors: %w %w %w" : GoString), Go.toInterface(Go.asInterface((("1" : GoString) : T_errString))), Go.toInterface(Go.asInterface((("2" : GoString) : T_errString))), Go.toInterface(Go.asInterface((("3" : GoString) : T_errString)))), _wantText : ("wrapped three errors: 1 2 3" : GoString), _wantUnwrap : (null : Error), _wantSplit : (new Slice<Error>(0, 0, Go.asInterface((("1" : GoString) : T_errString)), Go.asInterface((("2" : GoString) : T_errString)), Go.asInterface((("3" : GoString) : T_errString))) : Slice<Error>) } : T__struct_0),
({ _err : _noVetErrorf(("wrapped nil error: %w %w %w" : GoString), Go.toInterface(Go.asInterface((("1" : GoString) : T_errString))), (null : AnyInterface), Go.toInterface(Go.asInterface((("2" : GoString) : T_errString)))), _wantText : ("wrapped nil error: 1 %!w(<nil>) 2" : GoString), _wantUnwrap : (null : Error), _wantSplit : (new Slice<Error>(0, 0, Go.asInterface((("1" : GoString) : T_errString)), Go.asInterface((("2" : GoString) : T_errString))) : Slice<Error>) } : T__struct_0),
({ _err : _noVetErrorf(("wrapped one non-error: %w %w %w" : GoString), Go.toInterface(Go.asInterface((("1" : GoString) : T_errString))), Go.toInterface(("not-an-error" : GoString)), Go.toInterface(Go.asInterface((("3" : GoString) : T_errString)))), _wantText : ("wrapped one non-error: 1 %!w(string=not-an-error) 3" : GoString), _wantUnwrap : (null : Error), _wantSplit : (new Slice<Error>(0, 0, Go.asInterface((("1" : GoString) : T_errString)), Go.asInterface((("3" : GoString) : T_errString))) : Slice<Error>) } : T__struct_0),
({ _err : stdgo.fmt.Fmt.errorf(("wrapped errors out of order: %[3]w %[2]w %[1]w" : GoString), Go.toInterface(Go.asInterface((("1" : GoString) : T_errString))), Go.toInterface(Go.asInterface((("2" : GoString) : T_errString))), Go.toInterface(Go.asInterface((("3" : GoString) : T_errString)))), _wantText : ("wrapped errors out of order: 3 2 1" : GoString), _wantUnwrap : (null : Error), _wantSplit : (new Slice<Error>(0, 0, Go.asInterface((("1" : GoString) : T_errString)), Go.asInterface((("2" : GoString) : T_errString)), Go.asInterface((("3" : GoString) : T_errString))) : Slice<Error>) } : T__struct_0),
({ _err : stdgo.fmt.Fmt.errorf(("wrapped several times: %[1]w %[1]w %[2]w %[1]w" : GoString), Go.toInterface(Go.asInterface((("1" : GoString) : T_errString))), Go.toInterface(Go.asInterface((("2" : GoString) : T_errString)))), _wantText : ("wrapped several times: 1 1 2 1" : GoString), _wantUnwrap : (null : Error), _wantSplit : (new Slice<Error>(0, 0, Go.asInterface((("1" : GoString) : T_errString)), Go.asInterface((("2" : GoString) : T_errString))) : Slice<Error>) } : T__struct_0),
({ _err : stdgo.fmt.Fmt.errorf(("%w" : GoString), (null : AnyInterface)), _wantText : ("%!w(<nil>)" : GoString), _wantUnwrap : (null : Error), _wantSplit : (null : Slice<Error>) } : T__struct_0)) : Slice<T__struct_0>)) {
            {
                var _0:Error = stdgo.errors.Errors.unwrap(_test._err), _1:Error = _test._wantUnwrap, _want:Error = _1, _got:Error = _0;
                if (Go.toInterface(_got) != (Go.toInterface(_want))) {
                    _t.errorf(("Formatted error: %v\nerrors.Unwrap() = %v, want %v" : GoString), Go.toInterface(_test._err), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _0 = _splitErr(_test._err), _1 = _test._wantSplit, _want = _1, _got = _0;
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_got), Go.toInterface(_want))) {
                    _t.errorf(("Formatted error: %v\nUnwrap() []error = %v, want %v" : GoString), Go.toInterface(_test._err), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
            {
                var _0:GoString = _test._err.error(), _1:GoString = _test._wantText, _want:GoString = _1, _got:GoString = _0;
                if (_got != (_want)) {
                    _t.errorf(("err.Error() = %q, want %q" : GoString), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
        };
    }
private function _splitErr(_err:Error):Slice<Error> {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_err) : T__interface_0)) : T__interface_0), ok : true };
            } catch(_) {
                { value : (null : stdgo.fmt_test.Fmt_test.T__interface_0), ok : false };
            }, _e = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _e.unwrap();
            };
        };
        return (null : Slice<Error>);
    }
/**
    // The Errorf function lets us use formatting features
    // to create descriptive error messages.
**/
function exampleErrorf():Void {
        {};
        var _err:Error = stdgo.fmt.Fmt.errorf(("user %q (id %d) not found" : GoString), Go.toInterface(("bueller" : GoString)), Go.toInterface((17 : GoInt)));
        stdgo.fmt.Fmt.println(Go.toInterface(_err.error()));
    }
function exampleFscanf():Void {
        var _0:GoInt = (0 : GoInt), _1:Bool = false, _2:GoString = ("" : GoString), _s:GoString = _2, _b:Bool = _1, _i:GoInt = _0;
        var _r = stdgo.strings.Strings.newReader(("5 true gophers" : GoString));
        var __tmp__ = stdgo.fmt.Fmt.fscanf(Go.asInterface(_r), ("%d %t %s" : GoString), Go.toInterface(Go.pointer(_i)), Go.toInterface(Go.pointer(_b)), Go.toInterface(Go.pointer(_s))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("Fscanf: %v\n" : GoString), Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(Go.toInterface(_i), Go.toInterface(_b), Go.toInterface(_s));
        stdgo.fmt.Fmt.println(Go.toInterface(_n));
    }
function exampleFscanln():Void {
        var _s:GoString = ("dmr 1771 1.61803398875\n\tken 271828 3.14159" : GoString);
        var _r = stdgo.strings.Strings.newReader(_s);
        var _a:GoString = ("" : GoString);
        var _b:GoInt = (0 : GoInt);
        var _c:GoFloat64 = (0 : GoFloat64);
        while (true) {
            var __tmp__ = stdgo.fmt.Fmt.fscanln(Go.asInterface(_r), Go.toInterface(Go.pointer(_a)), Go.toInterface(Go.pointer(_b)), Go.toInterface(Go.pointer(_c))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
                break;
            };
            if (_err != null) {
                throw Go.toInterface(_err);
            };
            stdgo.fmt.Fmt.printf(("%d: %s, %d, %f\n" : GoString), Go.toInterface(_n), Go.toInterface(_a), Go.toInterface(_b), Go.toInterface(_c));
        };
    }
function exampleSscanf():Void {
        var _name:GoString = ("" : GoString);
        var _age:GoInt = (0 : GoInt);
        var __tmp__ = stdgo.fmt.Fmt.sscanf(("Kim is 22 years old" : GoString), ("%s is %d years old" : GoString), Go.toInterface(Go.pointer(_name)), Go.toInterface(Go.pointer(_age))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.printf(("%d: %s, %d\n" : GoString), Go.toInterface(_n), Go.toInterface(_name), Go.toInterface(_age));
    }
function examplePrint():Void {
        {};
        stdgo.fmt.Fmt.print(Go.toInterface(("Kim" : GoString)), Go.toInterface((" is " : GoString)), Go.toInterface((22 : GoInt)), Go.toInterface((" years old.\n" : GoString)));
    }
function examplePrintln():Void {
        {};
        stdgo.fmt.Fmt.println(Go.toInterface(("Kim" : GoString)), Go.toInterface(("is" : GoString)), Go.toInterface((22 : GoInt)), Go.toInterface(("years old." : GoString)));
    }
function examplePrintf():Void {
        {};
        stdgo.fmt.Fmt.printf(("%s is %d years old.\n" : GoString), Go.toInterface(("Kim" : GoString)), Go.toInterface((22 : GoInt)));
    }
function exampleSprint():Void {
        {};
        var _s:GoString = stdgo.fmt.Fmt.sprint(Go.toInterface(("Kim" : GoString)), Go.toInterface((" is " : GoString)), Go.toInterface((22 : GoInt)), Go.toInterface((" years old.\n" : GoString)));
        stdgo.io.Io.writeString(Go.asInterface(stdgo.os.Os.stdout), _s);
    }
function exampleSprintln():Void {
        {};
        var _s:GoString = stdgo.fmt.Fmt.sprintln(Go.toInterface(("Kim" : GoString)), Go.toInterface(("is" : GoString)), Go.toInterface((22 : GoInt)), Go.toInterface(("years old." : GoString)));
        stdgo.io.Io.writeString(Go.asInterface(stdgo.os.Os.stdout), _s);
    }
function exampleSprintf():Void {
        {};
        var _s:GoString = stdgo.fmt.Fmt.sprintf(("%s is %d years old.\n" : GoString), Go.toInterface(("Kim" : GoString)), Go.toInterface((22 : GoInt)));
        stdgo.io.Io.writeString(Go.asInterface(stdgo.os.Os.stdout), _s);
    }
function exampleFprint():Void {
        {};
        var __tmp__ = stdgo.fmt.Fmt.fprint(Go.asInterface(stdgo.os.Os.stdout), Go.toInterface(("Kim" : GoString)), Go.toInterface((" is " : GoString)), Go.toInterface((22 : GoInt)), Go.toInterface((" years old.\n" : GoString))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("Fprint: %v\n" : GoString), Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.print(Go.toInterface(_n), Go.toInterface((" bytes written.\n" : GoString)));
    }
function exampleFprintln():Void {
        {};
        var __tmp__ = stdgo.fmt.Fmt.fprintln(Go.asInterface(stdgo.os.Os.stdout), Go.toInterface(("Kim" : GoString)), Go.toInterface(("is" : GoString)), Go.toInterface((22 : GoInt)), Go.toInterface(("years old." : GoString))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("Fprintln: %v\n" : GoString), Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(Go.toInterface(_n), Go.toInterface(("bytes written." : GoString)));
    }
function exampleFprintf():Void {
        {};
        var __tmp__ = stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stdout), ("%s is %d years old.\n" : GoString), Go.toInterface(("Kim" : GoString)), Go.toInterface((22 : GoInt))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("Fprintf: %v\n" : GoString), Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("%d bytes written.\n" : GoString), Go.toInterface(_n));
    }
/**
    // Print, Println, and Printf lay out their arguments differently. In this example
    // we can compare their behaviors. Println always adds blanks between the items it
    // prints, while Print adds blanks only between non-string arguments and Printf
    // does exactly what it is told.
    // Sprint, Sprintln, Sprintf, Fprint, Fprintln, and Fprintf behave the same as
    // their corresponding Print, Println, and Printf functions shown here.
**/
function example_printers():Void {
        var _0:GoFloat64 = (3 : GoFloat64), _1:GoFloat64 = (4 : GoFloat64), _b:GoFloat64 = _1, _a:GoFloat64 = _0;
        var _h:GoFloat64 = stdgo.math.Math.hypot(_a, _b);
        stdgo.fmt.Fmt.print(Go.toInterface(("The vector (" : GoString)), Go.toInterface(_a), Go.toInterface(_b), Go.toInterface((") has length " : GoString)), Go.toInterface(_h), Go.toInterface((".\n" : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface(("The vector (" : GoString)), Go.toInterface(_a), Go.toInterface(_b), Go.toInterface((") has length" : GoString)), Go.toInterface(_h), Go.toInterface(("." : GoString)));
        stdgo.fmt.Fmt.printf(("The vector (%g %g) has length %g.\n" : GoString), Go.toInterface(_a), Go.toInterface(_b), Go.toInterface(_h));
    }
/**
    // These examples demonstrate the basics of printing using a format string. Printf,
    // Sprintf, and Fprintf all take a format string that specifies how to format the
    // subsequent arguments. For example, %d (we call that a 'verb') says to print the
    // corresponding argument, which must be an integer (or something containing an
    // integer, such as a slice of ints) in decimal. The verb %v ('v' for 'value')
    // always formats the argument in its default form, just how Print or Println would
    // show it. The special verb %T ('T' for 'Type') prints the type of the argument
    // rather than its value. The examples are not exhaustive; see the package comment
    // for all the details.
**/
function example_formats():Void {
        var _integer:GoInt = (23 : GoInt);
        stdgo.fmt.Fmt.println(Go.toInterface(_integer));
        stdgo.fmt.Fmt.printf(("%v\n" : GoString), Go.toInterface(_integer));
        stdgo.fmt.Fmt.printf(("%d\n" : GoString), Go.toInterface(_integer));
        stdgo.fmt.Fmt.printf(("%T %T\n" : GoString), Go.toInterface(_integer), Go.toInterface(Go.pointer(_integer)));
        var _truth:Bool = true;
        stdgo.fmt.Fmt.printf(("%v %t\n" : GoString), Go.toInterface(_truth), Go.toInterface(_truth));
        var _answer:GoInt = (42 : GoInt);
        stdgo.fmt.Fmt.printf(("%v %d %x %o %b\n" : GoString), Go.toInterface(_answer), Go.toInterface(_answer), Go.toInterface(_answer), Go.toInterface(_answer), Go.toInterface(_answer));
        var _pi:GoFloat64 = (3.141592653589793 : GoFloat64);
        stdgo.fmt.Fmt.printf(("%v %g %.2f (%6.2f) %e\n" : GoString), Go.toInterface(_pi), Go.toInterface(_pi), Go.toInterface(_pi), Go.toInterface(_pi), Go.toInterface(_pi));
        var _point:GoComplex128 = ((110.7 : GoFloat64) + new GoComplex128(0, 22.5));
        stdgo.fmt.Fmt.printf(("%v %g %.2f %.2e\n" : GoString), Go.toInterface(_point), Go.toInterface(_point), Go.toInterface(_point), Go.toInterface(_point));
        var _smile:GoInt32 = (128512 : GoInt32);
        stdgo.fmt.Fmt.printf(("%v %d %c %q %U %#U\n" : GoString), Go.toInterface(_smile), Go.toInterface(_smile), Go.toInterface(_smile), Go.toInterface(_smile), Go.toInterface(_smile), Go.toInterface(_smile));
        var _placeholders:GoString = ("foo \"bar\"" : GoString);
        stdgo.fmt.Fmt.printf(("%v %s %q %#q\n" : GoString), Go.toInterface(_placeholders), Go.toInterface(_placeholders), Go.toInterface(_placeholders), Go.toInterface(_placeholders));
        var _isLegume = ({
            final x = new stdgo.GoMap.GoObjectMap<GoString, Bool>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(bool_kind) })));
            @:privateAccess x._keys = [("peanut" : GoString), ("dachshund" : GoString)];
            @:privateAccess x._values = [true, false];
            x;
        } : stdgo.GoMap<GoString, Bool>);
        stdgo.fmt.Fmt.printf(("%v %#v\n" : GoString), Go.toInterface(_isLegume), Go.toInterface(_isLegume));
        var _person:T__struct_1 = ({ name : ("Kim" : GoString), age : (22 : GoInt) } : T__struct_1);
        stdgo.fmt.Fmt.printf(("%v %+v %#v\n" : GoString), Go.toInterface(Go.asInterface(_person)), Go.toInterface(Go.asInterface(_person)), Go.toInterface(Go.asInterface(_person)));
        var _pointer = (_person : Ref<T__struct_1>);
        stdgo.fmt.Fmt.printf(("%v %p\n" : GoString), Go.toInterface(Go.asInterface(_pointer)), Go.toInterface((null : Pointer<GoInt>)));
        var _greats = (new GoArray<GoString>(("Kitano" : GoString), ("Kobayashi" : GoString), ("Kurosawa" : GoString), ("Miyazaki" : GoString), ("Ozu" : GoString)) : GoArray<GoString>);
        stdgo.fmt.Fmt.printf(("%v %q\n" : GoString), Go.toInterface(_greats), Go.toInterface(_greats));
        var _kGreats = (_greats.__slice__(0, (3 : GoInt)) : Slice<GoString>);
        stdgo.fmt.Fmt.printf(("%v %q %#v\n" : GoString), Go.toInterface(_kGreats), Go.toInterface(_kGreats), Go.toInterface(_kGreats));
        var _cmd = (("a⌘" : GoString) : Slice<GoByte>);
        stdgo.fmt.Fmt.printf(("%v %d %s %q %x % x\n" : GoString), Go.toInterface(_cmd), Go.toInterface(_cmd), Go.toInterface(_cmd), Go.toInterface(_cmd), Go.toInterface(_cmd), Go.toInterface(_cmd));
        var _now:stdgo.time.Time.Time = (stdgo.time.Time.unix(("123456789" : GoInt64), ("0" : GoInt64)).utc() == null ? null : stdgo.time.Time.unix(("123456789" : GoInt64), ("0" : GoInt64)).utc().__copy__());
        stdgo.fmt.Fmt.printf(("%v %q\n" : GoString), Go.toInterface(Go.asInterface(_now)), Go.toInterface(Go.asInterface(_now)));
    }
function testFmtInterface(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _i1:AnyInterface = (null : AnyInterface);
        _i1 = Go.toInterface(("abc" : GoString));
        var _s:GoString = sprintf(("%s" : GoString), _i1);
        if (_s != (("abc" : GoString))) {
            _t.errorf(("Sprintf(\"%%s\", empty(\"abc\")) = %q want %q" : GoString), Go.toInterface(_s), Go.toInterface(("abc" : GoString)));
        };
    }
/**
    // zeroFill generates zero-filled strings of the specified width. The length
    // of the suffix (but not the prefix) is compensated for in the width calculation.
**/
private function _zeroFill(_prefix:GoString, _width:GoInt, _suffix:GoString):GoString {
        return (_prefix + stdgo.strings.Strings.repeat(("0" : GoString), _width - (_suffix.length))) + _suffix;
    }
function testSprintf(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _fmtTests) {
            var _s:GoString = sprintf(_tt._fmt, _tt._val);
            var _i:GoInt = stdgo.strings.Strings.index(_tt._out, ("PTR" : GoString));
            if ((_i >= (0 : GoInt)) && (_i < _s.length)) {
                var _0:GoString = ("" : GoString), _1:GoString = ("" : GoString), _chars:GoString = _1, _pattern:GoString = _0;
                if (stdgo.strings.Strings.hasPrefix((_tt._out.__slice__(_i) : GoString), ("PTR_b" : GoString))) {
                    _pattern = ("PTR_b" : GoString);
                    _chars = ("01" : GoString);
                } else if (stdgo.strings.Strings.hasPrefix((_tt._out.__slice__(_i) : GoString), ("PTR_o" : GoString))) {
                    _pattern = ("PTR_o" : GoString);
                    _chars = ("01234567" : GoString);
                } else if (stdgo.strings.Strings.hasPrefix((_tt._out.__slice__(_i) : GoString), ("PTR_d" : GoString))) {
                    _pattern = ("PTR_d" : GoString);
                    _chars = ("0123456789" : GoString);
                } else if (stdgo.strings.Strings.hasPrefix((_tt._out.__slice__(_i) : GoString), ("PTR_x" : GoString))) {
                    _pattern = ("PTR_x" : GoString);
                    _chars = ("0123456789abcdef" : GoString);
                } else if (stdgo.strings.Strings.hasPrefix((_tt._out.__slice__(_i) : GoString), ("PTR_X" : GoString))) {
                    _pattern = ("PTR_X" : GoString);
                    _chars = ("0123456789ABCDEF" : GoString);
                } else {
                    _pattern = ("PTR" : GoString);
                    _chars = ("0123456789abcdefABCDEF" : GoString);
                };
                var _p:GoString = (_s.__slice__(0, _i) : GoString) + _pattern;
                {
                    var _j:GoInt = _i;
                    Go.cfor(_j < (_s.length), _j++, {
                        if (!stdgo.strings.Strings.containsRune(_chars, (_s[(_j : GoInt)] : GoRune))) {
                            _p = _p + ((_s.__slice__(_j) : GoString));
                            break;
                        };
                    });
                };
                _s = _p;
            };
            if (_s != (_tt._out)) {
                {
                    var __tmp__ = try {
                        { value : (Go.typeAssert((_tt._val : GoString)) : GoString), ok : true };
                    } catch(_) {
                        { value : ("" : GoString), ok : false };
                    }, _1 = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        _t.errorf(("Sprintf(%q, %q) = <%s> want <%s>" : GoString), Go.toInterface(_tt._fmt), _tt._val, Go.toInterface(_s), Go.toInterface(_tt._out));
                    } else {
                        _t.errorf(("Sprintf(%q, %v) = %q want %q" : GoString), Go.toInterface(_tt._fmt), _tt._val, Go.toInterface(_s), Go.toInterface(_tt._out));
                    };
                };
            };
        };
    }
/**
    // TestComplexFormatting checks that a complex always formats to the same
    // thing as if done by hand with two singleton prints.
**/
function testComplexFormatting(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _yesNo:Slice<Bool> = (new Slice<Bool>(0, 0, true, false) : Slice<Bool>);
        var _values:Slice<GoFloat64> = (new Slice<GoFloat64>(0, 0, (1 : GoFloat64), (0 : GoFloat64), (-1 : GoFloat64), _posInf, _negInf, naN) : Slice<GoFloat64>);
        for (_0 => _plus in _yesNo) {
            for (_1 => _zero in _yesNo) {
                for (_2 => _space in _yesNo) {
                    for (_3 => _char in ("fFeEgG" : GoString)) {
                        var _realFmt:GoString = ("%" : GoString);
                        if (_zero) {
                            _realFmt = _realFmt + (("0" : GoString));
                        };
                        if (_space) {
                            _realFmt = _realFmt + ((" " : GoString));
                        };
                        if (_plus) {
                            _realFmt = _realFmt + (("+" : GoString));
                        };
                        _realFmt = _realFmt + (("10.2" : GoString));
                        _realFmt = _realFmt + ((_char : GoString));
                        var _imagFmt:GoString = ("%" : GoString);
                        if (_zero) {
                            _imagFmt = _imagFmt + (("0" : GoString));
                        };
                        _imagFmt = _imagFmt + (("+" : GoString));
                        _imagFmt = _imagFmt + (("10.2" : GoString));
                        _imagFmt = _imagFmt + ((_char : GoString));
                        for (_4 => _realValue in _values) {
                            for (_5 => _imagValue in _values) {
                                var _one:GoString = sprintf(_realFmt, Go.toInterface(new GoComplex128(_realValue, _imagValue)));
                                var _two:GoString = sprintf(((("(" : GoString) + _realFmt) + _imagFmt) + ("i)" : GoString), Go.toInterface(_realValue), Go.toInterface(_imagValue));
                                if (_one != (_two)) {
                                    _t.error(Go.toInterface(_f), Go.toInterface(_one), Go.toInterface(_two));
                                };
                            };
                        };
                    };
                };
            };
        };
    }
function testReorder(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _reorderTests) {
            var _s:GoString = sprintf(_tt._fmt, ..._tt._val.__toArray__());
            if (_s != (_tt._out)) {
                _t.errorf(("Sprintf(%q, %v) = <%s> want <%s>" : GoString), Go.toInterface(_tt._fmt), Go.toInterface(_tt._val), Go.toInterface(_s), Go.toInterface(_tt._out));
            } else {};
        };
    }
function benchmarkSprintfPadding(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%16f" : GoString), Go.toInterface((1 : GoFloat64)));
            };
        });
    }
function benchmarkSprintfEmpty(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(Go.str());
            };
        });
    }
function benchmarkSprintfString(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%s" : GoString), Go.toInterface(("hello" : GoString)));
            };
        });
    }
function benchmarkSprintfTruncateString(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%.3s" : GoString), Go.toInterface(("日本語日本語日本語日本語" : GoString)));
            };
        });
    }
function benchmarkSprintfTruncateBytes(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _bytes:AnyInterface = Go.toInterface((("日本語日本語日本語日本語" : GoString) : Slice<GoByte>));
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%.3s" : GoString), _bytes);
            };
        });
    }
function benchmarkSprintfSlowParsingPath(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%.v" : GoString), (null : AnyInterface));
            };
        });
    }
function benchmarkSprintfQuoteString(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%q" : GoString), Go.toInterface(("日本語日本語日本語" : GoString)));
            };
        });
    }
function benchmarkSprintfInt(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%d" : GoString), Go.toInterface((5 : GoInt)));
            };
        });
    }
function benchmarkSprintfIntInt(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%d %d" : GoString), Go.toInterface((5 : GoInt)), Go.toInterface((6 : GoInt)));
            };
        });
    }
function benchmarkSprintfPrefixedInt(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("This is some meaningless prefix text that needs to be scanned %d" : GoString), Go.toInterface((6 : GoInt)));
            };
        });
    }
function benchmarkSprintfFloat(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%g" : GoString), Go.toInterface((5.23184 : GoFloat64)));
            };
        });
    }
function benchmarkSprintfComplex(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%f" : GoString), Go.toInterface(((5.23184 : GoFloat64) + new GoComplex128(0, 5.23184))));
            };
        });
    }
function benchmarkSprintfBoolean(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%t" : GoString), Go.toInterface(true));
            };
        });
    }
function benchmarkSprintfHexString(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("% #x" : GoString), Go.toInterface(("0123456789abcdef" : GoString)));
            };
        });
    }
function benchmarkSprintfHexBytes(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _data = (("0123456789abcdef" : GoString) : Slice<GoByte>);
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("% #x" : GoString), Go.toInterface(_data));
            };
        });
    }
function benchmarkSprintfBytes(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _data = (("0123456789abcdef" : GoString) : Slice<GoByte>);
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%v" : GoString), Go.toInterface(_data));
            };
        });
    }
function benchmarkSprintfStringer(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _stringer:stdgo.fmt_test.Fmt_test.I = ((12345 : stdgo.fmt_test.Fmt_test.I) : I);
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%v" : GoString), Go.toInterface(Go.asInterface(_stringer)));
            };
        });
    }
function benchmarkSprintfStructure(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s = ((new Slice<AnyInterface>(0, 0, Go.toInterface((new SI(Go.toInterface((12345 : GoInt))) : SI)), Go.toInterface(({
            final x = new stdgo.GoMap.GoObjectMap<GoInt, GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) })));
            @:privateAccess x._keys = [(0 : GoInt)];
            @:privateAccess x._values = [("hello" : GoString)];
            x;
        } : stdgo.GoMap<GoInt, GoString>))) : Slice<AnyInterface>) : Ref<Slice<AnyInterface>>);
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                sprintf(("%#v" : GoString), Go.toInterface(_s));
            };
        });
    }
function benchmarkManyArgs(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            while (_pb.next()) {
                _buf.reset();
                fprintf(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), ("%2d/%2d/%2d %d:%d:%d %s %s\n" : GoString), Go.toInterface((3 : GoInt)), Go.toInterface((4 : GoInt)), Go.toInterface((5 : GoInt)), Go.toInterface((11 : GoInt)), Go.toInterface((12 : GoInt)), Go.toInterface((13 : GoInt)), Go.toInterface(("hello" : GoString)), Go.toInterface(("world" : GoString)));
            };
        });
    }
function benchmarkFprintInt(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), Go.toInterface((123456 : GoInt)));
            });
        };
    }
function benchmarkFprintfBytes(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _data = ((("0123456789" : GoString) : GoString) : Slice<GoByte>);
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                fprintf(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), ("%s" : GoString), Go.toInterface(_data));
            });
        };
    }
function benchmarkFprintIntNoAlloc(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _x:AnyInterface = Go.toInterface((123456 : GoInt));
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                fprint(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), _x);
            });
        };
    }
function testCountMallocs(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(("skipping malloc count in short mode" : GoString)));
        } else if (stdgo.runtime.Runtime.gomaxprocs((0 : GoInt)) > (1 : GoInt)) {
            _t.skip(Go.toInterface(("skipping; GOMAXPROCS>1" : GoString)));
        } else if (false) {
            _t.skip(Go.toInterface(("skipping malloc count under race detector" : GoString)));
        };
        for (_0 => _mt in _mallocTest) {
            var _mallocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun((100 : GoInt), _mt._fn);
            {
                var _0:GoFloat64 = _mallocs, _1:GoFloat64 = (_mt._count : GoFloat64), _max:GoFloat64 = _1, _got:GoFloat64 = _0;
                if (_got > _max) {
                    _t.errorf(("%s: got %v allocs, want <=%v" : GoString), Go.toInterface(_mt._desc), Go.toInterface(_got), Go.toInterface(_max));
                };
            };
        };
    }
function testFlagParser(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _flagprinter:T_flagPrinter = ({} : stdgo.fmt_test.Fmt_test.T_flagPrinter);
        for (_0 => _tt in _flagtests) {
            var _s:GoString = sprintf(_tt._in, Go.toInterface(Go.asInterface((_flagprinter : Ref<stdgo.fmt_test.Fmt_test.T_flagPrinter>))));
            if (_s != (_tt._out)) {
                _t.errorf(("Sprintf(%q, &flagprinter) => %q, want %q" : GoString), Go.toInterface(_tt._in), Go.toInterface(_s), Go.toInterface(_tt._out));
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testStructPrinter_0 {
    public var _a : GoString = "";
    public var _b : GoString = "";
    public var _c : GoInt = 0;
    public function new(?_a:GoString, ?_b:GoString, ?_c:GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_testStructPrinter_0(_a, _b, _c);
    }
}
function testStructPrinter(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _s:T_testStructPrinter_0 = ({} : stdgo.fmt_test.Fmt_test.T_testStructPrinter_0);
        _s._a = ("abc" : GoString);
        _s._b = ("def" : GoString);
        _s._c = (123 : GoInt);
        var _tests:Slice<T__struct_6> = (new Slice<T__struct_6>(0, 0, ({ _fmt : ("%v" : GoString), _out : ("{abc def 123}" : GoString) } : T__struct_6), ({ _fmt : ("%+v" : GoString), _out : ("{a:abc b:def c:123}" : GoString) } : T__struct_6), ({ _fmt : ("%#v" : GoString), _out : ("fmt_test.T{a:\"abc\", b:\"def\", c:123}" : GoString) } : T__struct_6)) : Slice<T__struct_6>);
        for (_0 => _tt in _tests) {
            var _out:GoString = sprintf(_tt._fmt, Go.toInterface(_s));
            if (_out != (_tt._out)) {
                _t.errorf(("Sprintf(%q, s) = %#q, want %#q" : GoString), Go.toInterface(_tt._fmt), Go.toInterface(_out), Go.toInterface(_tt._out));
            };
            _out = sprintf(_tt._fmt, Go.toInterface((_s : Ref<stdgo.fmt_test.Fmt_test.T_testStructPrinter_0>)));
            if (_out != (("&" : GoString) + _tt._out)) {
                _t.errorf(("Sprintf(%q, &s) = %#q, want %#q" : GoString), Go.toInterface(_tt._fmt), Go.toInterface(_out), Go.toInterface(("&" : GoString) + _tt._out));
            };
        };
    }
function testSlicePrinter(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _slice = (new Slice<GoInt>(0, 0) : Slice<GoInt>);
        var _s:GoString = sprint(Go.toInterface(_slice));
        if (_s != (("[]" : GoString))) {
            _t.errorf(("empty slice printed as %q not %q" : GoString), Go.toInterface(_s), Go.toInterface(("[]" : GoString)));
        };
        _slice = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (3 : GoInt)) : Slice<GoInt>);
        _s = sprint(Go.toInterface(_slice));
        if (_s != (("[1 2 3]" : GoString))) {
            _t.errorf(("slice: got %q expected %q" : GoString), Go.toInterface(_s), Go.toInterface(("[1 2 3]" : GoString)));
        };
        _s = sprint(Go.toInterface((_slice : Ref<Slice<GoInt>>)));
        if (_s != (("&[1 2 3]" : GoString))) {
            _t.errorf(("&slice: got %q expected %q" : GoString), Go.toInterface(_s), Go.toInterface(("&[1 2 3]" : GoString)));
        };
    }
/**
    // presentInMap checks map printing using substrings so we don't depend on the
    // print order.
**/
private function _presentInMap(_s:GoString, _a:Slice<GoString>, _t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (_a.length), _i++, {
                var _loc:GoInt = stdgo.strings.Strings.index(_s, _a[(_i : GoInt)]);
                if (_loc < (0 : GoInt)) {
                    _t.errorf(("map print: expected to find %q in %q" : GoString), Go.toInterface(_a[(_i : GoInt)]), Go.toInterface(_s));
                };
                _loc = _loc + ((_a[(_i : GoInt)].length));
                if ((_loc >= _s.length) || ((_s[(_loc : GoInt)] != (32 : GoUInt8)) && (_s[(_loc : GoInt)] != (93 : GoUInt8)))) {
                    _t.errorf(("map print: %q not properly terminated in %q" : GoString), Go.toInterface(_a[(_i : GoInt)]), Go.toInterface(_s));
                };
            });
        };
    }
function testMapPrinter(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _m0 = (new GoObjectMap<GoInt, GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }))) : GoMap<GoInt, GoString>);
        var _s:GoString = sprint(Go.toInterface(_m0));
        if (_s != (("map[]" : GoString))) {
            _t.errorf(("empty map printed as %q not %q" : GoString), Go.toInterface(_s), Go.toInterface(("map[]" : GoString)));
        };
        var _m1 = ({
            final x = new stdgo.GoMap.GoObjectMap<GoInt, GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) })));
            @:privateAccess x._keys = [(1 : GoInt), (2 : GoInt), (3 : GoInt)];
            @:privateAccess x._values = [("one" : GoString), ("two" : GoString), ("three" : GoString)];
            x;
        } : stdgo.GoMap<GoInt, GoString>);
        var _a = (new Slice<GoString>(0, 0, ("1:one" : GoString), ("2:two" : GoString), ("3:three" : GoString)) : Slice<GoString>);
        _presentInMap(sprintf(("%v" : GoString), Go.toInterface(_m1)), _a, _t);
        _presentInMap(sprint(Go.toInterface(_m1)), _a, _t);
        if (!stdgo.strings.Strings.hasPrefix(sprint(Go.toInterface((_m1 : Ref<GoMap<GoInt, GoString>>))), ("&" : GoString))) {
            _t.errorf(("no initial & for address of map" : GoString));
        };
        _presentInMap(sprintf(("%v" : GoString), Go.toInterface((_m1 : Ref<GoMap<GoInt, GoString>>))), _a, _t);
        _presentInMap(sprint(Go.toInterface((_m1 : Ref<GoMap<GoInt, GoString>>))), _a, _t);
    }
function testEmptyMap(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _m:GoMap<GoString, GoInt> = (null : GoMap<GoString, GoInt>);
        var _s:GoString = sprint(Go.toInterface(_m));
        if (_s != (("map[]" : GoString))) {
            _t.errorf(("nil map printed as %q not %q" : GoString), Go.toInterface(_s), Go.toInterface(("map[]" : GoString)));
        };
        _m = (new GoObjectMap<GoString, GoInt>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }))) : GoMap<GoString, GoInt>);
        _s = sprint(Go.toInterface(_m));
        if (_s != (("map[]" : GoString))) {
            _t.errorf(("empty map printed as %q not %q" : GoString), Go.toInterface(_s), Go.toInterface(("map[]" : GoString)));
        };
    }
/**
    // TestBlank checks that Sprint (and hence Print, Fprint) puts spaces in the
    // right places, that is, between arg pairs in which neither is a string.
**/
function testBlank(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _got:GoString = sprint(Go.toInterface(("<" : GoString)), Go.toInterface((1 : GoInt)), Go.toInterface((">:" : GoString)), Go.toInterface((1 : GoInt)), Go.toInterface((2 : GoInt)), Go.toInterface((3 : GoInt)), Go.toInterface(("!" : GoString)));
        var _expect:GoString = ("<1>:1 2 3!" : GoString);
        if (_got != (_expect)) {
            _t.errorf(("got %q expected %q" : GoString), Go.toInterface(_got), Go.toInterface(_expect));
        };
    }
/**
    // TestBlankln checks that Sprintln (and hence Println, Fprintln) puts spaces in
    // the right places, that is, between all arg pairs.
**/
function testBlankln(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _got:GoString = sprintln(Go.toInterface(("<" : GoString)), Go.toInterface((1 : GoInt)), Go.toInterface((">:" : GoString)), Go.toInterface((1 : GoInt)), Go.toInterface((2 : GoInt)), Go.toInterface((3 : GoInt)), Go.toInterface(("!" : GoString)));
        var _expect:GoString = ("< 1 >: 1 2 3 !\n" : GoString);
        if (_got != (_expect)) {
            _t.errorf(("got %q expected %q" : GoString), Go.toInterface(_got), Go.toInterface(_expect));
        };
    }
/**
    // TestFormatterPrintln checks Formatter with Sprint, Sprintln, Sprintf.
**/
function testFormatterPrintln(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _f:stdgo.fmt_test.Fmt_test.F = ((1 : stdgo.fmt_test.Fmt_test.F) : F);
        var _expect:GoString = ("<v=F(1)>\n" : GoString);
        var _s:GoString = sprint(Go.toInterface(Go.asInterface(_f)), Go.toInterface(("\n" : GoString)));
        if (_s != (_expect)) {
            _t.errorf(("Sprint wrong with Formatter: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_s));
        };
        _s = sprintln(Go.toInterface(Go.asInterface(_f)));
        if (_s != (_expect)) {
            _t.errorf(("Sprintln wrong with Formatter: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_s));
        };
        _s = sprintf(("%v\n" : GoString), Go.toInterface(Go.asInterface(_f)));
        if (_s != (_expect)) {
            _t.errorf(("Sprintf wrong with Formatter: expected %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_s));
        };
    }
private function _args(_a:haxe.Rest<AnyInterface>):Slice<AnyInterface> {
        var _a = new Slice<AnyInterface>(0, 0, ..._a);
        return _a;
    }
function testWidthAndPrecision(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _tt in _startests) {
            var _s:GoString = sprintf(_tt._fmt, ..._tt._in.__toArray__());
            if (_s != (_tt._out)) {
                _t.errorf(("#%d: %q: got %q expected %q" : GoString), Go.toInterface(_i), Go.toInterface(_tt._fmt), Go.toInterface(_s), Go.toInterface(_tt._out));
            };
        };
    }
function testPanics(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _tt in _panictests) {
            var _s:GoString = sprintf(_tt._fmt, _tt._in);
            if (_s != (_tt._out)) {
                _t.errorf(("%d: %q: got %q expected %q" : GoString), Go.toInterface(_i), Go.toInterface(_tt._fmt), Go.toInterface(_s), Go.toInterface(_tt._out));
            };
        };
    }
function testBadVerbRecursion(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _failed:Bool = false;
        var _r = ((new Recur((3 : GoInt), Go.pointer(_failed)) : Recur) : Ref<stdgo.fmt_test.Fmt_test.Recur>);
        sprintf(("recur@%p value: %d\n" : GoString), Go.toInterface((_r : Ref<Ref<stdgo.fmt_test.Fmt_test.Recur>>)), Go.toInterface(_r._i));
        if (_failed) {
            _t.error(Go.toInterface(("fail with pointer" : GoString)));
        };
        _failed = false;
        _r = ((new Recur((4 : GoInt), Go.pointer(_failed)) : Recur) : Ref<stdgo.fmt_test.Fmt_test.Recur>);
        sprintf(("recur@%p, value: %d\n" : GoString), Go.toInterface(Go.asInterface(_r)), Go.toInterface(_r._i));
        if (_failed) {
            _t.error(Go.toInterface(("fail with value" : GoString)));
        };
    }
function testIsSpace(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (1114111 : GoInt32), _i++, {
                if (isSpace(_i) != (stdgo.unicode.Unicode.isSpace(_i))) {
                    _t.errorf(("isSpace(%U) = %v, want %v" : GoString), Go.toInterface(_i), Go.toInterface(isSpace(_i)), Go.toInterface(stdgo.unicode.Unicode.isSpace(_i)));
                };
            });
        };
    }
private function _hideFromVet(_s:GoString):GoString {
        return _s;
    }
/**
    
    
    
**/
@:structInit class A_testNilDoesNotBecomeTyped_0 {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new A_testNilDoesNotBecomeTyped_0();
    }
}
/**
    
    
    
**/
@:structInit class B_testNilDoesNotBecomeTyped_1 {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new B_testNilDoesNotBecomeTyped_1();
    }
}
function testNilDoesNotBecomeTyped(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        {};
        var _a:Ref<A_testNilDoesNotBecomeTyped_0> = null;
        var _b:B_testNilDoesNotBecomeTyped_1 = (new B_testNilDoesNotBecomeTyped_1() : B_testNilDoesNotBecomeTyped_1);
        var _got:GoString = sprintf(_hideFromVet(("%s %s %s %s %s" : GoString)), (null : AnyInterface), Go.toInterface(_a), (null : AnyInterface), Go.toInterface(_b), (null : AnyInterface));
        {};
        if (_got != (("%!s(<nil>) %!s(*fmt_test.A=<nil>) %!s(<nil>) {} %!s(<nil>)" : GoString))) {
            _t.errorf(("expected:\n\t%q\ngot:\n\t%q" : GoString), Go.toInterface(("%!s(<nil>) %!s(*fmt_test.A=<nil>) %!s(<nil>) {} %!s(<nil>)" : GoString)), Go.toInterface(_got));
        };
    }
function testFormatterFlags(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _tt in _formatterFlagTests) {
            var _s:GoString = sprintf(_tt._in, _tt._val);
            if (_s != (_tt._out)) {
                _t.errorf(("Sprintf(%q, %T) = %q, want %q" : GoString), Go.toInterface(_tt._in), _tt._val, Go.toInterface(_s), Go.toInterface(_tt._out));
            };
        };
    }
function testParsenum(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _testCases = (new Slice<T__struct_10>(0, 0, ({ _s : ("a123" : GoString), _start : (0 : GoInt), _end : (4 : GoInt), _num : (0 : GoInt), _isnum : false, _newi : (0 : GoInt) } : T__struct_10), ({ _s : ("1234" : GoString), _start : (1 : GoInt), _end : (1 : GoInt), _num : (0 : GoInt), _isnum : false, _newi : (1 : GoInt) } : T__struct_10), ({ _s : ("123a" : GoString), _start : (0 : GoInt), _end : (4 : GoInt), _num : (123 : GoInt), _isnum : true, _newi : (3 : GoInt) } : T__struct_10), ({ _s : ("12a3" : GoString), _start : (0 : GoInt), _end : (4 : GoInt), _num : (12 : GoInt), _isnum : true, _newi : (2 : GoInt) } : T__struct_10), ({ _s : ("1234" : GoString), _start : (0 : GoInt), _end : (4 : GoInt), _num : (1234 : GoInt), _isnum : true, _newi : (4 : GoInt) } : T__struct_10), ({ _s : ("1a234" : GoString), _start : (1 : GoInt), _end : (3 : GoInt), _num : (0 : GoInt), _isnum : false, _newi : (1 : GoInt) } : T__struct_10)) : Slice<T__struct_10>);
        for (_0 => _tt in _testCases) {
            var __tmp__ = parsenum(_tt._s, _tt._start, _tt._end), _num:GoInt = __tmp__._0, _isnum:Bool = __tmp__._1, _newi:GoInt = __tmp__._2;
            if (((_num != _tt._num) || (_isnum != _tt._isnum)) || (_newi != _tt._newi)) {
                _t.errorf(("parsenum(%q, %d, %d) = %d, %v, %d, want %d, %v, %d" : GoString), Go.toInterface(_tt._s), Go.toInterface(_tt._start), Go.toInterface(_tt._end), Go.toInterface(_num), Go.toInterface(_isnum), Go.toInterface(_newi), Go.toInterface(_tt._num), Go.toInterface(_tt._isnum), Go.toInterface(_tt._newi));
            };
        };
    }
function testAppendf(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b = new Slice<GoUInt8>((100 : GoInt).toBasic(), 0, ...[for (i in 0 ... (100 : GoInt).toBasic()) (0 : GoUInt8)]);
        _b = (_b.__slice__(0, Go.copySlice(_b, ("hello " : GoString))) : Slice<GoUInt8>);
        var _got = appendf(_b, ("world, %d" : GoString), Go.toInterface((23 : GoInt)));
        if ((_got : GoString) != (("hello world, 23" : GoString))) {
            _t.fatalf(("Appendf returns %q not %q" : GoString), Go.toInterface(_got), Go.toInterface(("hello world, 23" : GoString)));
        };
        if (Go.pointer(_b[(0 : GoInt)]) != (Go.pointer(_got[(0 : GoInt)]))) {
            _t.fatalf(("Appendf allocated a new slice" : GoString));
        };
    }
function testAppend(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b = new Slice<GoUInt8>((100 : GoInt).toBasic(), 0, ...[for (i in 0 ... (100 : GoInt).toBasic()) (0 : GoUInt8)]);
        _b = (_b.__slice__(0, Go.copySlice(_b, ("hello " : GoString))) : Slice<GoUInt8>);
        var _got = append(_b, Go.toInterface(("world" : GoString)), Go.toInterface((", " : GoString)), Go.toInterface((23 : GoInt)));
        if ((_got : GoString) != (("hello world, 23" : GoString))) {
            _t.fatalf(("Append returns %q not %q" : GoString), Go.toInterface(_got), Go.toInterface(("hello world, 23" : GoString)));
        };
        if (Go.pointer(_b[(0 : GoInt)]) != (Go.pointer(_got[(0 : GoInt)]))) {
            _t.fatalf(("Append allocated a new slice" : GoString));
        };
    }
function testAppendln(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b = new Slice<GoUInt8>((100 : GoInt).toBasic(), 0, ...[for (i in 0 ... (100 : GoInt).toBasic()) (0 : GoUInt8)]);
        _b = (_b.__slice__(0, Go.copySlice(_b, ("hello " : GoString))) : Slice<GoUInt8>);
        var _got = appendln(_b, Go.toInterface(("world," : GoString)), Go.toInterface((23 : GoInt)));
        if ((_got : GoString) != (("hello world, 23\n" : GoString))) {
            _t.fatalf(("Appendln returns %q not %q" : GoString), Go.toInterface(_got), Go.toInterface(("hello world, 23\n" : GoString)));
        };
        if (Go.pointer(_b[(0 : GoInt)]) != (Go.pointer(_got[(0 : GoInt)]))) {
            _t.fatalf(("Appendln allocated a new slice" : GoString));
        };
    }
function exampleGoStringer():Void {
        var _p1:stdgo.fmt_test.Fmt_test.Person = ({ name : ("Warren" : GoString), age : ("31" : GoUInt), addr : (({ city : ("Denver" : GoString), state : ("CO" : GoString), country : ("U.S.A." : GoString) } : Address) : Ref<stdgo.fmt_test.Fmt_test.Address>) } : Person);
        stdgo.fmt.Fmt.printf(("%#v\n" : GoString), Go.toInterface(Go.asInterface(_p1)));
        var _p2:stdgo.fmt_test.Fmt_test.Person = ({ name : ("Theia" : GoString), age : ("4" : GoUInt) } : Person);
        stdgo.fmt.Fmt.printf(("%#v\n" : GoString), Go.toInterface(Go.asInterface(_p2)));
    }
private function _testScan(_t:Ref<stdgo.testing.Testing.T>, _f:GoString -> stdgo.io.Io.Reader, _scan:(_r:stdgo.io.Io.Reader, _a:haxe.Rest<AnyInterface>) -> { var _0 : GoInt; var _1 : Error; }):Void {
        for (_0 => _test in _scanTests) {
            var _r:stdgo.io.Io.Reader = _f(_test._text);
            var __tmp__ = _scan(_r, _test._in), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                var _m:GoString = Go.str();
                if (_n > (0 : GoInt)) {
                    _m = sprintf((" (%d fields ok)" : GoString), Go.toInterface(_n));
                };
                _t.errorf(("got error scanning %q: %s%s" : GoString), Go.toInterface(_test._text), Go.toInterface(_err), Go.toInterface(_m));
                continue;
            };
            if (_n != ((1 : GoInt))) {
                _t.errorf(("count error on entry %q: got %d" : GoString), Go.toInterface(_test._text), Go.toInterface(_n));
                continue;
            };
            var _v:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(_test._in) == null ? null : stdgo.reflect.Reflect.valueOf(_test._in).__copy__());
            {
                var _p:stdgo.reflect.Reflect.Value = (_v == null ? null : _v.__copy__());
                if (_p.kind() == ((("22" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
                    _v = (_p.elem() == null ? null : _p.elem().__copy__());
                };
            };
            var _val:AnyInterface = _v.interface_();
            if (!stdgo.reflect.Reflect.deepEqual(_val, _test._out)) {
                _t.errorf(("scanning %q: expected %#v got %#v, type %T" : GoString), Go.toInterface(_test._text), _test._out, _val, _val);
            };
        };
    }
function testScan(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _r in _readers) {
            _t.run(_r._name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
                _testScan(_t, _r._f, fscan);
            });
        };
    }
function testScanln(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _r in _readers) {
            _t.run(_r._name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
                _testScan(_t, _r._f, fscanln);
            });
        };
    }
function testScanf(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _scanfTests) {
            var __tmp__ = sscanf(_test._text, _test._format, _test._in), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                if (_test._out != null) {
                    _t.errorf(("Sscanf(%q, %q): unexpected error: %v" : GoString), Go.toInterface(_test._text), Go.toInterface(_test._format), Go.toInterface(_err));
                };
                continue;
            };
            if (_test._out == null) {
                _t.errorf(("Sscanf(%q, %q): unexpected success" : GoString), Go.toInterface(_test._text), Go.toInterface(_test._format));
                continue;
            };
            if (_n != ((1 : GoInt))) {
                _t.errorf(("Sscanf(%q, %q): parsed %d field, want 1" : GoString), Go.toInterface(_test._text), Go.toInterface(_test._format), Go.toInterface(_n));
                continue;
            };
            var _v:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(_test._in) == null ? null : stdgo.reflect.Reflect.valueOf(_test._in).__copy__());
            {
                var _p:stdgo.reflect.Reflect.Value = (_v == null ? null : _v.__copy__());
                if (_p.kind() == ((("22" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
                    _v = (_p.elem() == null ? null : _p.elem().__copy__());
                };
            };
            var _val:AnyInterface = _v.interface_();
            if (!stdgo.reflect.Reflect.deepEqual(_val, _test._out)) {
                _t.errorf(("Sscanf(%q, %q): parsed value %T(%#v), want %T(%#v)" : GoString), Go.toInterface(_test._text), Go.toInterface(_test._format), _val, _val, _test._out, _test._out);
            };
        };
    }
function testScanOverflow(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("overflow|too large|out of range|not representable" : GoString));
        for (_0 => _test in _overflowTests) {
            var __tmp__ = sscan(_test._text, _test._in), _1:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(("expected overflow scanning %q" : GoString), Go.toInterface(_test._text));
                continue;
            };
            if (!_re.matchString(_err.error())) {
                _t.errorf(("expected overflow error scanning %q: %s" : GoString), Go.toInterface(_test._text), Go.toInterface(_err));
            };
        };
    }
private function _verifyNaN(_str:GoString, _t:Ref<stdgo.testing.Testing.T>):Void {
        var _f:GoFloat64 = (0 : GoFloat64);
        var _f32:GoFloat32 = (0 : GoFloat32);
        var _f64:GoFloat64 = (0 : GoFloat64);
        var _text:GoString = (((_str + (" " : GoString)) + _str) + (" " : GoString)) + _str;
        var __tmp__ = fscan(Go.asInterface(stdgo.strings.Strings.newReader(_text)), Go.toInterface(Go.pointer(_f)), Go.toInterface(Go.pointer(_f32)), Go.toInterface(Go.pointer(_f64))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("got error scanning %q: %s" : GoString), Go.toInterface(_text), Go.toInterface(_err));
        };
        if (_n != ((3 : GoInt))) {
            _t.errorf(("count error scanning %q: got %d" : GoString), Go.toInterface(_text), Go.toInterface(_n));
        };
        if ((!stdgo.math.Math.isNaN((_f : GoFloat64)) || !stdgo.math.Math.isNaN((_f32 : GoFloat64))) || !stdgo.math.Math.isNaN(_f64)) {
            _t.errorf(("didn\'t get NaNs scanning %q: got %g %g %g" : GoString), Go.toInterface(_text), Go.toInterface(_f), Go.toInterface(_f32), Go.toInterface(_f64));
        };
    }
function testNaN(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _s in (new Slice<GoString>(0, 0, ("nan" : GoString), ("NAN" : GoString), ("NaN" : GoString)) : Slice<GoString>)) {
            _verifyNaN(_s, _t);
        };
    }
private function _verifyInf(_str:GoString, _t:Ref<stdgo.testing.Testing.T>):Void {
        var _f:GoFloat64 = (0 : GoFloat64);
        var _f32:GoFloat32 = (0 : GoFloat32);
        var _f64:GoFloat64 = (0 : GoFloat64);
        var _text:GoString = (((_str + (" " : GoString)) + _str) + (" " : GoString)) + _str;
        var __tmp__ = fscan(Go.asInterface(stdgo.strings.Strings.newReader(_text)), Go.toInterface(Go.pointer(_f)), Go.toInterface(Go.pointer(_f32)), Go.toInterface(Go.pointer(_f64))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("got error scanning %q: %s" : GoString), Go.toInterface(_text), Go.toInterface(_err));
        };
        if (_n != ((3 : GoInt))) {
            _t.errorf(("count error scanning %q: got %d" : GoString), Go.toInterface(_text), Go.toInterface(_n));
        };
        var _sign:GoInt = (1 : GoInt);
        if (_str[(0 : GoInt)] == ((45 : GoUInt8))) {
            _sign = (-1 : GoInt);
        };
        if ((!stdgo.math.Math.isInf((_f : GoFloat64), _sign) || !stdgo.math.Math.isInf((_f32 : GoFloat64), _sign)) || !stdgo.math.Math.isInf(_f64, _sign)) {
            _t.errorf(("didn\'t get right Infs scanning %q: got %g %g %g" : GoString), Go.toInterface(_text), Go.toInterface(_f), Go.toInterface(_f32), Go.toInterface(_f64));
        };
    }
function testInf(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _s in (new Slice<GoString>(
0,
0,
("inf" : GoString),
("+inf" : GoString),
("-inf" : GoString),
("INF" : GoString),
("-INF" : GoString),
("+INF" : GoString),
("Inf" : GoString),
("-Inf" : GoString),
("+Inf" : GoString)) : Slice<GoString>)) {
            _verifyInf(_s, _t);
        };
    }
private function _testScanfMulti(_t:Ref<stdgo.testing.Testing.T>, _f:GoString -> stdgo.io.Io.Reader):Void {
        var _sliceType:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(new Slice<AnyInterface>((1 : GoInt).toBasic(), 0, ...[for (i in 0 ... (1 : GoInt).toBasic()) (null : AnyInterface)])));
        for (_0 => _test in _multiTests) {
            var _r:stdgo.io.Io.Reader = _f(_test._text);
            var __tmp__ = fscanf(_r, _test._format, ..._test._in.__toArray__()), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                if (_test._err == (Go.str())) {
                    _t.errorf(("got error scanning (%q, %q): %q" : GoString), Go.toInterface(_test._format), Go.toInterface(_test._text), Go.toInterface(_err));
                } else if (!stdgo.strings.Strings.contains(_err.error(), _test._err)) {
                    _t.errorf(("got wrong error scanning (%q, %q): %q; expected %q" : GoString), Go.toInterface(_test._format), Go.toInterface(_test._text), Go.toInterface(_err), Go.toInterface(_test._err));
                };
                continue;
            };
            if (_test._err != (Go.str())) {
                _t.errorf(("expected error %q error scanning (%q, %q)" : GoString), Go.toInterface(_test._err), Go.toInterface(_test._format), Go.toInterface(_test._text));
            };
            if (_n != ((_test._out.length))) {
                _t.errorf(("count error on entry (%q, %q): expected %d got %d" : GoString), Go.toInterface(_test._format), Go.toInterface(_test._text), Go.toInterface((_test._out.length)), Go.toInterface(_n));
                continue;
            };
            var _resultVal:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.makeSlice(_sliceType, _n, _n) == null ? null : stdgo.reflect.Reflect.makeSlice(_sliceType, _n, _n).__copy__());
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _n, _i++, {
                    var _v:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(_test._in[(_i : GoInt)]).elem() == null ? null : stdgo.reflect.Reflect.valueOf(_test._in[(_i : GoInt)]).elem().__copy__());
                    _resultVal.index(_i).set((_v == null ? null : _v.__copy__()));
                });
            };
            var _result:AnyInterface = _resultVal.interface_();
            if (!stdgo.reflect.Reflect.deepEqual(_result, Go.toInterface(_test._out))) {
                _t.errorf(("scanning (%q, %q): expected %#v got %#v" : GoString), Go.toInterface(_test._format), Go.toInterface(_test._text), Go.toInterface(_test._out), _result);
            };
        };
    }
function testScanfMulti(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _r in _readers) {
            _t.run(_r._name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
                _testScanfMulti(_t, _r._f);
            });
        };
    }
function testScanMultiple(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _a:GoInt = (0 : GoInt);
        var _s:GoString = ("" : GoString);
        var __tmp__ = sscan(("123abc" : GoString), Go.toInterface(Go.pointer(_a)), Go.toInterface(Go.pointer(_s))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_n != ((2 : GoInt))) {
            _t.errorf(("Sscan count error: expected 2: got %d" : GoString), Go.toInterface(_n));
        };
        if (_err != null) {
            _t.errorf(("Sscan expected no error; got %s" : GoString), Go.toInterface(_err));
        };
        if ((_a != (123 : GoInt)) || (_s != ("abc" : GoString))) {
            _t.errorf(("Sscan wrong values: got (%d %q) expected (123 \"abc\")" : GoString), Go.toInterface(_a), Go.toInterface(_s));
        };
        {
            var __tmp__ = sscan(("asdf" : GoString), Go.toInterface(Go.pointer(_s)), Go.toInterface(Go.pointer(_a)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((1 : GoInt))) {
            _t.errorf(("Sscan count error: expected 1: got %d" : GoString), Go.toInterface(_n));
        };
        if (_err == null) {
            _t.errorf(("Sscan expected error; got none: %s" : GoString), Go.toInterface(_err));
        };
        if (_s != (("asdf" : GoString))) {
            _t.errorf(("Sscan wrong values: got %q expected \"asdf\"" : GoString), Go.toInterface(_s));
        };
    }
/**
    // Empty strings are not valid input when scanning a string.
**/
function testScanEmpty(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _0:GoString = ("" : GoString), _1:GoString = ("" : GoString), _s2:GoString = _1, _s1:GoString = _0;
        var __tmp__ = sscan(("abc" : GoString), Go.toInterface(Go.pointer(_s1)), Go.toInterface(Go.pointer(_s2))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_n != ((1 : GoInt))) {
            _t.errorf(("Sscan count error: expected 1: got %d" : GoString), Go.toInterface(_n));
        };
        if (_err == null) {
            _t.error(Go.toInterface(("Sscan <one item> expected error; got none" : GoString)));
        };
        if (_s1 != (("abc" : GoString))) {
            _t.errorf(("Sscan wrong values: got %q expected \"abc\"" : GoString), Go.toInterface(_s1));
        };
        {
            var __tmp__ = sscan(Go.str(), Go.toInterface(Go.pointer(_s1)), Go.toInterface(Go.pointer(_s2)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((0 : GoInt))) {
            _t.errorf(("Sscan count error: expected 0: got %d" : GoString), Go.toInterface(_n));
        };
        if (_err == null) {
            _t.error(Go.toInterface(("Sscan <empty> expected error; got none" : GoString)));
        };
        {
            var __tmp__ = sscanf(("\"\"" : GoString), ("%q" : GoString), Go.toInterface(Go.pointer(_s1)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((1 : GoInt))) {
            _t.errorf(("Sscanf count error: expected 1: got %d" : GoString), Go.toInterface(_n));
        };
        if (_err != null) {
            _t.errorf(("Sscanf <empty> expected no error with quoted string; got %s" : GoString), Go.toInterface(_err));
        };
    }
function testScanNotPointer(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r = stdgo.strings.Strings.newReader(("1" : GoString));
        var _a:GoInt = (0 : GoInt);
        var __tmp__ = fscan(Go.asInterface(_r), Go.toInterface(_a)), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err == null) {
            _t.error(Go.toInterface(("expected error scanning non-pointer" : GoString)));
        } else if (!stdgo.strings.Strings.contains(_err.error(), ("pointer" : GoString))) {
            _t.errorf(("expected pointer error scanning non-pointer, got: %s" : GoString), Go.toInterface(_err));
        };
    }
function testScanlnNoNewline(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _a:GoInt = (0 : GoInt);
        var __tmp__ = sscanln(("1 x\n" : GoString), Go.toInterface(Go.pointer(_a))), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err == null) {
            _t.error(Go.toInterface(("expected error scanning string missing newline" : GoString)));
        } else if (!stdgo.strings.Strings.contains(_err.error(), ("newline" : GoString))) {
            _t.errorf(("expected newline error scanning string missing newline, got: %s" : GoString), Go.toInterface(_err));
        };
    }
function testScanlnWithMiddleNewline(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r = stdgo.strings.Strings.newReader(("123\n456\n" : GoString));
        var _0:GoInt = (0 : GoInt), _1:GoInt = (0 : GoInt), _b:GoInt = _1, _a:GoInt = _0;
        var __tmp__ = fscanln(Go.asInterface(_r), Go.toInterface(Go.pointer(_a)), Go.toInterface(Go.pointer(_b))), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err == null) {
            _t.error(Go.toInterface(("expected error scanning string with extra newline" : GoString)));
        } else if (!stdgo.strings.Strings.contains(_err.error(), ("newline" : GoString))) {
            _t.errorf(("expected newline error scanning string with extra newline, got: %s" : GoString), Go.toInterface(_err));
        };
    }
/**
    // TestEOF verifies that when we scan, we see at most EOF once per call to a
    // Scan function, and then only when it's really an EOF.
**/
function testEOF(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _ec = ((new T_eofCounter(stdgo.strings.Strings.newReader(("123\n" : GoString)), (0 : GoInt)) : T_eofCounter) : Ref<stdgo.fmt_test.Fmt_test.T_eofCounter>);
        var _a:GoInt = (0 : GoInt);
        var __tmp__ = fscanln(Go.asInterface(_ec), Go.toInterface(Go.pointer(_a))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(("unexpected error" : GoString)), Go.toInterface(_err));
        };
        if (_n != ((1 : GoInt))) {
            _t.error(Go.toInterface(("expected to scan one item, got" : GoString)), Go.toInterface(_n));
        };
        if (_ec._eofCount != ((0 : GoInt))) {
            _t.error(Go.toInterface(("expected zero EOFs" : GoString)), Go.toInterface(_ec._eofCount));
            _ec._eofCount = (0 : GoInt);
        };
        {
            var __tmp__ = fscanln(Go.asInterface(_ec), Go.toInterface(Go.pointer(_a)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.error(Go.toInterface(("expected error scanning empty string" : GoString)));
        };
        if (_n != ((0 : GoInt))) {
            _t.error(Go.toInterface(("expected to scan zero items, got" : GoString)), Go.toInterface(_n));
        };
        if (_ec._eofCount != ((1 : GoInt))) {
            _t.error(Go.toInterface(("expected one EOF, got" : GoString)), Go.toInterface(_ec._eofCount));
        };
    }
/**
    // TestEOFAtEndOfInput verifies that we see an EOF error if we run out of input.
    // This was a buglet: we used to get "expected integer".
**/
function testEOFAtEndOfInput(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _0:GoInt = (0 : GoInt), _1:GoInt = (0 : GoInt), _j:GoInt = _1, _i:GoInt = _0;
        var __tmp__ = sscanf(("23" : GoString), ("%d %d" : GoString), Go.toInterface(Go.pointer(_i)), Go.toInterface(Go.pointer(_j))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if ((_n != (1 : GoInt)) || (_i != (23 : GoInt))) {
            _t.errorf(("Sscanf expected one value of 23; got %d %d" : GoString), Go.toInterface(_n), Go.toInterface(_i));
        };
        if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
            _t.errorf(("Sscanf expected EOF; got %q" : GoString), Go.toInterface(_err));
        };
        {
            var __tmp__ = sscan(("234" : GoString), Go.toInterface(Go.pointer(_i)), Go.toInterface(Go.pointer(_j)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != (1 : GoInt)) || (_i != (234 : GoInt))) {
            _t.errorf(("Sscan expected one value of 234; got %d %d" : GoString), Go.toInterface(_n), Go.toInterface(_i));
        };
        if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
            _t.errorf(("Sscan expected EOF; got %q" : GoString), Go.toInterface(_err));
        };
        {
            var __tmp__ = sscan(("234 " : GoString), Go.toInterface(Go.pointer(_i)), Go.toInterface(Go.pointer(_j)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != (1 : GoInt)) || (_i != (234 : GoInt))) {
            _t.errorf(("Sscan expected one value of 234; got %d %d" : GoString), Go.toInterface(_n), Go.toInterface(_i));
        };
        if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
            _t.errorf(("Sscan expected EOF; got %q" : GoString), Go.toInterface(_err));
        };
    }
function testEOFAllTypes(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _test in _eofTests) {
            {
                var __tmp__ = sscanf(Go.str(), _test._format, _test._v), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
                    _t.errorf(("#%d: %s %T not eof on empty string: %s" : GoString), Go.toInterface(_i), Go.toInterface(_test._format), _test._v, Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = sscanf(("   " : GoString), _test._format, _test._v), _1:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.eof))) {
                    _t.errorf(("#%d: %s %T not eof on trailing blanks: %s" : GoString), Go.toInterface(_i), Go.toInterface(_test._format), _test._v, Go.toInterface(_err));
                };
            };
        };
    }
/**
    // TestUnreadRuneWithBufio verifies that, at least when using bufio, successive
    // calls to Fscan do not lose runes.
**/
function testUnreadRuneWithBufio(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r = stdgo.bufio.Bufio.newReader(Go.asInterface(stdgo.strings.Strings.newReader(("123αb" : GoString))));
        var _i:GoInt = (0 : GoInt);
        var _a:GoString = ("" : GoString);
        var __tmp__ = fscanf(Go.asInterface(_r), ("%d" : GoString), Go.toInterface(Go.pointer(_i))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if ((_n != (1 : GoInt)) || (_err != null)) {
            _t.errorf(("reading int expected one item, no errors; got %d %q" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        if (_i != ((123 : GoInt))) {
            _t.errorf(("expected 123; got %d" : GoString), Go.toInterface(_i));
        };
        {
            var __tmp__ = fscanf(Go.asInterface(_r), ("%s" : GoString), Go.toInterface(Go.pointer(_a)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != (1 : GoInt)) || (_err != null)) {
            _t.errorf(("reading string expected one item, no errors; got %d %q" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        if (_a != (("αb" : GoString))) {
            _t.errorf(("expected αb; got %q" : GoString), Go.toInterface(_a));
        };
    }
function testMultiLine(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _input:GoString = ("abc\ndef\n" : GoString);
        var _tscan:TwoLines = (("" : GoString) : stdgo.fmt_test.Fmt_test.TwoLines);
        var __tmp__ = sscan(_input, Go.toInterface(Go.pointer(_tscan))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_n != ((1 : GoInt))) {
            _t.errorf(("Sscan: expected 1 item; got %d" : GoString), Go.toInterface(_n));
        };
        if (_err != null) {
            _t.errorf(("Sscan: expected no error; got %s" : GoString), Go.toInterface(_err));
        };
        if ((_tscan : GoString) != (_input)) {
            _t.errorf(("Sscan: expected %q; got %q" : GoString), Go.toInterface(_input), Go.toInterface(Go.asInterface(_tscan)));
        };
        var _tscanf:TwoLines = (("" : GoString) : stdgo.fmt_test.Fmt_test.TwoLines);
        {
            var __tmp__ = sscanf(_input, ("%s" : GoString), Go.toInterface(Go.pointer(_tscanf)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((1 : GoInt))) {
            _t.errorf(("Sscanf: expected 1 item; got %d" : GoString), Go.toInterface(_n));
        };
        if (_err != null) {
            _t.errorf(("Sscanf: expected no error; got %s" : GoString), Go.toInterface(_err));
        };
        if ((_tscanf : GoString) != (_input)) {
            _t.errorf(("Sscanf: expected %q; got %q" : GoString), Go.toInterface(_input), Go.toInterface(Go.asInterface(_tscanf)));
        };
        var _tscanln:TwoLines = (("" : GoString) : stdgo.fmt_test.Fmt_test.TwoLines);
        {
            var __tmp__ = sscanln(_input, Go.toInterface(Go.pointer(_tscanln)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((0 : GoInt))) {
            _t.errorf(("Sscanln: expected 0 items; got %d: %q" : GoString), Go.toInterface(_n), Go.toInterface(Go.asInterface(_tscanln)));
        };
        if (_err == null) {
            _t.error(Go.toInterface(("Sscanln: expected error; got none" : GoString)));
        } else if (Go.toInterface(_err) != (Go.toInterface(stdgo.io.Io.errUnexpectedEOF))) {
            _t.errorf(("Sscanln: expected io.ErrUnexpectedEOF (ha!); got %s" : GoString), Go.toInterface(_err));
        };
    }
/**
    // TestLineByLineFscanf tests that Fscanf does not read past newline. Issue
    // 3481.
**/
function testLineByLineFscanf(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r:T__struct_12 = ({ reader : Go.asInterface(stdgo.strings.Strings.newReader(("1\n2\n" : GoString))) } : T__struct_12);
        var _0:GoInt = (0 : GoInt), _1:GoInt = (0 : GoInt), _j:GoInt = _1, _i:GoInt = _0;
        var __tmp__ = fscanf(Go.asInterface(_r), ("%v\n" : GoString), Go.toInterface(Go.pointer(_i))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if ((_n != (1 : GoInt)) || (_err != null)) {
            _t.fatalf(("first read: %d %q" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = fscanf(Go.asInterface(_r), ("%v\n" : GoString), Go.toInterface(Go.pointer(_j)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != (1 : GoInt)) || (_err != null)) {
            _t.fatalf(("second read: %d %q" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        if ((_i != (1 : GoInt)) || (_j != (2 : GoInt))) {
            _t.errorf(("wrong values; wanted 1 2 got %d %d" : GoString), Go.toInterface(_i), Go.toInterface(_j));
        };
    }
function testScanStateCount(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _0:T_runeScanner = ({} : stdgo.fmt_test.Fmt_test.T_runeScanner), _1:T_runeScanner = ({} : stdgo.fmt_test.Fmt_test.T_runeScanner), _2:T_runeScanner = ({} : stdgo.fmt_test.Fmt_test.T_runeScanner), _c:T_runeScanner = _2, _b:T_runeScanner = _1, _a:T_runeScanner = _0;
        var __tmp__ = sscanf(("12➂" : GoString), ("%c%c%c" : GoString), Go.toInterface(Go.asInterface((_a : Ref<stdgo.fmt_test.Fmt_test.T_runeScanner>))), Go.toInterface(Go.asInterface((_b : Ref<stdgo.fmt_test.Fmt_test.T_runeScanner>))), Go.toInterface(Go.asInterface((_c : Ref<stdgo.fmt_test.Fmt_test.T_runeScanner>)))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (_n != ((3 : GoInt))) {
            _t.fatalf(("expected 3 items consumed, got %d" : GoString), Go.toInterface(_n));
        };
        if (((_a._rune != (49 : GoInt32)) || (_b._rune != (50 : GoInt32))) || (_c._rune != (10114 : GoInt32))) {
            _t.errorf(("bad scan rune: %q %q %q should be \'1\' \'2\' \'➂\'" : GoString), Go.toInterface(_a._rune), Go.toInterface(_b._rune), Go.toInterface(_c._rune));
        };
        if (((_a._size != (1 : GoInt)) || (_b._size != (1 : GoInt))) || (_c._size != (3 : GoInt))) {
            _t.errorf(("bad scan size: %q %q %q should be 1 1 3" : GoString), Go.toInterface(_a._size), Go.toInterface(_b._size), Go.toInterface(_c._size));
        };
    }
/**
    // scanInts performs the same scanning task as RecursiveInt.Scan
    // but without recurring through scanner, so we can compare
    // performance more directly.
**/
private function _scanInts(_r:Ref<RecursiveInt>, _b:Ref<stdgo.bytes.Bytes.Buffer>):Error {
        var _err:Error = (null : Error);
        _r._next = null;
        {
            var __tmp__ = fscan(Go.asInterface(_b), Go.toInterface(Go.pointer(_r._i)));
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _b.readRune(), _c:GoInt32 = __tmp__._0, _0:GoInt = __tmp__._1, _err:Error = __tmp__._2;
        if (_err != null) {
            if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
                _err = (null : Error);
            };
            return _err;
        };
        if (_c != ((46 : GoInt32))) {
            return _err;
        };
        var _next = ({} : stdgo.fmt_test.Fmt_test.RecursiveInt);
        _err = _scanInts(_next, _b);
        if (_err == null) {
            _r._next = _next;
        };
        return _err;
    }
private function _makeInts(_n:GoInt):Slice<GoByte> {
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        fprintf(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), ("1" : GoString));
        {
            var _i:GoInt = (1 : GoInt);
            Go.cfor(_i < _n, _i++, {
                fprintf(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), (".%d" : GoString), Go.toInterface(_i + (1 : GoInt)));
            });
        };
        return _buf.bytes();
    }
function testScanInts(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testScanInts(_t, _scanInts);
        _testScanInts(_t, function(_r:Ref<RecursiveInt>, _b:Ref<stdgo.bytes.Bytes.Buffer>):Error {
            var _err:Error = (null : Error);
            {
                var __tmp__ = fscan(Go.asInterface(_b), Go.toInterface(Go.asInterface(_r)));
                _err = __tmp__._1;
            };
            return _err;
        });
    }
private function _testScanInts(_t:Ref<stdgo.testing.Testing.T>, _scan:(Ref<RecursiveInt>, Ref<stdgo.bytes.Bytes.Buffer>) -> Error):Void {
        var _r = ({} : stdgo.fmt_test.Fmt_test.RecursiveInt);
        var _ints = _makeInts((800 : GoInt));
        var _buf = stdgo.bytes.Bytes.newBuffer(_ints);
        var _err:Error = _scan(_r, _buf);
        if (_err != null) {
            _t.error(Go.toInterface(("unexpected error" : GoString)), Go.toInterface(_err));
        };
        var _i:GoInt = (1 : GoInt);
        Go.cfor(_r != null, _r = _r._next, {
            if (_r._i != (_i)) {
                _t.fatalf(("bad scan: expected %d got %d" : GoString), Go.toInterface(_i), Go.toInterface(_r._i));
            };
            _i++;
        });
        if (_i - (1 : GoInt) != ((800 : GoInt))) {
            _t.fatalf(("bad scan count: expected %d got %d" : GoString), Go.toInterface((800 : GoInt)), Go.toInterface(_i - (1 : GoInt)));
        };
    }
function benchmarkScanInts(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.resetTimer();
        var _ints = _makeInts((800 : GoInt));
        var _r:RecursiveInt = ({} : stdgo.fmt_test.Fmt_test.RecursiveInt);
        {
            var _i:GoInt = _b.n - (1 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                var _buf = stdgo.bytes.Bytes.newBuffer(_ints);
                _b.startTimer();
                _scanInts((_r : Ref<stdgo.fmt_test.Fmt_test.RecursiveInt>), _buf);
                _b.stopTimer();
            });
        };
    }
function benchmarkScanRecursiveInt(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.resetTimer();
        var _ints = _makeInts((800 : GoInt));
        var _r:RecursiveInt = ({} : stdgo.fmt_test.Fmt_test.RecursiveInt);
        {
            var _i:GoInt = _b.n - (1 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                var _buf = stdgo.bytes.Bytes.newBuffer(_ints);
                _b.startTimer();
                fscan(Go.asInterface(_buf), Go.toInterface(Go.asInterface((_r : Ref<stdgo.fmt_test.Fmt_test.RecursiveInt>))));
                _b.stopTimer();
            });
        };
    }
function benchmarkScanRecursiveIntReaderWrapper(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.resetTimer();
        var _ints = _makeInts((800 : GoInt));
        var _r:RecursiveInt = ({} : stdgo.fmt_test.Fmt_test.RecursiveInt);
        {
            var _i:GoInt = _b.n - (1 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                var _buf:T__struct_12 = ({ reader : Go.asInterface(stdgo.strings.Strings.newReader((_ints : GoString))) } : T__struct_12);
                _b.startTimer();
                fscan(Go.asInterface(_buf), Go.toInterface(Go.asInterface((_r : Ref<stdgo.fmt_test.Fmt_test.RecursiveInt>))));
                _b.stopTimer();
            });
        };
    }
/**
    // Issue 9124.
    // %x on bytes couldn't handle non-space bytes terminating the scan.
**/
function testHexBytes(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _0:Slice<GoByte> = (null : Slice<GoUInt8>), _1:Slice<GoByte> = (null : Slice<GoUInt8>), _b:Slice<GoByte> = _1, _a:Slice<GoByte> = _0;
        var __tmp__ = sscanf(("00010203" : GoString), ("%x" : GoString), Go.toInterface((_a : Ref<Slice<GoUInt8>>))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if ((_n != (1 : GoInt)) || (_err != null)) {
            _t.errorf(("simple: got count, err = %d, %v; expected 1, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        var _check = function(_msg:GoString, _x:Slice<GoByte>):Void {
            if ((_x.length) != ((4 : GoInt))) {
                _t.errorf(("%s: bad length %d" : GoString), Go.toInterface(_msg), Go.toInterface((_x.length)));
            };
            for (_i => _b in _x) {
                if ((_b : GoInt) != (_i)) {
                    _t.errorf(("%s: bad x[%d] = %x" : GoString), Go.toInterface(_msg), Go.toInterface(_i), Go.toInterface(_x[(_i : GoInt)]));
                };
            };
        };
        _check(("simple" : GoString), _a);
        _a = (null : Slice<GoUInt8>);
        {
            var __tmp__ = sscanf(("00010203 00010203" : GoString), ("%x %x" : GoString), Go.toInterface((_a : Ref<Slice<GoUInt8>>)), Go.toInterface((_b : Ref<Slice<GoUInt8>>)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != (2 : GoInt)) || (_err != null)) {
            _t.errorf(("simple pair: got count, err = %d, %v; expected 2, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        _check(("simple pair a" : GoString), _a);
        _check(("simple pair b" : GoString), _b);
        _a = (null : Slice<GoUInt8>);
        _b = (null : Slice<GoUInt8>);
        {
            var __tmp__ = sscanf(("00010203:" : GoString), ("%x" : GoString), Go.toInterface((_a : Ref<Slice<GoUInt8>>)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != (1 : GoInt)) || (_err != null)) {
            _t.errorf(("colon: got count, err = %d, %v; expected 1, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        _check(("colon" : GoString), _a);
        _a = (null : Slice<GoUInt8>);
        {
            var __tmp__ = sscanf(("00010203:00010203" : GoString), ("%x:%x" : GoString), Go.toInterface((_a : Ref<Slice<GoUInt8>>)), Go.toInterface((_b : Ref<Slice<GoUInt8>>)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != (2 : GoInt)) || (_err != null)) {
            _t.errorf(("colon pair: got count, err = %d, %v; expected 2, nil" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
        _check(("colon pair a" : GoString), _a);
        _check(("colon pair b" : GoString), _b);
        _a = (null : Slice<GoUInt8>);
        _b = (null : Slice<GoUInt8>);
        {
            var __tmp__ = sscanf(("000102034:" : GoString), ("%x" : GoString), Go.toInterface((_a : Ref<Slice<GoUInt8>>)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n != (0 : GoInt)) || (_err == null)) {
            _t.errorf(("odd count: got count, err = %d, %v; expected 0, error" : GoString), Go.toInterface(_n), Go.toInterface(_err));
        };
    }
function testScanNewlinesAreSpaces(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _0:GoInt = (0 : GoInt), _1:GoInt = (0 : GoInt), _b:GoInt = _1, _a:GoInt = _0;
        var _tests:Slice<T__struct_14> = (new Slice<T__struct_14>(0, 0, ({ _name : ("newlines" : GoString), _text : ("1\n2\n" : GoString), _count : (2 : GoInt) } : T__struct_14), ({ _name : ("no final newline" : GoString), _text : ("1\n2" : GoString), _count : (2 : GoInt) } : T__struct_14), ({ _name : ("newlines with spaces " : GoString), _text : ("1  \n  2  \n" : GoString), _count : (2 : GoInt) } : T__struct_14), ({ _name : ("no final newline with spaces" : GoString), _text : ("1  \n  2" : GoString), _count : (2 : GoInt) } : T__struct_14)) : Slice<T__struct_14>);
        for (_0 => _test in _tests) {
            var __tmp__ = sscan(_test._text, Go.toInterface(Go.pointer(_a)), Go.toInterface(Go.pointer(_b))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_n != (_test._count)) {
                _t.errorf(("%s: expected to scan %d item(s), scanned %d" : GoString), Go.toInterface(_test._name), Go.toInterface(_test._count), Go.toInterface(_n));
            };
            if (_err != null) {
                _t.errorf(("%s: unexpected error: %s" : GoString), Go.toInterface(_test._name), Go.toInterface(_err));
            };
        };
    }
function testScanlnNewlinesTerminate(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _0:GoInt = (0 : GoInt), _1:GoInt = (0 : GoInt), _b:GoInt = _1, _a:GoInt = _0;
        var _tests:Slice<T__struct_15> = (new Slice<T__struct_15>(0, 0, ({ _name : ("one line one item" : GoString), _text : ("1\n" : GoString), _count : (1 : GoInt), _ok : false } : T__struct_15), ({ _name : ("one line two items with spaces " : GoString), _text : ("   1 2    \n" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_15), ({ _name : ("one line two items no newline" : GoString), _text : ("   1 2" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_15), ({ _name : ("two lines two items" : GoString), _text : ("1\n2\n" : GoString), _count : (1 : GoInt), _ok : false } : T__struct_15)) : Slice<T__struct_15>);
        for (_0 => _test in _tests) {
            var __tmp__ = sscanln(_test._text, Go.toInterface(Go.pointer(_a)), Go.toInterface(Go.pointer(_b))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_n != (_test._count)) {
                _t.errorf(("%s: expected to scan %d item(s), scanned %d" : GoString), Go.toInterface(_test._name), Go.toInterface(_test._count), Go.toInterface(_n));
            };
            if (_test._ok && (_err != null)) {
                _t.errorf(("%s: unexpected error: %s" : GoString), Go.toInterface(_test._name), Go.toInterface(_err));
            };
            if (!_test._ok && (_err == null)) {
                _t.errorf(("%s: expected error; got none" : GoString), Go.toInterface(_test._name));
            };
        };
    }
function testScanfNewlineMatchFormat(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _0:GoInt = (0 : GoInt), _1:GoInt = (0 : GoInt), _b:GoInt = _1, _a:GoInt = _0;
        var _tests:Slice<T__struct_16> = (new Slice<T__struct_16>(
0,
0,
({ _name : ("newline in both" : GoString), _text : ("1\n2" : GoString), _format : ("%d\n%d\n" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("newline in input" : GoString), _text : ("1\n2" : GoString), _format : ("%d %d" : GoString), _count : (1 : GoInt), _ok : false } : T__struct_16),
({ _name : ("space-newline in input" : GoString), _text : ("1 \n2" : GoString), _format : ("%d %d" : GoString), _count : (1 : GoInt), _ok : false } : T__struct_16),
({ _name : ("newline in format" : GoString), _text : ("1 2" : GoString), _format : ("%d\n%d" : GoString), _count : (1 : GoInt), _ok : false } : T__struct_16),
({ _name : ("space-newline in format" : GoString), _text : ("1 2" : GoString), _format : ("%d \n%d" : GoString), _count : (1 : GoInt), _ok : false } : T__struct_16),
({ _name : ("space-newline in both" : GoString), _text : ("1 \n2" : GoString), _format : ("%d \n%d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("extra space in format" : GoString), _text : ("1\n2" : GoString), _format : ("%d\n %d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("two extra spaces in format" : GoString), _text : ("1\n2" : GoString), _format : ("%d \n %d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0000" : GoString), _text : ("1\n2" : GoString), _format : ("%d\n%d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0001" : GoString), _text : ("1\n2" : GoString), _format : ("%d\n %d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0010" : GoString), _text : ("1\n2" : GoString), _format : ("%d \n%d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0011" : GoString), _text : ("1\n2" : GoString), _format : ("%d \n %d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0100" : GoString), _text : ("1\n 2" : GoString), _format : ("%d\n%d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0101" : GoString), _text : ("1\n 2" : GoString), _format : ("%d\n%d " : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0110" : GoString), _text : ("1\n 2" : GoString), _format : ("%d \n%d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0111" : GoString), _text : ("1\n 2" : GoString), _format : ("%d \n %d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1000" : GoString), _text : ("1 \n2" : GoString), _format : ("%d\n%d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1001" : GoString), _text : ("1 \n2" : GoString), _format : ("%d\n %d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1010" : GoString), _text : ("1 \n2" : GoString), _format : ("%d \n%d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1011" : GoString), _text : ("1 \n2" : GoString), _format : ("%d \n %d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1100" : GoString), _text : ("1 \n 2" : GoString), _format : ("%d\n%d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1101" : GoString), _text : ("1 \n 2" : GoString), _format : ("%d\n %d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1110" : GoString), _text : ("1 \n 2" : GoString), _format : ("%d \n%d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1111" : GoString), _text : ("1 \n 2" : GoString), _format : ("%d \n %d" : GoString), _count : (2 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 0000" : GoString), _text : ("1\n2" : GoString), _format : ("1\n2" : GoString), _count : (0 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 0001" : GoString), _text : ("1\n2" : GoString), _format : ("1\n 2" : GoString), _count : (0 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 0010" : GoString), _text : ("1\n2" : GoString), _format : ("1 \n2" : GoString), _count : (0 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 0011" : GoString), _text : ("1\n2" : GoString), _format : ("1 \n 2" : GoString), _count : (0 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 0100" : GoString), _text : ("1\n 2" : GoString), _format : ("1\n2" : GoString), _count : (0 : GoInt), _ok : false } : T__struct_16),
({ _name : ("space vs newline no-percent 0101" : GoString), _text : ("1\n 2" : GoString), _format : ("1\n2 " : GoString), _count : (0 : GoInt), _ok : false } : T__struct_16),
({ _name : ("space vs newline no-percent 0110" : GoString), _text : ("1\n 2" : GoString), _format : ("1 \n2" : GoString), _count : (0 : GoInt), _ok : false } : T__struct_16),
({ _name : ("space vs newline no-percent 0111" : GoString), _text : ("1\n 2" : GoString), _format : ("1 \n 2" : GoString), _count : (0 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 1000" : GoString), _text : ("1 \n2" : GoString), _format : ("1\n2" : GoString), _count : (0 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 1001" : GoString), _text : ("1 \n2" : GoString), _format : ("1\n 2" : GoString), _count : (0 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 1010" : GoString), _text : ("1 \n2" : GoString), _format : ("1 \n2" : GoString), _count : (0 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 1011" : GoString), _text : ("1 \n2" : GoString), _format : ("1 \n 2" : GoString), _count : (0 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 1100" : GoString), _text : ("1 \n 2" : GoString), _format : ("1\n2" : GoString), _count : (0 : GoInt), _ok : false } : T__struct_16),
({ _name : ("space vs newline no-percent 1101" : GoString), _text : ("1 \n 2" : GoString), _format : ("1\n 2" : GoString), _count : (0 : GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 1110" : GoString), _text : ("1 \n 2" : GoString), _format : ("1 \n2" : GoString), _count : (0 : GoInt), _ok : false } : T__struct_16),
({ _name : ("space vs newline no-percent 1111" : GoString), _text : ("1 \n 2" : GoString), _format : ("1 \n 2" : GoString), _count : (0 : GoInt), _ok : true } : T__struct_16)) : Slice<T__struct_16>);
        for (_0 => _test in _tests) {
            var _n:GoInt = (0 : GoInt);
            var _err:Error = (null : Error);
            if (stdgo.strings.Strings.contains(_test._format, ("%" : GoString))) {
                {
                    var __tmp__ = sscanf(_test._text, _test._format, Go.toInterface(Go.pointer(_a)), Go.toInterface(Go.pointer(_b)));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = sscanf(_test._text, _test._format);
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            if (_n != (_test._count)) {
                _t.errorf(("%s: expected to scan %d item(s), scanned %d" : GoString), Go.toInterface(_test._name), Go.toInterface(_test._count), Go.toInterface(_n));
            };
            if (_test._ok && (_err != null)) {
                _t.errorf(("%s: unexpected error: %s" : GoString), Go.toInterface(_test._name), Go.toInterface(_err));
            };
            if (!_test._ok && (_err == null)) {
                _t.errorf(("%s: expected error; got none" : GoString), Go.toInterface(_test._name));
            };
        };
    }
function testHexByte(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _h:T_hexBytes = new stdgo.fmt_test.Fmt_test.T_hexBytes(...[for (i in 0 ... 2) (0 : GoUInt8)]);
        var __tmp__ = sscanln(("0123\n" : GoString), Go.toInterface(Go.asInterface((_h : Ref<stdgo.fmt_test.Fmt_test.T_hexBytes>)))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (_n != ((1 : GoInt))) {
            _t.fatalf(("expected 1 item; scanned %d" : GoString), Go.toInterface(_n));
        };
        if ((_h[(0 : GoInt)] != (1 : GoUInt8)) || (_h[(1 : GoInt)] != (35 : GoUInt8))) {
            _t.fatalf(("expected 0123 got %x" : GoString), Go.toInterface(Go.asInterface(_h)));
        };
    }
private function _mkState(_w:GoInt, _p:GoInt, _flags:GoString):T_testState {
        var _s:stdgo.fmt_test.Fmt_test.T_testState = (new T_testState() : T_testState);
        if (_w != ((-1000 : GoInt))) {
            _s._width = _w;
            _s._widthOK = true;
        };
        if (_p != ((-1000 : GoInt))) {
            _s._prec = _p;
            _s._precOK = true;
        };
        _s._flag = (new GoObjectMap<GoInt, Bool>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(bool_kind) }))) : GoMap<GoInt, Bool>);
        for (_0 => _c in _flags) {
            _s._flag[(_c : GoInt)] = true;
        };
        return (_s == null ? null : _s.__copy__());
    }
function testFormatString(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests:Slice<T__struct_17> = (new Slice<T__struct_17>(
0,
0,
({ _width : (-1000 : GoInt), _prec : (-1000 : GoInt), _flags : Go.str(), _result : ("%x" : GoString) } : T__struct_17),
({ _width : (-1000 : GoInt), _prec : (3 : GoInt), _flags : Go.str(), _result : ("%.3x" : GoString) } : T__struct_17),
({ _width : (3 : GoInt), _prec : (-1000 : GoInt), _flags : Go.str(), _result : ("%3x" : GoString) } : T__struct_17),
({ _width : (7 : GoInt), _prec : (3 : GoInt), _flags : Go.str(), _result : ("%7.3x" : GoString) } : T__struct_17),
({ _width : (-1000 : GoInt), _prec : (-1000 : GoInt), _flags : (" +-#0" : GoString), _result : ("% +-#0x" : GoString) } : T__struct_17),
({ _width : (7 : GoInt), _prec : (3 : GoInt), _flags : ("+" : GoString), _result : ("%+7.3x" : GoString) } : T__struct_17),
({ _width : (7 : GoInt), _prec : (-3 : GoInt), _flags : ("-" : GoString), _result : ("%-7.-3x" : GoString) } : T__struct_17),
({ _width : (7 : GoInt), _prec : (3 : GoInt), _flags : (" " : GoString), _result : ("% 7.3x" : GoString) } : T__struct_17),
({ _width : (7 : GoInt), _prec : (3 : GoInt), _flags : ("#" : GoString), _result : ("%#7.3x" : GoString) } : T__struct_17),
({ _width : (7 : GoInt), _prec : (3 : GoInt), _flags : ("0" : GoString), _result : ("%07.3x" : GoString) } : T__struct_17)) : Slice<T__struct_17>);
        for (_0 => _test in _tests) {
            var _got:GoString = stdgo.fmt.Fmt.formatString(Go.asInterface(_mkState(_test._width, _test._prec, _test._flags)), (120 : GoInt32));
            if (_got != (_test._result)) {
                _t.errorf(("%v: got %s" : GoString), Go.toInterface(Go.asInterface(_test)), Go.toInterface(_got));
            };
        };
    }
function exampleStringer():Void {
        var _a:stdgo.fmt_test.Fmt_test.Animal = ({ name : ("Gopher" : GoString), age : ("2" : GoUInt) } : Animal);
        stdgo.fmt.Fmt.println(Go.toInterface(Go.asInterface(_a)));
    }
private function _check(_t:Ref<stdgo.testing.Testing.T>, _got:GoString, _want:GoString):Void {
        if (_got != (_want)) {
            _t.error(Go.toInterface(_got), Go.toInterface(("!=" : GoString)), Go.toInterface(_want));
        };
    }
function testStringer(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _s:GoString = sprintf(("%v %v %v %v %v" : GoString), Go.toInterface(Go.asInterface(((0 : stdgo.fmt_test.Fmt_test.TI) : TI))), Go.toInterface(Go.asInterface(((1 : stdgo.fmt_test.Fmt_test.TI8) : TI8))), Go.toInterface(Go.asInterface(((2 : stdgo.fmt_test.Fmt_test.TI16) : TI16))), Go.toInterface(Go.asInterface(((3 : stdgo.fmt_test.Fmt_test.TI32) : TI32))), Go.toInterface(Go.asInterface(((("4" : GoInt64) : stdgo.fmt_test.Fmt_test.TI64) : TI64))));
        _check(_t, _s, ("I: 0 I8: 1 I16: 2 I32: 3 I64: 4" : GoString));
        _s = sprintf(("%v %v %v %v %v %v" : GoString), Go.toInterface(Go.asInterface(((("5" : GoUInt) : stdgo.fmt_test.Fmt_test.TU) : TU))), Go.toInterface(Go.asInterface(((6 : stdgo.fmt_test.Fmt_test.TU8) : TU8))), Go.toInterface(Go.asInterface(((7 : stdgo.fmt_test.Fmt_test.TU16) : TU16))), Go.toInterface(Go.asInterface(((("8" : GoUInt32) : stdgo.fmt_test.Fmt_test.TU32) : TU32))), Go.toInterface(Go.asInterface(((("9" : GoUInt64) : stdgo.fmt_test.Fmt_test.TU64) : TU64))), Go.toInterface(Go.asInterface(((10 : stdgo.fmt_test.Fmt_test.TUI) : TUI))));
        _check(_t, _s, ("U: 5 U8: 6 U16: 7 U32: 8 U64: 9 UI: 10" : GoString));
        _s = sprintf(("%v %v %v" : GoString), Go.toInterface(Go.asInterface(((1 : GoFloat64) : TF))), Go.toInterface(Go.asInterface(((2 : GoFloat64) : TF32))), Go.toInterface(Go.asInterface(((3 : GoFloat64) : TF64))));
        _check(_t, _s, ("F: 1.000000 F32: 2.000000 F64: 3.000000" : GoString));
        _s = sprintf(("%v %v" : GoString), Go.toInterface(Go.asInterface((true : TB))), Go.toInterface(Go.asInterface((("x" : GoString) : TS))));
        _check(_t, _s, ("B: true S: \"x\"" : GoString));
    }
class C_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<C>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.C_asInterface) class C_static_extension {

}
class T_flagPrinter_asInterface {
    @:keep
    public function format(_f:State, _c:GoRune):Void __self__.value.format(_f, _c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_flagPrinter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T_flagPrinter_asInterface) class T_flagPrinter_static_extension {
    @:keep
    static public function format( _:T_flagPrinter, _f:State, _c:GoRune):Void {
        var _s:GoString = ("%" : GoString);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (128 : GoInt), _i++, {
                if (_f.flag(_i)) {
                    _s = _s + (((_i : GoRune) : GoString));
                };
            });
        };
        {
            var __tmp__ = _f.width(), _w:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _s = _s + (sprintf(("%d" : GoString), Go.toInterface(_w)));
            };
        };
        {
            var __tmp__ = _f.precision(), _p:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _s = _s + (sprintf((".%d" : GoString), Go.toInterface(_p)));
            };
        };
        _s = _s + ((_c : GoString));
        stdgo.io.Io.writeString(_f, (("[" : GoString) + _s) + ("]" : GoString));
    }
}
class PanicS_asInterface {
    /**
        // Value receiver.
    **/
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<PanicS>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.PanicS_asInterface) class PanicS_static_extension {
    /**
        // Value receiver.
    **/
    @:keep
    static public function string( _p:PanicS):GoString {
        throw Go.toInterface(_p._message);
    }
}
class PanicGo_asInterface {
    /**
        // Value receiver.
    **/
    @:keep
    public function goString():GoString return __self__.value.goString();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<PanicGo>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.PanicGo_asInterface) class PanicGo_static_extension {
    /**
        // Value receiver.
    **/
    @:keep
    static public function goString( _p:PanicGo):GoString {
        throw Go.toInterface(_p._message);
    }
}
class PanicF_asInterface {
    /**
        // Value receiver.
    **/
    @:keep
    public function format(_f:State, _c:GoRune):Void __self__.value.format(_f, _c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<PanicF>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.PanicF_asInterface) class PanicF_static_extension {
    /**
        // Value receiver.
    **/
    @:keep
    static public function format( _p:PanicF, _f:State, _c:GoRune):Void {
        throw Go.toInterface(_p._message);
    }
}
class Recur_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Recur>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.Recur_asInterface) class Recur_static_extension {
    @:keep
    static public function string( _r:Ref<Recur>):GoString {
        {
            _recurCount++;
            if (_recurCount > (10 : GoInt)) {
                _r._failed.value = true;
                return ("FAIL" : GoString);
            };
        };
        return sprintf(("recur@%p value: %d" : GoString), Go.toInterface(Go.asInterface(_r)), Go.toInterface(_r._i));
    }
}
class Person_asInterface {
    /**
        // GoString makes Person satisfy the GoStringer interface.
        // The return value is valid Go code that can be used to reproduce the Person struct.
    **/
    @:keep
    public function goString():GoString return __self__.value.goString();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Person>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.Person_asInterface) class Person_static_extension {
    /**
        // GoString makes Person satisfy the GoStringer interface.
        // The return value is valid Go code that can be used to reproduce the Person struct.
    **/
    @:keep
    static public function goString( _p:Person):GoString {
        if (_p.addr != null) {
            return stdgo.fmt.Fmt.sprintf(("Person{Name: %q, Age: %d, Addr: &Address{City: %q, State: %q, Country: %q}}" : GoString), Go.toInterface(_p.name), Go.toInterface((_p.age : GoInt)), Go.toInterface(_p.addr.city), Go.toInterface(_p.addr.state), Go.toInterface(_p.addr.country));
        };
        return stdgo.fmt.Fmt.sprintf(("Person{Name: %q, Age: %d}" : GoString), Go.toInterface(_p.name), Go.toInterface((_p.age : GoInt)));
    }
}
class IntString_asInterface {
    @:keep
    public function scan(_state:ScanState, _verb:GoRune):Error return __self__.value.scan(_state, _verb);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<IntString>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.IntString_asInterface) class IntString_static_extension {
    @:keep
    static public function scan( _s:Ref<IntString>, _state:ScanState, _verb:GoRune):Error {
        {
            var __tmp__ = fscan(_state, Go.toInterface(Go.pointer(_s._i))), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _state.token(true, null), _tok:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _s._s = (_tok : GoString);
        return (null : Error);
    }
}
class T_eofCounter_asInterface {
    @:keep
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_eofCounter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T_eofCounter_asInterface) class T_eofCounter_static_extension {
    @:keep
    static public function read( _ec:Ref<T_eofCounter>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        {
            var __tmp__ = _ec._reader.read(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n == ((0 : GoInt))) {
            _ec._eofCount++;
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_runeScanner_asInterface {
    @:keep
    public function scan(_state:ScanState, _verb:GoRune):Error return __self__.value.scan(_state, _verb);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_runeScanner>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T_runeScanner_asInterface) class T_runeScanner_static_extension {
    @:keep
    static public function scan( _rs:Ref<T_runeScanner>, _state:ScanState, _verb:GoRune):Error {
        var __tmp__ = _state.readRune(), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1, _err:Error = __tmp__._2;
        _rs._rune = _r;
        _rs._size = _size;
        return _err;
    }
}
class RecursiveInt_asInterface {
    @:keep
    public function scan(_state:ScanState, _verb:GoRune):Error return __self__.value.scan(_state, _verb);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<RecursiveInt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.RecursiveInt_asInterface) class RecursiveInt_static_extension {
    @:keep
    static public function scan( _r:Ref<RecursiveInt>, _state:ScanState, _verb:GoRune):Error {
        var _err:Error = (null : Error);
        {
            var __tmp__ = fscan(_state, Go.toInterface(Go.pointer(_r._i)));
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        var _next = ({} : stdgo.fmt_test.Fmt_test.RecursiveInt);
        {
            var __tmp__ = fscanf(_state, (".%v" : GoString), Go.toInterface(Go.asInterface(_next)));
            _err = __tmp__._1;
        };
        if (_err != null) {
            if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.errUnexpectedEOF))) {
                _err = (null : Error);
            };
            return _err;
        };
        _r._next = _next;
        return _err;
    }
}
class T_testState_asInterface {
    @:keep
    public function flag(_c:GoInt):Bool return __self__.value.flag(_c);
    @:keep
    public function precision():{ var _0 : GoInt; var _1 : Bool; } return __self__.value.precision();
    @:keep
    public function width():{ var _0 : GoInt; var _1 : Bool; } return __self__.value.width();
    @:keep
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_testState>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T_testState_asInterface) class T_testState_static_extension {
    @:keep
    static public function flag( _s:T_testState, _c:GoInt):Bool {
        return _s._flag[_c];
    }
    @:keep
    static public function precision( _s:T_testState):{ var _0 : GoInt; var _1 : Bool; } {
        var _prec:GoInt = (0 : GoInt), _ok:Bool = false;
        return { _0 : _s._prec, _1 : _s._precOK };
    }
    @:keep
    static public function width( _s:T_testState):{ var _0 : GoInt; var _1 : Bool; } {
        var _wid:GoInt = (0 : GoInt), _ok:Bool = false;
        return { _0 : _s._width, _1 : _s._widthOK };
    }
    @:keep
    static public function write( _s:T_testState, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        throw Go.toInterface(("unimplemented" : GoString));
    }
}
class Animal_asInterface {
    /**
        // String makes Animal satisfy the Stringer interface.
    **/
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Animal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.Animal_asInterface) class Animal_static_extension {
    /**
        // String makes Animal satisfy the Stringer interface.
    **/
    @:keep
    static public function string( _a:Animal):GoString {
        return stdgo.fmt.Fmt.sprintf(("%v (%d)" : GoString), Go.toInterface(_a.name), Go.toInterface(_a.age));
    }
}
class T_errString_asInterface {
    @:keep
    public function error():GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_errString>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T_errString_asInterface) class T_errString_static_extension {
    @:keep
    static public function error( _e:T_errString):GoString {
        return (_e : GoString);
    }
}
class I_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<I>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.I_asInterface) class I_static_extension {
    @:keep
    static public function string( _i:I):GoString {
        return sprintf(("<%d>" : GoString), Go.toInterface((_i : GoInt)));
    }
}
class F_asInterface {
    @:keep
    public function format(_s:State, _c:GoRune):Void __self__.value.format(_s, _c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<F>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.F_asInterface) class F_static_extension {
    @:keep
    static public function format( _f:F, _s:State, _c:GoRune):Void {
        fprintf(_s, ("<%c=F(%d)>" : GoString), Go.toInterface(_c), Go.toInterface((_f : GoInt)));
    }
}
class G_asInterface {
    @:keep
    public function goString():GoString return __self__.value.goString();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<G>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.G_asInterface) class G_static_extension {
    @:keep
    static public function goString( _g:G):GoString {
        return sprintf(("GoString(%d)" : GoString), Go.toInterface((_g : GoInt)));
    }
}
class P_asInterface {
    @:keep
    @:pointer
    public function string():GoString return __self__.value.string(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<P>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.P_asInterface) class P_static_extension {
    @:keep
    @:pointer
    static public function string(____:P,  _p:Pointer<P>):GoString {
        return ("String(p)" : GoString);
    }
}
class T_byteStringer_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_byteStringer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T_byteStringer_asInterface) class T_byteStringer_static_extension {
    @:keep
    static public function string( _:T_byteStringer):GoString {
        return ("X" : GoString);
    }
}
class T_byteFormatter_asInterface {
    @:keep
    public function format(_f:State, _0:GoRune):Void __self__.value.format(_f, _0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_byteFormatter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T_byteFormatter_asInterface) class T_byteFormatter_static_extension {
    @:keep
    static public function format( _:T_byteFormatter, _f:State, _0:GoRune):Void {
        fprint(_f, Go.toInterface(("X" : GoString)));
    }
}
class T_writeStringFormatter_asInterface {
    @:keep
    public function format(_f:State, _c:GoRune):Void __self__.value.format(_f, _c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_writeStringFormatter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T_writeStringFormatter_asInterface) class T_writeStringFormatter_static_extension {
    @:keep
    static public function format( _sf:T_writeStringFormatter, _f:State, _c:GoRune):Void {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_f) : stdgo.io.Io.StringWriter)) : stdgo.io.Io.StringWriter), ok : true };
            } catch(_) {
                { value : (null : stdgo.io.Io.StringWriter), ok : false };
            }, _sw = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _sw.writeString((("***" : GoString) + (_sf : GoString)) + ("***" : GoString));
            };
        };
    }
}
class Xs_asInterface {
    @:keep
    @:pointer
    public function scan(_state:ScanState, _verb:GoRune):Error return __self__.value.scan(__self__, _state, _verb);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Xs>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.Xs_asInterface) class Xs_static_extension {
    @:keep
    @:pointer
    static public function scan(____:Xs,  _x:Pointer<Xs>, _state:ScanState, _verb:GoRune):Error {
        var __tmp__ = _state.token(true, function(_r:GoRune):Bool {
            return _r == (_verb);
        }), _tok:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var _s:GoString = (_tok : GoString);
        if (!stdgo.regexp.Regexp.mustCompile((("^" : GoString) + (_verb : GoString)) + ("+$$" : GoString)).matchString(_s)) {
            return stdgo.errors.Errors.new_(("syntax error for xs" : GoString));
        };
        _x.value = (_s : Xs);
        return (null : Error);
    }
}
class TwoLines_asInterface {
    /**
        // Scan attempts to read two lines into the object. Scanln should prevent this
        // because it stops at newline; Scan and Scanf should be fine.
    **/
    @:keep
    @:pointer
    public function scan(_state:ScanState, _verb:GoRune):Error return __self__.value.scan(__self__, _state, _verb);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TwoLines>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TwoLines_asInterface) class TwoLines_static_extension {
    /**
        // Scan attempts to read two lines into the object. Scanln should prevent this
        // because it stops at newline; Scan and Scanf should be fine.
    **/
    @:keep
    @:pointer
    static public function scan(____:TwoLines,  _t:Pointer<TwoLines>, _state:ScanState, _verb:GoRune):Error {
        var _chars = new Slice<GoInt32>((0 : GoInt).toBasic(), (100 : GoInt), ...[for (i in 0 ... (0 : GoInt).toBasic()) (0 : GoInt32)]);
        {
            var _nlCount:GoInt = (0 : GoInt);
            while (_nlCount < (2 : GoInt)) {
                var __tmp__ = _state.readRune(), _c:GoInt32 = __tmp__._0, _0:GoInt = __tmp__._1, _err:Error = __tmp__._2;
                if (_err != null) {
                    return _err;
                };
                _chars = _chars.__appendref__(_c);
                if (_c == ((10 : GoInt32))) {
                    _nlCount++;
                };
            };
        };
        _t.value = ((_chars : GoString) : TwoLines);
        return (null : Error);
    }
}
class T_hexBytes_asInterface {
    @:keep
    public function scan(_ss:ScanState, _verb:GoRune):Error return __self__.value.scan(_ss, _verb);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_hexBytes>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.T_hexBytes_asInterface) class T_hexBytes_static_extension {
    @:keep
    static public function scan( _h:Ref<T_hexBytes>, _ss:ScanState, _verb:GoRune):Error {
        var _b:Slice<GoByte> = (null : Slice<GoUInt8>);
        var __tmp__ = fscanf(_ss, ("%4x" : GoString), Go.toInterface((_b : Ref<Slice<GoUInt8>>))), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        Go.copySlice(((_h).__slice__(0) : Slice<GoUInt8>), _b);
        return _err;
    }
}
class TI_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TI>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TI_asInterface) class TI_static_extension {
    @:keep
    static public function string( _v:TI):GoString {
        return sprintf(("I: %d" : GoString), Go.toInterface((_v : GoInt)));
    }
}
class TI8_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TI8>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TI8_asInterface) class TI8_static_extension {
    @:keep
    static public function string( _v:TI8):GoString {
        return sprintf(("I8: %d" : GoString), Go.toInterface((_v : GoInt8)));
    }
}
class TI16_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TI16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TI16_asInterface) class TI16_static_extension {
    @:keep
    static public function string( _v:TI16):GoString {
        return sprintf(("I16: %d" : GoString), Go.toInterface((_v : GoInt16)));
    }
}
class TI32_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TI32>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TI32_asInterface) class TI32_static_extension {
    @:keep
    static public function string( _v:TI32):GoString {
        return sprintf(("I32: %d" : GoString), Go.toInterface((_v : GoInt32)));
    }
}
class TI64_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TI64>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TI64_asInterface) class TI64_static_extension {
    @:keep
    static public function string( _v:TI64):GoString {
        return sprintf(("I64: %d" : GoString), Go.toInterface((_v : GoInt64)));
    }
}
class TU_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TU>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TU_asInterface) class TU_static_extension {
    @:keep
    static public function string( _v:TU):GoString {
        return sprintf(("U: %d" : GoString), Go.toInterface((_v : GoUInt)));
    }
}
class TU8_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TU8>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TU8_asInterface) class TU8_static_extension {
    @:keep
    static public function string( _v:TU8):GoString {
        return sprintf(("U8: %d" : GoString), Go.toInterface((_v : GoUInt8)));
    }
}
class TU16_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TU16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TU16_asInterface) class TU16_static_extension {
    @:keep
    static public function string( _v:TU16):GoString {
        return sprintf(("U16: %d" : GoString), Go.toInterface((_v : GoUInt16)));
    }
}
class TU32_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TU32>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TU32_asInterface) class TU32_static_extension {
    @:keep
    static public function string( _v:TU32):GoString {
        return sprintf(("U32: %d" : GoString), Go.toInterface((_v : GoUInt32)));
    }
}
class TU64_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TU64>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TU64_asInterface) class TU64_static_extension {
    @:keep
    static public function string( _v:TU64):GoString {
        return sprintf(("U64: %d" : GoString), Go.toInterface((_v : GoUInt64)));
    }
}
class TUI_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TUI>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TUI_asInterface) class TUI_static_extension {
    @:keep
    static public function string( _v:TUI):GoString {
        return sprintf(("UI: %d" : GoString), Go.toInterface((_v : GoUIntptr)));
    }
}
class TF_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TF>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TF_asInterface) class TF_static_extension {
    @:keep
    static public function string( _v:TF):GoString {
        return sprintf(("F: %f" : GoString), Go.toInterface((_v : GoFloat64)));
    }
}
class TF32_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TF32>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TF32_asInterface) class TF32_static_extension {
    @:keep
    static public function string( _v:TF32):GoString {
        return sprintf(("F32: %f" : GoString), Go.toInterface((_v : GoFloat32)));
    }
}
class TF64_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TF64>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TF64_asInterface) class TF64_static_extension {
    @:keep
    static public function string( _v:TF64):GoString {
        return sprintf(("F64: %f" : GoString), Go.toInterface((_v : GoFloat64)));
    }
}
class TB_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TB>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TB_asInterface) class TB_static_extension {
    @:keep
    static public function string( _v:TB):GoString {
        return sprintf(("B: %t" : GoString), Go.toInterface((_v : Bool)));
    }
}
class TS_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<TS>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt_test.Fmt_test.TS_asInterface) class TS_static_extension {
    @:keep
    static public function string( _v:TS):GoString {
        return sprintf(("S: %q" : GoString), Go.toInterface((_v : GoString)));
    }
}
