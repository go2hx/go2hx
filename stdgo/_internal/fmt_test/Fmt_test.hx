package stdgo._internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
var _pValue : P = ((0 : stdgo.GoInt) : stdgo._internal.fmt_test.Fmt_test.P);
var _mallocBuf : stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
var _mallocPointer : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
final _appendResult : stdgo.GoString = ("hello world, 23" : stdgo.GoString);
final _hello : stdgo.GoString = ("hello " : stdgo.GoString);
var _boolVal : Bool = false;
var _intVal : stdgo.GoInt = (0 : stdgo.GoInt);
var _int8Val : stdgo.GoInt8 = (0 : stdgo.GoInt8);
var _int16Val : stdgo.GoInt16 = (0 : stdgo.GoInt16);
var _int32Val : stdgo.GoInt32 = (0 : stdgo.GoInt32);
var _int64Val : stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _uintVal : stdgo.GoUInt = (0 : stdgo.GoUInt);
var _uint8Val : stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
var _uint16Val : stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var _uint32Val : stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _uint64Val : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _uintptrVal : stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
var _float32Val : stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
var _float64Val : stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var _stringVal : stdgo.GoString = ("" : stdgo.GoString);
var _bytesVal : stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
var _runeVal : stdgo.GoRune = (0 : stdgo.GoInt32);
var _complex64Val : stdgo.GoComplex64 = new stdgo.GoComplex64(0, 0);
var _complex128Val : stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
var _renamedBoolVal : T_renamedBool = (false : stdgo._internal.fmt_test.Fmt_test.T_renamedBool);
var _renamedIntVal : T_renamedInt = ((0 : stdgo.GoInt) : stdgo._internal.fmt_test.Fmt_test.T_renamedInt);
var _renamedInt8Val : T_renamedInt8 = ((0 : stdgo.GoInt8) : stdgo._internal.fmt_test.Fmt_test.T_renamedInt8);
var _renamedInt16Val : T_renamedInt16 = ((0 : stdgo.GoInt16) : stdgo._internal.fmt_test.Fmt_test.T_renamedInt16);
var _renamedInt32Val : T_renamedInt32 = ((0 : stdgo.GoInt32) : stdgo._internal.fmt_test.Fmt_test.T_renamedInt32);
var _renamedInt64Val : T_renamedInt64 = ((0 : stdgo.GoInt64) : stdgo._internal.fmt_test.Fmt_test.T_renamedInt64);
var _renamedUintVal : T_renamedUint = ((0 : stdgo.GoUInt) : stdgo._internal.fmt_test.Fmt_test.T_renamedUint);
var _renamedUint8Val : T_renamedUint8 = ((0 : stdgo.GoUInt8) : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8);
var _renamedUint16Val : T_renamedUint16 = ((0 : stdgo.GoUInt16) : stdgo._internal.fmt_test.Fmt_test.T_renamedUint16);
var _renamedUint32Val : T_renamedUint32 = ((0 : stdgo.GoUInt32) : stdgo._internal.fmt_test.Fmt_test.T_renamedUint32);
var _renamedUint64Val : T_renamedUint64 = ((0 : stdgo.GoUInt64) : stdgo._internal.fmt_test.Fmt_test.T_renamedUint64);
var _renamedUintptrVal : T_renamedUintptr = ((0 : stdgo.GoUIntptr) : stdgo._internal.fmt_test.Fmt_test.T_renamedUintptr);
var _renamedStringVal : T_renamedString = (("" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_renamedString);
var _renamedBytesVal : T_renamedBytes = new stdgo._internal.fmt_test.Fmt_test.T_renamedBytes(0, 0);
var _renamedFloat32Val : T_renamedFloat32 = ((0 : stdgo.GoFloat32) : stdgo._internal.fmt_test.Fmt_test.T_renamedFloat32);
var _renamedFloat64Val : T_renamedFloat64 = ((0 : stdgo.GoFloat64) : stdgo._internal.fmt_test.Fmt_test.T_renamedFloat64);
var _renamedComplex64Val : T_renamedComplex64 = (new stdgo.GoComplex64(0, 0) : stdgo._internal.fmt_test.Fmt_test.T_renamedComplex64);
var _renamedComplex128Val : T_renamedComplex128 = (new stdgo.GoComplex128(0, 0) : stdgo._internal.fmt_test.Fmt_test.T_renamedComplex128);
var _xVal : Xs = (("" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.Xs);
var _intStringVal : IntString = ({} : stdgo._internal.fmt_test.Fmt_test.IntString);
var _truth : Bool = false;
var _i : stdgo.GoInt = (0 : stdgo.GoInt);
var _j : stdgo.GoInt = (0 : stdgo.GoInt);
var _k : stdgo.GoInt = (0 : stdgo.GoInt);
var _f : stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var _s : stdgo.GoString = ("" : stdgo.GoString);
var _t : stdgo.GoString = ("" : stdgo.GoString);
var _c : stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
var _x : Xs = (("" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.Xs);
var _y : Xs = (("" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.Xs);
var _z : IntString = ({} : stdgo._internal.fmt_test.Fmt_test.IntString);
var _r1 : stdgo.GoRune = (0 : stdgo.GoInt32);
var _r2 : stdgo.GoRune = (0 : stdgo.GoInt32);
var _r3 : stdgo.GoRune = (0 : stdgo.GoInt32);
final _intCount : stdgo.GoUInt64 = (800i64 : stdgo.GoUInt64);
final no : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
var naN : stdgo.GoFloat64 = stdgo._internal.math.Math.naN();
var _posInf : stdgo.GoFloat64 = stdgo._internal.math.Math.inf((1 : stdgo.GoInt));
var _negInf : stdgo.GoFloat64 = stdgo._internal.math.Math.inf((-1 : stdgo.GoInt));
var _intVar : stdgo.GoInt = (0 : stdgo.GoInt);
var _array : stdgo.GoArray<stdgo.GoInt> = (new stdgo.GoArray<stdgo.GoInt>(5, 5, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>);
var _iarray : stdgo.GoArray<stdgo.AnyInterface> = (new stdgo.GoArray<stdgo.AnyInterface>(4, 4, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface((2.5 : stdgo.GoFloat64)), (null : stdgo.AnyInterface)]) : stdgo.GoArray<stdgo.AnyInterface>);
var _slice : stdgo.Slice<stdgo.GoInt> = (_array.__slice__(0) : stdgo.Slice<stdgo.GoInt>);
var _islice : stdgo.Slice<stdgo.AnyInterface> = (_iarray.__slice__(0) : stdgo.Slice<stdgo.AnyInterface>);
var _barray : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8> = (new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8>(5, 5, ...[(1 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (2 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (3 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (4 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (5 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8)]).__setNumber32__() : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8>);
var _bslice : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8> = (_barray.__slice__(0) : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8>);
var _byteStringerSlice : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_byteStringer> = (new stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_byteStringer>(5, 5, ...[(104 : stdgo._internal.fmt_test.Fmt_test.T_byteStringer), (101 : stdgo._internal.fmt_test.Fmt_test.T_byteStringer), (108 : stdgo._internal.fmt_test.Fmt_test.T_byteStringer), (108 : stdgo._internal.fmt_test.Fmt_test.T_byteStringer), (111 : stdgo._internal.fmt_test.Fmt_test.T_byteStringer)]).__setNumber32__() : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_byteStringer>);
var _byteFormatterSlice : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_byteFormatter> = (new stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_byteFormatter>(5, 5, ...[(104 : stdgo._internal.fmt_test.Fmt_test.T_byteFormatter), (101 : stdgo._internal.fmt_test.Fmt_test.T_byteFormatter), (108 : stdgo._internal.fmt_test.Fmt_test.T_byteFormatter), (108 : stdgo._internal.fmt_test.Fmt_test.T_byteFormatter), (111 : stdgo._internal.fmt_test.Fmt_test.T_byteFormatter)]).__setNumber32__() : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_byteFormatter>);
var _fmtTests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(768, 768, ...[
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((12345 : stdgo.GoInt)), _out : ("12345" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((12345 : stdgo.GoInt)), _out : ("12345" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%t" : stdgo.GoString), _val : stdgo.Go.toInterface(true), _out : ("true" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface(("abc" : stdgo.GoString)), _out : ("abc" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(("abc" : stdgo.GoString)), _out : ("\"abc\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface(("abc" : stdgo.GoString)), _out : ("616263" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(255, 240, 15, 255)), _out : ("fff00fff" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%X" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(255, 240, 15, 255)), _out : ("FFF00FFF" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str()), _out : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _fmt : ("% x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str()), _out : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _fmt : ("%#x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str()), _out : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _fmt : ("%# x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str()), _out : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface(("xyz" : stdgo.GoString)), _out : ("78797a" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%X" : stdgo.GoString), _val : stdgo.Go.toInterface(("xyz" : stdgo.GoString)), _out : ("78797A" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% x" : stdgo.GoString), _val : stdgo.Go.toInterface(("xyz" : stdgo.GoString)), _out : ("78 79 7a" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% X" : stdgo.GoString), _val : stdgo.Go.toInterface(("xyz" : stdgo.GoString)), _out : ("78 79 7A" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#x" : stdgo.GoString), _val : stdgo.Go.toInterface(("xyz" : stdgo.GoString)), _out : ("0x78797a" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#X" : stdgo.GoString), _val : stdgo.Go.toInterface(("xyz" : stdgo.GoString)), _out : ("0X78797A" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# x" : stdgo.GoString), _val : stdgo.Go.toInterface(("xyz" : stdgo.GoString)), _out : ("0x78 0x79 0x7a" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# X" : stdgo.GoString), _val : stdgo.Go.toInterface(("xyz" : stdgo.GoString)), _out : ("0X78 0X79 0X7A" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("abc" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(97 : stdgo.GoUInt8), (98 : stdgo.GoUInt8), (99 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("abc" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(97 : stdgo.GoUInt8), (98 : stdgo.GoUInt8), (99 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>)), _out : ("&abc" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("\"abc\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("616263" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.str(255, 240, 15, 255) : stdgo.Slice<stdgo.GoByte>)), _out : ("fff00fff" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%X" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.str(255, 240, 15, 255) : stdgo.Slice<stdgo.GoByte>)), _out : ("FFF00FFF" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>)), _out : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _fmt : ("% x" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>)), _out : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _fmt : ("%#x" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>)), _out : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _fmt : ("%# x" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>)), _out : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface((("xyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("78797a" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%X" : stdgo.GoString), _val : stdgo.Go.toInterface((("xyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("78797A" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% x" : stdgo.GoString), _val : stdgo.Go.toInterface((("xyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("78 79 7a" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% X" : stdgo.GoString), _val : stdgo.Go.toInterface((("xyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("78 79 7A" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#x" : stdgo.GoString), _val : stdgo.Go.toInterface((("xyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("0x78797a" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#X" : stdgo.GoString), _val : stdgo.Go.toInterface((("xyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("0X78797A" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# x" : stdgo.GoString), _val : stdgo.Go.toInterface((("xyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("0x78 0x79 0x7a" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# X" : stdgo.GoString), _val : stdgo.Go.toInterface((("xyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("0X78 0X79 0X7A" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str()), _out : ("\"\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#q" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str()), _out : ("``" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\"" : stdgo.GoString)), _out : ("\"\\\"\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\"" : stdgo.GoString)), _out : ("`\"`" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(("`" : stdgo.GoString)), _out : ("\"`\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#q" : stdgo.GoString), _val : stdgo.Go.toInterface(("`" : stdgo.GoString)), _out : ("\"`\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\n" : stdgo.GoString)), _out : ("\"\\n\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\n" : stdgo.GoString)), _out : ("\"\\n\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\\n" : stdgo.GoString)), _out : ("\"\\\\n\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\\n" : stdgo.GoString)), _out : ("`\\n`" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(("abc" : stdgo.GoString)), _out : ("\"abc\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#q" : stdgo.GoString), _val : stdgo.Go.toInterface(("abc" : stdgo.GoString)), _out : ("`abc`" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(("日本語" : stdgo.GoString)), _out : ("\"日本語\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface(("日本語" : stdgo.GoString)), _out : ("\"\\u65e5\\u672c\\u8a9e\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#q" : stdgo.GoString), _val : stdgo.Go.toInterface(("日本語" : stdgo.GoString)), _out : ("`日本語`" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#+q" : stdgo.GoString), _val : stdgo.Go.toInterface(("日本語" : stdgo.GoString)), _out : ("`日本語`" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\x07\x08\x0C\n\r\t\x0B\"\\" : stdgo.GoString)), _out : ("\"\\a\\b\\f\\n\\r\\t\\v\\\"\\\\\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\x07\x08\x0C\n\r\t\x0B\"\\" : stdgo.GoString)), _out : ("\"\\a\\b\\f\\n\\r\\t\\v\\\"\\\\\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\x07\x08\x0C\n\r\t\x0B\"\\" : stdgo.GoString)), _out : ("\"\\a\\b\\f\\n\\r\\t\\v\\\"\\\\\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#+q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\x07\x08\x0C\n\r\t\x0B\"\\" : stdgo.GoString)), _out : ("\"\\a\\b\\f\\n\\r\\t\\v\\\"\\\\\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(("☺" : stdgo.GoString)), _out : ("\"☺\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% q" : stdgo.GoString), _val : stdgo.Go.toInterface(("☺" : stdgo.GoString)), _out : ("\"☺\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface(("☺" : stdgo.GoString)), _out : ("\"\\u263a\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#q" : stdgo.GoString), _val : stdgo.Go.toInterface(("☺" : stdgo.GoString)), _out : ("`☺`" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#+q" : stdgo.GoString), _val : stdgo.Go.toInterface(("☺" : stdgo.GoString)), _out : ("`☺`" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%10q" : stdgo.GoString), _val : stdgo.Go.toInterface(("⌘" : stdgo.GoString)), _out : ("       \"⌘\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+10q" : stdgo.GoString), _val : stdgo.Go.toInterface(("⌘" : stdgo.GoString)), _out : ("  \"\\u2318\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-10q" : stdgo.GoString), _val : stdgo.Go.toInterface(("⌘" : stdgo.GoString)), _out : ("\"⌘\"       " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+-10q" : stdgo.GoString), _val : stdgo.Go.toInterface(("⌘" : stdgo.GoString)), _out : ("\"\\u2318\"  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%010q" : stdgo.GoString), _val : stdgo.Go.toInterface(("⌘" : stdgo.GoString)), _out : ("0000000\"⌘\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+010q" : stdgo.GoString), _val : stdgo.Go.toInterface(("⌘" : stdgo.GoString)), _out : ("00\"\\u2318\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-010q" : stdgo.GoString), _val : stdgo.Go.toInterface(("⌘" : stdgo.GoString)), _out : ("\"⌘\"       " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+-010q" : stdgo.GoString), _val : stdgo.Go.toInterface(("⌘" : stdgo.GoString)), _out : ("\"\\u2318\"  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#8q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\n" : stdgo.GoString)), _out : ("    \"\\n\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#+8q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\r" : stdgo.GoString)), _out : ("    \"\\r\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#-8q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\t" : stdgo.GoString)), _out : ("`\t`     " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#+-8q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\x08" : stdgo.GoString)), _out : ("\"\\b\"    " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str("abc", 255, "def")), _out : ("\"abc\\xffdef\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str("abc", 255, "def")), _out : ("\"abc\\xffdef\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#q" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str("abc", 255, "def")), _out : ("\"abc\\xffdef\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#+q" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str("abc", 255, "def")), _out : ("\"abc\\xffdef\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\u{0010ffff}" : stdgo.GoString)), _out : ("\"\\U0010ffff\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\u{0010ffff}" : stdgo.GoString)), _out : ("\"\\U0010ffff\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\u{0010ffff}" : stdgo.GoString)), _out : ("`\u{0010ffff}`" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#+q" : stdgo.GoString), _val : stdgo.Go.toInterface(("\u{0010ffff}" : stdgo.GoString)), _out : ("`\u{0010ffff}`" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((((1114112 : stdgo.GoInt32) : stdgo.GoRune) : stdgo.GoString)), _out : ("\"�\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface((((1114112 : stdgo.GoInt32) : stdgo.GoRune) : stdgo.GoString)), _out : ("\"\\ufffd\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#q" : stdgo.GoString), _val : stdgo.Go.toInterface((((1114112 : stdgo.GoInt32) : stdgo.GoRune) : stdgo.GoString)), _out : ("`�`" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#+q" : stdgo.GoString), _val : stdgo.Go.toInterface((((1114112 : stdgo.GoInt32) : stdgo.GoRune) : stdgo.GoString)), _out : ("`�`" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%c" : stdgo.GoString), _val : stdgo.Go.toInterface((120u32 : stdgo.GoUInt)), _out : ("x" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%c" : stdgo.GoString), _val : stdgo.Go.toInterface((228 : stdgo.GoInt)), _out : ("ä" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%c" : stdgo.GoString), _val : stdgo.Go.toInterface((26412 : stdgo.GoInt)), _out : ("本" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%c" : stdgo.GoString), _val : stdgo.Go.toInterface((26085 : stdgo.GoInt32)), _out : ("日" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.0c" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("⌘" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%3c" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("  ⌘" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-3c" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("⌘  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%c" : stdgo.GoString), _val : stdgo.Go.toInterface((4294967296i64 : stdgo.GoUInt64)), _out : ("�" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%c" : stdgo.GoString), _val : stdgo.Go.toInterface((3584 : stdgo.GoInt32)), _out : ("\u0e00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%c" : stdgo.GoString), _val : stdgo.Go.toInterface((1114111 : stdgo.GoInt32)), _out : ("\u{0010ffff}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%c" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoInt)), _out : ("�" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%c" : stdgo.GoString), _val : stdgo.Go.toInterface((56448 : stdgo.GoInt)), _out : ("�" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%c" : stdgo.GoString), _val : stdgo.Go.toInterface(((1114112 : stdgo.GoInt32) : stdgo.GoRune)), _out : ("�" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%c" : stdgo.GoString), _val : stdgo.Go.toInterface((68719476735i64 : stdgo.GoInt64)), _out : ("�" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%c" : stdgo.GoString), _val : stdgo.Go.toInterface((68719476735i64 : stdgo.GoUInt64)), _out : ("�" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((0u32 : stdgo.GoUInt)), _out : ("\'\\x00\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface((0u32 : stdgo.GoUInt)), _out : ("\'\\x00\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((34 : stdgo.GoInt32)), _out : ("\'\"\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface((34 : stdgo.GoInt32)), _out : ("\'\"\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((39 : stdgo.GoInt32)), _out : ("\'\\\'\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface((39 : stdgo.GoInt32)), _out : ("\'\\\'\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((96 : stdgo.GoInt32)), _out : ("\'`\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface((96 : stdgo.GoInt32)), _out : ("\'`\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((120 : stdgo.GoInt32)), _out : ("\'x\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface((120 : stdgo.GoInt32)), _out : ("\'x\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((255 : stdgo.GoInt32)), _out : ("\'ÿ\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface((255 : stdgo.GoInt32)), _out : ("\'\\u00ff\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((10 : stdgo.GoInt32)), _out : ("\'\\n\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface((10 : stdgo.GoInt32)), _out : ("\'\\n\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((9786 : stdgo.GoInt32)), _out : ("\'☺\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+q" : stdgo.GoString), _val : stdgo.Go.toInterface((9786 : stdgo.GoInt32)), _out : ("\'\\u263a\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% q" : stdgo.GoString), _val : stdgo.Go.toInterface((9786 : stdgo.GoInt32)), _out : ("\'☺\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.0q" : stdgo.GoString), _val : stdgo.Go.toInterface((9786 : stdgo.GoInt32)), _out : ("\'☺\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%10q" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("       \'⌘\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+10q" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("  \'\\u2318\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-10q" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("\'⌘\'       " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+-10q" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("\'\\u2318\'  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%010q" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("0000000\'⌘\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+010q" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("00\'\\u2318\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-010q" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("\'⌘\'       " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+-010q" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("\'\\u2318\'  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((3584 : stdgo.GoInt32)), _out : ("\'\\u0e00\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((1114111 : stdgo.GoInt32)), _out : ("\'\\U0010ffff\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoInt32)), _out : ("\'�\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((56448 : stdgo.GoInt)), _out : ("\'�\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(((1114112 : stdgo.GoInt32) : stdgo.GoRune)), _out : ("\'�\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((68719476735i64 : stdgo.GoInt64)), _out : ("\'�\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((68719476735i64 : stdgo.GoUInt64)), _out : ("\'�\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%5s" : stdgo.GoString), _val : stdgo.Go.toInterface(("abc" : stdgo.GoString)), _out : ("  abc" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%5s" : stdgo.GoString), _val : stdgo.Go.toInterface((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("  abc" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%2s" : stdgo.GoString), _val : stdgo.Go.toInterface(("☺" : stdgo.GoString)), _out : (" ☺" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%2s" : stdgo.GoString), _val : stdgo.Go.toInterface((("☺" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : (" ☺" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-5s" : stdgo.GoString), _val : stdgo.Go.toInterface(("abc" : stdgo.GoString)), _out : ("abc  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-5s" : stdgo.GoString), _val : stdgo.Go.toInterface((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("abc  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%05s" : stdgo.GoString), _val : stdgo.Go.toInterface(("abc" : stdgo.GoString)), _out : ("00abc" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%05s" : stdgo.GoString), _val : stdgo.Go.toInterface((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("00abc" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%5s" : stdgo.GoString), _val : stdgo.Go.toInterface(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)), _out : ("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%5s" : stdgo.GoString), _val : stdgo.Go.toInterface((("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.5s" : stdgo.GoString), _val : stdgo.Go.toInterface(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)), _out : ("abcde" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.5s" : stdgo.GoString), _val : stdgo.Go.toInterface((("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("abcde" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.0s" : stdgo.GoString), _val : stdgo.Go.toInterface(("日本語日本語" : stdgo.GoString)), _out : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _fmt : ("%.0s" : stdgo.GoString), _val : stdgo.Go.toInterface((("日本語日本語" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _fmt : ("%.5s" : stdgo.GoString), _val : stdgo.Go.toInterface(("日本語日本語" : stdgo.GoString)), _out : ("日本語日本" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.5s" : stdgo.GoString), _val : stdgo.Go.toInterface((("日本語日本語" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("日本語日本" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.10s" : stdgo.GoString), _val : stdgo.Go.toInterface(("日本語日本語" : stdgo.GoString)), _out : ("日本語日本語" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.10s" : stdgo.GoString), _val : stdgo.Go.toInterface((("日本語日本語" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("日本語日本語" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%08q" : stdgo.GoString), _val : stdgo.Go.toInterface(("abc" : stdgo.GoString)), _out : ("000\"abc\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%08q" : stdgo.GoString), _val : stdgo.Go.toInterface((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("000\"abc\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-8q" : stdgo.GoString), _val : stdgo.Go.toInterface(("abc" : stdgo.GoString)), _out : ("\"abc\"   " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-8q" : stdgo.GoString), _val : stdgo.Go.toInterface((("abc" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("\"abc\"   " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.5q" : stdgo.GoString), _val : stdgo.Go.toInterface(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)), _out : ("\"abcde\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.5q" : stdgo.GoString), _val : stdgo.Go.toInterface((("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("\"abcde\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.5x" : stdgo.GoString), _val : stdgo.Go.toInterface(("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString)), _out : ("6162636465" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.5x" : stdgo.GoString), _val : stdgo.Go.toInterface((("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("6162636465" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3q" : stdgo.GoString), _val : stdgo.Go.toInterface(("日本語日本語" : stdgo.GoString)), _out : ("\"日本語\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3q" : stdgo.GoString), _val : stdgo.Go.toInterface((("日本語日本語" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("\"日本語\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.1q" : stdgo.GoString), _val : stdgo.Go.toInterface(("日本語" : stdgo.GoString)), _out : ("\"日\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.1q" : stdgo.GoString), _val : stdgo.Go.toInterface((("日本語" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("\"日\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.1x" : stdgo.GoString), _val : stdgo.Go.toInterface(("日本語" : stdgo.GoString)), _out : ("e6" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.1X" : stdgo.GoString), _val : stdgo.Go.toInterface((("日本語" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("E6" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%10.1q" : stdgo.GoString), _val : stdgo.Go.toInterface(("日本語日本語" : stdgo.GoString)), _out : ("       \"日\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%10.1q" : stdgo.GoString), _val : stdgo.Go.toInterface((("日本語日本語" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _out : ("       \"日\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%10v" : stdgo.GoString), _val : (null : stdgo.AnyInterface), _out : ("     <nil>" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-10v" : stdgo.GoString), _val : (null : stdgo.AnyInterface), _out : ("<nil>     " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((12345u32 : stdgo.GoUInt)), _out : ("12345" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((-12345 : stdgo.GoInt)), _out : ("-12345" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((255 : stdgo.GoUInt8)), _out : ("255" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((65535 : stdgo.GoUInt16)), _out : ("65535" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((-1u32 : stdgo.GoUInt32)), _out : ("4294967295" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((-1i64 : stdgo.GoUInt64)), _out : ("18446744073709551615" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((-128 : stdgo.GoInt8)), _out : ("-128" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((-32768 : stdgo.GoInt16)), _out : ("-32768" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((-2147483648 : stdgo.GoInt32)), _out : ("-2147483648" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((-9223372036854775808i64 : stdgo.GoInt64)), _out : ("-9223372036854775808" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.d" : stdgo.GoString), _val : stdgo.Go.toInterface((0 : stdgo.GoInt)), _out : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _fmt : ("%.0d" : stdgo.GoString), _val : stdgo.Go.toInterface((0 : stdgo.GoInt)), _out : stdgo.Go.str()?.__copy__() } : T__struct_2),
({ _fmt : ("%6.0d" : stdgo.GoString), _val : stdgo.Go.toInterface((0 : stdgo.GoInt)), _out : ("      " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%06.0d" : stdgo.GoString), _val : stdgo.Go.toInterface((0 : stdgo.GoInt)), _out : ("      " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% d" : stdgo.GoString), _val : stdgo.Go.toInterface((12345 : stdgo.GoInt)), _out : (" 12345" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+d" : stdgo.GoString), _val : stdgo.Go.toInterface((12345 : stdgo.GoInt)), _out : ("+12345" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+d" : stdgo.GoString), _val : stdgo.Go.toInterface((-12345 : stdgo.GoInt)), _out : ("-12345" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%b" : stdgo.GoString), _val : stdgo.Go.toInterface((7 : stdgo.GoInt)), _out : ("111" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%b" : stdgo.GoString), _val : stdgo.Go.toInterface((-6 : stdgo.GoInt)), _out : ("-110" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#b" : stdgo.GoString), _val : stdgo.Go.toInterface((7 : stdgo.GoInt)), _out : ("0b111" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#b" : stdgo.GoString), _val : stdgo.Go.toInterface((-6 : stdgo.GoInt)), _out : ("-0b110" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%b" : stdgo.GoString), _val : stdgo.Go.toInterface((-1u32 : stdgo.GoUInt32)), _out : ("11111111111111111111111111111111" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%b" : stdgo.GoString), _val : stdgo.Go.toInterface((-1i64 : stdgo.GoUInt64)), _out : ("1111111111111111111111111111111111111111111111111111111111111111" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%b" : stdgo.GoString), _val : stdgo.Go.toInterface((-9223372036854775808i64 : stdgo.GoInt64)), _out : _zeroFill(("-1" : stdgo.GoString), (63 : stdgo.GoInt), stdgo.Go.str()?.__copy__())?.__copy__() } : T__struct_2),
({ _fmt : ("%o" : stdgo.GoString), _val : stdgo.Go.toInterface((668 : stdgo.GoInt)), _out : ("1234" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%o" : stdgo.GoString), _val : stdgo.Go.toInterface((-668 : stdgo.GoInt)), _out : ("-1234" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#o" : stdgo.GoString), _val : stdgo.Go.toInterface((668 : stdgo.GoInt)), _out : ("01234" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#o" : stdgo.GoString), _val : stdgo.Go.toInterface((-668 : stdgo.GoInt)), _out : ("-01234" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%O" : stdgo.GoString), _val : stdgo.Go.toInterface((668 : stdgo.GoInt)), _out : ("0o1234" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%O" : stdgo.GoString), _val : stdgo.Go.toInterface((-668 : stdgo.GoInt)), _out : ("-0o1234" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%o" : stdgo.GoString), _val : stdgo.Go.toInterface((-1u32 : stdgo.GoUInt32)), _out : ("37777777777" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%o" : stdgo.GoString), _val : stdgo.Go.toInterface((-1i64 : stdgo.GoUInt64)), _out : ("1777777777777777777777" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#X" : stdgo.GoString), _val : stdgo.Go.toInterface((0 : stdgo.GoInt)), _out : ("0X0" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface((313249263 : stdgo.GoInt)), _out : ("12abcdef" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%X" : stdgo.GoString), _val : stdgo.Go.toInterface((313249263 : stdgo.GoInt)), _out : ("12ABCDEF" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface((-1u32 : stdgo.GoUInt32)), _out : ("ffffffff" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%X" : stdgo.GoString), _val : stdgo.Go.toInterface((-1i64 : stdgo.GoUInt64)), _out : ("FFFFFFFFFFFFFFFF" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.20b" : stdgo.GoString), _val : stdgo.Go.toInterface((7 : stdgo.GoInt)), _out : ("00000000000000000111" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%10d" : stdgo.GoString), _val : stdgo.Go.toInterface((12345 : stdgo.GoInt)), _out : ("     12345" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%10d" : stdgo.GoString), _val : stdgo.Go.toInterface((-12345 : stdgo.GoInt)), _out : ("    -12345" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+10d" : stdgo.GoString), _val : stdgo.Go.toInterface((12345 : stdgo.GoInt)), _out : ("    +12345" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%010d" : stdgo.GoString), _val : stdgo.Go.toInterface((12345 : stdgo.GoInt)), _out : ("0000012345" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%010d" : stdgo.GoString), _val : stdgo.Go.toInterface((-12345 : stdgo.GoInt)), _out : ("-000012345" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20.8d" : stdgo.GoString), _val : stdgo.Go.toInterface((1234 : stdgo.GoInt)), _out : ("            00001234" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20.8d" : stdgo.GoString), _val : stdgo.Go.toInterface((-1234 : stdgo.GoInt)), _out : ("           -00001234" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%020.8d" : stdgo.GoString), _val : stdgo.Go.toInterface((1234 : stdgo.GoInt)), _out : ("            00001234" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%020.8d" : stdgo.GoString), _val : stdgo.Go.toInterface((-1234 : stdgo.GoInt)), _out : ("           -00001234" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-20.8d" : stdgo.GoString), _val : stdgo.Go.toInterface((1234 : stdgo.GoInt)), _out : ("00001234            " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-20.8d" : stdgo.GoString), _val : stdgo.Go.toInterface((-1234 : stdgo.GoInt)), _out : ("-00001234           " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-#20.8x" : stdgo.GoString), _val : stdgo.Go.toInterface((19090108 : stdgo.GoInt)), _out : ("0x01234abc          " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-#20.8X" : stdgo.GoString), _val : stdgo.Go.toInterface((19090108 : stdgo.GoInt)), _out : ("0X01234ABC          " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-#20.8o" : stdgo.GoString), _val : stdgo.Go.toInterface((668 : stdgo.GoInt)), _out : ("00001234            " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%068d" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoInt)), _out : _zeroFill(stdgo.Go.str()?.__copy__(), (68 : stdgo.GoInt), ("1" : stdgo.GoString))?.__copy__() } : T__struct_2),
({ _fmt : ("%068d" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoInt)), _out : _zeroFill(("-" : stdgo.GoString), (67 : stdgo.GoInt), ("1" : stdgo.GoString))?.__copy__() } : T__struct_2),
({ _fmt : ("%#.68x" : stdgo.GoString), _val : stdgo.Go.toInterface((42 : stdgo.GoInt)), _out : _zeroFill(("0x" : stdgo.GoString), (68 : stdgo.GoInt), ("2a" : stdgo.GoString))?.__copy__() } : T__struct_2),
({ _fmt : ("%.68d" : stdgo.GoString), _val : stdgo.Go.toInterface((-42 : stdgo.GoInt)), _out : _zeroFill(("-" : stdgo.GoString), (68 : stdgo.GoInt), ("42" : stdgo.GoString))?.__copy__() } : T__struct_2),
({ _fmt : ("%+.68d" : stdgo.GoString), _val : stdgo.Go.toInterface((42 : stdgo.GoInt)), _out : _zeroFill(("+" : stdgo.GoString), (68 : stdgo.GoInt), ("42" : stdgo.GoString))?.__copy__() } : T__struct_2),
({ _fmt : ("% .68d" : stdgo.GoString), _val : stdgo.Go.toInterface((42 : stdgo.GoInt)), _out : _zeroFill((" " : stdgo.GoString), (68 : stdgo.GoInt), ("42" : stdgo.GoString))?.__copy__() } : T__struct_2),
({ _fmt : ("% +.68d" : stdgo.GoString), _val : stdgo.Go.toInterface((42 : stdgo.GoInt)), _out : _zeroFill(("+" : stdgo.GoString), (68 : stdgo.GoInt), ("42" : stdgo.GoString))?.__copy__() } : T__struct_2),
({ _fmt : ("%U" : stdgo.GoString), _val : stdgo.Go.toInterface((0 : stdgo.GoInt)), _out : ("U+0000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%U" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoInt)), _out : ("U+FFFFFFFFFFFFFFFF" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%U" : stdgo.GoString), _val : stdgo.Go.toInterface((10 : stdgo.GoInt32)), _out : ("U+000A" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#U" : stdgo.GoString), _val : stdgo.Go.toInterface((10 : stdgo.GoInt32)), _out : ("U+000A" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+U" : stdgo.GoString), _val : stdgo.Go.toInterface((120 : stdgo.GoInt32)), _out : ("U+0078" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# U" : stdgo.GoString), _val : stdgo.Go.toInterface((120 : stdgo.GoInt32)), _out : ("U+0078 \'x\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.2U" : stdgo.GoString), _val : stdgo.Go.toInterface((120 : stdgo.GoInt32)), _out : ("U+0078 \'x\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%U" : stdgo.GoString), _val : stdgo.Go.toInterface((9786 : stdgo.GoInt32)), _out : ("U+263A" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#U" : stdgo.GoString), _val : stdgo.Go.toInterface((9786 : stdgo.GoInt32)), _out : ("U+263A \'☺\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%U" : stdgo.GoString), _val : stdgo.Go.toInterface((120514 : stdgo.GoInt32)), _out : ("U+1D6C2" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#U" : stdgo.GoString), _val : stdgo.Go.toInterface((120514 : stdgo.GoInt32)), _out : ("U+1D6C2 \'𝛂\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#14.6U" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("  U+002318 \'⌘\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#-14.6U" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("U+002318 \'⌘\'  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#014.6U" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("  U+002318 \'⌘\'" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#-014.6U" : stdgo.GoString), _val : stdgo.Go.toInterface((8984 : stdgo.GoInt32)), _out : ("U+002318 \'⌘\'  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.68U" : stdgo.GoString), _val : stdgo.Go.toInterface((42u32 : stdgo.GoUInt)), _out : _zeroFill(("U+" : stdgo.GoString), (68 : stdgo.GoInt), ("2A" : stdgo.GoString))?.__copy__() } : T__struct_2),
({ _fmt : ("%#.68U" : stdgo.GoString), _val : stdgo.Go.toInterface((26085 : stdgo.GoInt32)), _out : (_zeroFill(("U+" : stdgo.GoString), (68 : stdgo.GoInt), ("65E5" : stdgo.GoString)) + (" \'日\'" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : T__struct_2),
({ _fmt : ("%+.3e" : stdgo.GoString), _val : stdgo.Go.toInterface((0 : stdgo.GoFloat64)), _out : ("+0.000e+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3e" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("+1.000e+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3x" : stdgo.GoString), _val : stdgo.Go.toInterface((0 : stdgo.GoFloat64)), _out : ("+0x0.000p+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3x" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("+0x1.000p+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-1.000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3F" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-1.000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3F" : stdgo.GoString), _val : stdgo.Go.toInterface(((-1 : stdgo.GoFloat64) : stdgo.GoFloat32)), _out : ("-1.000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("+001.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-001.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("1.00   " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-1.00  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+-07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("+1.00  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+-07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-1.00  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-+07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("+1.00  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-+07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-1.00  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+10.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("     +1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+10.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("     -1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% .3E" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-1.000E+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% .3e" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : (" 1.000e+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% .3X" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-0X1.000P+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% .3x" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : (" 0x1.000p+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : stdgo.GoString), _val : stdgo.Go.toInterface((0 : stdgo.GoFloat64)), _out : ("+0" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("+1" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-1" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% .3g" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-1" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% .3g" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : (" 1" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%b" : stdgo.GoString), _val : stdgo.Go.toInterface(((1 : stdgo.GoFloat64) : stdgo.GoFloat32)), _out : ("8388608p-23" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%b" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("4503599627370496p-52" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#g" : stdgo.GoString), _val : stdgo.Go.toInterface((1e-323 : stdgo.GoFloat64)), _out : ("1.00000e-323" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#g" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-1.00000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#g" : stdgo.GoString), _val : stdgo.Go.toInterface((1.1 : stdgo.GoFloat64)), _out : ("1.10000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#g" : stdgo.GoString), _val : stdgo.Go.toInterface((123456 : stdgo.GoFloat64)), _out : ("123456." : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#g" : stdgo.GoString), _val : stdgo.Go.toInterface((1.234567e+06 : stdgo.GoFloat64)), _out : ("1.234567e+06" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#g" : stdgo.GoString), _val : stdgo.Go.toInterface((1.23e+06 : stdgo.GoFloat64)), _out : ("1.23000e+06" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#g" : stdgo.GoString), _val : stdgo.Go.toInterface((1e+06 : stdgo.GoFloat64)), _out : ("1.00000e+06" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("1." : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0e" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("1.e+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0x" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("0x1.p+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0g" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("1." : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0g" : stdgo.GoString), _val : stdgo.Go.toInterface((1.1e+06 : stdgo.GoFloat64)), _out : ("1.e+06" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("1.0000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4e" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("1.0000e+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4x" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("0x1.0000p+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("1.000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((100000 : stdgo.GoFloat64)), _out : ("1.000e+05" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((1.234 : stdgo.GoFloat64)), _out : ("1.234" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((0.1234 : stdgo.GoFloat64)), _out : ("0.1234" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((1.23 : stdgo.GoFloat64)), _out : ("1.230" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((0.123 : stdgo.GoFloat64)), _out : ("0.1230" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2 : stdgo.GoFloat64)), _out : ("1.200" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((0.12 : stdgo.GoFloat64)), _out : ("0.1200" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((10.2 : stdgo.GoFloat64)), _out : ("10.20" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((0 : stdgo.GoFloat64)), _out : ("0.000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((0.012 : stdgo.GoFloat64)), _out : ("0.01200" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0f" : stdgo.GoString), _val : stdgo.Go.toInterface((123 : stdgo.GoFloat64)), _out : ("123." : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0e" : stdgo.GoString), _val : stdgo.Go.toInterface((123 : stdgo.GoFloat64)), _out : ("1.e+02" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0x" : stdgo.GoString), _val : stdgo.Go.toInterface((123 : stdgo.GoFloat64)), _out : ("0x1.p+07" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0g" : stdgo.GoString), _val : stdgo.Go.toInterface((123 : stdgo.GoFloat64)), _out : ("1.e+02" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4f" : stdgo.GoString), _val : stdgo.Go.toInterface((123 : stdgo.GoFloat64)), _out : ("123.0000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4e" : stdgo.GoString), _val : stdgo.Go.toInterface((123 : stdgo.GoFloat64)), _out : ("1.2300e+02" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4x" : stdgo.GoString), _val : stdgo.Go.toInterface((123 : stdgo.GoFloat64)), _out : ("0x1.ec00p+06" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((123 : stdgo.GoFloat64)), _out : ("123.0" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((123000 : stdgo.GoFloat64)), _out : ("1.230e+05" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#9.4g" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("    1.000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#b" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("4503599627370496p-52" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.4b" : stdgo.GoString), _val : stdgo.Go.toInterface(((1 : stdgo.GoFloat64) : stdgo.GoFloat32)), _out : ("8388608p-23" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.4b" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-4503599627370496p-52" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.68f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : _zeroFill(("1." : stdgo.GoString), (68 : stdgo.GoInt), stdgo.Go.str()?.__copy__())?.__copy__() } : T__struct_2),
({ _fmt : ("%.68f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : _zeroFill(("-1." : stdgo.GoString), (68 : stdgo.GoInt), stdgo.Go.str()?.__copy__())?.__copy__() } : T__struct_2),
({ _fmt : ("%f" : stdgo.GoString), _val : stdgo.Go.toInterface(_posInf), _out : ("+Inf" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.1f" : stdgo.GoString), _val : stdgo.Go.toInterface(_negInf), _out : ("-Inf" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% f" : stdgo.GoString), _val : stdgo.Go.toInterface(naN), _out : (" NaN" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20f" : stdgo.GoString), _val : stdgo.Go.toInterface(_posInf), _out : ("                +Inf" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 20F" : stdgo.GoString), _val : stdgo.Go.toInterface(_posInf), _out : ("                 Inf" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 20e" : stdgo.GoString), _val : stdgo.Go.toInterface(_negInf), _out : ("                -Inf" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 20x" : stdgo.GoString), _val : stdgo.Go.toInterface(_negInf), _out : ("                -Inf" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+20E" : stdgo.GoString), _val : stdgo.Go.toInterface(_negInf), _out : ("                -Inf" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+20X" : stdgo.GoString), _val : stdgo.Go.toInterface(_negInf), _out : ("                -Inf" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% +20g" : stdgo.GoString), _val : stdgo.Go.toInterface(_negInf), _out : ("                -Inf" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+-20G" : stdgo.GoString), _val : stdgo.Go.toInterface(_posInf), _out : ("+Inf                " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20e" : stdgo.GoString), _val : stdgo.Go.toInterface(naN), _out : ("                 NaN" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20x" : stdgo.GoString), _val : stdgo.Go.toInterface(naN), _out : ("                 NaN" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% +20E" : stdgo.GoString), _val : stdgo.Go.toInterface(naN), _out : ("                +NaN" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% +20X" : stdgo.GoString), _val : stdgo.Go.toInterface(naN), _out : ("                +NaN" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% -20g" : stdgo.GoString), _val : stdgo.Go.toInterface(naN), _out : (" NaN                " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+-20G" : stdgo.GoString), _val : stdgo.Go.toInterface(naN), _out : ("+NaN                " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+020e" : stdgo.GoString), _val : stdgo.Go.toInterface(_posInf), _out : ("                +Inf" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+020x" : stdgo.GoString), _val : stdgo.Go.toInterface(_posInf), _out : ("                +Inf" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-020f" : stdgo.GoString), _val : stdgo.Go.toInterface(_negInf), _out : ("-Inf                " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-020E" : stdgo.GoString), _val : stdgo.Go.toInterface(naN), _out : ("NaN                 " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-020X" : stdgo.GoString), _val : stdgo.Go.toInterface(naN), _out : ("NaN                 " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.f" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(0+0i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% .f" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("( 0+0i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.f" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(+0+0i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% +.f" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(+0+0i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3e" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(+0.000e+00+0.000e+00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3x" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(+0x0.000p+00+0x0.000p+00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3f" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(+0.000+0.000i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(+0+0i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3e" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(+1.000e+00+2.000e+00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3x" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(+0x1.000p+00+0x1.000p+01i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3f" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(+1.000+2.000i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(+1+2i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3e" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(0.000e+00+0.000e+00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3x" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(0x0.000p+00+0x0.000p+00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3f" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(0.000+0.000i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3F" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(0.000+0.000i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3F" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64) : stdgo.GoComplex64)), _out : ("(0.000+0.000i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3g" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(0+0i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3e" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(1.000e+00+2.000e+00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3x" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(0x1.000p+00+0x1.000p+01i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3f" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(1.000+2.000i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3g" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(1+2i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3e" : stdgo.GoString), _val : stdgo.Go.toInterface(((-1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -2f64))), _out : ("(-1.000e+00-2.000e+00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3x" : stdgo.GoString), _val : stdgo.Go.toInterface(((-1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -2f64))), _out : ("(-0x1.000p+00-0x1.000p+01i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3f" : stdgo.GoString), _val : stdgo.Go.toInterface(((-1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -2f64))), _out : ("(-1.000-2.000i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.3g" : stdgo.GoString), _val : stdgo.Go.toInterface(((-1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -2f64))), _out : ("(-1-2i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% .3E" : stdgo.GoString), _val : stdgo.Go.toInterface(((-1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -2f64))), _out : ("(-1.000E+00-2.000E+00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% .3X" : stdgo.GoString), _val : stdgo.Go.toInterface(((-1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -2f64))), _out : ("(-0X1.000P+00-0X1.000P+01i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(+1+2i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.3g" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64) : stdgo.GoComplex64)), _out : ("(+1+2i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#g" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(1.00000+2.00000i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#g" : stdgo.GoString), _val : stdgo.Go.toInterface(((123456f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 789012f64))), _out : ("(123456.+789012.i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#g" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1e-10f64))), _out : ("(0.00000+1.00000e-10i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#g" : stdgo.GoString), _val : stdgo.Go.toInterface(((-1e+10f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -1.11e+100f64))), _out : ("(-1.00000e+10-1.11000e+100i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0f" : stdgo.GoString), _val : stdgo.Go.toInterface(((1.23f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64))), _out : ("(1.+1.i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0e" : stdgo.GoString), _val : stdgo.Go.toInterface(((1.23f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64))), _out : ("(1.e+00+1.e+00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0x" : stdgo.GoString), _val : stdgo.Go.toInterface(((1.23f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64))), _out : ("(0x1.p+00+0x1.p+00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0g" : stdgo.GoString), _val : stdgo.Go.toInterface(((1.23f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64))), _out : ("(1.+1.i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0g" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 100000f64))), _out : ("(0.+1.e+05i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.0g" : stdgo.GoString), _val : stdgo.Go.toInterface(((1.23e+06f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(1.e+06+0.i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4f" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1.23f64))), _out : ("(1.0000+1.2300i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4e" : stdgo.GoString), _val : stdgo.Go.toInterface(((123f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64))), _out : ("(1.2300e+02+1.0000e+00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4x" : stdgo.GoString), _val : stdgo.Go.toInterface(((123f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1f64))), _out : ("(0x1.ec00p+06+0x1.0000p+00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#.4g" : stdgo.GoString), _val : stdgo.Go.toInterface(((123f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1.23f64))), _out : ("(123.0+1.230i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#12.5g" : stdgo.GoString), _val : stdgo.Go.toInterface(((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 100000f64))), _out : ("(      0.0000 +1.0000e+05i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#12.5g" : stdgo.GoString), _val : stdgo.Go.toInterface(((1.23e+06f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))), _out : ("(  1.2300e+06     +0.0000i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%b" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(4503599627370496p-52+4503599627370496p-51i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%b" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64) : stdgo.GoComplex64)), _out : ("(8388608p-23+8388608p-22i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#b" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(4503599627370496p-52+4503599627370496p-51i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.4b" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(4503599627370496p-52+4503599627370496p-51i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.4b" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64) : stdgo.GoComplex64)), _out : ("(8388608p-23+8388608p-22i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%f" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(_posInf, _posInf)), _out : ("(+Inf+Infi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%f" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(_negInf, _negInf)), _out : ("(-Inf-Infi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%f" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(naN, naN)), _out : ("(NaN+NaNi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.1f" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(_posInf, _posInf)), _out : ("(+Inf+Infi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% f" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(_posInf, _posInf)), _out : ("( Inf+Infi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% f" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(_negInf, _negInf)), _out : ("(-Inf-Infi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% f" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(naN, naN)), _out : ("( NaN+NaNi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%8e" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(_posInf, _posInf)), _out : ("(    +Inf    +Infi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%8x" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(_posInf, _posInf)), _out : ("(    +Inf    +Infi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 8E" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(_posInf, _posInf)), _out : ("(     Inf    +Infi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 8X" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(_posInf, _posInf)), _out : ("(     Inf    +Infi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+8f" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(_negInf, _negInf)), _out : ("(    -Inf    -Infi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% +8g" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(_negInf, _negInf)), _out : ("(    -Inf    -Infi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% -8G" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(naN, naN)), _out : ("( NaN    +NaN    i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+-8b" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(naN, naN)), _out : ("(+NaN    +NaN    i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%08f" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(_posInf, _posInf)), _out : ("(    +Inf    +Infi)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-08g" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(_negInf, _negInf)), _out : ("(-Inf    -Inf    i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-08G" : stdgo.GoString), _val : stdgo.Go.toInterface(new stdgo.GoComplex128(naN, naN)), _out : ("(NaN     +NaN    i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%e" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("1.000000e+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%e" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678e+06 : stdgo.GoFloat64)), _out : ("1.234568e+06" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%e" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678e-05 : stdgo.GoFloat64)), _out : ("1.234568e-05" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%e" : stdgo.GoString), _val : stdgo.Go.toInterface((-7 : stdgo.GoFloat64)), _out : ("-7.000000e+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%e" : stdgo.GoString), _val : stdgo.Go.toInterface((-1e-09 : stdgo.GoFloat64)), _out : ("-1.000000e-09" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%f" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678e+06 : stdgo.GoFloat64)), _out : ("1234567.800000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%f" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678e-05 : stdgo.GoFloat64)), _out : ("0.000012" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%f" : stdgo.GoString), _val : stdgo.Go.toInterface((-7 : stdgo.GoFloat64)), _out : ("-7.000000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1e-09 : stdgo.GoFloat64)), _out : ("-0.000000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%g" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678e+06 : stdgo.GoFloat64)), _out : ("1.2345678e+06" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%g" : stdgo.GoString), _val : stdgo.Go.toInterface(((1.2345678e+06 : stdgo.GoFloat64) : stdgo.GoFloat32)), _out : ("1.2345678e+06" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%g" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678e-05 : stdgo.GoFloat64)), _out : ("1.2345678e-05" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%g" : stdgo.GoString), _val : stdgo.Go.toInterface((-7 : stdgo.GoFloat64)), _out : ("-7" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%g" : stdgo.GoString), _val : stdgo.Go.toInterface((-1e-09 : stdgo.GoFloat64)), _out : ("-1e-09" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%g" : stdgo.GoString), _val : stdgo.Go.toInterface(((-1e-09 : stdgo.GoFloat64) : stdgo.GoFloat32)), _out : ("-1e-09" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%E" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("1.000000E+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%E" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678e+06 : stdgo.GoFloat64)), _out : ("1.234568E+06" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%E" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678e-05 : stdgo.GoFloat64)), _out : ("1.234568E-05" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%E" : stdgo.GoString), _val : stdgo.Go.toInterface((-7 : stdgo.GoFloat64)), _out : ("-7.000000E+00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%E" : stdgo.GoString), _val : stdgo.Go.toInterface((-1e-09 : stdgo.GoFloat64)), _out : ("-1.000000E-09" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%G" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678e+06 : stdgo.GoFloat64)), _out : ("1.2345678E+06" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%G" : stdgo.GoString), _val : stdgo.Go.toInterface(((1.2345678e+06 : stdgo.GoFloat64) : stdgo.GoFloat32)), _out : ("1.2345678E+06" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%G" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678e-05 : stdgo.GoFloat64)), _out : ("1.2345678E-05" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%G" : stdgo.GoString), _val : stdgo.Go.toInterface((-7 : stdgo.GoFloat64)), _out : ("-7" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%G" : stdgo.GoString), _val : stdgo.Go.toInterface((-1e-09 : stdgo.GoFloat64)), _out : ("-1E-09" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%G" : stdgo.GoString), _val : stdgo.Go.toInterface(((-1e-09 : stdgo.GoFloat64) : stdgo.GoFloat32)), _out : ("-1E-09" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20.5s" : stdgo.GoString), _val : stdgo.Go.toInterface(("qwertyuiop" : stdgo.GoString)), _out : ("               qwert" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.5s" : stdgo.GoString), _val : stdgo.Go.toInterface(("qwertyuiop" : stdgo.GoString)), _out : ("qwert" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-20.5s" : stdgo.GoString), _val : stdgo.Go.toInterface(("qwertyuiop" : stdgo.GoString)), _out : ("qwert               " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20c" : stdgo.GoString), _val : stdgo.Go.toInterface((120 : stdgo.GoInt32)), _out : ("                   x" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-20c" : stdgo.GoString), _val : stdgo.Go.toInterface((120 : stdgo.GoInt32)), _out : ("x                   " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20.6e" : stdgo.GoString), _val : stdgo.Go.toInterface((1234.5 : stdgo.GoFloat64)), _out : ("        1.234500e+03" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20.6e" : stdgo.GoString), _val : stdgo.Go.toInterface((0.0012345 : stdgo.GoFloat64)), _out : ("        1.234500e-03" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20e" : stdgo.GoString), _val : stdgo.Go.toInterface((1234.5 : stdgo.GoFloat64)), _out : ("        1.234500e+03" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20e" : stdgo.GoString), _val : stdgo.Go.toInterface((0.0012345 : stdgo.GoFloat64)), _out : ("        1.234500e-03" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20.8e" : stdgo.GoString), _val : stdgo.Go.toInterface((1234.5 : stdgo.GoFloat64)), _out : ("      1.23450000e+03" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20f" : stdgo.GoString), _val : stdgo.Go.toInterface((1234.56789 : stdgo.GoFloat64)), _out : ("         1234.567890" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20f" : stdgo.GoString), _val : stdgo.Go.toInterface((0.00123456789 : stdgo.GoFloat64)), _out : ("            0.001235" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20f" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678901234568e+10 : stdgo.GoFloat64)), _out : ("  12345678901.234568" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-20f" : stdgo.GoString), _val : stdgo.Go.toInterface((1234.56789 : stdgo.GoFloat64)), _out : ("1234.567890         " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20.8f" : stdgo.GoString), _val : stdgo.Go.toInterface((1234.56789 : stdgo.GoFloat64)), _out : ("       1234.56789000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%20.8f" : stdgo.GoString), _val : stdgo.Go.toInterface((0.00123456789 : stdgo.GoFloat64)), _out : ("          0.00123457" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%g" : stdgo.GoString), _val : stdgo.Go.toInterface((1234.56789 : stdgo.GoFloat64)), _out : ("1234.56789" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%g" : stdgo.GoString), _val : stdgo.Go.toInterface((0.00123456789 : stdgo.GoFloat64)), _out : ("0.00123456789" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%g" : stdgo.GoString), _val : stdgo.Go.toInterface((1.23456789e+20 : stdgo.GoFloat64)), _out : ("1.23456789e+20" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(_array), _out : ("[1 2 3 4 5]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(_iarray), _out : ("[1 hello 2.5 <nil>]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(_barray), _out : ("[1 2 3 4 5]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef(_array) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>)), _out : ("&[1 2 3 4 5]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef(_iarray) : stdgo.Ref<stdgo.GoArray<stdgo.AnyInterface>>)), _out : ("&[1 hello 2.5 <nil>]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef(_barray) : stdgo.Ref<stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8>>)), _out : ("&[1 2 3 4 5]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(_slice), _out : ("[1 2 3 4 5]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(_islice), _out : ("[1 hello 2.5 <nil>]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(_bslice), _out : ("[1 2 3 4 5]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)), _out : ("&[1 2 3 4 5]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef(_islice) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>)), _out : ("&[1 hello 2.5 <nil>]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef(_bslice) : stdgo.Ref<stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8>>)), _out : ("&[1 2 3 4 5]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%b" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(65 : stdgo.GoUInt8), (66 : stdgo.GoUInt8), (67 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[1000001 1000010 1000011]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%c" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(65 : stdgo.GoUInt8), (66 : stdgo.GoUInt8), (67 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[A B C]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(65 : stdgo.GoUInt8), (66 : stdgo.GoUInt8), (67 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[65 66 67]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%o" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(65 : stdgo.GoUInt8), (66 : stdgo.GoUInt8), (67 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[101 102 103]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%U" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(65 : stdgo.GoUInt8), (66 : stdgo.GoUInt8), (67 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[U+0041 U+0042 U+0043]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(65 : stdgo.GoUInt8), (66 : stdgo.GoUInt8), (67 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[65 66 67]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[(123 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[123]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%012v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#012v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[]byte{}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%6v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[     1     11    111]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%06v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[000001 000011 000111]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-6v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[1      11     111   ]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-06v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[1      11     111   ]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[]byte{0x1, 0xb, 0x6f}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#6v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[]byte{   0x1,    0xb,   0x6f}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#06v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[]byte{0x000001, 0x00000b, 0x00006f}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#-6v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[]byte{0x1   , 0xb   , 0x6f  }" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#-06v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[]byte{0x1   , 0xb   , 0x6f  }" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[ 1  11  111]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[1 11 111]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# -6v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[]byte{ 0x1  ,  0xb  ,  0x6f }" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#+-6v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[3]uint8{0x1   , 0xb   , 0x6f  }" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% d" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[ 1  11  111]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+d" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[+1 +11 +111]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# -6d" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[ 1      11     111  ]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#+-6d" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (111 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[+1     +11    +111  ]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678 : stdgo.GoFloat64)), _out : ("1.2345678" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(((1.2345678 : stdgo.GoFloat64) : stdgo.GoFloat32)), _out : ("1.2345678" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(1+2i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64) : stdgo.GoComplex64)), _out : ("(1+2i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.A((1 : stdgo.GoInt), (2u32 : stdgo.GoUInt), ("a" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) : stdgo._internal.fmt_test.Fmt_test.A)), _out : ("{1 2 a [1 2]}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.A((1 : stdgo.GoInt), (2u32 : stdgo.GoUInt), ("a" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) : stdgo._internal.fmt_test.Fmt_test.A)), _out : ("{i:1 j:2 s:a x:[1 2]}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.B((1 : stdgo._internal.fmt_test.Fmt_test.I), (2 : stdgo.GoInt)) : stdgo._internal.fmt_test.Fmt_test.B)), _out : ("{I:<1> j:2}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.C((1 : stdgo.GoInt), (new stdgo._internal.fmt_test.Fmt_test.B((2 : stdgo._internal.fmt_test.Fmt_test.I), (3 : stdgo.GoInt)) : stdgo._internal.fmt_test.Fmt_test.B)) : stdgo._internal.fmt_test.Fmt_test.C)), _out : ("{i:1 B:{I:<2> j:3}}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(((23 : stdgo._internal.fmt_test.Fmt_test.I) : I))), _out : ("<23>" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(((23 : stdgo._internal.fmt_test.Fmt_test.I) : I))), _out : ("\"<23>\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(((23 : stdgo._internal.fmt_test.Fmt_test.I) : I))), _out : ("3c32333e" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(((23 : stdgo._internal.fmt_test.Fmt_test.I) : I))), _out : ("0x3c32333e" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(((23 : stdgo._internal.fmt_test.Fmt_test.I) : I))), _out : ("0x3c 0x32 0x33 0x3e" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(((23 : stdgo._internal.fmt_test.Fmt_test.I) : I))), _out : ("23" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(((23 : stdgo._internal.fmt_test.Fmt_test.I) : I)))))), _out : ("<23>" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.A((1 : stdgo.GoInt), (2u32 : stdgo.GoUInt), ("a" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) : stdgo._internal.fmt_test.Fmt_test.A)), _out : ("fmt_test.A{i:1, j:0x2, s:\"a\", x:[]int{1, 2}}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoUInt8))), _out : ("(*uint8)(0xPTR)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(testFmtInterface), _out : ("(func(*testing.T))(0xPTR)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>)), _out : ("(chan int)(0xPTR)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((-1i64 : stdgo.GoUInt64)), _out : ("0xffffffffffffffff" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((1000000000 : stdgo.GoInt)), _out : ("1000000000" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        @:mergeBlock {
            x.set(("a" : stdgo.GoString), (1 : stdgo.GoInt));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>)), _out : ("map[string]int{\"a\":1}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo._internal.fmt_test.Fmt_test.B>();
        x.__defaultValue__ = () -> ({} : stdgo._internal.fmt_test.Fmt_test.B);
        @:mergeBlock {
            x.set(("a" : stdgo.GoString), (new stdgo._internal.fmt_test.Fmt_test.B((1 : stdgo._internal.fmt_test.Fmt_test.I), (2 : stdgo.GoInt)) : stdgo._internal.fmt_test.Fmt_test.B));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo._internal.fmt_test.Fmt_test.B>)), _out : ("map[string]fmt_test.B{\"a\":fmt_test.B{I:1, j:2}}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)), _out : ("[]string{\"a\", \"b\"}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.SI() : stdgo._internal.fmt_test.Fmt_test.SI)), _out : ("fmt_test.SI{I:interface {}(nil)}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoInt>)), _out : ("[]int(nil)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), _out : ("[]int{}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(_array), _out : ("[5]int{1, 2, 3, 4, 5}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef(_array) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>)), _out : ("&[5]int{1, 2, 3, 4, 5}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(_iarray), _out : ("[4]interface {}{1, \"hello\", 2.5, interface {}(nil)}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef(_iarray) : stdgo.Ref<stdgo.GoArray<stdgo.AnyInterface>>)), _out : ("&[4]interface {}{1, \"hello\", 2.5, interface {}(nil)}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(((null : stdgo.GoMap<stdgo.GoInt, stdgo.GoUInt8>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoByte>)), _out : ("map[int]uint8(nil)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoUInt8>();
        x.__defaultValue__ = () -> (0 : stdgo.GoUInt8);
        @:mergeBlock {};
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoUInt8>)), _out : ("map[int]uint8{}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(("foo" : stdgo.GoString)), _out : ("\"foo\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(_barray), _out : ("[5]fmt_test.renamedUint8{0x1, 0x2, 0x3, 0x4, 0x5}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(_bslice), _out : ("[]fmt_test.renamedUint8{0x1, 0x2, 0x3, 0x4, 0x5}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoInt32>)), _out : ("[]int32(nil)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678 : stdgo.GoFloat64)), _out : ("1.2345678" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(((1.2345678 : stdgo.GoFloat64) : stdgo.GoFloat32)), _out : ("1.2345678" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("1" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((1e+06 : stdgo.GoFloat64)), _out : ("1e+06" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(((1 : stdgo.GoFloat64) : stdgo.GoFloat32)), _out : ("1" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(((1e+06 : stdgo.GoFloat64) : stdgo.GoFloat32)), _out : ("1e+06" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(((null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Slice<stdgo.GoByte>)), _out : ("[]byte(nil)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[]byte(nil)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[]byte{}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[]byte{}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))))), _out : ("[]uint8{}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))))), _out : ("[]uint8{}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), _out : ("&[]uint8{}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), _out : ("&[]uint8{}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[3]uint8{0x0, 0x0, 0x0}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[3]uint8{0x0, 0x0, 0x0}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (15 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), _out : ("[0x1 0x2 0xf]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (15 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), _out : ("[1 2 f]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (15 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), _out : ("[1 2 15]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (15 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[1 2 15]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)), _out : ("[\"a\" \"b\"]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 02x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("01" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 02x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("01 02 03" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%2x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#2x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 02x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# 02x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-2x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-02x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%8x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(171 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("      ab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 8x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(171 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("      ab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#8x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(171 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("    0xab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# 8x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(171 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("    0xab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%08x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(171 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("000000ab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 08x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(171 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("000000ab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#08x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(171 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("00000xab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# 08x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(171 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("00000xab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%10x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(171 : stdgo.GoUInt8), (205 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("      abcd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 10x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(171 : stdgo.GoUInt8), (205 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("     ab cd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#10x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(171 : stdgo.GoUInt8), (205 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("    0xabcd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# 10x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(171 : stdgo.GoUInt8), (205 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : (" 0xab 0xcd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%010x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(171 : stdgo.GoUInt8), (205 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("000000abcd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 010x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(171 : stdgo.GoUInt8), (205 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("00000ab cd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#010x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(171 : stdgo.GoUInt8), (205 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("00000xabcd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# 010x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(171 : stdgo.GoUInt8), (205 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("00xab 0xcd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-10X" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(171 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("AB        " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% -010X" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(171 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("AB        " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#-10X" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(171 : stdgo.GoUInt8), (205 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("0XABCD    " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# -010X" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(171 : stdgo.GoUInt8), (205 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("0XAB 0XCD " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%2x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str()), _out : ("  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#2x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str()), _out : ("  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 02x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str()), _out : ("00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# 02x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str()), _out : ("00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-2x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str()), _out : ("  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-02x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str()), _out : ("  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%8x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171)), _out : ("      ab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 8x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171)), _out : ("      ab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#8x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171)), _out : ("    0xab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# 8x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171)), _out : ("    0xab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%08x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171)), _out : ("000000ab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 08x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171)), _out : ("000000ab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#08x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171)), _out : ("00000xab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# 08x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171)), _out : ("00000xab" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%10x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171, 205)), _out : ("      abcd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 10x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171, 205)), _out : ("     ab cd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#10x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171, 205)), _out : ("    0xabcd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# 10x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171, 205)), _out : (" 0xab 0xcd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%010x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171, 205)), _out : ("000000abcd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 010x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171, 205)), _out : ("00000ab cd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#010x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171, 205)), _out : ("00000xabcd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# 010x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171, 205)), _out : ("00xab 0xcd" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-10X" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171)), _out : ("AB        " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% -010X" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171)), _out : ("AB        " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#-10X" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171, 205)), _out : ("0XABCD    " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%# -010X" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.str(171, 205)), _out : ("0XAB 0XCD " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((true : T_renamedBool)), _out : ("true" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface((true : T_renamedBool)), _out : ("%!d(fmt_test.renamedBool=true)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%o" : stdgo.GoString), _val : stdgo.Go.toInterface(((8 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt)), _out : ("10" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface(((-9 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt8) : T_renamedInt8)), _out : ("-9" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(((10 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt16) : T_renamedInt16)), _out : ("10" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(((-11 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt32) : T_renamedInt32)), _out : ("-11" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%X" : stdgo.GoString), _val : stdgo.Go.toInterface(((255i64 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt64) : T_renamedInt64)), _out : ("FF" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(((13u32 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint) : T_renamedUint)), _out : ("13" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%o" : stdgo.GoString), _val : stdgo.Go.toInterface(((14 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8) : T_renamedUint8)), _out : ("16" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%X" : stdgo.GoString), _val : stdgo.Go.toInterface(((15 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint16) : T_renamedUint16)), _out : ("F" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface(((16u32 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint32) : T_renamedUint32)), _out : ("16" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%X" : stdgo.GoString), _val : stdgo.Go.toInterface(((17i64 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint64) : T_renamedUint64)), _out : ("11" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%o" : stdgo.GoString), _val : stdgo.Go.toInterface(((18 : stdgo._internal.fmt_test.Fmt_test.T_renamedUintptr) : T_renamedUintptr)), _out : ("22" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface(((("thing" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_renamedString) : T_renamedString)), _out : ("7468696e67" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface(((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (15 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : T_renamedBytes)), _out : ("[1 2 15]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(((("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>) : T_renamedBytes)), _out : ("\"hello\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8>(5, 5, ...[(104 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (101 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (111 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8)]).__setNumber32__() : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8>)), _out : ("68656c6c6f" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%X" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8>(5, 5, ...[(104 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (101 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (111 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8)]).__setNumber32__() : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8>)), _out : ("68656C6C6F" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8>(5, 5, ...[(104 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (101 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (111 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8)]).__setNumber32__() : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8>)), _out : ("hello" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8>(5, 5, ...[(104 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (101 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (108 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8), (111 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8)]).__setNumber32__() : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.T_renamedUint8>)), _out : ("\"hello\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(((22 : stdgo.GoFloat64) : T_renamedFloat32)), _out : ("22" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(((33 : stdgo.GoFloat64) : T_renamedFloat64)), _out : ("33" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(((3f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 4f64) : T_renamedComplex64)), _out : ("(3+4i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(((4f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -3f64) : T_renamedComplex128)), _out : ("(4-3i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(((1 : stdgo._internal.fmt_test.Fmt_test.F) : F))), _out : ("<x=F(1)>" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(((2 : stdgo._internal.fmt_test.Fmt_test.G) : G))), _out : ("2" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.S(((4 : stdgo._internal.fmt_test.Fmt_test.F) : F), ((5 : stdgo._internal.fmt_test.Fmt_test.G) : G)) : stdgo._internal.fmt_test.Fmt_test.S)), _out : ("{F:<v=F(4)> G:5}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(((6 : stdgo._internal.fmt_test.Fmt_test.G) : G))), _out : ("GoString(6)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.S(((7 : stdgo._internal.fmt_test.Fmt_test.F) : F), ((8 : stdgo._internal.fmt_test.Fmt_test.G) : G)) : stdgo._internal.fmt_test.Fmt_test.S)), _out : ("fmt_test.S{F:<v=F(7)>, G:GoString(8)}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%T" : stdgo.GoString), _val : stdgo.Go.toInterface(((0 : stdgo.GoUInt8) : stdgo.GoByte)), _out : ("uint8" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%T" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.reflect.Reflect.valueOf((null : stdgo.AnyInterface)))), _out : ("reflect.Value" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%T" : stdgo.GoString), _val : stdgo.Go.toInterface(((4f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -3f64))), _out : ("complex128" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%T" : stdgo.GoString), _val : stdgo.Go.toInterface(((4f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -3f64) : T_renamedComplex128)), _out : ("fmt_test.renamedComplex128" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%T" : stdgo.GoString), _val : stdgo.Go.toInterface(_intVar), _out : ("int" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%6T" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_intVar)), _out : ("  *int" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%10T" : stdgo.GoString), _val : (null : stdgo.AnyInterface), _out : ("     <nil>" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-10T" : stdgo.GoString), _val : (null : stdgo.AnyInterface), _out : ("<nil>     " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%p" : stdgo.GoString), _val : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)), _out : ("0x0" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#p" : stdgo.GoString), _val : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)), _out : ("0" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%p" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_intVar)), _out : ("0xPTR" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#p" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_intVar)), _out : ("PTR" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%p" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef(_array) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>)), _out : ("0xPTR" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%p" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)), _out : ("0xPTR" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%8.2p" : stdgo.GoString), _val : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)), _out : ("    0x00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-20.16p" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_intVar)), _out : ("0xPTR  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%p" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>)), _out : ("0xPTR" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%p" : stdgo.GoString), _val : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        @:mergeBlock {};
        x;
    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)), _out : ("0xPTR" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%p" : stdgo.GoString), _val : stdgo.Go.toInterface(function():Void {}), _out : ("0xPTR" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%p" : stdgo.GoString), _val : stdgo.Go.toInterface((27 : stdgo.GoInt)), _out : ("%!p(int=27)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%p" : stdgo.GoString), _val : (null : stdgo.AnyInterface), _out : ("%!p(<nil>)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#p" : stdgo.GoString), _val : (null : stdgo.AnyInterface), _out : ("%!p(<nil>)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%b" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_intVar)), _out : ("PTR_b" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_intVar)), _out : ("PTR_d" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%o" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_intVar)), _out : ("PTR_o" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_intVar)), _out : ("PTR_x" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%X" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_intVar)), _out : ("PTR_X" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : (null : stdgo.AnyInterface), _out : ("<nil>" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : (null : stdgo.AnyInterface), _out : ("<nil>" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)), _out : ("<nil>" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)), _out : ("(*int)(nil)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_intVar)), _out : ("0xPTR" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_intVar)), _out : ("(*int)(0xPTR)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%8.2v" : stdgo.GoString), _val : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)), _out : ("   <nil>" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-20.16v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_intVar)), _out : ("0xPTR  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_pValue)), _out : ("String(p)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%p" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_pValue)), _out : ("0xPTR" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time).month())), _out : ("January" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%d" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time).month())), _out : ("1" : stdgo.GoString) } : T__struct_2),
({ _fmt : stdgo.Go.str()?.__copy__(), _val : (null : stdgo.AnyInterface), _out : ("%!(EXTRA <nil>)" : stdgo.GoString) } : T__struct_2),
({ _fmt : stdgo.Go.str()?.__copy__(), _val : stdgo.Go.toInterface((2 : stdgo.GoInt)), _out : ("%!(EXTRA int=2)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("no args" : stdgo.GoString), _val : stdgo.Go.toInterface(("hello" : stdgo.GoString)), _out : ("no args%!(EXTRA string=hello)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s %" : stdgo.GoString), _val : stdgo.Go.toInterface(("hello" : stdgo.GoString)), _out : ("hello %!(NOVERB)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s %.2" : stdgo.GoString), _val : stdgo.Go.toInterface(("hello" : stdgo.GoString)), _out : ("hello %!(NOVERB)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%017091901790959340919092959340919017929593813360" : stdgo.GoString), _val : stdgo.Go.toInterface((0 : stdgo.GoInt)), _out : ("%!(NOVERB)%!(EXTRA int=0)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%184467440737095516170v" : stdgo.GoString), _val : stdgo.Go.toInterface((0 : stdgo.GoInt)), _out : ("%!(NOVERB)%!(EXTRA int=0)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%010.2" : stdgo.GoString), _val : stdgo.Go.toInterface(("12345" : stdgo.GoString)), _out : ("%!(NOVERB)%!(EXTRA string=12345)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        @:mergeBlock {
            x.set(naN, (1 : stdgo.GoInt));
            x.set(naN, (1 : stdgo.GoInt));
        };
        x;
    } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoInt>)), _out : ("map[NaN:1 NaN:1]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% .2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : (" 1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% .2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("+1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%7.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("   1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%7.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("  -1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 7.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("   1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 7.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("  -1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+7.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("  +1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+7.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("  -1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% +7.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("  +1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% +7.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("  -1.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("0001.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-001.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : (" 001.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% 07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-001.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("+001.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-001.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% +07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("+001.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("% +07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface((-1 : stdgo.GoFloat64)), _out : ("-001.00" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%7.2f" : stdgo.GoString), _val : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), _out : ("(   1.00  +2.00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+07.2f" : stdgo.GoString), _val : stdgo.Go.toInterface(((-1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -2f64))), _out : ("(-001.00-002.00i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%0-5s" : stdgo.GoString), _val : stdgo.Go.toInterface(("abc" : stdgo.GoString)), _out : ("abc  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%-05.1f" : stdgo.GoString), _val : stdgo.Go.toInterface((1 : stdgo.GoFloat64)), _out : ("1.0  " : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%06v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((10 : stdgo.GoFloat64)), stdgo.Go.toInterface((10 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>)), _out : ("[000010 000010]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%06v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((-10 : stdgo.GoFloat64)), stdgo.Go.toInterface((10 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>)), _out : ("[-00010 000010]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%06v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface(((10f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 10f64))), stdgo.Go.toInterface((10 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>)), _out : ("[(000010+00010i) 000010]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%06v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface(((-10f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 10f64))), stdgo.Go.toInterface((10 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>)), _out : ("[(-00010+00010i) 000010]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%03.6v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoFloat64)), stdgo.Go.toInterface(("x" : stdgo.GoString))]) : stdgo.Slice<stdgo.AnyInterface>)), _out : ("[000001 002 00x]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%03.0v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoFloat64)), stdgo.Go.toInterface(("x" : stdgo.GoString))]) : stdgo.Slice<stdgo.AnyInterface>)), _out : ("[    002 000]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoComplex64>(3, 3, ...[((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), ((2f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), ((3f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))]) : stdgo.Slice<stdgo.GoComplex64>)), _out : ("[(1+0i) (2+0i) (3+0i)]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoComplex128>(3, 3, ...[((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), ((2f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)), ((3f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))]) : stdgo.Slice<stdgo.GoComplex128>)), _out : ("[(1+0i) (2+0i) (3+0i)]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%." : stdgo.GoString), _val : stdgo.Go.toInterface((3 : stdgo.GoInt)), _out : ("%!.(int=3)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+10.2f" : stdgo.GoString), _val : stdgo.Go.toInterface(((104.66f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 440.51f64))), _out : ("(   +104.66   +440.51i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+10.2f" : stdgo.GoString), _val : stdgo.Go.toInterface(((-104.66f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 440.51f64))), _out : ("(   -104.66   +440.51i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+10.2f" : stdgo.GoString), _val : stdgo.Go.toInterface(((104.66f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -440.51f64))), _out : ("(   +104.66   -440.51i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+10.2f" : stdgo.GoString), _val : stdgo.Go.toInterface(((-104.66f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -440.51f64))), _out : ("(   -104.66   -440.51i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+010.2f" : stdgo.GoString), _val : stdgo.Go.toInterface(((104.66f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 440.51f64))), _out : ("(+000104.66+000440.51i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+010.2f" : stdgo.GoString), _val : stdgo.Go.toInterface(((-104.66f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 440.51f64))), _out : ("(-000104.66+000440.51i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+010.2f" : stdgo.GoString), _val : stdgo.Go.toInterface(((104.66f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -440.51f64))), _out : ("(+000104.66-000440.51i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%+010.2f" : stdgo.GoString), _val : stdgo.Go.toInterface(((-104.66f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -440.51f64))), _out : ("(-000104.66-000440.51i)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(_byteStringerSlice), _out : ("[X X X X X]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface(_byteStringerSlice), _out : ("hello" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(_byteStringerSlice), _out : ("\"hello\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface(_byteStringerSlice), _out : ("68656c6c6f" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%X" : stdgo.GoString), _val : stdgo.Go.toInterface(_byteStringerSlice), _out : ("68656C6C6F" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(_byteStringerSlice), _out : ("[]fmt_test.byteStringer{0x68, 0x65, 0x6c, 0x6c, 0x6f}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(_byteFormatterSlice), _out : ("[X X X X X]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface(_byteFormatterSlice), _out : ("hello" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(_byteFormatterSlice), _out : ("\"hello\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%x" : stdgo.GoString), _val : stdgo.Go.toInterface(_byteFormatterSlice), _out : ("68656c6c6f" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%X" : stdgo.GoString), _val : stdgo.Go.toInterface(_byteFormatterSlice), _out : ("68656C6C6F" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(_byteFormatterSlice), _out : ("[]fmt_test.byteFormatter{X, X, X, X, X}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(((stdgo.Go.str() : stdgo._internal.fmt_test.Fmt_test.T_writeStringFormatter) : T_writeStringFormatter))), _out : ("******" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(((("xyz" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_writeStringFormatter) : T_writeStringFormatter))), _out : ("***xyz***" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(((("⌘/⌘" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_writeStringFormatter) : T_writeStringFormatter))), _out : ("***⌘/⌘***" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.A() : stdgo._internal.fmt_test.Fmt_test.A))).field((0 : stdgo.GoInt)).string() : stdgo.GoString)), _out : ("<int Value>" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.A() : stdgo._internal.fmt_test.Fmt_test.A))).field((0 : stdgo.GoInt)))), _out : ("0" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%s" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(("hello" : stdgo.GoString))))), _out : ("hello" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%q" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(("hello" : stdgo.GoString))))), _out : ("\"hello\"" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%#04x" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface((256 : stdgo.GoInt))))), _out : ("0x0100" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value))), _out : ("<invalid reflect.Value>" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value)) : stdgo.Ref<stdgo._internal.reflect.Reflect.Value>))), _out : ("<invalid Value>" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.SI(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value)))) : stdgo._internal.fmt_test.Fmt_test.SI)), _out : ("{<invalid Value>}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : (null : stdgo.AnyInterface), _out : ("%!☠(<nil>)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : (null : stdgo.AnyInterface), _out : ("%!☠(<nil>)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface((0 : stdgo.GoInt)), _out : ("%!☠(int=0)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface((0u32 : stdgo.GoUInt)), _out : ("%!☠(uint=0)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[%!☠(uint8=0) %!☠(uint8=1)]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _out : ("[%!☠(uint8=0) %!☠(uint8=1)]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[%!☠(uint8=0)]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)), _out : ("[%!☠(uint8=0)]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface(("hello" : stdgo.GoString)), _out : ("%!☠(string=hello)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface((1.2345678 : stdgo.GoFloat64)), _out : ("%!☠(float64=1.2345678)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface(((1.2345678 : stdgo.GoFloat64) : stdgo.GoFloat32)), _out : ("%!☠(float32=1.2345678)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface(((1.2345678f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1.2345678f64))), _out : ("%!☠(complex128=(1.2345678+1.2345678i))" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface(((1.2345678f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1.2345678f64) : stdgo.GoComplex64)), _out : ("%!☠(complex64=(1.2345678+1.2345678i))" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.pointer(_intVar)), _out : ("%!☠(*int=0xPTR)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>)), _out : ("%!☠(chan int=0xPTR)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface(function():Void {}), _out : ("%!☠(func()=0xPTR)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(((0 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))))), _out : ("%!☠(fmt_test.renamedInt=0)" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.SI(stdgo.Go.toInterface(((0 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))) : stdgo._internal.fmt_test.Fmt_test.SI)), _out : ("{%!☠(fmt_test.renamedInt=0)}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface(stdgo.Go.asInterface(((1 : stdgo._internal.fmt_test.Fmt_test.I) : I))), stdgo.Go.toInterface(stdgo.Go.asInterface(((2 : stdgo._internal.fmt_test.Fmt_test.G) : G)))]) : stdgo.Slice<stdgo.AnyInterface>)) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>)), _out : ("&[%!☠(fmt_test.I=1) %!☠(fmt_test.G=2)]" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.SI(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface(stdgo.Go.asInterface(((1 : stdgo._internal.fmt_test.Fmt_test.I) : I))), stdgo.Go.toInterface(stdgo.Go.asInterface(((2 : stdgo._internal.fmt_test.Fmt_test.G) : G)))]) : stdgo.Slice<stdgo.AnyInterface>)) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>))) : stdgo._internal.fmt_test.Fmt_test.SI)), _out : ("{%!☠(*[]interface {}=&[1 2])}" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value))), _out : ("<invalid reflect.Value>" : stdgo.GoString) } : T__struct_2),
({ _fmt : ("%☠" : stdgo.GoString), _val : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        @:mergeBlock {
            x.set(naN, (1 : stdgo.GoInt));
        };
        x;
    } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoInt>)), _out : ("map[%!☠(float64=NaN):%!☠(int=1)]" : stdgo.GoString) } : T__struct_2)].concat([for (i in 768 ... (768 > 768 ? 768 : 768 : stdgo.GoInt).toBasic()) ({ _fmt : ("" : stdgo.GoString), _val : (null : stdgo.AnyInterface), _out : ("" : stdgo.GoString) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
var _reorderTests : stdgo.Slice<T__struct_3> = (new stdgo.Slice<T__struct_3>(32, 32, ...[
({ _fmt : ("%[1]d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("1" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[2]d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("1" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[2]d %[1]d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("2 1" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[2]*[1]d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("    2" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%6.2f" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((12 : stdgo.GoFloat64))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : (" 12.00" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[3]*.[2]*[1]f" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((12 : stdgo.GoFloat64)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((6 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : (" 12.00" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[1]*.[2]*[3]f" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((6 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((12 : stdgo.GoFloat64))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : (" 12.00" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%10f" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((12 : stdgo.GoFloat64))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : (" 12.000000" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[1]*[3]f" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((10 : stdgo.GoInt)), stdgo.Go.toInterface((99 : stdgo.GoInt)), stdgo.Go.toInterface((12 : stdgo.GoFloat64))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : (" 12.000000" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%.6f" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((12 : stdgo.GoFloat64))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("12.000000" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%.[1]*[3]f" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((6 : stdgo.GoInt)), stdgo.Go.toInterface((99 : stdgo.GoInt)), stdgo.Go.toInterface((12 : stdgo.GoFloat64))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("12.000000" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%6.f" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((12 : stdgo.GoFloat64))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("    12" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[1]*.[3]f" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((6 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface((12 : stdgo.GoFloat64))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("    12" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%d %d %d %#[1]o %#o %#o" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((11 : stdgo.GoInt)), stdgo.Go.toInterface((12 : stdgo.GoInt)), stdgo.Go.toInterface((13 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("11 12 13 013 014 015" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%]d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!](int=2)d%!(EXTRA int=1)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[]d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[-3]d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[99]d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[3]" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!(NOVERB)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[1].2d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((5 : stdgo.GoInt)), stdgo.Go.toInterface((6 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[1]2d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%3.[2]d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((7 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%.[2]d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((7 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%d %d %d %#[1]o %#o %#o %#o" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((11 : stdgo.GoInt)), stdgo.Go.toInterface((12 : stdgo.GoInt)), stdgo.Go.toInterface((13 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("11 12 13 013 014 015 %!o(MISSING)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%[5]d %[2]d %d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!d(BADINDEX) 2 3" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%d %[3]d %d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("1 %!d(BADINDEX) 2" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%.[]" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(0, 0, ...[]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!](BADINDEX)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%.-3d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((42 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!-(int=42)3d" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%2147483648d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((42 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!(NOVERB)%!(EXTRA int=42)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%-2147483648d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((42 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!(NOVERB)%!(EXTRA int=42)" : stdgo.GoString) } : T__struct_3),
({ _fmt : ("%.2147483648d" : stdgo.GoString), _val : (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((42 : stdgo.GoInt))]) : stdgo._internal.fmt_test.Fmt_test.SE), _out : ("%!(NOVERB)%!(EXTRA int=42)" : stdgo.GoString) } : T__struct_3)].concat([for (i in 32 ... (32 > 32 ? 32 : 32 : stdgo.GoInt).toBasic()) ({ _fmt : ("" : stdgo.GoString), _val : new stdgo._internal.fmt_test.Fmt_test.SE(0, 0), _out : ("" : stdgo.GoString) } : T__struct_3)])) : stdgo.Slice<T__struct_3>);
var _mallocTest : stdgo.Slice<T__struct_4> = (new stdgo.Slice<T__struct_4>(13, 13, ...[
({ _count : (0 : stdgo.GoInt), _desc : ("Sprintf(\"\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = sprintf(stdgo.Go.str()?.__copy__());
    } } : T__struct_4),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"xxx\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = sprintf(("xxx" : stdgo.GoString));
    } } : T__struct_4),
({ _count : (0 : stdgo.GoInt), _desc : ("Sprintf(\"%x\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface((7 : stdgo.GoInt)));
    } } : T__struct_4),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"%x\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface((65536 : stdgo.GoInt)));
    } } : T__struct_4),
({ _count : (3 : stdgo.GoInt), _desc : ("Sprintf(\"%80000s\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = sprintf(("%80000s" : stdgo.GoString), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
    } } : T__struct_4),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"%s\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = sprintf(("%s" : stdgo.GoString), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
    } } : T__struct_4),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"%x %x\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = sprintf(("%x %x" : stdgo.GoString), stdgo.Go.toInterface((7 : stdgo.GoInt)), stdgo.Go.toInterface((112 : stdgo.GoInt)));
    } } : T__struct_4),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"%g\")" : stdgo.GoString), _fn : function():Void {
        var __blank__ = sprintf(("%g" : stdgo.GoString), stdgo.Go.toInterface(((3.14159 : stdgo.GoFloat64) : stdgo.GoFloat32)));
    } } : T__struct_4),
({ _count : (0 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%s\")" : stdgo.GoString), _fn : function():Void {
        _mallocBuf.reset();
        fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_mallocBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("%s" : stdgo.GoString), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
    } } : T__struct_4),
({ _count : (0 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%x\")" : stdgo.GoString), _fn : function():Void {
        _mallocBuf.reset();
        fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_mallocBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("%x" : stdgo.GoString), stdgo.Go.toInterface((7 : stdgo.GoInt)));
    } } : T__struct_4),
({ _count : (0 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%x\")" : stdgo.GoString), _fn : function():Void {
        _mallocBuf.reset();
        fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_mallocBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("%x" : stdgo.GoString), stdgo.Go.toInterface((65536 : stdgo.GoInt)));
    } } : T__struct_4),
({ _count : (2 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%80000s\")" : stdgo.GoString), _fn : function():Void {
        _mallocBuf.reset();
        fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_mallocBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("%80000s" : stdgo.GoString), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
    } } : T__struct_4),
({ _count : (0 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%x %x %x\")" : stdgo.GoString), _fn : function():Void {
        _mallocBuf.reset();
        fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_mallocBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("%x %x %x" : stdgo.GoString), stdgo.Go.toInterface(_mallocPointer), stdgo.Go.toInterface(_mallocPointer), stdgo.Go.toInterface(_mallocPointer));
    } } : T__struct_4)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({ _count : (0 : stdgo.GoInt), _desc : ("" : stdgo.GoString), _fn : null } : T__struct_4)])) : stdgo.Slice<T__struct_4>);
var _flagtests : stdgo.Slice<T__struct_5> = (new stdgo.Slice<T__struct_5>(12, 12, ...[
({ _in : ("%a" : stdgo.GoString), _out : ("[%a]" : stdgo.GoString) } : T__struct_5),
({ _in : ("%-a" : stdgo.GoString), _out : ("[%-a]" : stdgo.GoString) } : T__struct_5),
({ _in : ("%+a" : stdgo.GoString), _out : ("[%+a]" : stdgo.GoString) } : T__struct_5),
({ _in : ("%#a" : stdgo.GoString), _out : ("[%#a]" : stdgo.GoString) } : T__struct_5),
({ _in : ("% a" : stdgo.GoString), _out : ("[% a]" : stdgo.GoString) } : T__struct_5),
({ _in : ("%0a" : stdgo.GoString), _out : ("[%0a]" : stdgo.GoString) } : T__struct_5),
({ _in : ("%1.2a" : stdgo.GoString), _out : ("[%1.2a]" : stdgo.GoString) } : T__struct_5),
({ _in : ("%-1.2a" : stdgo.GoString), _out : ("[%-1.2a]" : stdgo.GoString) } : T__struct_5),
({ _in : ("%+1.2a" : stdgo.GoString), _out : ("[%+1.2a]" : stdgo.GoString) } : T__struct_5),
({ _in : ("%-+1.2a" : stdgo.GoString), _out : ("[%+-1.2a]" : stdgo.GoString) } : T__struct_5),
({ _in : ("%-+1.2abc" : stdgo.GoString), _out : ("[%+-1.2a]bc" : stdgo.GoString) } : T__struct_5),
({ _in : ("%-1.2abc" : stdgo.GoString), _out : ("[%-1.2a]bc" : stdgo.GoString) } : T__struct_5)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : T__struct_5)])) : stdgo.Slice<T__struct_5>);
var _startests : stdgo.Slice<T__struct_7> = (new stdgo.Slice<T__struct_7>(23, 23, ...[
({ _fmt : ("%*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((4 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("  42" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%-*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((4 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("42  " : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((-4 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("42  " : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%-*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((-4 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("42  " : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%.*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((4 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("0042" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%*.*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((8 : stdgo.GoInt)), stdgo.Go.toInterface((4 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("    0042" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%0*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((4 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("0042" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%0*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((4u32 : stdgo.GoUInt)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("0042" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%0*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((4i64 : stdgo.GoUInt64)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("0042" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%0*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((4 : stdgo.GoInt32)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("0042" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%0*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((4 : stdgo.GoUIntptr)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("0042" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%*d" : stdgo.GoString), _in : _args((null : stdgo.AnyInterface), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("%!(BADWIDTH)42" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((10000000 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("%!(BADWIDTH)42" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((-10000000 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("%!(BADWIDTH)42" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%.*d" : stdgo.GoString), _in : _args((null : stdgo.AnyInterface), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("%!(BADPREC)42" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%.*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((-1 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("%!(BADPREC)42" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%.*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((10000000 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("%!(BADPREC)42" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%.*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((10000000u32 : stdgo.GoUInt)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("%!(BADPREC)42" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%.*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((-9223372036854775808i64 : stdgo.GoUInt64)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("%!(BADPREC)42" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%.*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((-1i64 : stdgo.GoUInt64)), stdgo.Go.toInterface((42 : stdgo.GoInt))), _out : ("%!(BADPREC)42" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%*d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((5 : stdgo.GoInt)), stdgo.Go.toInterface(("foo" : stdgo.GoString))), _out : ("%!d(string=  foo)" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%*% %d" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((20 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt))), _out : ("% 5" : stdgo.GoString) } : T__struct_7),
({ _fmt : ("%*" : stdgo.GoString), _in : _args(stdgo.Go.toInterface((4 : stdgo.GoInt))), _out : ("%!(NOVERB)" : stdgo.GoString) } : T__struct_7)].concat([for (i in 23 ... (23 > 23 ? 23 : 23 : stdgo.GoInt).toBasic()) ({ _fmt : ("" : stdgo.GoString), _in : (null : stdgo.Slice<stdgo.AnyInterface>), _out : ("" : stdgo.GoString) } : T__struct_7)])) : stdgo.Slice<T__struct_7>);
var _panictests : stdgo.Slice<T__struct_8> = (new stdgo.Slice<T__struct_8>(10, 10, ...[({ _fmt : ("%s" : stdgo.GoString), _in : stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.PanicS>) : stdgo.Ref<PanicS>))), _out : ("<nil>" : stdgo.GoString) } : T__struct_8), ({ _fmt : ("%s" : stdgo.GoString), _in : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.PanicS(stdgo.Go.toInterface(stdgo._internal.io.Io.errUnexpectedEOF)) : stdgo._internal.fmt_test.Fmt_test.PanicS))), _out : ("%!s(PANIC=String method: unexpected EOF)" : stdgo.GoString) } : T__struct_8), ({ _fmt : ("%s" : stdgo.GoString), _in : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.PanicS(stdgo.Go.toInterface((3 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.PanicS))), _out : ("%!s(PANIC=String method: 3)" : stdgo.GoString) } : T__struct_8), ({ _fmt : ("%#v" : stdgo.GoString), _in : stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.PanicGo>) : stdgo.Ref<PanicGo>))), _out : ("<nil>" : stdgo.GoString) } : T__struct_8), ({ _fmt : ("%#v" : stdgo.GoString), _in : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.PanicGo(stdgo.Go.toInterface(stdgo._internal.io.Io.errUnexpectedEOF)) : stdgo._internal.fmt_test.Fmt_test.PanicGo))), _out : ("%!v(PANIC=GoString method: unexpected EOF)" : stdgo.GoString) } : T__struct_8), ({ _fmt : ("%#v" : stdgo.GoString), _in : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.PanicGo(stdgo.Go.toInterface((3 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.PanicGo))), _out : ("%!v(PANIC=GoString method: 3)" : stdgo.GoString) } : T__struct_8), ({ _fmt : ("%#v" : stdgo.GoString), _in : stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.PanicGo(stdgo.Go.toInterface((3 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.PanicGo))), stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.PanicGo(stdgo.Go.toInterface((3 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.PanicGo)))]) : stdgo.Slice<stdgo.AnyInterface>)), _out : ("[]interface {}{%!v(PANIC=GoString method: 3), %!v(PANIC=GoString method: 3)}" : stdgo.GoString) } : T__struct_8), ({ _fmt : ("%s" : stdgo.GoString), _in : stdgo.Go.toInterface(stdgo.Go.asInterface(((null : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.PanicF>) : stdgo.Ref<PanicF>))), _out : ("<nil>" : stdgo.GoString) } : T__struct_8), ({ _fmt : ("%s" : stdgo.GoString), _in : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.PanicF(stdgo.Go.toInterface(stdgo._internal.io.Io.errUnexpectedEOF)) : stdgo._internal.fmt_test.Fmt_test.PanicF))), _out : ("%!s(PANIC=Format method: unexpected EOF)" : stdgo.GoString) } : T__struct_8), ({ _fmt : ("%s" : stdgo.GoString), _in : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.PanicF(stdgo.Go.toInterface((3 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.PanicF))), _out : ("%!s(PANIC=Format method: 3)" : stdgo.GoString) } : T__struct_8)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({ _fmt : ("" : stdgo.GoString), _in : (null : stdgo.AnyInterface), _out : ("" : stdgo.GoString) } : T__struct_8)])) : stdgo.Slice<T__struct_8>);
var _recurCount : stdgo.GoInt = (0 : stdgo.GoInt);
var _formatterFlagTests : stdgo.Slice<T__struct_9> = (new stdgo.Slice<T__struct_9>(48, 48, ...[
({ _in : ("%a" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%a]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-a" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%-a]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%+a" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%+a]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%#a" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%#a]" : stdgo.GoString) } : T__struct_9),
({ _in : ("% a" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[% a]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%0a" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%0a]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%1.2a" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%1.2a]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-1.2a" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%-1.2a]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%+1.2a" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%+1.2a]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-+1.2a" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%+-1.2a]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-+1.2abc" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%+-1.2a]bc" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-1.2abc" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%-1.2a]bc" : stdgo.GoString) } : T__struct_9),
({ _in : ("%a" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%a]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-a" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%-a]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%+a" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+a]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%#a" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%#a]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("% a" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[% a]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%0a" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%0a]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%1.2a" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%1.2a]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-1.2a" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%-1.2a]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%+1.2a" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+1.2a]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-+1.2a" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+-1.2a]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-+1.2abc" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+-1.2a]]bc" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-1.2abc" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%-1.2a]]bc" : stdgo.GoString) } : T__struct_9),
({ _in : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%v]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%-v]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%+v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%+v]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%#v]" : stdgo.GoString) } : T__struct_9),
({ _in : ("% v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[% v]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%0v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%0v]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%1.2v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%1.2v]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-1.2v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%-1.2v]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%+1.2v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%+1.2v]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-+1.2v" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%+-1.2v]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-+1.2vbc" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%+-1.2v]bc" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-1.2vbc" : stdgo.GoString), _val : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_flagPrinter() : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter))), _out : ("[%-1.2v]bc" : stdgo.GoString) } : T__struct_9),
({ _in : ("%v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%v]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%-v]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%+v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+v]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%#v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[1]fmt_test.flagPrinter{[%#v]}" : stdgo.GoString) } : T__struct_9),
({ _in : ("% v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[% v]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%0v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%0v]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%1.2v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%1.2v]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-1.2v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%-1.2v]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%+1.2v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+1.2v]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-+1.2v" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+-1.2v]]" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-+1.2vbc" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%+-1.2v]]bc" : stdgo.GoString) } : T__struct_9),
({ _in : ("%-1.2vbc" : stdgo.GoString), _val : stdgo.Go.toInterface((new stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>(1, 1, ...[].concat([for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter)])) : stdgo.GoArray<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>)), _out : ("[[%-1.2v]]bc" : stdgo.GoString) } : T__struct_9)].concat([for (i in 48 ... (48 > 48 ? 48 : 48 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _val : (null : stdgo.AnyInterface), _out : ("" : stdgo.GoString) } : T__struct_9)])) : stdgo.Slice<T__struct_9>);
var _scanTests : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.ScanTest> = (new stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.ScanTest>(86, 86, ...[
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("T\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_boolVal)), stdgo.Go.toInterface(true)) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("F\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_boolVal)), stdgo.Go.toInterface(false)) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("21\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((21 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("2_1\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((21 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("0\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("000\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("0x10\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((16 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("0x_1_0\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((16 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-0x10\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((-16 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("0377\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((255 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("0_3_7_7\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((255 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("0o377\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((255 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("0o_3_7_7\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((255 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-0377\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((-255 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-0o377\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((-255 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("0\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((0u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("000\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((0u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("0x10\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((16u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("0377\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((255u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("22\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int8Val)), stdgo.Go.toInterface((22 : stdgo.GoInt8))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("23\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int16Val)), stdgo.Go.toInterface((23 : stdgo.GoInt16))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("24\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int32Val)), stdgo.Go.toInterface((24 : stdgo.GoInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("25\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int64Val)), stdgo.Go.toInterface((25i64 : stdgo.GoInt64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("127\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int8Val)), stdgo.Go.toInterface((127 : stdgo.GoInt8))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-21\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((-21 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-22\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int8Val)), stdgo.Go.toInterface((-22 : stdgo.GoInt8))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-23\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int16Val)), stdgo.Go.toInterface((-23 : stdgo.GoInt16))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-24\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int32Val)), stdgo.Go.toInterface((-24 : stdgo.GoInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-25\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int64Val)), stdgo.Go.toInterface((-25i64 : stdgo.GoInt64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-128\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int8Val)), stdgo.Go.toInterface((-128 : stdgo.GoInt8))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("+21\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((21 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("+22\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int8Val)), stdgo.Go.toInterface((22 : stdgo.GoInt8))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("+23\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int16Val)), stdgo.Go.toInterface((23 : stdgo.GoInt16))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("+24\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int32Val)), stdgo.Go.toInterface((24 : stdgo.GoInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("+25\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int64Val)), stdgo.Go.toInterface((25i64 : stdgo.GoInt64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("+127\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int8Val)), stdgo.Go.toInterface((127 : stdgo.GoInt8))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("26\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((26u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("27\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uint8Val)), stdgo.Go.toInterface((27 : stdgo.GoUInt8))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("28\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uint16Val)), stdgo.Go.toInterface((28 : stdgo.GoUInt16))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("29\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uint32Val)), stdgo.Go.toInterface((29u32 : stdgo.GoUInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("30\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uint64Val)), stdgo.Go.toInterface((30i64 : stdgo.GoUInt64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("31\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintptrVal)), stdgo.Go.toInterface((31 : stdgo.GoUIntptr))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("255\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uint8Val)), stdgo.Go.toInterface((255 : stdgo.GoUInt8))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("32767\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int16Val)), stdgo.Go.toInterface((32767 : stdgo.GoInt16))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("2.3\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((2.3 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("2.3e1\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float32Val)), stdgo.Go.toInterface(((23 : stdgo.GoFloat64) : stdgo.GoFloat32))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("2.3e2\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((230 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("2.3p2\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((9.2 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("2.3p+2\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((9.2 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("2.3p+66\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((1.6971004547812786e+20 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("2.3p-66\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((3.117081245895825e-20 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("0x2.3p-66\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((2.964615315390051e-20 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("2_3.4_5\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((23.45 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("2.35\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), stdgo.Go.toInterface(("2.35" : stdgo.GoString))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("2345678\n" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_bytesVal) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), stdgo.Go.toInterface((("2345678" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("(3.4e1-2i)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_complex128Val)), stdgo.Go.toInterface(((34f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -2f64)))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-3.45e1-3i\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_complex64Val)), stdgo.Go.toInterface(((-34.5f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -3f64) : stdgo.GoComplex64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-.45e1-1e2i\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_complex128Val)), stdgo.Go.toInterface(((-4.5f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -100f64) : stdgo.GoComplex128))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-.4_5e1-1E2i\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_complex128Val)), stdgo.Go.toInterface(((-4.5f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -100f64) : stdgo.GoComplex128))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("0x1.0p1+0x1.0P2i\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_complex128Val)), stdgo.Go.toInterface(((2f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 4f64) : stdgo.GoComplex128))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-0x1p1-0x1p2i\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_complex128Val)), stdgo.Go.toInterface(((-2f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -4f64) : stdgo.GoComplex128))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-0x1ep-1-0x1p2i\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_complex128Val)), stdgo.Go.toInterface(((-15f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -4f64) : stdgo.GoComplex128))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-0x1_Ep-1-0x1p0_2i\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_complex128Val)), stdgo.Go.toInterface(((-15f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, -4f64) : stdgo.GoComplex128))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("hello\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), stdgo.Go.toInterface(("hello" : stdgo.GoString))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("hello\r\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), stdgo.Go.toInterface(("hello" : stdgo.GoString))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("27\r\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uint8Val)), stdgo.Go.toInterface((27 : stdgo.GoUInt8))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("true\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedBoolVal)), stdgo.Go.toInterface((true : T_renamedBool))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("F\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedBoolVal)), stdgo.Go.toInterface((false : T_renamedBool))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("101\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedIntVal)), stdgo.Go.toInterface(((101 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("102\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedIntVal)), stdgo.Go.toInterface(((102 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("103\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUintVal)), stdgo.Go.toInterface(((103u32 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint) : T_renamedUint))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("104\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUintVal)), stdgo.Go.toInterface(((104u32 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint) : T_renamedUint))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("105\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedInt8Val)), stdgo.Go.toInterface(((105 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt8) : T_renamedInt8))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("106\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedInt16Val)), stdgo.Go.toInterface(((106 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt16) : T_renamedInt16))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("107\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedInt32Val)), stdgo.Go.toInterface(((107 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt32) : T_renamedInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("108\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedInt64Val)), stdgo.Go.toInterface(((108i64 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt64) : T_renamedInt64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("109\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUint8Val)), stdgo.Go.toInterface(((109 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8) : T_renamedUint8))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("110\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUint16Val)), stdgo.Go.toInterface(((110 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint16) : T_renamedUint16))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("111\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUint32Val)), stdgo.Go.toInterface(((111u32 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint32) : T_renamedUint32))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("112\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUint64Val)), stdgo.Go.toInterface(((112i64 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint64) : T_renamedUint64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("113\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUintptrVal)), stdgo.Go.toInterface(((113 : stdgo._internal.fmt_test.Fmt_test.T_renamedUintptr) : T_renamedUintptr))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("114\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedStringVal)), stdgo.Go.toInterface(((("114" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_renamedString) : T_renamedString))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("115\n" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_renamedBytesVal) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.T_renamedBytes>)), stdgo.Go.toInterface(((("115" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>) : T_renamedBytes))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("  vvv " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_xVal)), stdgo.Go.toInterface(stdgo.Go.asInterface(((("vvv" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.Xs) : Xs)))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest((" 1234hello" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_intStringVal) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.IntString>))), stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.IntString((1234 : stdgo.GoInt), ("hello" : stdgo.GoString)) : stdgo._internal.fmt_test.Fmt_test.IntString)))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("2147483648\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int64Val)), stdgo.Go.toInterface((2147483648i64 : stdgo.GoInt64))) : stdgo._internal.fmt_test.Fmt_test.ScanTest)].concat([for (i in 86 ... (86 > 86 ? 86 : 86 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.ScanTest)])) : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.ScanTest>);
var _scanfTests : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.ScanfTest> = (new stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.ScanfTest>(168, 168, ...[
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("TRUE\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_boolVal)), stdgo.Go.toInterface(true)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%t" : stdgo.GoString), ("false\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_boolVal)), stdgo.Go.toInterface(false)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("-71\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((-71 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("-7_1\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((-71 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("0b111\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((7 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("0b_1_1_1\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((7 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("0377\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((255 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("0_3_7_7\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((255 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("0o377\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((255 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("0o_3_7_7\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((255 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("0x44\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((68 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("0x_4_4\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((68 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("72\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((72 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%c" : stdgo.GoString), ("a\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_runeVal)), stdgo.Go.toInterface((97 : stdgo.GoInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%c" : stdgo.GoString), ("偲\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_runeVal)), stdgo.Go.toInterface((20594 : stdgo.GoInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%c" : stdgo.GoString), ("ሴ\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_runeVal)), stdgo.Go.toInterface((4660 : stdgo.GoInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("73\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int8Val)), stdgo.Go.toInterface((73 : stdgo.GoInt8))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("+74\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int16Val)), stdgo.Go.toInterface((74 : stdgo.GoInt16))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("75\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int32Val)), stdgo.Go.toInterface((75 : stdgo.GoInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("76\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int64Val)), stdgo.Go.toInterface((76i64 : stdgo.GoInt64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%b" : stdgo.GoString), ("1001001\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((73 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%o" : stdgo.GoString), ("075\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((61 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%x" : stdgo.GoString), ("a75\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((2677 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("71\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((71u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("72\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((72u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("7_2\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((7u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("73\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uint8Val)), stdgo.Go.toInterface((73 : stdgo.GoUInt8))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("74\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uint16Val)), stdgo.Go.toInterface((74 : stdgo.GoUInt16))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("75\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uint32Val)), stdgo.Go.toInterface((75u32 : stdgo.GoUInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("76\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uint64Val)), stdgo.Go.toInterface((76i64 : stdgo.GoUInt64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("77\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintptrVal)), stdgo.Go.toInterface((77 : stdgo.GoUIntptr))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%b" : stdgo.GoString), ("1001001\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((73u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%b" : stdgo.GoString), ("100_1001\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((4u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%o" : stdgo.GoString), ("075\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((61u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%o" : stdgo.GoString), ("07_5\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((7u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%x" : stdgo.GoString), ("a75\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((2677u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%x" : stdgo.GoString), ("A75\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((2677u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%x" : stdgo.GoString), ("A7_5\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((167u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%U" : stdgo.GoString), ("U+1234\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((4660 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%U" : stdgo.GoString), ("U+4567\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((17767u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%e" : stdgo.GoString), ("2.3\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((2.3 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%E" : stdgo.GoString), ("2.3e1\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float32Val)), stdgo.Go.toInterface(((23 : stdgo.GoFloat64) : stdgo.GoFloat32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%f" : stdgo.GoString), ("2.3e2\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((230 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%g" : stdgo.GoString), ("2.3p2\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((9.2 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%G" : stdgo.GoString), ("2.3p+2\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((9.2 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("2.3p+66\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((1.6971004547812786e+20 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%f" : stdgo.GoString), ("2.3p-66\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((3.117081245895825e-20 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%G" : stdgo.GoString), ("0x2.3p-66\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((2.964615315390051e-20 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%E" : stdgo.GoString), ("2_3.4_5\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((23.45 : stdgo.GoFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%s" : stdgo.GoString), ("using-%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), stdgo.Go.toInterface(("using-%s" : stdgo.GoString))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%x" : stdgo.GoString), ("7573696e672d2578\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), stdgo.Go.toInterface(("using-%x" : stdgo.GoString))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%X" : stdgo.GoString), ("7573696E672D2558\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), stdgo.Go.toInterface(("using-%X" : stdgo.GoString))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%q" : stdgo.GoString), ("\"quoted\\twith\\\\do\\u0075bl\\x65s\"\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), stdgo.Go.toInterface(("quoted\twith\\doubles" : stdgo.GoString))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%q" : stdgo.GoString), ("`quoted with backs`\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), stdgo.Go.toInterface(("quoted with backs" : stdgo.GoString))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%s" : stdgo.GoString), ("bytes-%s\n" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_bytesVal) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), stdgo.Go.toInterface((("bytes-%s" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%x" : stdgo.GoString), ("62797465732d2578\n" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_bytesVal) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), stdgo.Go.toInterface((("bytes-%x" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%X" : stdgo.GoString), ("62797465732D2558\n" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_bytesVal) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), stdgo.Go.toInterface((("bytes-%X" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%q" : stdgo.GoString), ("\"bytes\\rwith\\vdo\\u0075bl\\x65s\"\n" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_bytesVal) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), stdgo.Go.toInterface((("bytes\rwith\x0Bdoubles" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%q" : stdgo.GoString), ("`bytes with backs`\n" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_bytesVal) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), stdgo.Go.toInterface((("bytes with backs" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v\n" : stdgo.GoString), ("true\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedBoolVal)), stdgo.Go.toInterface((true : T_renamedBool))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%t\n" : stdgo.GoString), ("F\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedBoolVal)), stdgo.Go.toInterface((false : T_renamedBool))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("101\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedIntVal)), stdgo.Go.toInterface(((101 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%c" : stdgo.GoString), ("ā\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedIntVal)), stdgo.Go.toInterface(((257 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%o" : stdgo.GoString), ("0146\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedIntVal)), stdgo.Go.toInterface(((102 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt) : T_renamedInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("103\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUintVal)), stdgo.Go.toInterface(((103u32 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint) : T_renamedUint))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("104\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUintVal)), stdgo.Go.toInterface(((104u32 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint) : T_renamedUint))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("105\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedInt8Val)), stdgo.Go.toInterface(((105 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt8) : T_renamedInt8))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("106\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedInt16Val)), stdgo.Go.toInterface(((106 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt16) : T_renamedInt16))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("107\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedInt32Val)), stdgo.Go.toInterface(((107 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt32) : T_renamedInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("108\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedInt64Val)), stdgo.Go.toInterface(((108i64 : stdgo._internal.fmt_test.Fmt_test.T_renamedInt64) : T_renamedInt64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%x" : stdgo.GoString), ("6D\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUint8Val)), stdgo.Go.toInterface(((109 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint8) : T_renamedUint8))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%o" : stdgo.GoString), ("0156\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUint16Val)), stdgo.Go.toInterface(((110 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint16) : T_renamedUint16))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("111\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUint32Val)), stdgo.Go.toInterface(((111u32 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint32) : T_renamedUint32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("112\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUint64Val)), stdgo.Go.toInterface(((112i64 : stdgo._internal.fmt_test.Fmt_test.T_renamedUint64) : T_renamedUint64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("113\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUintptrVal)), stdgo.Go.toInterface(((113 : stdgo._internal.fmt_test.Fmt_test.T_renamedUintptr) : T_renamedUintptr))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%s" : stdgo.GoString), ("114\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedStringVal)), stdgo.Go.toInterface(((("114" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_renamedString) : T_renamedString))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%q" : stdgo.GoString), ("\"1155\"\n" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_renamedBytesVal) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.T_renamedBytes>)), stdgo.Go.toInterface(((("1155" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>) : T_renamedBytes))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%g" : stdgo.GoString), ("116e1\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedFloat32Val)), stdgo.Go.toInterface(((1160 : stdgo.GoFloat64) : T_renamedFloat32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%g" : stdgo.GoString), ("-11.7e+1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedFloat64Val)), stdgo.Go.toInterface(((-117 : stdgo.GoFloat64) : T_renamedFloat64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%g" : stdgo.GoString), ("11+6e1i\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedComplex64Val)), stdgo.Go.toInterface(((11f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 60f64) : T_renamedComplex64))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%g" : stdgo.GoString), ("-11.+7e+1i" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_renamedComplex128Val)), stdgo.Go.toInterface(((-11f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 70f64) : T_renamedComplex128))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("here is\tthe value:%d" : stdgo.GoString), ("here is   the\tvalue:118\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((118 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%% %%:%d" : stdgo.GoString), ("% %:119\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((119 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d%%" : stdgo.GoString), ("42%" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((42 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%x" : stdgo.GoString), ("FFFFFFFF\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uint32Val)), stdgo.Go.toInterface((-1u32 : stdgo.GoUInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%s" : stdgo.GoString), ("  sss " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_xVal)), stdgo.Go.toInterface(stdgo.Go.asInterface(((("sss" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.Xs) : Xs)))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%2s" : stdgo.GoString), ("sssss" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_xVal)), stdgo.Go.toInterface(stdgo.Go.asInterface(((("ss" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.Xs) : Xs)))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d\n" : stdgo.GoString), ("27\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d\n" : stdgo.GoString), ("28 \n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((28 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%v" : stdgo.GoString), ("0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((0u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%c" : stdgo.GoString), (" " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((32u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%c" : stdgo.GoString), ("\t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((9u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%c" : stdgo.GoString), ("\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((10u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d%%" : stdgo.GoString), ("23%\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((23u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%%%d" : stdgo.GoString), ("%23\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)), stdgo.Go.toInterface((23u32 : stdgo.GoUInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("27" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), ("27 " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), (" 27" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d" : stdgo.GoString), (" 27 " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%d" : stdgo.GoString), ("X27" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%d" : stdgo.GoString), ("X27 " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%d" : stdgo.GoString), ("X 27" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%d" : stdgo.GoString), ("X 27 " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %d" : stdgo.GoString), ("X27" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %d" : stdgo.GoString), ("X27 " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %d" : stdgo.GoString), ("X 27" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %d" : stdgo.GoString), ("X 27 " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%dX" : stdgo.GoString), ("27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%dX" : stdgo.GoString), ("27 X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%dX" : stdgo.GoString), (" 27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%dX" : stdgo.GoString), (" 27 X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d X" : stdgo.GoString), ("27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d X" : stdgo.GoString), ("27 X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d X" : stdgo.GoString), (" 27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d X" : stdgo.GoString), (" 27 X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %d X" : stdgo.GoString), ("X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %d X" : stdgo.GoString), ("X27 X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %d X" : stdgo.GoString), ("X 27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %d X" : stdgo.GoString), ("X 27 X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %s X" : stdgo.GoString), ("X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %s X" : stdgo.GoString), ("X27 X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %s X" : stdgo.GoString), ("X 27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %s X" : stdgo.GoString), ("X 27 X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), stdgo.Go.toInterface(("27" : stdgo.GoString))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%sX" : stdgo.GoString), ("X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%sX" : stdgo.GoString), ("X27 X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%sX" : stdgo.GoString), ("X 27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%sX" : stdgo.GoString), ("X 27 X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%s" : stdgo.GoString), ("X27" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), stdgo.Go.toInterface(("27" : stdgo.GoString))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%s" : stdgo.GoString), ("X27 " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), stdgo.Go.toInterface(("27" : stdgo.GoString))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%s" : stdgo.GoString), ("X 27" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), stdgo.Go.toInterface(("27" : stdgo.GoString))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%s" : stdgo.GoString), ("X 27 " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)), stdgo.Go.toInterface(("27" : stdgo.GoString))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX" : stdgo.GoString), ("X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX" : stdgo.GoString), ("X27 X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX" : stdgo.GoString), ("X 27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX" : stdgo.GoString), ("X 27 X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX" : stdgo.GoString), ("X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX" : stdgo.GoString), ("X27X " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX" : stdgo.GoString), (" X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX" : stdgo.GoString), (" X27X " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX\n" : stdgo.GoString), ("X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX \n" : stdgo.GoString), ("X27X " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX\n" : stdgo.GoString), ("X27X\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX\n" : stdgo.GoString), ("X27X \n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX \n" : stdgo.GoString), ("X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX \n" : stdgo.GoString), ("X27X " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX \n" : stdgo.GoString), ("X27X\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX \n" : stdgo.GoString), ("X27X \n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%c" : stdgo.GoString), ("X\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_runeVal)), stdgo.Go.toInterface((10 : stdgo.GoInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%c" : stdgo.GoString), ("X \n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_runeVal)), stdgo.Go.toInterface((32 : stdgo.GoInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %c" : stdgo.GoString), ("X!" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_runeVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %c" : stdgo.GoString), ("X\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_runeVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %c" : stdgo.GoString), ("X !" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_runeVal)), stdgo.Go.toInterface((33 : stdgo.GoInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X %c" : stdgo.GoString), ("X \n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_runeVal)), stdgo.Go.toInterface((10 : stdgo.GoInt32))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest((" X%dX" : stdgo.GoString), ("X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest((" X%dX" : stdgo.GoString), ("X27X " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest((" X%dX" : stdgo.GoString), (" X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest((" X%dX" : stdgo.GoString), (" X27X " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX " : stdgo.GoString), ("X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX " : stdgo.GoString), ("X27X " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX " : stdgo.GoString), (" X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("X%dX " : stdgo.GoString), (" X27X " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest((" X%dX " : stdgo.GoString), ("X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest((" X%dX " : stdgo.GoString), ("X27X " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), (null : stdgo.AnyInterface)) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest((" X%dX " : stdgo.GoString), (" X27X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest((" X%dX " : stdgo.GoString), (" X27X " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%d\nX" : stdgo.GoString), ("27\nX" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfTest(("%dX\n X" : stdgo.GoString), ("27X\n X" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)), stdgo.Go.toInterface((27 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanfTest)].concat([for (i in 168 ... (168 > 168 ? 168 : 168 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.ScanfTest)])) : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.ScanfTest>);
var _overflowTests : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.ScanTest> = (new stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.ScanTest>(11, 11, ...[
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("128" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int8Val)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("32768" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int16Val)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-129" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int8Val)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("-32769" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_int16Val)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("256" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uint8Val)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("65536" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_uint16Val)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("1e100" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float32Val)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("1e500" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_float64Val)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("(1e100+0i)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_complex64Val)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("(1+1e100i)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_complex64Val)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanTest(("(1-1e500i)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_complex128Val)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.ScanTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.ScanTest)])) : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.ScanTest>);
var _multiTests : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest> = (new stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest>(26, 26, ...[
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.AnyInterface>(0, 0, ...[]) : stdgo.Slice<stdgo.AnyInterface>), (new stdgo.Slice<stdgo.AnyInterface>(0, 0, ...[]) : stdgo.Slice<stdgo.AnyInterface>), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%d" : stdgo.GoString), ("23" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_i))), _args(stdgo.Go.toInterface((23 : stdgo.GoInt))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%2s%3s" : stdgo.GoString), ("22333" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_s)), stdgo.Go.toInterface(stdgo.Go.pointer(_t))), _args(stdgo.Go.toInterface(("22" : stdgo.GoString)), stdgo.Go.toInterface(("333" : stdgo.GoString))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%2d%3d" : stdgo.GoString), ("44555" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_j))), _args(stdgo.Go.toInterface((44 : stdgo.GoInt)), stdgo.Go.toInterface((555 : stdgo.GoInt))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%2d.%3d" : stdgo.GoString), ("66.777" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_j))), _args(stdgo.Go.toInterface((66 : stdgo.GoInt)), stdgo.Go.toInterface((777 : stdgo.GoInt))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%d, %d" : stdgo.GoString), ("23, 18" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_j))), _args(stdgo.Go.toInterface((23 : stdgo.GoInt)), stdgo.Go.toInterface((18 : stdgo.GoInt))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%3d22%3d" : stdgo.GoString), ("33322333" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_j))), _args(stdgo.Go.toInterface((333 : stdgo.GoInt)), stdgo.Go.toInterface((333 : stdgo.GoInt))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%6vX=%3fY" : stdgo.GoString), ("3+2iX=2.5Y" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_c)), stdgo.Go.toInterface(stdgo.Go.pointer(_f))), _args(stdgo.Go.toInterface(((3f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2f64))), stdgo.Go.toInterface((2.5 : stdgo.GoFloat64))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%d%s" : stdgo.GoString), ("123abc" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_s))), _args(stdgo.Go.toInterface((123 : stdgo.GoInt)), stdgo.Go.toInterface(("abc" : stdgo.GoString))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%c%c%c" : stdgo.GoString), ("2僂X" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_r1)), stdgo.Go.toInterface(stdgo.Go.pointer(_r2)), stdgo.Go.toInterface(stdgo.Go.pointer(_r3))), _args(stdgo.Go.toInterface((50 : stdgo.GoInt32)), stdgo.Go.toInterface((20674 : stdgo.GoInt32)), stdgo.Go.toInterface((88 : stdgo.GoInt32))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%5s%d" : stdgo.GoString), (" 1234567 " : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_s)), stdgo.Go.toInterface(stdgo.Go.pointer(_i))), _args(stdgo.Go.toInterface(("12345" : stdgo.GoString)), stdgo.Go.toInterface((67 : stdgo.GoInt))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%5s%d" : stdgo.GoString), (" 12 34 567 " : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_s)), stdgo.Go.toInterface(stdgo.Go.pointer(_i))), _args(stdgo.Go.toInterface(("12" : stdgo.GoString)), stdgo.Go.toInterface((34 : stdgo.GoInt))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%e%f" : stdgo.GoString), ("eefffff" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_x)), stdgo.Go.toInterface(stdgo.Go.pointer(_y))), _args(stdgo.Go.toInterface(stdgo.Go.asInterface(((("ee" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.Xs) : Xs))), stdgo.Go.toInterface(stdgo.Go.asInterface(((("fffff" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.Xs) : Xs)))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%4v%s" : stdgo.GoString), ("12abcd" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.IntString>))), stdgo.Go.toInterface(stdgo.Go.pointer(_s))), _args(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.IntString((12 : stdgo.GoInt), ("ab" : stdgo.GoString)) : stdgo._internal.fmt_test.Fmt_test.IntString))), stdgo.Go.toInterface(("cd" : stdgo.GoString))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%t" : stdgo.GoString), ("23 18" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_i))), (null : stdgo.Slice<stdgo.AnyInterface>), ("bad verb" : stdgo.GoString)) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%d %d %d" : stdgo.GoString), ("23 18" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_j))), _args(stdgo.Go.toInterface((23 : stdgo.GoInt)), stdgo.Go.toInterface((18 : stdgo.GoInt))), ("too few operands" : stdgo.GoString)) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%d %d" : stdgo.GoString), ("23 18 27" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_j)), stdgo.Go.toInterface(stdgo.Go.pointer(_k))), _args(stdgo.Go.toInterface((23 : stdgo.GoInt)), stdgo.Go.toInterface((18 : stdgo.GoInt))), ("too many operands" : stdgo.GoString)) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%c" : stdgo.GoString), ("Ā" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_int8Val))), (null : stdgo.Slice<stdgo.AnyInterface>), ("overflow" : stdgo.GoString)) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("X%d" : stdgo.GoString), ("10X" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_intVal))), (null : stdgo.Slice<stdgo.AnyInterface>), ("input does not match format" : stdgo.GoString)) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%d%" : stdgo.GoString), ("42%" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_intVal))), _args(stdgo.Go.toInterface((42 : stdgo.GoInt))), ("missing verb: % at end of format string" : stdgo.GoString)) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%d% " : stdgo.GoString), ("42%" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_intVal))), _args(stdgo.Go.toInterface((42 : stdgo.GoInt))), ("too few operands for format \'% \'" : stdgo.GoString)) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%%%d" : stdgo.GoString), ("xxx 42" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_intVal))), _args(stdgo.Go.toInterface((42 : stdgo.GoInt))), ("missing literal %" : stdgo.GoString)) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%%%d" : stdgo.GoString), ("x42" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_intVal))), _args(stdgo.Go.toInterface((42 : stdgo.GoInt))), ("missing literal %" : stdgo.GoString)) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%%%d" : stdgo.GoString), ("42" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_intVal))), _args(stdgo.Go.toInterface((42 : stdgo.GoInt))), ("missing literal %" : stdgo.GoString)) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%c%c%c" : stdgo.GoString), stdgo.Go.str(194, "X", 194)?.__copy__(), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_r1)), stdgo.Go.toInterface(stdgo.Go.pointer(_r2)), stdgo.Go.toInterface(stdgo.Go.pointer(_r3))), _args(stdgo.Go.toInterface((65533 : stdgo.GoInt32)), stdgo.Go.toInterface((88 : stdgo.GoInt32)), stdgo.Go.toInterface((65533 : stdgo.GoInt32))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest),
(new stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest(("%v%v" : stdgo.GoString), ("FALSE23" : stdgo.GoString), _args(stdgo.Go.toInterface(stdgo.Go.pointer(_truth)), stdgo.Go.toInterface(stdgo.Go.pointer(_i))), _args(stdgo.Go.toInterface(false), stdgo.Go.toInterface((23 : stdgo.GoInt))), stdgo.Go.str()?.__copy__()) : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest)].concat([for (i in 26 ... (26 > 26 ? 26 : 26 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest)])) : stdgo.Slice<stdgo._internal.fmt_test.Fmt_test.ScanfMultiTest>);
var _readers : stdgo.Slice<T__struct_11> = (new stdgo.Slice<T__struct_11>(4, 4, ...[({ _name : ("StringReader" : stdgo.GoString), _f : function(_s:stdgo.GoString):stdgo._internal.io.Io.Reader {
        return stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_s?.__copy__()));
    } } : T__struct_11), ({ _name : ("ReaderOnly" : stdgo.GoString), _f : function(_s:stdgo.GoString):stdgo._internal.io.Io.Reader {
        return stdgo.Go.asInterface(({ reader : stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_s?.__copy__())) } : T__struct_12));
    } } : T__struct_11), ({ _name : ("OneByteReader" : stdgo.GoString), _f : function(_s:stdgo.GoString):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.oneByteReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_s?.__copy__())));
    } } : T__struct_11), ({ _name : ("DataErrReader" : stdgo.GoString), _f : function(_s:stdgo.GoString):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.dataErrReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_s?.__copy__())));
    } } : T__struct_11)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : T__struct_11)])) : stdgo.Slice<T__struct_11>);
var _eofTests : stdgo.Slice<T__struct_13> = (new stdgo.Slice<T__struct_13>(17, 17, ...[
({ _format : ("%s" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)) } : T__struct_13),
({ _format : ("%q" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)) } : T__struct_13),
({ _format : ("%x" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_stringVal)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface((stdgo.Go.setRef(_bytesVal) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_intVal)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_uintVal)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_boolVal)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_float32Val)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_complex64Val)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_renamedStringVal)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface((stdgo.Go.setRef(_renamedBytesVal) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.T_renamedBytes>)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_renamedIntVal)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_renamedUintVal)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_renamedBoolVal)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_renamedFloat32Val)) } : T__struct_13),
({ _format : ("%v" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.pointer(_renamedComplex64Val)) } : T__struct_13)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({ _format : ("" : stdgo.GoString), _v : (null : stdgo.AnyInterface) } : T__struct_13)])) : stdgo.Slice<T__struct_13>);
var __1 : stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
var __2 : stdgo._internal.fmt.Fmt.State = stdgo.Go.asInterface((new stdgo._internal.fmt_test.Fmt_test.T_testState() : stdgo._internal.fmt_test.Fmt_test.T_testState));
@:keep class T__interface_0_static_extension {
    static public function unwrap(t:T__interface_0):stdgo.Slice<stdgo.Error> return t.unwrap();
}
typedef T__interface_0 = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function unwrap():stdgo.Slice<stdgo.Error>;
};
@:structInit class A {
    public var _i : stdgo.GoInt = 0;
    public var _j : stdgo.GoUInt = 0;
    public var _s : stdgo.GoString = "";
    public var _x : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_i:stdgo.GoInt, ?_j:stdgo.GoUInt, ?_s:stdgo.GoString, ?_x:stdgo.Slice<stdgo.GoInt>) {
        if (_i != null) this._i = _i;
        if (_j != null) this._j = _j;
        if (_s != null) this._s = _s;
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new A(_i, _j, _s, _x);
    }
}
@:structInit class B {
    public var i : stdgo._internal.fmt_test.Fmt_test.I = ((0 : stdgo.GoInt) : stdgo._internal.fmt_test.Fmt_test.I);
    public var _j : stdgo.GoInt = 0;
    public function new(?i:stdgo._internal.fmt_test.Fmt_test.I, ?_j:stdgo.GoInt) {
        if (i != null) this.i = i;
        if (_j != null) this._j = _j;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new B(i, _j);
    }
}
@:structInit @:using(stdgo._internal.fmt_test.Fmt_test.C_static_extension) class C {
    public var _i : stdgo.GoInt = 0;
    @:embedded
    public var b : stdgo._internal.fmt_test.Fmt_test.B = ({} : stdgo._internal.fmt_test.Fmt_test.B);
    public function new(?_i:stdgo.GoInt, ?b:stdgo._internal.fmt_test.Fmt_test.B) {
        if (_i != null) this._i = _i;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new C(_i, b);
    }
}
@:structInit class S {
    public var f : stdgo._internal.fmt_test.Fmt_test.F = ((0 : stdgo.GoInt) : stdgo._internal.fmt_test.Fmt_test.F);
    public var g : stdgo._internal.fmt_test.Fmt_test.G = ((0 : stdgo.GoInt) : stdgo._internal.fmt_test.Fmt_test.G);
    public function new(?f:stdgo._internal.fmt_test.Fmt_test.F, ?g:stdgo._internal.fmt_test.Fmt_test.G) {
        if (f != null) this.f = f;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S(f, g);
    }
}
@:structInit class SI {
    public var i : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?i:stdgo.AnyInterface) {
        if (i != null) this.i = i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SI(i);
    }
}
@:structInit @:private @:using(stdgo._internal.fmt_test.Fmt_test.T_flagPrinter_static_extension) class T_flagPrinter {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_flagPrinter();
    }
}
@:structInit @:using(stdgo._internal.fmt_test.Fmt_test.PanicS_static_extension) class PanicS {
    public var _message : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_message:stdgo.AnyInterface) {
        if (_message != null) this._message = _message;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PanicS(_message);
    }
}
@:structInit @:using(stdgo._internal.fmt_test.Fmt_test.PanicGo_static_extension) class PanicGo {
    public var _message : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_message:stdgo.AnyInterface) {
        if (_message != null) this._message = _message;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PanicGo(_message);
    }
}
@:structInit @:using(stdgo._internal.fmt_test.Fmt_test.PanicF_static_extension) class PanicF {
    public var _message : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_message:stdgo.AnyInterface) {
        if (_message != null) this._message = _message;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PanicF(_message);
    }
}
@:structInit @:using(stdgo._internal.fmt_test.Fmt_test.Recur_static_extension) class Recur {
    public var _i : stdgo.GoInt = 0;
    public var _failed : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
    public function new(?_i:stdgo.GoInt, ?_failed:stdgo.Pointer<Bool>) {
        if (_i != null) this._i = _i;
        if (_failed != null) this._failed = _failed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Recur(_i, _failed);
    }
}
@:structInit class Address {
    public var city : stdgo.GoString = "";
    public var state : stdgo.GoString = "";
    public var country : stdgo.GoString = "";
    public function new(?city:stdgo.GoString, ?state:stdgo.GoString, ?country:stdgo.GoString) {
        if (city != null) this.city = city;
        if (state != null) this.state = state;
        if (country != null) this.country = country;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Address(city, state, country);
    }
}
@:structInit @:using(stdgo._internal.fmt_test.Fmt_test.Person_static_extension) class Person {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoUInt = 0;
    public var addr : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.Address> = (null : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.Address>);
    public function new(?name:stdgo.GoString, ?age:stdgo.GoUInt, ?addr:stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.Address>) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Person(name, age, addr);
    }
}
@:structInit class ScanTest {
    public var _text : stdgo.GoString = "";
    public var _in : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _out : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_text:stdgo.GoString, ?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface) {
        if (_text != null) this._text = _text;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ScanTest(_text, _in, _out);
    }
}
@:structInit class ScanfTest {
    public var _format : stdgo.GoString = "";
    public var _text : stdgo.GoString = "";
    public var _in : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _out : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_format:stdgo.GoString, ?_text:stdgo.GoString, ?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface) {
        if (_format != null) this._format = _format;
        if (_text != null) this._text = _text;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ScanfTest(_format, _text, _in, _out);
    }
}
@:structInit class ScanfMultiTest {
    public var _format : stdgo.GoString = "";
    public var _text : stdgo.GoString = "";
    public var _in : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public var _out : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public var _err : stdgo.GoString = "";
    public function new(?_format:stdgo.GoString, ?_text:stdgo.GoString, ?_in:stdgo.Slice<stdgo.AnyInterface>, ?_out:stdgo.Slice<stdgo.AnyInterface>, ?_err:stdgo.GoString) {
        if (_format != null) this._format = _format;
        if (_text != null) this._text = _text;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ScanfMultiTest(_format, _text, _in, _out, _err);
    }
}
@:structInit @:using(stdgo._internal.fmt_test.Fmt_test.IntString_static_extension) class IntString {
    public var _i : stdgo.GoInt = 0;
    public var _s : stdgo.GoString = "";
    public function new(?_i:stdgo.GoInt, ?_s:stdgo.GoString) {
        if (_i != null) this._i = _i;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IntString(_i, _s);
    }
}
@:structInit @:private @:using(stdgo._internal.fmt_test.Fmt_test.T_eofCounter_static_extension) class T_eofCounter {
    public var _reader : stdgo.Ref<stdgo._internal.strings.Strings.Reader> = (null : stdgo.Ref<stdgo._internal.strings.Strings.Reader>);
    public var _eofCount : stdgo.GoInt = 0;
    public function new(?_reader:stdgo.Ref<stdgo._internal.strings.Strings.Reader>, ?_eofCount:stdgo.GoInt) {
        if (_reader != null) this._reader = _reader;
        if (_eofCount != null) this._eofCount = _eofCount;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_eofCounter(_reader, _eofCount);
    }
}
@:structInit @:private @:using(stdgo._internal.fmt_test.Fmt_test.T_runeScanner_static_extension) class T_runeScanner {
    public var _rune : stdgo.GoInt32 = 0;
    public var _size : stdgo.GoInt = 0;
    public function new(?_rune:stdgo.GoInt32, ?_size:stdgo.GoInt) {
        if (_rune != null) this._rune = _rune;
        if (_size != null) this._size = _size;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_runeScanner(_rune, _size);
    }
}
@:structInit @:using(stdgo._internal.fmt_test.Fmt_test.RecursiveInt_static_extension) class RecursiveInt {
    public var _i : stdgo.GoInt = 0;
    public var _next : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.RecursiveInt> = (null : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.RecursiveInt>);
    public function new(?_i:stdgo.GoInt, ?_next:stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.RecursiveInt>) {
        if (_i != null) this._i = _i;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RecursiveInt(_i, _next);
    }
}
@:structInit @:private @:using(stdgo._internal.fmt_test.Fmt_test.T_testState_static_extension) class T_testState {
    public var _width : stdgo.GoInt = 0;
    public var _widthOK : Bool = false;
    public var _prec : stdgo.GoInt = 0;
    public var _precOK : Bool = false;
    public var _flag : stdgo.GoMap<stdgo.GoInt, Bool> = (null : stdgo.GoMap<stdgo.GoInt, Bool>);
    public function new(?_width:stdgo.GoInt, ?_widthOK:Bool, ?_prec:stdgo.GoInt, ?_precOK:Bool, ?_flag:stdgo.GoMap<stdgo.GoInt, Bool>) {
        if (_width != null) this._width = _width;
        if (_widthOK != null) this._widthOK = _widthOK;
        if (_prec != null) this._prec = _prec;
        if (_precOK != null) this._precOK = _precOK;
        if (_flag != null) this._flag = _flag;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testState(_width, _widthOK, _prec, _precOK, _flag);
    }
}
@:structInit @:using(stdgo._internal.fmt_test.Fmt_test.Animal_static_extension) class Animal {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoUInt = 0;
    public function new(?name:stdgo.GoString, ?age:stdgo.GoUInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Animal(name, age);
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
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _err : stdgo.Error;
    public var _wantText : stdgo.GoString;
    public var _wantUnwrap : stdgo.Error;
    public var _wantSplit : stdgo.Slice<stdgo.Error>;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var name : stdgo.GoString;
    public var age : stdgo.GoInt;
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
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _fmt : stdgo.GoString;
    public var _val : stdgo.AnyInterface;
    public var _out : stdgo.GoString;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _fmt : stdgo.GoString;
    public var _val : stdgo._internal.fmt_test.Fmt_test.SE;
    public var _out : stdgo.GoString;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _count : stdgo.GoInt;
    public var _desc : stdgo.GoString;
    public var _fn : () -> Void;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _in : stdgo.GoString;
    public var _out : stdgo.GoString;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _fmt : stdgo.GoString;
    public var _out : stdgo.GoString;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _fmt : stdgo.GoString;
    public var _in : stdgo.Slice<stdgo.AnyInterface>;
    public var _out : stdgo.GoString;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_8>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _fmt : stdgo.GoString;
    public var _in : stdgo.AnyInterface;
    public var _out : stdgo.GoString;
};
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_9>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_9_static_extension) typedef T__struct_9 = {
    public var _in : stdgo.GoString;
    public var _val : stdgo.AnyInterface;
    public var _out : stdgo.GoString;
};
class T__struct_10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_10>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_10_static_extension) typedef T__struct_10 = {
    public var _s : stdgo.GoString;
    public var _start : stdgo.GoInt;
    public var _end : stdgo.GoInt;
    public var _num : stdgo.GoInt;
    public var _isnum : Bool;
    public var _newi : stdgo.GoInt;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_11>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_11_static_extension) typedef T__struct_11 = {
    public var _name : stdgo.GoString;
    public var _f : stdgo.GoString -> stdgo._internal.io.Io.Reader;
};
class T__struct_12_asInterface {
    @:embedded
    public dynamic function read(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(__0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_12>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_12_asInterface) class T__struct_12_static_extension {
    @:embedded
    public static function read( __self__:T__struct_12, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return return __self__.reader.read(__0);
}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_12_static_extension) typedef T__struct_12 = {
    @:embedded
    public var reader : stdgo._internal.io.Io.Reader;
};
class T__struct_13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_13>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_13_static_extension) typedef T__struct_13 = {
    public var _format : stdgo.GoString;
    public var _v : stdgo.AnyInterface;
};
class T__struct_14_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_14>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_14_static_extension) typedef T__struct_14 = {
    public var _name : stdgo.GoString;
    public var _text : stdgo.GoString;
    public var _count : stdgo.GoInt;
};
class T__struct_15_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_15>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_15_static_extension) typedef T__struct_15 = {
    public var _name : stdgo.GoString;
    public var _text : stdgo.GoString;
    public var _count : stdgo.GoInt;
    public var _ok : Bool;
};
class T__struct_16_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_16>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_16_static_extension) typedef T__struct_16 = {
    public var _name : stdgo.GoString;
    public var _text : stdgo.GoString;
    public var _format : stdgo.GoString;
    public var _count : stdgo.GoInt;
    public var _ok : Bool;
};
class T__struct_17_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_17>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T__struct_17_asInterface) class T__struct_17_static_extension {

}
@:local @:using(stdgo._internal.fmt_test.Fmt_test.T__struct_17_static_extension) typedef T__struct_17 = {
    public var _width : stdgo.GoInt;
    public var _prec : stdgo.GoInt;
    public var _flags : stdgo.GoString;
    public var _result : stdgo.GoString;
};
@:named @:using(stdgo._internal.fmt_test.Fmt_test.T_errString_static_extension) typedef T_errString = stdgo.GoString;
@:named typedef T_renamedBool = Bool;
@:named typedef T_renamedInt = stdgo.GoInt;
@:named typedef T_renamedInt8 = stdgo.GoInt8;
@:named typedef T_renamedInt16 = stdgo.GoInt16;
@:named typedef T_renamedInt32 = stdgo.GoInt32;
@:named typedef T_renamedInt64 = stdgo.GoInt64;
@:named typedef T_renamedUint = stdgo.GoUInt;
@:named typedef T_renamedUint8 = stdgo.GoUInt8;
@:named typedef T_renamedUint16 = stdgo.GoUInt16;
@:named typedef T_renamedUint32 = stdgo.GoUInt32;
@:named typedef T_renamedUint64 = stdgo.GoUInt64;
@:named typedef T_renamedUintptr = stdgo.GoUIntptr;
@:named typedef T_renamedString = stdgo.GoString;
@:named typedef T_renamedBytes = stdgo.Slice<stdgo.GoUInt8>;
@:named typedef T_renamedFloat32 = stdgo.GoFloat32;
@:named typedef T_renamedFloat64 = stdgo.GoFloat64;
@:named typedef T_renamedComplex64 = stdgo.GoComplex64;
@:named typedef T_renamedComplex128 = stdgo.GoComplex128;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.I_static_extension) typedef I = stdgo.GoInt;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.F_static_extension) typedef F = stdgo.GoInt;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.G_static_extension) typedef G = stdgo.GoInt;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.P_static_extension) typedef P = stdgo.GoInt;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.T_byteStringer_static_extension) typedef T_byteStringer = stdgo.GoUInt8;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.T_byteFormatter_static_extension) typedef T_byteFormatter = stdgo.GoUInt8;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.T_writeStringFormatter_static_extension) typedef T_writeStringFormatter = stdgo.GoString;
@:named typedef SE = stdgo.Slice<stdgo.AnyInterface>;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.Xs_static_extension) typedef Xs = stdgo.GoString;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TwoLines_static_extension) typedef TwoLines = stdgo.GoString;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.T_hexBytes_static_extension) typedef T_hexBytes = stdgo.GoArray<stdgo.GoUInt8>;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TI_static_extension) typedef TI = stdgo.GoInt;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TI8_static_extension) typedef TI8 = stdgo.GoInt8;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TI16_static_extension) typedef TI16 = stdgo.GoInt16;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TI32_static_extension) typedef TI32 = stdgo.GoInt32;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TI64_static_extension) typedef TI64 = stdgo.GoInt64;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TU_static_extension) typedef TU = stdgo.GoUInt;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TU8_static_extension) typedef TU8 = stdgo.GoUInt8;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TU16_static_extension) typedef TU16 = stdgo.GoUInt16;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TU32_static_extension) typedef TU32 = stdgo.GoUInt32;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TU64_static_extension) typedef TU64 = stdgo.GoUInt64;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TUI_static_extension) typedef TUI = stdgo.GoUIntptr;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TF_static_extension) typedef TF = stdgo.GoFloat64;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TF32_static_extension) typedef TF32 = stdgo.GoFloat32;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TF64_static_extension) typedef TF64 = stdgo.GoFloat64;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TB_static_extension) typedef TB = Bool;
@:named @:using(stdgo._internal.fmt_test.Fmt_test.TS_static_extension) typedef TS = stdgo.GoString;
function testErrorf(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _noVetErrorf = stdgo._internal.fmt.Fmt.errorf;
        var _wrapped:stdgo.Error = stdgo._internal.errors.Errors.new_(("inner error" : stdgo.GoString));
        for (__3 => _test in (new stdgo.Slice<T__struct_0>(16, 16, ...[
({ _err : stdgo._internal.fmt.Fmt.errorf(("%w" : stdgo.GoString), stdgo.Go.toInterface(_wrapped)), _wantText : ("inner error" : stdgo.GoString), _wantUnwrap : _wrapped, _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : T__struct_0),
({ _err : stdgo._internal.fmt.Fmt.errorf(("added context: %w" : stdgo.GoString), stdgo.Go.toInterface(_wrapped)), _wantText : ("added context: inner error" : stdgo.GoString), _wantUnwrap : _wrapped, _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : T__struct_0),
({ _err : stdgo._internal.fmt.Fmt.errorf(("%w with added context" : stdgo.GoString), stdgo.Go.toInterface(_wrapped)), _wantText : ("inner error with added context" : stdgo.GoString), _wantUnwrap : _wrapped, _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : T__struct_0),
({ _err : stdgo._internal.fmt.Fmt.errorf(("%s %w %v" : stdgo.GoString), stdgo.Go.toInterface(("prefix" : stdgo.GoString)), stdgo.Go.toInterface(_wrapped), stdgo.Go.toInterface(("suffix" : stdgo.GoString))), _wantText : ("prefix inner error suffix" : stdgo.GoString), _wantUnwrap : _wrapped, _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : T__struct_0),
({ _err : stdgo._internal.fmt.Fmt.errorf(("%[2]s: %[1]w" : stdgo.GoString), stdgo.Go.toInterface(_wrapped), stdgo.Go.toInterface(("positional verb" : stdgo.GoString))), _wantText : ("positional verb: inner error" : stdgo.GoString), _wantUnwrap : _wrapped, _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : T__struct_0),
({ _err : stdgo._internal.fmt.Fmt.errorf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_wrapped)), _wantText : ("inner error" : stdgo.GoString), _wantUnwrap : (null : stdgo.Error), _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : T__struct_0),
({ _err : stdgo._internal.fmt.Fmt.errorf(("added context: %v" : stdgo.GoString), stdgo.Go.toInterface(_wrapped)), _wantText : ("added context: inner error" : stdgo.GoString), _wantUnwrap : (null : stdgo.Error), _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : T__struct_0),
({ _err : stdgo._internal.fmt.Fmt.errorf(("%v with added context" : stdgo.GoString), stdgo.Go.toInterface(_wrapped)), _wantText : ("inner error with added context" : stdgo.GoString), _wantUnwrap : (null : stdgo.Error), _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : T__struct_0),
({ _err : _noVetErrorf(("%w is not an error" : stdgo.GoString), stdgo.Go.toInterface(("not-an-error" : stdgo.GoString))), _wantText : ("%!w(string=not-an-error) is not an error" : stdgo.GoString), _wantUnwrap : (null : stdgo.Error), _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : T__struct_0),
({ _err : _noVetErrorf(("wrapped two errors: %w %w" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))), stdgo.Go.toInterface(stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)))), _wantText : ("wrapped two errors: 1 2" : stdgo.GoString), _wantSplit : (new stdgo.Slice<stdgo.Error>(2, 2, ...[stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)), stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))]) : stdgo.Slice<stdgo.Error>), _wantUnwrap : (null : stdgo.Error) } : T__struct_0),
({ _err : _noVetErrorf(("wrapped three errors: %w %w %w" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))), stdgo.Go.toInterface(stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))), stdgo.Go.toInterface(stdgo.Go.asInterface(((("3" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)))), _wantText : ("wrapped three errors: 1 2 3" : stdgo.GoString), _wantSplit : (new stdgo.Slice<stdgo.Error>(3, 3, ...[stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)), stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)), stdgo.Go.asInterface(((("3" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))]) : stdgo.Slice<stdgo.Error>), _wantUnwrap : (null : stdgo.Error) } : T__struct_0),
({ _err : _noVetErrorf(("wrapped nil error: %w %w %w" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))), (null : stdgo.AnyInterface), stdgo.Go.toInterface(stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)))), _wantText : ("wrapped nil error: 1 %!w(<nil>) 2" : stdgo.GoString), _wantSplit : (new stdgo.Slice<stdgo.Error>(2, 2, ...[stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)), stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))]) : stdgo.Slice<stdgo.Error>), _wantUnwrap : (null : stdgo.Error) } : T__struct_0),
({ _err : _noVetErrorf(("wrapped one non-error: %w %w %w" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))), stdgo.Go.toInterface(("not-an-error" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(((("3" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)))), _wantText : ("wrapped one non-error: 1 %!w(string=not-an-error) 3" : stdgo.GoString), _wantSplit : (new stdgo.Slice<stdgo.Error>(2, 2, ...[stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)), stdgo.Go.asInterface(((("3" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))]) : stdgo.Slice<stdgo.Error>), _wantUnwrap : (null : stdgo.Error) } : T__struct_0),
({ _err : stdgo._internal.fmt.Fmt.errorf(("wrapped errors out of order: %[3]w %[2]w %[1]w" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))), stdgo.Go.toInterface(stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))), stdgo.Go.toInterface(stdgo.Go.asInterface(((("3" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)))), _wantText : ("wrapped errors out of order: 3 2 1" : stdgo.GoString), _wantSplit : (new stdgo.Slice<stdgo.Error>(3, 3, ...[stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)), stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)), stdgo.Go.asInterface(((("3" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))]) : stdgo.Slice<stdgo.Error>), _wantUnwrap : (null : stdgo.Error) } : T__struct_0),
({ _err : stdgo._internal.fmt.Fmt.errorf(("wrapped several times: %[1]w %[1]w %[2]w %[1]w" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))), stdgo.Go.toInterface(stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)))), _wantText : ("wrapped several times: 1 1 2 1" : stdgo.GoString), _wantSplit : (new stdgo.Slice<stdgo.Error>(2, 2, ...[stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString)), stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.T_errString) : T_errString))]) : stdgo.Slice<stdgo.Error>), _wantUnwrap : (null : stdgo.Error) } : T__struct_0),
({ _err : stdgo._internal.fmt.Fmt.errorf(("%w" : stdgo.GoString), (null : stdgo.AnyInterface)), _wantText : ("%!w(<nil>)" : stdgo.GoString), _wantUnwrap : (null : stdgo.Error), _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : T__struct_0)].concat([for (i in 16 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({ _err : (null : stdgo.Error), _wantText : ("" : stdgo.GoString), _wantUnwrap : (null : stdgo.Error), _wantSplit : (null : stdgo.Slice<stdgo.Error>) } : T__struct_0)])) : stdgo.Slice<T__struct_0>)) {
            {
                var __0:stdgo.Error = stdgo._internal.errors.Errors.unwrap(_test._err), __1:stdgo.Error = _test._wantUnwrap, _want:stdgo.Error = __1, _got:stdgo.Error = __0;
                if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(_want))) {
                    _t.errorf(("Formatted error: %v\nerrors.Unwrap() = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            {
                var __0 = _splitErr(_test._err), __1 = _test._wantSplit, _want = __1, _got = __0;
                if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
                    _t.errorf(("Formatted error: %v\nUnwrap() []error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            {
                var __0:stdgo.GoString = _test._err.error()?.__copy__(), __1:stdgo.GoString = _test._wantText?.__copy__(), _want:stdgo.GoString = __1, _got:stdgo.GoString = __0;
                if (_got != (_want)) {
                    _t.errorf(("err.Error() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
function _splitErr(_err:stdgo.Error):stdgo.Slice<stdgo.Error> {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : T__interface_0)) : T__interface_0), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.fmt_test.Fmt_test.T__interface_0), _1 : false };
            }, _e = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _e.unwrap();
            };
        };
        return (null : stdgo.Slice<stdgo.Error>);
    }
function exampleErrorf():Void {
        {};
        var _err:stdgo.Error = stdgo._internal.fmt.Fmt.errorf(("user %q (id %d) not found" : stdgo.GoString), stdgo.Go.toInterface(("bueller" : stdgo.GoString)), stdgo.Go.toInterface((17 : stdgo.GoInt)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_err.error()));
    }
function exampleFscanf():Void {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:Bool = false, __2:stdgo.GoString = ("" : stdgo.GoString), _s:stdgo.GoString = __2, _b:Bool = __1, _i:stdgo.GoInt = __0;
        var _r = stdgo._internal.strings.Strings.newReader(("5 true gophers" : stdgo.GoString));
        var __tmp__ = stdgo._internal.fmt.Fmt.fscanf(stdgo.Go.asInterface(_r), ("%d %t %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_b)), stdgo.Go.toInterface(stdgo.Go.pointer(_s))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("Fscanf: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_s));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_n));
    }
function exampleFscanln():Void {
        var _s:stdgo.GoString = ("dmr 1771 1.61803398875\n\tken 271828 3.14159" : stdgo.GoString);
        var _r = stdgo._internal.strings.Strings.newReader(_s?.__copy__());
        var _a:stdgo.GoString = ("" : stdgo.GoString);
        var _b:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        while (true) {
            var __tmp__ = stdgo._internal.fmt.Fmt.fscanln(stdgo.Go.asInterface(_r), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_b)), stdgo.Go.toInterface(stdgo.Go.pointer(_c))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                break;
            };
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            stdgo._internal.fmt.Fmt.printf(("%d: %s, %d, %f\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_c));
        };
    }
function exampleSscanf():Void {
        var _name:stdgo.GoString = ("" : stdgo.GoString);
        var _age:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = stdgo._internal.fmt.Fmt.sscanf(("Kim is 22 years old" : stdgo.GoString), ("%s is %d years old" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_name)), stdgo.Go.toInterface(stdgo.Go.pointer(_age))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo._internal.fmt.Fmt.printf(("%d: %s, %d\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_age));
    }
function examplePrint():Void {
        {};
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((" is " : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)), stdgo.Go.toInterface((" years old.\n" : stdgo.GoString)));
    }
function examplePrintln():Void {
        {};
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface(("is" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)), stdgo.Go.toInterface(("years old." : stdgo.GoString)));
    }
function examplePrintf():Void {
        {};
        stdgo._internal.fmt.Fmt.printf(("%s is %d years old.\n" : stdgo.GoString), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)));
    }
function exampleSprint():Void {
        {};
        var _s:stdgo.GoString = stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((" is " : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)), stdgo.Go.toInterface((" years old.\n" : stdgo.GoString)))?.__copy__();
        stdgo._internal.io.Io.writeString(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), _s?.__copy__());
    }
function exampleSprintln():Void {
        {};
        var _s:stdgo.GoString = stdgo._internal.fmt.Fmt.sprintln(stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface(("is" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)), stdgo.Go.toInterface(("years old." : stdgo.GoString)))?.__copy__();
        stdgo._internal.io.Io.writeString(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), _s?.__copy__());
    }
function exampleSprintf():Void {
        {};
        var _s:stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(("%s is %d years old.\n" : stdgo.GoString), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)))?.__copy__();
        stdgo._internal.io.Io.writeString(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), _s?.__copy__());
    }
function exampleFprint():Void {
        {};
        var __tmp__ = stdgo._internal.fmt.Fmt.fprint(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((" is " : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)), stdgo.Go.toInterface((" years old.\n" : stdgo.GoString))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("Fprint: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(_n), stdgo.Go.toInterface((" bytes written.\n" : stdgo.GoString)));
    }
function exampleFprintln():Void {
        {};
        var __tmp__ = stdgo._internal.fmt.Fmt.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface(("is" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt)), stdgo.Go.toInterface(("years old." : stdgo.GoString))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("Fprintln: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_n), stdgo.Go.toInterface(("bytes written." : stdgo.GoString)));
    }
function exampleFprintf():Void {
        {};
        var __tmp__ = stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), ("%s is %d years old.\n" : stdgo.GoString), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.GoInt))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("Fprintf: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("%d bytes written.\n" : stdgo.GoString), stdgo.Go.toInterface(_n));
    }
function example_printers():Void {
        var __0:stdgo.GoFloat64 = (3 : stdgo.GoFloat64), __1:stdgo.GoFloat64 = (4 : stdgo.GoFloat64), _b:stdgo.GoFloat64 = __1, _a:stdgo.GoFloat64 = __0;
        var _h:stdgo.GoFloat64 = stdgo._internal.math.Math.hypot(_a, _b);
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(("The vector (" : stdgo.GoString)), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface((") has length " : stdgo.GoString)), stdgo.Go.toInterface(_h), stdgo.Go.toInterface((".\n" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("The vector (" : stdgo.GoString)), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface((") has length" : stdgo.GoString)), stdgo.Go.toInterface(_h), stdgo.Go.toInterface(("." : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.printf(("The vector (%g %g) has length %g.\n" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_h));
    }
function example_formats():Void {
        var _integer:stdgo.GoInt = (23 : stdgo.GoInt);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_integer));
        stdgo._internal.fmt.Fmt.printf(("%v\n" : stdgo.GoString), stdgo.Go.toInterface(_integer));
        stdgo._internal.fmt.Fmt.printf(("%d\n" : stdgo.GoString), stdgo.Go.toInterface(_integer));
        stdgo._internal.fmt.Fmt.printf(("%T %T\n" : stdgo.GoString), stdgo.Go.toInterface(_integer), stdgo.Go.toInterface(stdgo.Go.pointer(_integer)));
        var _truth:Bool = true;
        stdgo._internal.fmt.Fmt.printf(("%v %t\n" : stdgo.GoString), stdgo.Go.toInterface(_truth), stdgo.Go.toInterface(_truth));
        var _answer:stdgo.GoInt = (42 : stdgo.GoInt);
        stdgo._internal.fmt.Fmt.printf(("%v %d %x %o %b\n" : stdgo.GoString), stdgo.Go.toInterface(_answer), stdgo.Go.toInterface(_answer), stdgo.Go.toInterface(_answer), stdgo.Go.toInterface(_answer), stdgo.Go.toInterface(_answer));
        var _pi:stdgo.GoFloat64 = (3.141592653589793 : stdgo.GoFloat64);
        stdgo._internal.fmt.Fmt.printf(("%v %g %.2f (%6.2f) %e\n" : stdgo.GoString), stdgo.Go.toInterface(_pi), stdgo.Go.toInterface(_pi), stdgo.Go.toInterface(_pi), stdgo.Go.toInterface(_pi), stdgo.Go.toInterface(_pi));
        var _point:stdgo.GoComplex128 = ((110.7f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 22.5f64));
        stdgo._internal.fmt.Fmt.printf(("%v %g %.2f %.2e\n" : stdgo.GoString), stdgo.Go.toInterface(_point), stdgo.Go.toInterface(_point), stdgo.Go.toInterface(_point), stdgo.Go.toInterface(_point));
        var _smile:stdgo.GoInt32 = (128512 : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt.printf(("%v %d %c %q %U %#U\n" : stdgo.GoString), stdgo.Go.toInterface(_smile), stdgo.Go.toInterface(_smile), stdgo.Go.toInterface(_smile), stdgo.Go.toInterface(_smile), stdgo.Go.toInterface(_smile), stdgo.Go.toInterface(_smile));
        var _placeholders:stdgo.GoString = ("foo \"bar\"" : stdgo.GoString);
        stdgo._internal.fmt.Fmt.printf(("%v %s %q %#q\n" : stdgo.GoString), stdgo.Go.toInterface(_placeholders), stdgo.Go.toInterface(_placeholders), stdgo.Go.toInterface(_placeholders), stdgo.Go.toInterface(_placeholders));
        var _isLegume = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {
                x.set(("peanut" : stdgo.GoString), true);
                x.set(("dachshund" : stdgo.GoString), false);
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        stdgo._internal.fmt.Fmt.printf(("%v %#v\n" : stdgo.GoString), stdgo.Go.toInterface(_isLegume), stdgo.Go.toInterface(_isLegume));
        var _person:T__struct_1 = ({ name : ("Kim" : stdgo.GoString), age : (22 : stdgo.GoInt) } : T__struct_1);
        stdgo._internal.fmt.Fmt.printf(("%v %+v %#v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_person)), stdgo.Go.toInterface(stdgo.Go.asInterface(_person)), stdgo.Go.toInterface(stdgo.Go.asInterface(_person)));
        var _pointer = (stdgo.Go.setRef(_person) : stdgo.Ref<T__struct_1>);
        stdgo._internal.fmt.Fmt.printf(("%v %p\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_pointer)), stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)));
        var _greats = (new stdgo.GoArray<stdgo.GoString>(5, 5, ...[("Kitano" : stdgo.GoString), ("Kobayashi" : stdgo.GoString), ("Kurosawa" : stdgo.GoString), ("Miyazaki" : stdgo.GoString), ("Ozu" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("%v %q\n" : stdgo.GoString), stdgo.Go.toInterface(_greats), stdgo.Go.toInterface(_greats));
        var _kGreats = (_greats.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.fmt.Fmt.printf(("%v %q %#v\n" : stdgo.GoString), stdgo.Go.toInterface(_kGreats), stdgo.Go.toInterface(_kGreats), stdgo.Go.toInterface(_kGreats));
        var _cmd = (("a⌘" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.fmt.Fmt.printf(("%v %d %s %q %x % x\n" : stdgo.GoString), stdgo.Go.toInterface(_cmd), stdgo.Go.toInterface(_cmd), stdgo.Go.toInterface(_cmd), stdgo.Go.toInterface(_cmd), stdgo.Go.toInterface(_cmd), stdgo.Go.toInterface(_cmd));
        var _now:stdgo._internal.time.Time.Time = stdgo._internal.time.Time.unix((123456789i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64)).utc()?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("%v %q\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_now)), stdgo.Go.toInterface(stdgo.Go.asInterface(_now)));
    }
function testFmtInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _i1:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        _i1 = stdgo.Go.toInterface(("abc" : stdgo.GoString));
        var _s:stdgo.GoString = sprintf(("%s" : stdgo.GoString), _i1)?.__copy__();
        if (_s != (("abc" : stdgo.GoString))) {
            _t.errorf(("Sprintf(\"%%s\", empty(\"abc\")) = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("abc" : stdgo.GoString)));
        };
    }
function _zeroFill(_prefix:stdgo.GoString, _width:stdgo.GoInt, _suffix:stdgo.GoString):stdgo.GoString {
        return ((_prefix + stdgo._internal.strings.Strings.repeat(("0" : stdgo.GoString), (_width - (_suffix.length) : stdgo.GoInt))?.__copy__() : stdgo.GoString) + _suffix?.__copy__() : stdgo.GoString)?.__copy__();
    }
function testSprintf(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__3 => _tt in _fmtTests) {
            var _s:stdgo.GoString = sprintf(_tt._fmt?.__copy__(), _tt._val)?.__copy__();
            var _i:stdgo.GoInt = stdgo._internal.strings.Strings.index(_tt._out?.__copy__(), ("PTR" : stdgo.GoString));
            if (((_i >= (0 : stdgo.GoInt) : Bool) && (_i < (_s.length) : Bool) : Bool)) {
                var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString), _chars:stdgo.GoString = __1, _pattern:stdgo.GoString = __0;
                if (stdgo._internal.strings.Strings.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_b" : stdgo.GoString))) {
                    _pattern = ("PTR_b" : stdgo.GoString);
                    _chars = ("01" : stdgo.GoString);
                } else if (stdgo._internal.strings.Strings.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_o" : stdgo.GoString))) {
                    _pattern = ("PTR_o" : stdgo.GoString);
                    _chars = ("01234567" : stdgo.GoString);
                } else if (stdgo._internal.strings.Strings.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_d" : stdgo.GoString))) {
                    _pattern = ("PTR_d" : stdgo.GoString);
                    _chars = ("0123456789" : stdgo.GoString);
                } else if (stdgo._internal.strings.Strings.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_x" : stdgo.GoString))) {
                    _pattern = ("PTR_x" : stdgo.GoString);
                    _chars = ("0123456789abcdef" : stdgo.GoString);
                } else if (stdgo._internal.strings.Strings.hasPrefix((_tt._out.__slice__(_i) : stdgo.GoString)?.__copy__(), ("PTR_X" : stdgo.GoString))) {
                    _pattern = ("PTR_X" : stdgo.GoString);
                    _chars = ("0123456789ABCDEF" : stdgo.GoString);
                } else {
                    _pattern = ("PTR" : stdgo.GoString);
                    _chars = ("0123456789abcdefABCDEF" : stdgo.GoString);
                };
                var _p:stdgo.GoString = ((_s.__slice__(0, _i) : stdgo.GoString) + _pattern?.__copy__() : stdgo.GoString)?.__copy__();
                {
                    var _j:stdgo.GoInt = _i;
                    stdgo.Go.cfor((_j < (_s.length) : Bool), _j++, {
                        if (!stdgo._internal.strings.Strings.containsRune(_chars?.__copy__(), (_s[(_j : stdgo.GoInt)] : stdgo.GoRune))) {
                            _p = (_p + ((_s.__slice__(_j) : stdgo.GoString))?.__copy__() : stdgo.GoString);
                            break;
                        };
                    });
                };
                _s = _p?.__copy__();
            };
            if (_s != (_tt._out)) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_tt._val : stdgo.GoString)) : stdgo.GoString), _1 : true };
                    } catch(_) {
                        { _0 : ("" : stdgo.GoString), _1 : false };
                    }, __4 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _t.errorf(("Sprintf(%q, %q) = <%s> want <%s>" : stdgo.GoString), stdgo.Go.toInterface(_tt._fmt), _tt._val, stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                    } else {
                        _t.errorf(("Sprintf(%q, %v) = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._fmt), _tt._val, stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                    };
                };
            };
        };
    }
function testComplexFormatting(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _yesNo:stdgo.Slice<Bool> = (new stdgo.Slice<Bool>(2, 2, ...[true, false]) : stdgo.Slice<Bool>);
        var _values:stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(6, 6, ...[(1 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64), _posInf, _negInf, naN]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        for (__3 => _plus in _yesNo) {
            for (__4 => _zero in _yesNo) {
                for (__5 => _space in _yesNo) {
                    for (__6 => _char in ("fFeEgG" : stdgo.GoString)) {
                        var _realFmt:stdgo.GoString = ("%" : stdgo.GoString);
                        if (_zero) {
                            _realFmt = (_realFmt + (("0" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        if (_space) {
                            _realFmt = (_realFmt + ((" " : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        if (_plus) {
                            _realFmt = (_realFmt + (("+" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        _realFmt = (_realFmt + (("10.2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        _realFmt = (_realFmt + ((_char : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        var _imagFmt:stdgo.GoString = ("%" : stdgo.GoString);
                        if (_zero) {
                            _imagFmt = (_imagFmt + (("0" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        _imagFmt = (_imagFmt + (("+" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        _imagFmt = (_imagFmt + (("10.2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        _imagFmt = (_imagFmt + ((_char : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        for (__7 => _realValue in _values) {
                            for (__8 => _imagValue in _values) {
                                var _one:stdgo.GoString = sprintf(_realFmt?.__copy__(), stdgo.Go.toInterface(new stdgo.GoComplex128(_realValue, _imagValue)))?.__copy__();
                                var _two:stdgo.GoString = sprintf((((("(" : stdgo.GoString) + _realFmt?.__copy__() : stdgo.GoString) + _imagFmt?.__copy__() : stdgo.GoString) + ("i)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_realValue), stdgo.Go.toInterface(_imagValue))?.__copy__();
                                if (_one != (_two)) {
                                    _t.error(stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_one), stdgo.Go.toInterface(_two));
                                };
                            };
                        };
                    };
                };
            };
        };
    }
function testReorder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__3 => _tt in _reorderTests) {
            var _s:stdgo.GoString = sprintf(_tt._fmt?.__copy__(), ...(_tt._val : Array<stdgo.AnyInterface>))?.__copy__();
            if (_s != (_tt._out)) {
                _t.errorf(("Sprintf(%q, %v) = <%s> want <%s>" : stdgo.GoString), stdgo.Go.toInterface(_tt._fmt), stdgo.Go.toInterface(_tt._val), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
            } else {};
        };
    }
function benchmarkSprintfPadding(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%16f" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.GoFloat64)));
            };
        });
    }
function benchmarkSprintfEmpty(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(stdgo.Go.str()?.__copy__());
            };
        });
    }
function benchmarkSprintfString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%s" : stdgo.GoString), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
            };
        });
    }
function benchmarkSprintfTruncateString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%.3s" : stdgo.GoString), stdgo.Go.toInterface(("日本語日本語日本語日本語" : stdgo.GoString)));
            };
        });
    }
function benchmarkSprintfTruncateBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _bytes:stdgo.AnyInterface = stdgo.Go.toInterface((("日本語日本語日本語日本語" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%.3s" : stdgo.GoString), _bytes);
            };
        });
    }
function benchmarkSprintfSlowParsingPath(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%.v" : stdgo.GoString), (null : stdgo.AnyInterface));
            };
        });
    }
function benchmarkSprintfQuoteString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(("日本語日本語日本語" : stdgo.GoString)));
            };
        });
    }
function benchmarkSprintfInt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface((5 : stdgo.GoInt)));
            };
        });
    }
function benchmarkSprintfIntInt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%d %d" : stdgo.GoString), stdgo.Go.toInterface((5 : stdgo.GoInt)), stdgo.Go.toInterface((6 : stdgo.GoInt)));
            };
        });
    }
function benchmarkSprintfPrefixedInt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("This is some meaningless prefix text that needs to be scanned %d" : stdgo.GoString), stdgo.Go.toInterface((6 : stdgo.GoInt)));
            };
        });
    }
function benchmarkSprintfFloat(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%g" : stdgo.GoString), stdgo.Go.toInterface((5.23184 : stdgo.GoFloat64)));
            };
        });
    }
function benchmarkSprintfComplex(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%f" : stdgo.GoString), stdgo.Go.toInterface(((5.23184f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 5.23184f64))));
            };
        });
    }
function benchmarkSprintfBoolean(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%t" : stdgo.GoString), stdgo.Go.toInterface(true));
            };
        });
    }
function benchmarkSprintfHexString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("% #x" : stdgo.GoString), stdgo.Go.toInterface(("0123456789abcdef" : stdgo.GoString)));
            };
        });
    }
function benchmarkSprintfHexBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _data = (("0123456789abcdef" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("% #x" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        });
    }
function benchmarkSprintfBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _data = (("0123456789abcdef" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_data));
            };
        });
    }
function benchmarkSprintfStringer(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _stringer:stdgo._internal.fmt_test.Fmt_test.I = ((12345 : stdgo._internal.fmt_test.Fmt_test.I) : I);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_stringer)));
            };
        });
    }
function benchmarkSprintfStructure(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s = (stdgo.Go.setRef((new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((new stdgo._internal.fmt_test.Fmt_test.SI(stdgo.Go.toInterface((12345 : stdgo.GoInt))) : stdgo._internal.fmt_test.Fmt_test.SI)), stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {
                x.set((0 : stdgo.GoInt), ("hello" : stdgo.GoString));
            };
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>))]) : stdgo.Slice<stdgo.AnyInterface>)) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var __blank__ = sprintf(("%#v" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        });
    }
function benchmarkManyArgs(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            while (_pb.next()) {
                _buf.reset();
                fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("%2d/%2d/%2d %d:%d:%d %s %s\n" : stdgo.GoString), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface((4 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt)), stdgo.Go.toInterface((11 : stdgo.GoInt)), stdgo.Go.toInterface((12 : stdgo.GoInt)), stdgo.Go.toInterface((13 : stdgo.GoInt)), stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface(("world" : stdgo.GoString)));
            };
        });
    }
function benchmarkFprintInt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.toInterface((123456 : stdgo.GoInt)));
            });
        };
    }
function benchmarkFprintfBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _data = ((("0123456789" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("%s" : stdgo.GoString), stdgo.Go.toInterface(_data));
            });
        };
    }
function benchmarkFprintIntNoAlloc(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x:stdgo.AnyInterface = stdgo.Go.toInterface((123456 : stdgo.GoInt));
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _x);
            });
        };
    }
function testCountMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count in short mode" : stdgo.GoString)));
        } else if ((stdgo._internal.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            _t.skip(stdgo.Go.toInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString)));
        } else if (false) {
            _t.skip(stdgo.Go.toInterface(("skipping malloc count under race detector" : stdgo.GoString)));
        };
        for (__27 => _mt in _mallocTest) {
            var _mallocs:stdgo.GoFloat64 = stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), _mt._fn);
            {
                var __0:stdgo.GoFloat64 = _mallocs, __1:stdgo.GoFloat64 = (_mt._count : stdgo.GoFloat64), _max:stdgo.GoFloat64 = __1, _got:stdgo.GoFloat64 = __0;
                if ((_got > _max : Bool)) {
                    _t.errorf(("%s: got %v allocs, want <=%v" : stdgo.GoString), stdgo.Go.toInterface(_mt._desc), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_max));
                };
            };
        };
    }
function testFlagParser(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _flagprinter:T_flagPrinter = ({} : stdgo._internal.fmt_test.Fmt_test.T_flagPrinter);
        for (__3 => _tt in _flagtests) {
            var _s:stdgo.GoString = sprintf(_tt._in?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_flagprinter) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.T_flagPrinter>))))?.__copy__();
            if (_s != (_tt._out)) {
                _t.errorf(("Sprintf(%q, &flagprinter) => %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
@:structInit class T_testStructPrinter___localname___T_47832 {
    public var _a : stdgo.GoString = "";
    public var _b : stdgo.GoString = "";
    public var _c : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStructPrinter___localname___T_47832(_a, _b, _c);
    }
}
function testStructPrinter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _s:T_testStructPrinter___localname___T_47832 = ({} : stdgo._internal.fmt_test.Fmt_test.T_testStructPrinter___localname___T_47832);
        _s._a = ("abc" : stdgo.GoString);
        _s._b = ("def" : stdgo.GoString);
        _s._c = (123 : stdgo.GoInt);
        var _tests:stdgo.Slice<T__struct_6> = (new stdgo.Slice<T__struct_6>(3, 3, ...[({ _fmt : ("%v" : stdgo.GoString), _out : ("{abc def 123}" : stdgo.GoString) } : T__struct_6), ({ _fmt : ("%+v" : stdgo.GoString), _out : ("{a:abc b:def c:123}" : stdgo.GoString) } : T__struct_6), ({ _fmt : ("%#v" : stdgo.GoString), _out : ("fmt_test.T{a:\"abc\", b:\"def\", c:123}" : stdgo.GoString) } : T__struct_6)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _fmt : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : T__struct_6)])) : stdgo.Slice<T__struct_6>);
        for (__3 => _tt in _tests) {
            var _out:stdgo.GoString = sprintf(_tt._fmt?.__copy__(), stdgo.Go.toInterface(_s))?.__copy__();
            if (_out != (_tt._out)) {
                _t.errorf(("Sprintf(%q, s) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._fmt), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
            _out = sprintf(_tt._fmt?.__copy__(), stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.T_testStructPrinter___localname___T_47832>)))?.__copy__();
            if (_out != ((("&" : stdgo.GoString) + _tt._out?.__copy__() : stdgo.GoString))) {
                _t.errorf(("Sprintf(%q, &s) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._fmt), stdgo.Go.toInterface(_out), stdgo.Go.toInterface((("&" : stdgo.GoString) + _tt._out?.__copy__() : stdgo.GoString)));
            };
        };
    }
function testSlicePrinter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _slice = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _s:stdgo.GoString = sprint(stdgo.Go.toInterface(_slice))?.__copy__();
        if (_s != (("[]" : stdgo.GoString))) {
            _t.errorf(("empty slice printed as %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("[]" : stdgo.GoString)));
        };
        _slice = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _s = sprint(stdgo.Go.toInterface(_slice))?.__copy__();
        if (_s != (("[1 2 3]" : stdgo.GoString))) {
            _t.errorf(("slice: got %q expected %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("[1 2 3]" : stdgo.GoString)));
        };
        _s = sprint(stdgo.Go.toInterface((stdgo.Go.setRef(_slice) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)))?.__copy__();
        if (_s != (("&[1 2 3]" : stdgo.GoString))) {
            _t.errorf(("&slice: got %q expected %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("&[1 2 3]" : stdgo.GoString)));
        };
    }
function _presentInMap(_s:stdgo.GoString, _a:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_a.length) : Bool), _i++, {
                var _loc:stdgo.GoInt = stdgo._internal.strings.Strings.index(_s?.__copy__(), _a[(_i : stdgo.GoInt)]?.__copy__());
                if ((_loc < (0 : stdgo.GoInt) : Bool)) {
                    _t.errorf(("map print: expected to find %q in %q" : stdgo.GoString), stdgo.Go.toInterface(_a[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_s));
                };
                _loc = (_loc + ((_a[(_i : stdgo.GoInt)].length)) : stdgo.GoInt);
                if (((_loc >= (_s.length) : Bool) || (((_s[(_loc : stdgo.GoInt)] != (32 : stdgo.GoUInt8)) && (_s[(_loc : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    _t.errorf(("map print: %q not properly terminated in %q" : stdgo.GoString), stdgo.Go.toInterface(_a[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_s));
                };
            });
        };
    }
function testMapPrinter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _m0 = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
        var _s:stdgo.GoString = sprint(stdgo.Go.toInterface(_m0))?.__copy__();
        if (_s != (("map[]" : stdgo.GoString))) {
            _t.errorf(("empty map printed as %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("map[]" : stdgo.GoString)));
        };
        var _m1 = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {
                x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
                x.set((2 : stdgo.GoInt), ("two" : stdgo.GoString));
                x.set((3 : stdgo.GoInt), ("three" : stdgo.GoString));
            };
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
        var _a = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1:one" : stdgo.GoString), ("2:two" : stdgo.GoString), ("3:three" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        _presentInMap(sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_m1))?.__copy__(), _a, _t);
        _presentInMap(sprint(stdgo.Go.toInterface(_m1))?.__copy__(), _a, _t);
        if (!stdgo._internal.strings.Strings.hasPrefix(sprint(stdgo.Go.toInterface((stdgo.Go.setRef(_m1) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoString>>)))?.__copy__(), ("&" : stdgo.GoString))) {
            _t.errorf(("no initial & for address of map" : stdgo.GoString));
        };
        _presentInMap(sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_m1) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoString>>)))?.__copy__(), _a, _t);
        _presentInMap(sprint(stdgo.Go.toInterface((stdgo.Go.setRef(_m1) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoString>>)))?.__copy__(), _a, _t);
    }
function testEmptyMap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _s:stdgo.GoString = sprint(stdgo.Go.toInterface(_m))?.__copy__();
        if (_s != (("map[]" : stdgo.GoString))) {
            _t.errorf(("nil map printed as %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("map[]" : stdgo.GoString)));
        };
        _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        _s = sprint(stdgo.Go.toInterface(_m))?.__copy__();
        if (_s != (("map[]" : stdgo.GoString))) {
            _t.errorf(("empty map printed as %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("map[]" : stdgo.GoString)));
        };
    }
function testBlank(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _got:stdgo.GoString = sprint(stdgo.Go.toInterface(("<" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((">:" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface(("!" : stdgo.GoString)))?.__copy__();
        var _expect:stdgo.GoString = ("<1>:1 2 3!" : stdgo.GoString);
        if (_got != (_expect)) {
            _t.errorf(("got %q expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_expect));
        };
    }
function testBlankln(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _got:stdgo.GoString = sprintln(stdgo.Go.toInterface(("<" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((">:" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface(("!" : stdgo.GoString)))?.__copy__();
        var _expect:stdgo.GoString = ("< 1 >: 1 2 3 !\n" : stdgo.GoString);
        if (_got != (_expect)) {
            _t.errorf(("got %q expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_expect));
        };
    }
function testFormatterPrintln(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _f:stdgo._internal.fmt_test.Fmt_test.F = ((1 : stdgo._internal.fmt_test.Fmt_test.F) : F);
        var _expect:stdgo.GoString = ("<v=F(1)>\n" : stdgo.GoString);
        var _s:stdgo.GoString = sprint(stdgo.Go.toInterface(stdgo.Go.asInterface(_f)), stdgo.Go.toInterface(("\n" : stdgo.GoString)))?.__copy__();
        if (_s != (_expect)) {
            _t.errorf(("Sprint wrong with Formatter: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_s));
        };
        _s = sprintln(stdgo.Go.toInterface(stdgo.Go.asInterface(_f)))?.__copy__();
        if (_s != (_expect)) {
            _t.errorf(("Sprintln wrong with Formatter: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_s));
        };
        _s = sprintf(("%v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)))?.__copy__();
        if (_s != (_expect)) {
            _t.errorf(("Sprintf wrong with Formatter: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_s));
        };
    }
function _args(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.AnyInterface> {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        return _a;
    }
function testWidthAndPrecision(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _tt in _startests) {
            var _s:stdgo.GoString = sprintf(_tt._fmt?.__copy__(), ...(_tt._in : Array<stdgo.AnyInterface>))?.__copy__();
            if (_s != (_tt._out)) {
                _t.errorf(("#%d: %q: got %q expected %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._fmt), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
function testPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        trace("testPanics" + " skip function");
        return;
        for (_i => _tt in _panictests) {
            var _s:stdgo.GoString = sprintf(_tt._fmt?.__copy__(), _tt._in)?.__copy__();
            if (_s != (_tt._out)) {
                _t.errorf(("%d: %q: got %q expected %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._fmt), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
function testBadVerbRecursion(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _failed:Bool = false;
        var _r = (stdgo.Go.setRef((new stdgo._internal.fmt_test.Fmt_test.Recur((3 : stdgo.GoInt), stdgo.Go.pointer(_failed)) : stdgo._internal.fmt_test.Fmt_test.Recur)) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.Recur>);
        var __blank__ = sprintf(("recur@%p value: %d\n" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.Recur>>)), stdgo.Go.toInterface(_r._i));
        if (_failed) {
            _t.error(stdgo.Go.toInterface(("fail with pointer" : stdgo.GoString)));
        };
        _failed = false;
        _r = (stdgo.Go.setRef((new stdgo._internal.fmt_test.Fmt_test.Recur((4 : stdgo.GoInt), stdgo.Go.pointer(_failed)) : stdgo._internal.fmt_test.Fmt_test.Recur)) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.Recur>);
        var __blank__ = sprintf(("recur@%p, value: %d\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_r._i));
        if (_failed) {
            _t.error(stdgo.Go.toInterface(("fail with value" : stdgo.GoString)));
        };
    }
function testIsSpace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (1114111 : stdgo.GoInt32) : Bool), _i++, {
                if (isSpace(_i) != (stdgo._internal.unicode.Unicode.isSpace(_i))) {
                    _t.errorf(("isSpace(%U) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(isSpace(_i)), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isSpace(_i)));
                };
            });
        };
    }
function _hideFromVet(_s:stdgo.GoString):stdgo.GoString {
        return _s?.__copy__();
    }
@:structInit class T_testNilDoesNotBecomeTyped___localname___A_55372 {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testNilDoesNotBecomeTyped___localname___A_55372();
    }
}
@:structInit class T_testNilDoesNotBecomeTyped___localname___B_55389 {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testNilDoesNotBecomeTyped___localname___B_55389();
    }
}
function testNilDoesNotBecomeTyped(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {};
        var _a:stdgo.Ref<T_testNilDoesNotBecomeTyped___localname___A_55372> = null;
        var _b:T_testNilDoesNotBecomeTyped___localname___B_55389 = (new stdgo._internal.fmt_test.Fmt_test.T_testNilDoesNotBecomeTyped___localname___B_55389() : stdgo._internal.fmt_test.Fmt_test.T_testNilDoesNotBecomeTyped___localname___B_55389);
        var _got:stdgo.GoString = sprintf(_hideFromVet(("%s %s %s %s %s" : stdgo.GoString))?.__copy__(), (null : stdgo.AnyInterface), stdgo.Go.toInterface(_a), (null : stdgo.AnyInterface), stdgo.Go.toInterface(_b), (null : stdgo.AnyInterface))?.__copy__();
        {};
        if (_got != (("%!s(<nil>) %!s(*fmt_test.A=<nil>) %!s(<nil>) {} %!s(<nil>)" : stdgo.GoString))) {
            _t.errorf(("expected:\n\t%q\ngot:\n\t%q" : stdgo.GoString), stdgo.Go.toInterface(("%!s(<nil>) %!s(*fmt_test.A=<nil>) %!s(<nil>) {} %!s(<nil>)" : stdgo.GoString)), stdgo.Go.toInterface(_got));
        };
    }
function testFormatterFlags(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__3 => _tt in _formatterFlagTests) {
            var _s:stdgo.GoString = sprintf(_tt._in?.__copy__(), _tt._val)?.__copy__();
            if (_s != (_tt._out)) {
                _t.errorf(("Sprintf(%q, %T) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), _tt._val, stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
function testParsenum(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testCases = (new stdgo.Slice<T__struct_10>(6, 6, ...[({ _s : ("a123" : stdgo.GoString), _start : (0 : stdgo.GoInt), _end : (4 : stdgo.GoInt), _num : (0 : stdgo.GoInt), _isnum : false, _newi : (0 : stdgo.GoInt) } : T__struct_10), ({ _s : ("1234" : stdgo.GoString), _start : (1 : stdgo.GoInt), _end : (1 : stdgo.GoInt), _num : (0 : stdgo.GoInt), _isnum : false, _newi : (1 : stdgo.GoInt) } : T__struct_10), ({ _s : ("123a" : stdgo.GoString), _start : (0 : stdgo.GoInt), _end : (4 : stdgo.GoInt), _num : (123 : stdgo.GoInt), _isnum : true, _newi : (3 : stdgo.GoInt) } : T__struct_10), ({ _s : ("12a3" : stdgo.GoString), _start : (0 : stdgo.GoInt), _end : (4 : stdgo.GoInt), _num : (12 : stdgo.GoInt), _isnum : true, _newi : (2 : stdgo.GoInt) } : T__struct_10), ({ _s : ("1234" : stdgo.GoString), _start : (0 : stdgo.GoInt), _end : (4 : stdgo.GoInt), _num : (1234 : stdgo.GoInt), _isnum : true, _newi : (4 : stdgo.GoInt) } : T__struct_10), ({ _s : ("1a234" : stdgo.GoString), _start : (1 : stdgo.GoInt), _end : (3 : stdgo.GoInt), _num : (0 : stdgo.GoInt), _isnum : false, _newi : (1 : stdgo.GoInt) } : T__struct_10)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _start : (0 : stdgo.GoInt), _end : (0 : stdgo.GoInt), _num : (0 : stdgo.GoInt), _isnum : false, _newi : (0 : stdgo.GoInt) } : T__struct_10)])) : stdgo.Slice<T__struct_10>);
        for (__3 => _tt in _testCases) {
            var __tmp__ = parsenum(_tt._s?.__copy__(), _tt._start, _tt._end), _num:stdgo.GoInt = __tmp__._0, _isnum:Bool = __tmp__._1, _newi:stdgo.GoInt = __tmp__._2;
            if (((_num != (_tt._num) || _isnum != (_tt._isnum) : Bool) || (_newi != _tt._newi) : Bool)) {
                _t.errorf(("parsenum(%q, %d, %d) = %d, %v, %d, want %d, %v, %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._start), stdgo.Go.toInterface(_tt._end), stdgo.Go.toInterface(_num), stdgo.Go.toInterface(_isnum), stdgo.Go.toInterface(_newi), stdgo.Go.toInterface(_tt._num), stdgo.Go.toInterface(_tt._isnum), stdgo.Go.toInterface(_tt._newi));
            };
        };
    }
function testAppendf(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__slice__(0, stdgo.Go.copySlice(_b, ("hello " : stdgo.GoString))) : stdgo.Slice<stdgo.GoUInt8>);
        var _got = appendf(_b, ("world, %d" : stdgo.GoString), stdgo.Go.toInterface((23 : stdgo.GoInt)));
        if ((_got : stdgo.GoString) != (("hello world, 23" : stdgo.GoString))) {
            _t.fatalf(("Appendf returns %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("hello world, 23" : stdgo.GoString)));
        };
        if (stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]) != (stdgo.Go.pointer(_got[(0 : stdgo.GoInt)]))) {
            _t.fatalf(("Appendf allocated a new slice" : stdgo.GoString));
        };
    }
function testAppend(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__slice__(0, stdgo.Go.copySlice(_b, ("hello " : stdgo.GoString))) : stdgo.Slice<stdgo.GoUInt8>);
        var _got = append(_b, stdgo.Go.toInterface(("world" : stdgo.GoString)), stdgo.Go.toInterface((", " : stdgo.GoString)), stdgo.Go.toInterface((23 : stdgo.GoInt)));
        if ((_got : stdgo.GoString) != (("hello world, 23" : stdgo.GoString))) {
            _t.fatalf(("Append returns %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("hello world, 23" : stdgo.GoString)));
        };
        if (stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]) != (stdgo.Go.pointer(_got[(0 : stdgo.GoInt)]))) {
            _t.fatalf(("Append allocated a new slice" : stdgo.GoString));
        };
    }
function testAppendln(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__slice__(0, stdgo.Go.copySlice(_b, ("hello " : stdgo.GoString))) : stdgo.Slice<stdgo.GoUInt8>);
        var _got = appendln(_b, stdgo.Go.toInterface(("world," : stdgo.GoString)), stdgo.Go.toInterface((23 : stdgo.GoInt)));
        if ((_got : stdgo.GoString) != (("hello world, 23\n" : stdgo.GoString))) {
            _t.fatalf(("Appendln returns %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("hello world, 23\n" : stdgo.GoString)));
        };
        if (stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]) != (stdgo.Go.pointer(_got[(0 : stdgo.GoInt)]))) {
            _t.fatalf(("Appendln allocated a new slice" : stdgo.GoString));
        };
    }
function exampleGoStringer():Void {
        var _p1:stdgo._internal.fmt_test.Fmt_test.Person = ({ name : ("Warren" : stdgo.GoString), age : (31u32 : stdgo.GoUInt), addr : (stdgo.Go.setRef(({ city : ("Denver" : stdgo.GoString), state : ("CO" : stdgo.GoString), country : ("U.S.A." : stdgo.GoString) } : stdgo._internal.fmt_test.Fmt_test.Address)) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.Address>) } : stdgo._internal.fmt_test.Fmt_test.Person);
        stdgo._internal.fmt.Fmt.printf(("%#v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p1)));
        var _p2:stdgo._internal.fmt_test.Fmt_test.Person = ({ name : ("Theia" : stdgo.GoString), age : (4u32 : stdgo.GoUInt) } : stdgo._internal.fmt_test.Fmt_test.Person);
        stdgo._internal.fmt.Fmt.printf(("%#v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p2)));
    }
function _testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _f:stdgo.GoString -> stdgo._internal.io.Io.Reader, _scan:(_r:stdgo._internal.io.Io.Reader, _a:haxe.Rest<stdgo.AnyInterface>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; }):Void {
        for (__3 => _test in _scanTests) {
            var _r:stdgo._internal.io.Io.Reader = _f(_test._text?.__copy__());
            var __tmp__ = _scan(_r, _test._in), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                var _m:stdgo.GoString = stdgo.Go.str()?.__copy__();
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    _m = sprintf((" (%d fields ok)" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__();
                };
                _t.errorf(("got error scanning %q: %s%s" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_m));
                continue;
            };
            if (_n != ((1 : stdgo.GoInt))) {
                _t.errorf(("count error on entry %q: got %d" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_n));
                continue;
            };
            var _v:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.valueOf(_test._in)?.__copy__();
            {
                var _p:stdgo._internal.reflect.Reflect.Value = _v?.__copy__();
                if (_p.kind() == ((22u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v = _p.elem()?.__copy__();
                };
            };
            var _val:stdgo.AnyInterface = _v.interface_();
            if (!stdgo._internal.reflect.Reflect.deepEqual(_val, _test._out)) {
                _t.errorf(("scanning %q: expected %#v got %#v, type %T" : stdgo.GoString), stdgo.Go.toInterface(_test._text), _test._out, _val, _val);
            };
        };
    }
function testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__3 => _r in _readers) {
            _t.run(_r._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                _testScan(_t, _r._f, fscan);
            });
        };
    }
function testScanln(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__3 => _r in _readers) {
            _t.run(_r._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                _testScan(_t, _r._f, fscanln);
            });
        };
    }
function testScanf(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__3 => _test in _scanfTests) {
            var __tmp__ = sscanf(_test._text?.__copy__(), _test._format?.__copy__(), _test._in), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (_test._out != null) {
                    _t.errorf(("Sscanf(%q, %q): unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_err));
                };
                continue;
            };
            if (_test._out == null) {
                _t.errorf(("Sscanf(%q, %q): unexpected success" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_test._format));
                continue;
            };
            if (_n != ((1 : stdgo.GoInt))) {
                _t.errorf(("Sscanf(%q, %q): parsed %d field, want 1" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_n));
                continue;
            };
            var _v:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.valueOf(_test._in)?.__copy__();
            {
                var _p:stdgo._internal.reflect.Reflect.Value = _v?.__copy__();
                if (_p.kind() == ((22u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v = _p.elem()?.__copy__();
                };
            };
            var _val:stdgo.AnyInterface = _v.interface_();
            if (!stdgo._internal.reflect.Reflect.deepEqual(_val, _test._out)) {
                _t.errorf(("Sscanf(%q, %q): parsed value %T(%#v), want %T(%#v)" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_test._format), _val, _val, _test._out, _test._out);
            };
        };
    }
function testScanOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("overflow|too large|out of range|not representable" : stdgo.GoString));
        for (__3 => _test in _overflowTests) {
            var __tmp__ = sscan(_test._text?.__copy__(), _test._in), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(("expected overflow scanning %q" : stdgo.GoString), stdgo.Go.toInterface(_test._text));
                continue;
            };
            if (!_re.matchString(_err.error()?.__copy__())) {
                _t.errorf(("expected overflow error scanning %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_err));
            };
        };
    }
function _verifyNaN(_str:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _f:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _f32:stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
        var _f64:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _text:stdgo.GoString = ((((_str + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _str?.__copy__() : stdgo.GoString) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _str?.__copy__() : stdgo.GoString)?.__copy__();
        var __tmp__ = fscan(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_text?.__copy__())), stdgo.Go.toInterface(stdgo.Go.pointer(_f)), stdgo.Go.toInterface(stdgo.Go.pointer(_f32)), stdgo.Go.toInterface(stdgo.Go.pointer(_f64))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("got error scanning %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_err));
        };
        if (_n != ((3 : stdgo.GoInt))) {
            _t.errorf(("count error scanning %q: got %d" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_n));
        };
        if (((!stdgo._internal.math.Math.isNaN((_f : stdgo.GoFloat64)) || !stdgo._internal.math.Math.isNaN((_f32 : stdgo.GoFloat64)) : Bool) || !stdgo._internal.math.Math.isNaN(_f64) : Bool)) {
            _t.errorf(("didn\'t get NaNs scanning %q: got %g %g %g" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f32), stdgo.Go.toInterface(_f64));
        };
    }
function testNaN(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__3 => _s in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("nan" : stdgo.GoString), ("NAN" : stdgo.GoString), ("NaN" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            _verifyNaN(_s?.__copy__(), _t);
        };
    }
function _verifyInf(_str:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _f:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _f32:stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
        var _f64:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _text:stdgo.GoString = ((((_str + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _str?.__copy__() : stdgo.GoString) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _str?.__copy__() : stdgo.GoString)?.__copy__();
        var __tmp__ = fscan(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_text?.__copy__())), stdgo.Go.toInterface(stdgo.Go.pointer(_f)), stdgo.Go.toInterface(stdgo.Go.pointer(_f32)), stdgo.Go.toInterface(stdgo.Go.pointer(_f64))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("got error scanning %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_err));
        };
        if (_n != ((3 : stdgo.GoInt))) {
            _t.errorf(("count error scanning %q: got %d" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_n));
        };
        var _sign:stdgo.GoInt = (1 : stdgo.GoInt);
        if (_str[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _sign = (-1 : stdgo.GoInt);
        };
        if (((!stdgo._internal.math.Math.isInf((_f : stdgo.GoFloat64), _sign) || !stdgo._internal.math.Math.isInf((_f32 : stdgo.GoFloat64), _sign) : Bool) || !stdgo._internal.math.Math.isInf(_f64, _sign) : Bool)) {
            _t.errorf(("didn\'t get right Infs scanning %q: got %g %g %g" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f32), stdgo.Go.toInterface(_f64));
        };
    }
function testInf(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__3 => _s in (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("inf" : stdgo.GoString), ("+inf" : stdgo.GoString), ("-inf" : stdgo.GoString), ("INF" : stdgo.GoString), ("-INF" : stdgo.GoString), ("+INF" : stdgo.GoString), ("Inf" : stdgo.GoString), ("-Inf" : stdgo.GoString), ("+Inf" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            _verifyInf(_s?.__copy__(), _t);
        };
    }
function _testScanfMulti(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _f:stdgo.GoString -> stdgo._internal.io.Io.Reader):Void {
        var _sliceType:stdgo._internal.reflect.Reflect.Type_ = stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>)));
        for (__3 => _test in _multiTests) {
            var _r:stdgo._internal.io.Io.Reader = _f(_test._text?.__copy__());
            var __tmp__ = fscanf(_r, _test._format?.__copy__(), ...(_test._in : Array<stdgo.AnyInterface>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (_test._err == (stdgo.Go.str())) {
                    _t.errorf(("got error scanning (%q, %q): %q" : stdgo.GoString), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_err));
                } else if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), _test._err?.__copy__())) {
                    _t.errorf(("got wrong error scanning (%q, %q): %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._err));
                };
                continue;
            };
            if (_test._err != (stdgo.Go.str())) {
                _t.errorf(("expected error %q error scanning (%q, %q)" : stdgo.GoString), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._text));
            };
            if (_n != ((_test._out.length))) {
                _t.errorf(("count error on entry (%q, %q): expected %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface((_test._out.length)), stdgo.Go.toInterface(_n));
                continue;
            };
            var _resultVal:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.makeSlice(_sliceType, _n, _n)?.__copy__();
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    var _v:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.valueOf(_test._in[(_i : stdgo.GoInt)]).elem()?.__copy__();
                    _resultVal.index(_i).set(_v?.__copy__());
                });
            };
            var _result:stdgo.AnyInterface = _resultVal.interface_();
            if (!stdgo._internal.reflect.Reflect.deepEqual(_result, stdgo.Go.toInterface(_test._out))) {
                _t.errorf(("scanning (%q, %q): expected %#v got %#v" : stdgo.GoString), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._text), stdgo.Go.toInterface(_test._out), _result);
            };
        };
    }
function testScanfMulti(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__3 => _r in _readers) {
            _t.run(_r._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                _testScanfMulti(_t, _r._f);
            });
        };
    }
function testScanMultiple(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _a:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        var __tmp__ = sscan(("123abc" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_s))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n != ((2 : stdgo.GoInt))) {
            _t.errorf(("Sscan count error: expected 2: got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err != null) {
            _t.errorf(("Sscan expected no error; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (((_a != (123 : stdgo.GoInt)) || (_s != ("abc" : stdgo.GoString)) : Bool)) {
            _t.errorf(("Sscan wrong values: got (%d %q) expected (123 \"abc\")" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_s));
        };
        {
            var __tmp__ = sscan(("asdf" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_s)), stdgo.Go.toInterface(stdgo.Go.pointer(_a)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((1 : stdgo.GoInt))) {
            _t.errorf(("Sscan count error: expected 1: got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err == null) {
            _t.errorf(("Sscan expected error; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_s != (("asdf" : stdgo.GoString))) {
            _t.errorf(("Sscan wrong values: got %q expected \"asdf\"" : stdgo.GoString), stdgo.Go.toInterface(_s));
        };
    }
function testScanEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString), _s2:stdgo.GoString = __1, _s1:stdgo.GoString = __0;
        var __tmp__ = sscan(("abc" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_s1)), stdgo.Go.toInterface(stdgo.Go.pointer(_s2))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n != ((1 : stdgo.GoInt))) {
            _t.errorf(("Sscan count error: expected 1: got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("Sscan <one item> expected error; got none" : stdgo.GoString)));
        };
        if (_s1 != (("abc" : stdgo.GoString))) {
            _t.errorf(("Sscan wrong values: got %q expected \"abc\"" : stdgo.GoString), stdgo.Go.toInterface(_s1));
        };
        {
            var __tmp__ = sscan(stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer(_s1)), stdgo.Go.toInterface(stdgo.Go.pointer(_s2)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _t.errorf(("Sscan count error: expected 0: got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("Sscan <empty> expected error; got none" : stdgo.GoString)));
        };
        {
            var __tmp__ = sscanf(("\"\"" : stdgo.GoString), ("%q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_s1)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((1 : stdgo.GoInt))) {
            _t.errorf(("Sscanf count error: expected 1: got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err != null) {
            _t.errorf(("Sscanf <empty> expected no error with quoted string; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testScanNotPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = stdgo._internal.strings.Strings.newReader(("1" : stdgo.GoString));
        var _a:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = fscan(stdgo.Go.asInterface(_r), stdgo.Go.toInterface(_a)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error scanning non-pointer" : stdgo.GoString)));
        } else if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("pointer" : stdgo.GoString))) {
            _t.errorf(("expected pointer error scanning non-pointer, got: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testScanlnNoNewline(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _a:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = sscanln(("1 x\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_a))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error scanning string missing newline" : stdgo.GoString)));
        } else if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("newline" : stdgo.GoString))) {
            _t.errorf(("expected newline error scanning string missing newline, got: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testScanlnWithMiddleNewline(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = stdgo._internal.strings.Strings.newReader(("123\n456\n" : stdgo.GoString));
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _b:stdgo.GoInt = __1, _a:stdgo.GoInt = __0;
        var __tmp__ = fscanln(stdgo.Go.asInterface(_r), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_b))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error scanning string with extra newline" : stdgo.GoString)));
        } else if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("newline" : stdgo.GoString))) {
            _t.errorf(("expected newline error scanning string with extra newline, got: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _ec = (stdgo.Go.setRef((new stdgo._internal.fmt_test.Fmt_test.T_eofCounter(stdgo._internal.strings.Strings.newReader(("123\n" : stdgo.GoString)), (0 : stdgo.GoInt)) : stdgo._internal.fmt_test.Fmt_test.T_eofCounter)) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.T_eofCounter>);
        var _a:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = fscanln(stdgo.Go.asInterface(_ec), stdgo.Go.toInterface(stdgo.Go.pointer(_a))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_n != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("expected to scan one item, got" : stdgo.GoString)), stdgo.Go.toInterface(_n));
        };
        if (_ec._eofCount != ((0 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("expected zero EOFs" : stdgo.GoString)), stdgo.Go.toInterface(_ec._eofCount));
            _ec._eofCount = (0 : stdgo.GoInt);
        };
        {
            var __tmp__ = fscanln(stdgo.Go.asInterface(_ec), stdgo.Go.toInterface(stdgo.Go.pointer(_a)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error scanning empty string" : stdgo.GoString)));
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("expected to scan zero items, got" : stdgo.GoString)), stdgo.Go.toInterface(_n));
        };
        if (_ec._eofCount != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("expected one EOF, got" : stdgo.GoString)), stdgo.Go.toInterface(_ec._eofCount));
        };
    }
function testEOFAtEndOfInput(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
        var __tmp__ = sscanf(("23" : stdgo.GoString), ("%d %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_j))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (1 : stdgo.GoInt)) || (_i != (23 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Sscanf expected one value of 23; got %d %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i));
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            _t.errorf(("Sscanf expected EOF; got %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = sscan(("234" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_j)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (1 : stdgo.GoInt)) || (_i != (234 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Sscan expected one value of 234; got %d %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i));
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            _t.errorf(("Sscan expected EOF; got %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = sscan(("234 " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_j)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (1 : stdgo.GoInt)) || (_i != (234 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Sscan expected one value of 234; got %d %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i));
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            _t.errorf(("Sscan expected EOF; got %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testEOFAllTypes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _test in _eofTests) {
            {
                var __tmp__ = sscanf(stdgo.Go.str()?.__copy__(), _test._format?.__copy__(), _test._v), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                    _t.errorf(("#%d: %s %T not eof on empty string: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._format), _test._v, stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = sscanf(("   " : stdgo.GoString), _test._format?.__copy__(), _test._v), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                    _t.errorf(("#%d: %s %T not eof on trailing blanks: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._format), _test._v, stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function testUnreadRuneWithBufio(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = stdgo._internal.bufio.Bufio.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("123αb" : stdgo.GoString))));
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _a:stdgo.GoString = ("" : stdgo.GoString);
        var __tmp__ = fscanf(stdgo.Go.asInterface(_r), ("%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("reading int expected one item, no errors; got %d %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        if (_i != ((123 : stdgo.GoInt))) {
            _t.errorf(("expected 123; got %d" : stdgo.GoString), stdgo.Go.toInterface(_i));
        };
        {
            var __tmp__ = fscanf(stdgo.Go.asInterface(_r), ("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_a)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("reading string expected one item, no errors; got %d %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        if (_a != (("αb" : stdgo.GoString))) {
            _t.errorf(("expected αb; got %q" : stdgo.GoString), stdgo.Go.toInterface(_a));
        };
    }
function testMultiLine(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _input:stdgo.GoString = ("abc\ndef\n" : stdgo.GoString);
        var _tscan:TwoLines = (("" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.TwoLines);
        var __tmp__ = sscan(_input?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer(_tscan))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n != ((1 : stdgo.GoInt))) {
            _t.errorf(("Sscan: expected 1 item; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err != null) {
            _t.errorf(("Sscan: expected no error; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_tscan : stdgo.GoString) != (_input)) {
            _t.errorf(("Sscan: expected %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(stdgo.Go.asInterface(_tscan)));
        };
        var _tscanf:TwoLines = (("" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.TwoLines);
        {
            var __tmp__ = sscanf(_input?.__copy__(), ("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_tscanf)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((1 : stdgo.GoInt))) {
            _t.errorf(("Sscanf: expected 1 item; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err != null) {
            _t.errorf(("Sscanf: expected no error; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_tscanf : stdgo.GoString) != (_input)) {
            _t.errorf(("Sscanf: expected %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(stdgo.Go.asInterface(_tscanf)));
        };
        var _tscanln:TwoLines = (("" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.TwoLines);
        {
            var __tmp__ = sscanln(_input?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer(_tscanln)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _t.errorf(("Sscanln: expected 0 items; got %d: %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(stdgo.Go.asInterface(_tscanln)));
        };
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("Sscanln: expected error; got none" : stdgo.GoString)));
        } else if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.errUnexpectedEOF))) {
            _t.errorf(("Sscanln: expected io.ErrUnexpectedEOF (ha!); got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
function testLineByLineFscanf(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r:T__struct_12 = ({ reader : stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("1\n2\n" : stdgo.GoString))) } : T__struct_12);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
        var __tmp__ = fscanf(stdgo.Go.asInterface(_r), ("%v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.fatalf(("first read: %d %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = fscanf(stdgo.Go.asInterface(_r), ("%v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_j)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.fatalf(("second read: %d %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        if (((_i != (1 : stdgo.GoInt)) || (_j != (2 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("wrong values; wanted 1 2 got %d %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
        };
    }
function testScanStateCount(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0:T_runeScanner = ({} : stdgo._internal.fmt_test.Fmt_test.T_runeScanner), __1:T_runeScanner = ({} : stdgo._internal.fmt_test.Fmt_test.T_runeScanner), __2:T_runeScanner = ({} : stdgo._internal.fmt_test.Fmt_test.T_runeScanner), _c:T_runeScanner = __2, _b:T_runeScanner = __1, _a:T_runeScanner = __0;
        var __tmp__ = sscanf(("12➂" : stdgo.GoString), ("%c%c%c" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.T_runeScanner>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.T_runeScanner>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.T_runeScanner>)))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (_n != ((3 : stdgo.GoInt))) {
            _t.fatalf(("expected 3 items consumed, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (((_a._rune != ((49 : stdgo.GoInt32)) || _b._rune != ((50 : stdgo.GoInt32)) : Bool) || (_c._rune != (10114 : stdgo.GoInt32)) : Bool)) {
            _t.errorf(("bad scan rune: %q %q %q should be \'1\' \'2\' \'➂\'" : stdgo.GoString), stdgo.Go.toInterface(_a._rune), stdgo.Go.toInterface(_b._rune), stdgo.Go.toInterface(_c._rune));
        };
        if (((_a._size != ((1 : stdgo.GoInt)) || _b._size != ((1 : stdgo.GoInt)) : Bool) || (_c._size != (3 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("bad scan size: %q %q %q should be 1 1 3" : stdgo.GoString), stdgo.Go.toInterface(_a._size), stdgo.Go.toInterface(_b._size), stdgo.Go.toInterface(_c._size));
        };
    }
function _scanInts(_r:stdgo.Ref<RecursiveInt>, _b:stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>):stdgo.Error {
        var _err:stdgo.Error = (null : stdgo.Error);
        _r._next = null;
        {
            var __tmp__ = fscan(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.pointer(_r._i)));
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _b.readRune(), _c:stdgo.GoInt32 = __tmp__._0, __3:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                _err = (null : stdgo.Error);
            };
            return _err;
        };
        if (_c != ((46 : stdgo.GoInt32))) {
            return _err;
        };
        var _next = (stdgo.Go.setRef(({} : stdgo._internal.fmt_test.Fmt_test.RecursiveInt)) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.RecursiveInt>);
        _err = _scanInts(_next, _b);
        if (_err == null) {
            _r._next = _next;
        };
        return _err;
    }
function _makeInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("1" : stdgo.GoString));
        {
            var _i:stdgo.GoInt = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (".%d" : stdgo.GoString), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)));
            });
        };
        return _buf.bytes();
    }
function testScanInts(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testScanInts(_t, _scanInts);
        _testScanInts(_t, function(_r:stdgo.Ref<RecursiveInt>, _b:stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>):stdgo.Error {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = fscan(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
                _err = __tmp__._1;
            };
            return _err;
        });
    }
function _testScanInts(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _scan:(stdgo.Ref<RecursiveInt>, stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>) -> stdgo.Error):Void {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.fmt_test.Fmt_test.RecursiveInt)) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.RecursiveInt>);
        var _ints = _makeInts((800 : stdgo.GoInt));
        var _buf = stdgo._internal.bytes.Bytes.newBuffer(_ints);
        var _err:stdgo.Error = _scan(_r, _buf);
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _i:stdgo.GoInt = (1 : stdgo.GoInt);
        stdgo.Go.cfor(_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__), _r = _r._next, {
            if (_r._i != (_i)) {
                _t.fatalf(("bad scan: expected %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_r._i));
            };
            _i++;
        });
        if ((_i - (1 : stdgo.GoInt) : stdgo.GoInt) != ((800 : stdgo.GoInt))) {
            _t.fatalf(("bad scan count: expected %d got %d" : stdgo.GoString), stdgo.Go.toInterface((800 : stdgo.GoInt)), stdgo.Go.toInterface((_i - (1 : stdgo.GoInt) : stdgo.GoInt)));
        };
    }
function benchmarkScanInts(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _ints = _makeInts((800 : stdgo.GoInt));
        var _r:RecursiveInt = ({} : stdgo._internal.fmt_test.Fmt_test.RecursiveInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _buf = stdgo._internal.bytes.Bytes.newBuffer(_ints);
                _b.startTimer();
                _scanInts((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.RecursiveInt>), _buf);
                _b.stopTimer();
            });
        };
    }
function benchmarkScanRecursiveInt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _ints = _makeInts((800 : stdgo.GoInt));
        var _r:RecursiveInt = ({} : stdgo._internal.fmt_test.Fmt_test.RecursiveInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _buf = stdgo._internal.bytes.Bytes.newBuffer(_ints);
                _b.startTimer();
                fscan(stdgo.Go.asInterface(_buf), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.RecursiveInt>))));
                _b.stopTimer();
            });
        };
    }
function benchmarkScanRecursiveIntReaderWrapper(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.stopTimer();
        var _ints = _makeInts((800 : stdgo.GoInt));
        var _r:RecursiveInt = ({} : stdgo._internal.fmt_test.Fmt_test.RecursiveInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _buf:T__struct_12 = ({ reader : stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader((_ints : stdgo.GoString)?.__copy__())) } : T__struct_12);
                _b.startTimer();
                fscan(stdgo.Go.asInterface(_buf), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.RecursiveInt>))));
                _b.stopTimer();
            });
        };
    }
function testHexBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), __1:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _b:stdgo.Slice<stdgo.GoByte> = __1, _a:stdgo.Slice<stdgo.GoByte> = __0;
        var __tmp__ = sscanf(("00010203" : stdgo.GoString), ("%x" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("simple: got count, err = %d, %v; expected 1, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        var _check = function(_msg:stdgo.GoString, _x:stdgo.Slice<stdgo.GoByte>):Void {
            if ((_x.length) != ((4 : stdgo.GoInt))) {
                _t.errorf(("%s: bad length %d" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface((_x.length)));
            };
            for (_i => _b in _x) {
                if ((_b : stdgo.GoInt) != (_i)) {
                    _t.errorf(("%s: bad x[%d] = %x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x[(_i : stdgo.GoInt)]));
                };
            };
        };
        _check(("simple" : stdgo.GoString), _a);
        _a = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = sscanf(("00010203 00010203" : stdgo.GoString), ("%x %x" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (2 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("simple pair: got count, err = %d, %v; expected 2, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _check(("simple pair a" : stdgo.GoString), _a);
        _check(("simple pair b" : stdgo.GoString), _b);
        _a = (null : stdgo.Slice<stdgo.GoUInt8>);
        _b = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = sscanf(("00010203:" : stdgo.GoString), ("%x" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("colon: got count, err = %d, %v; expected 1, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _check(("colon" : stdgo.GoString), _a);
        _a = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = sscanf(("00010203:00010203" : stdgo.GoString), ("%x:%x" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (2 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("colon pair: got count, err = %d, %v; expected 2, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _check(("colon pair a" : stdgo.GoString), _a);
        _check(("colon pair b" : stdgo.GoString), _b);
        _a = (null : stdgo.Slice<stdgo.GoUInt8>);
        _b = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = sscanf(("000102034:" : stdgo.GoString), ("%x" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (0 : stdgo.GoInt)) || (_err == null) : Bool)) {
            _t.errorf(("odd count: got count, err = %d, %v; expected 0, error" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
function testScanNewlinesAreSpaces(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _b:stdgo.GoInt = __1, _a:stdgo.GoInt = __0;
        var _tests:stdgo.Slice<T__struct_14> = (new stdgo.Slice<T__struct_14>(4, 4, ...[({ _name : ("newlines" : stdgo.GoString), _text : ("1\n2\n" : stdgo.GoString), _count : (2 : stdgo.GoInt) } : T__struct_14), ({ _name : ("no final newline" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _count : (2 : stdgo.GoInt) } : T__struct_14), ({ _name : ("newlines with spaces " : stdgo.GoString), _text : ("1  \n  2  \n" : stdgo.GoString), _count : (2 : stdgo.GoInt) } : T__struct_14), ({ _name : ("no final newline with spaces" : stdgo.GoString), _text : ("1  \n  2" : stdgo.GoString), _count : (2 : stdgo.GoInt) } : T__struct_14)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _text : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt) } : T__struct_14)])) : stdgo.Slice<T__struct_14>);
        for (__3 => _test in _tests) {
            var __tmp__ = sscan(_test._text?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_b))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_n != (_test._count)) {
                _t.errorf(("%s: expected to scan %d item(s), scanned %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._count), stdgo.Go.toInterface(_n));
            };
            if (_err != null) {
                _t.errorf(("%s: unexpected error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
            };
        };
    }
function testScanlnNewlinesTerminate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _b:stdgo.GoInt = __1, _a:stdgo.GoInt = __0;
        var _tests:stdgo.Slice<T__struct_15> = (new stdgo.Slice<T__struct_15>(4, 4, ...[({ _name : ("one line one item" : stdgo.GoString), _text : ("1\n" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : T__struct_15), ({ _name : ("one line two items with spaces " : stdgo.GoString), _text : ("   1 2    \n" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_15), ({ _name : ("one line two items no newline" : stdgo.GoString), _text : ("   1 2" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_15), ({ _name : ("two lines two items" : stdgo.GoString), _text : ("1\n2\n" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : T__struct_15)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _text : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : T__struct_15)])) : stdgo.Slice<T__struct_15>);
        for (__3 => _test in _tests) {
            var __tmp__ = sscanln(_test._text?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_b))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_n != (_test._count)) {
                _t.errorf(("%s: expected to scan %d item(s), scanned %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._count), stdgo.Go.toInterface(_n));
            };
            if ((_test._ok && (_err != null) : Bool)) {
                _t.errorf(("%s: unexpected error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
            };
            if ((!_test._ok && (_err == null) : Bool)) {
                _t.errorf(("%s: expected error; got none" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
            };
        };
    }
function testScanfNewlineMatchFormat(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _b:stdgo.GoInt = __1, _a:stdgo.GoInt = __0;
        var _tests:stdgo.Slice<T__struct_16> = (new stdgo.Slice<T__struct_16>(40, 40, ...[
({ _name : ("newline in both" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d\n%d\n" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("newline in input" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d %d" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : T__struct_16),
({ _name : ("space-newline in input" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d %d" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : T__struct_16),
({ _name : ("newline in format" : stdgo.GoString), _text : ("1 2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : T__struct_16),
({ _name : ("space-newline in format" : stdgo.GoString), _text : ("1 2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (1 : stdgo.GoInt), _ok : false } : T__struct_16),
({ _name : ("space-newline in both" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("extra space in format" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d\n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("two extra spaces in format" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0000" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0001" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d\n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0010" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0011" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0100" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0101" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("%d\n%d " : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0110" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 0111" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1000" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1001" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d\n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1010" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1011" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1100" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("%d\n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1101" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("%d\n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1110" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("%d \n%d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline 1111" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("%d \n %d" : stdgo.GoString), _count : (2 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 0000" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("1\n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 0001" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("1\n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 0010" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("1 \n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 0011" : stdgo.GoString), _text : ("1\n2" : stdgo.GoString), _format : ("1 \n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 0100" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("1\n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : T__struct_16),
({ _name : ("space vs newline no-percent 0101" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("1\n2 " : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : T__struct_16),
({ _name : ("space vs newline no-percent 0110" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("1 \n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : T__struct_16),
({ _name : ("space vs newline no-percent 0111" : stdgo.GoString), _text : ("1\n 2" : stdgo.GoString), _format : ("1 \n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 1000" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("1\n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 1001" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("1\n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 1010" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("1 \n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 1011" : stdgo.GoString), _text : ("1 \n2" : stdgo.GoString), _format : ("1 \n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 1100" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("1\n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : T__struct_16),
({ _name : ("space vs newline no-percent 1101" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("1\n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : T__struct_16),
({ _name : ("space vs newline no-percent 1110" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("1 \n2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : T__struct_16),
({ _name : ("space vs newline no-percent 1111" : stdgo.GoString), _text : ("1 \n 2" : stdgo.GoString), _format : ("1 \n 2" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : true } : T__struct_16)].concat([for (i in 40 ... (40 > 40 ? 40 : 40 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _text : ("" : stdgo.GoString), _format : ("" : stdgo.GoString), _count : (0 : stdgo.GoInt), _ok : false } : T__struct_16)])) : stdgo.Slice<T__struct_16>);
        for (__3 => _test in _tests) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            var _err:stdgo.Error = (null : stdgo.Error);
            if (stdgo._internal.strings.Strings.contains(_test._format?.__copy__(), ("%" : stdgo.GoString))) {
                {
                    var __tmp__ = sscanf(_test._text?.__copy__(), _test._format?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_b)));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = sscanf(_test._text?.__copy__(), _test._format?.__copy__());
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            if (_n != (_test._count)) {
                _t.errorf(("%s: expected to scan %d item(s), scanned %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._count), stdgo.Go.toInterface(_n));
            };
            if ((_test._ok && (_err != null) : Bool)) {
                _t.errorf(("%s: unexpected error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
            };
            if ((!_test._ok && (_err == null) : Bool)) {
                _t.errorf(("%s: expected error; got none" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
            };
        };
    }
function testHexByte(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _h:T_hexBytes = new stdgo._internal.fmt_test.Fmt_test.T_hexBytes(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt8)]);
        var __tmp__ = sscanln(("0123\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_h) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.T_hexBytes>)))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (_n != ((1 : stdgo.GoInt))) {
            _t.fatalf(("expected 1 item; scanned %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (((_h[(0 : stdgo.GoInt)] != (1 : stdgo.GoUInt8)) || (_h[(1 : stdgo.GoInt)] != (35 : stdgo.GoUInt8)) : Bool)) {
            _t.fatalf(("expected 0123 got %x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_h)));
        };
    }
function _mkState(_w:stdgo.GoInt, _p:stdgo.GoInt, _flags:stdgo.GoString):T_testState {
        var _s:stdgo._internal.fmt_test.Fmt_test.T_testState = (new stdgo._internal.fmt_test.Fmt_test.T_testState() : stdgo._internal.fmt_test.Fmt_test.T_testState);
        if (_w != ((-1000 : stdgo.GoInt))) {
            _s._width = _w;
            _s._widthOK = true;
        };
        if (_p != ((-1000 : stdgo.GoInt))) {
            _s._prec = _p;
            _s._precOK = true;
        };
        _s._flag = ({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, Bool>);
        for (__3 => _c in _flags) {
            _s._flag[(_c : stdgo.GoInt)] = true;
        };
        return _s?.__copy__();
    }
function testFormatString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests:stdgo.Slice<T__struct_17> = (new stdgo.Slice<T__struct_17>(10, 10, ...[({ _width : (-1000 : stdgo.GoInt), _prec : (-1000 : stdgo.GoInt), _flags : stdgo.Go.str()?.__copy__(), _result : ("%x" : stdgo.GoString) } : T__struct_17), ({ _width : (-1000 : stdgo.GoInt), _prec : (3 : stdgo.GoInt), _flags : stdgo.Go.str()?.__copy__(), _result : ("%.3x" : stdgo.GoString) } : T__struct_17), ({ _width : (3 : stdgo.GoInt), _prec : (-1000 : stdgo.GoInt), _flags : stdgo.Go.str()?.__copy__(), _result : ("%3x" : stdgo.GoString) } : T__struct_17), ({ _width : (7 : stdgo.GoInt), _prec : (3 : stdgo.GoInt), _flags : stdgo.Go.str()?.__copy__(), _result : ("%7.3x" : stdgo.GoString) } : T__struct_17), ({ _width : (-1000 : stdgo.GoInt), _prec : (-1000 : stdgo.GoInt), _flags : (" +-#0" : stdgo.GoString), _result : ("% +-#0x" : stdgo.GoString) } : T__struct_17), ({ _width : (7 : stdgo.GoInt), _prec : (3 : stdgo.GoInt), _flags : ("+" : stdgo.GoString), _result : ("%+7.3x" : stdgo.GoString) } : T__struct_17), ({ _width : (7 : stdgo.GoInt), _prec : (-3 : stdgo.GoInt), _flags : ("-" : stdgo.GoString), _result : ("%-7.-3x" : stdgo.GoString) } : T__struct_17), ({ _width : (7 : stdgo.GoInt), _prec : (3 : stdgo.GoInt), _flags : (" " : stdgo.GoString), _result : ("% 7.3x" : stdgo.GoString) } : T__struct_17), ({ _width : (7 : stdgo.GoInt), _prec : (3 : stdgo.GoInt), _flags : ("#" : stdgo.GoString), _result : ("%#7.3x" : stdgo.GoString) } : T__struct_17), ({ _width : (7 : stdgo.GoInt), _prec : (3 : stdgo.GoInt), _flags : ("0" : stdgo.GoString), _result : ("%07.3x" : stdgo.GoString) } : T__struct_17)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({ _width : (0 : stdgo.GoInt), _prec : (0 : stdgo.GoInt), _flags : ("" : stdgo.GoString), _result : ("" : stdgo.GoString) } : T__struct_17)])) : stdgo.Slice<T__struct_17>);
        for (__3 => _test in _tests) {
            var _got:stdgo.GoString = stdgo._internal.fmt.Fmt.formatString(stdgo.Go.asInterface(_mkState(_test._width, _test._prec, _test._flags?.__copy__())), (120 : stdgo.GoInt32))?.__copy__();
            if (_got != (_test._result)) {
                _t.errorf(("%v: got %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_got));
            };
        };
    }
function exampleStringer():Void {
        var _a:stdgo._internal.fmt_test.Fmt_test.Animal = ({ name : ("Gopher" : stdgo.GoString), age : (2u32 : stdgo.GoUInt) } : stdgo._internal.fmt_test.Fmt_test.Animal);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
    }
function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _got:stdgo.GoString, _want:stdgo.GoString):Void {
        if (_got != (_want)) {
            _t.error(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("!=" : stdgo.GoString)), stdgo.Go.toInterface(_want));
        };
    }
function testStringer(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s:stdgo.GoString = sprintf(("%v %v %v %v %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((0 : stdgo._internal.fmt_test.Fmt_test.TI) : TI))), stdgo.Go.toInterface(stdgo.Go.asInterface(((1 : stdgo._internal.fmt_test.Fmt_test.TI8) : TI8))), stdgo.Go.toInterface(stdgo.Go.asInterface(((2 : stdgo._internal.fmt_test.Fmt_test.TI16) : TI16))), stdgo.Go.toInterface(stdgo.Go.asInterface(((3 : stdgo._internal.fmt_test.Fmt_test.TI32) : TI32))), stdgo.Go.toInterface(stdgo.Go.asInterface(((4i64 : stdgo._internal.fmt_test.Fmt_test.TI64) : TI64))))?.__copy__();
        _check(_t, _s?.__copy__(), ("I: 0 I8: 1 I16: 2 I32: 3 I64: 4" : stdgo.GoString));
        _s = sprintf(("%v %v %v %v %v %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((5u32 : stdgo._internal.fmt_test.Fmt_test.TU) : TU))), stdgo.Go.toInterface(stdgo.Go.asInterface(((6 : stdgo._internal.fmt_test.Fmt_test.TU8) : TU8))), stdgo.Go.toInterface(stdgo.Go.asInterface(((7 : stdgo._internal.fmt_test.Fmt_test.TU16) : TU16))), stdgo.Go.toInterface(stdgo.Go.asInterface(((8u32 : stdgo._internal.fmt_test.Fmt_test.TU32) : TU32))), stdgo.Go.toInterface(stdgo.Go.asInterface(((9i64 : stdgo._internal.fmt_test.Fmt_test.TU64) : TU64))), stdgo.Go.toInterface(stdgo.Go.asInterface(((10 : stdgo._internal.fmt_test.Fmt_test.TUI) : TUI))))?.__copy__();
        _check(_t, _s?.__copy__(), ("U: 5 U8: 6 U16: 7 U32: 8 U64: 9 UI: 10" : stdgo.GoString));
        _s = sprintf(("%v %v %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((1 : stdgo.GoFloat64) : TF))), stdgo.Go.toInterface(stdgo.Go.asInterface(((2 : stdgo.GoFloat64) : TF32))), stdgo.Go.toInterface(stdgo.Go.asInterface(((3 : stdgo.GoFloat64) : TF64))))?.__copy__();
        _check(_t, _s?.__copy__(), ("F: 1.000000 F32: 2.000000 F64: 3.000000" : stdgo.GoString));
        _s = sprintf(("%v %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((true : TB))), stdgo.Go.toInterface(stdgo.Go.asInterface(((("x" : stdgo.GoString) : stdgo._internal.fmt_test.Fmt_test.TS) : TS))))?.__copy__();
        _check(_t, _s?.__copy__(), ("B: true S: \"x\"" : stdgo.GoString));
    }
class C_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<C>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.C_asInterface) class C_static_extension {

}
class T_flagPrinter_asInterface {
    @:keep
    public dynamic function format(_f:State, _c:stdgo.GoRune):Void __self__.value.format(_f, _c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_flagPrinter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T_flagPrinter_asInterface) class T_flagPrinter_static_extension {
    @:keep
    static public function format( _:T_flagPrinter, _f:State, _c:stdgo.GoRune):Void {
        @:recv var _:T_flagPrinter = _?.__copy__();
        var _s:stdgo.GoString = ("%" : stdgo.GoString);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (128 : stdgo.GoInt) : Bool), _i++, {
                if (_f.flag(_i)) {
                    _s = (_s + (((_i : stdgo.GoRune) : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
            });
        };
        {
            var __tmp__ = _f.width(), _w:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _s = (_s + (sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_w)))?.__copy__() : stdgo.GoString);
            };
        };
        {
            var __tmp__ = _f.precision(), _p:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _s = (_s + (sprintf((".%d" : stdgo.GoString), stdgo.Go.toInterface(_p)))?.__copy__() : stdgo.GoString);
            };
        };
        _s = (_s + ((_c : stdgo.GoString))?.__copy__() : stdgo.GoString);
        stdgo._internal.io.Io.writeString(_f, ((("[" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("]" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
    }
}
class PanicS_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<PanicS>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.PanicS_asInterface) class PanicS_static_extension {
    @:keep
    static public function string( _p:PanicS):stdgo.GoString {
        @:recv var _p:PanicS = _p?.__copy__();
        throw stdgo.Go.toInterface(_p._message);
    }
}
class PanicGo_asInterface {
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<PanicGo>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.PanicGo_asInterface) class PanicGo_static_extension {
    @:keep
    static public function goString( _p:PanicGo):stdgo.GoString {
        @:recv var _p:PanicGo = _p?.__copy__();
        throw stdgo.Go.toInterface(_p._message);
    }
}
class PanicF_asInterface {
    @:keep
    public dynamic function format(_f:State, _c:stdgo.GoRune):Void __self__.value.format(_f, _c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<PanicF>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.PanicF_asInterface) class PanicF_static_extension {
    @:keep
    static public function format( _p:PanicF, _f:State, _c:stdgo.GoRune):Void {
        @:recv var _p:PanicF = _p?.__copy__();
        throw stdgo.Go.toInterface(_p._message);
    }
}
class Recur_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Recur>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.Recur_asInterface) class Recur_static_extension {
    @:keep
    static public function string( _r:stdgo.Ref<Recur>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<Recur> = _r;
        {
            _recurCount++;
            if ((_recurCount > (10 : stdgo.GoInt) : Bool)) {
                _r._failed.value = true;
                return ("FAIL" : stdgo.GoString);
            };
        };
        return sprintf(("recur@%p value: %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)), stdgo.Go.toInterface(_r._i))?.__copy__();
    }
}
class Person_asInterface {
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Person>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.Person_asInterface) class Person_static_extension {
    @:keep
    static public function goString( _p:Person):stdgo.GoString {
        @:recv var _p:Person = _p?.__copy__();
        if (_p.addr != null && ((_p.addr : Dynamic).__nil__ == null || !(_p.addr : Dynamic).__nil__)) {
            return stdgo._internal.fmt.Fmt.sprintf(("Person{Name: %q, Age: %d, Addr: &Address{City: %q, State: %q, Country: %q}}" : stdgo.GoString), stdgo.Go.toInterface(_p.name), stdgo.Go.toInterface((_p.age : stdgo.GoInt)), stdgo.Go.toInterface(_p.addr.city), stdgo.Go.toInterface(_p.addr.state), stdgo.Go.toInterface(_p.addr.country))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt.sprintf(("Person{Name: %q, Age: %d}" : stdgo.GoString), stdgo.Go.toInterface(_p.name), stdgo.Go.toInterface((_p.age : stdgo.GoInt)))?.__copy__();
    }
}
class IntString_asInterface {
    @:keep
    public dynamic function scan(_state:ScanState, _verb:stdgo.GoRune):stdgo.Error return __self__.value.scan(_state, _verb);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<IntString>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.IntString_asInterface) class IntString_static_extension {
    @:keep
    static public function scan( _s:stdgo.Ref<IntString>, _state:ScanState, _verb:stdgo.GoRune):stdgo.Error {
        @:recv var _s:stdgo.Ref<IntString> = _s;
        {
            var __tmp__ = fscan(_state, stdgo.Go.toInterface(stdgo.Go.pointer(_s._i))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _state.token(true, null), _tok:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _s._s = (_tok : stdgo.GoString)?.__copy__();
        return (null : stdgo.Error);
    }
}
class T_eofCounter_asInterface {
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_eofCounter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T_eofCounter_asInterface) class T_eofCounter_static_extension {
    @:keep
    static public function read( _ec:stdgo.Ref<T_eofCounter>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _ec:stdgo.Ref<T_eofCounter> = _ec;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _ec._reader.read(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n == ((0 : stdgo.GoInt))) {
            _ec._eofCount++;
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_runeScanner_asInterface {
    @:keep
    public dynamic function scan(_state:ScanState, _verb:stdgo.GoRune):stdgo.Error return __self__.value.scan(_state, _verb);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_runeScanner>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T_runeScanner_asInterface) class T_runeScanner_static_extension {
    @:keep
    static public function scan( _rs:stdgo.Ref<T_runeScanner>, _state:ScanState, _verb:stdgo.GoRune):stdgo.Error {
        @:recv var _rs:stdgo.Ref<T_runeScanner> = _rs;
        var __tmp__ = _state.readRune(), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        _rs._rune = _r;
        _rs._size = _size;
        return _err;
    }
}
class RecursiveInt_asInterface {
    @:keep
    public dynamic function scan(_state:ScanState, _verb:stdgo.GoRune):stdgo.Error return __self__.value.scan(_state, _verb);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RecursiveInt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.RecursiveInt_asInterface) class RecursiveInt_static_extension {
    @:keep
    static public function scan( _r:stdgo.Ref<RecursiveInt>, _state:ScanState, _verb:stdgo.GoRune):stdgo.Error {
        @:recv var _r:stdgo.Ref<RecursiveInt> = _r;
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = fscan(_state, stdgo.Go.toInterface(stdgo.Go.pointer(_r._i)));
            _err = __tmp__._1;
        };
        if (_err != null) {
            return _err;
        };
        var _next = (stdgo.Go.setRef(({} : stdgo._internal.fmt_test.Fmt_test.RecursiveInt)) : stdgo.Ref<stdgo._internal.fmt_test.Fmt_test.RecursiveInt>);
        {
            var __tmp__ = fscanf(_state, (".%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_next)));
            _err = __tmp__._1;
        };
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.errUnexpectedEOF))) {
                _err = (null : stdgo.Error);
            };
            return _err;
        };
        _r._next = _next;
        return _err;
    }
}
class T_testState_asInterface {
    @:keep
    public dynamic function flag(_c:stdgo.GoInt):Bool return __self__.value.flag(_c);
    @:keep
    public dynamic function precision():{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value.precision();
    @:keep
    public dynamic function width():{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value.width();
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testState>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T_testState_asInterface) class T_testState_static_extension {
    @:keep
    static public function flag( _s:T_testState, _c:stdgo.GoInt):Bool {
        @:recv var _s:T_testState = _s?.__copy__();
        return (_s._flag[_c] ?? false);
    }
    @:keep
    static public function precision( _s:T_testState):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _s:T_testState = _s?.__copy__();
        var _prec:stdgo.GoInt = (0 : stdgo.GoInt), _ok:Bool = false;
        return { _0 : _s._prec, _1 : _s._precOK };
    }
    @:keep
    static public function width( _s:T_testState):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _s:T_testState = _s?.__copy__();
        var _wid:stdgo.GoInt = (0 : stdgo.GoInt), _ok:Bool = false;
        return { _0 : _s._width, _1 : _s._widthOK };
    }
    @:keep
    static public function write( _s:T_testState, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:T_testState = _s?.__copy__();
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        throw stdgo.Go.toInterface(("unimplemented" : stdgo.GoString));
    }
}
class Animal_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Animal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.Animal_asInterface) class Animal_static_extension {
    @:keep
    static public function string( _a:Animal):stdgo.GoString {
        @:recv var _a:Animal = _a?.__copy__();
        return stdgo._internal.fmt.Fmt.sprintf(("%v (%d)" : stdgo.GoString), stdgo.Go.toInterface(_a.name), stdgo.Go.toInterface(_a.age))?.__copy__();
    }
}
class T_errString_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errString>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T_errString_asInterface) class T_errString_static_extension {
    @:keep
    static public function error( _e:T_errString):stdgo.GoString {
        @:recv var _e:T_errString = _e;
        return (_e : stdgo.GoString)?.__copy__();
    }
}
class I_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<I>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.I_asInterface) class I_static_extension {
    @:keep
    static public function string( _i:I):stdgo.GoString {
        @:recv var _i:I = _i;
        return sprintf(("<%d>" : stdgo.GoString), stdgo.Go.toInterface((_i : stdgo.GoInt)))?.__copy__();
    }
}
class F_asInterface {
    @:keep
    public dynamic function format(_s:State, _c:stdgo.GoRune):Void __self__.value.format(_s, _c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<F>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.F_asInterface) class F_static_extension {
    @:keep
    static public function format( _f:F, _s:State, _c:stdgo.GoRune):Void {
        @:recv var _f:F = _f;
        fprintf(_s, ("<%c=F(%d)>" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface((_f : stdgo.GoInt)));
    }
}
class G_asInterface {
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<G>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.G_asInterface) class G_static_extension {
    @:keep
    static public function goString( _g:G):stdgo.GoString {
        @:recv var _g:G = _g;
        return sprintf(("GoString(%d)" : stdgo.GoString), stdgo.Go.toInterface((_g : stdgo.GoInt)))?.__copy__();
    }
}
class P_asInterface {
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return __self__.value.string(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<P>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.P_asInterface) class P_static_extension {
    @:keep
    @:pointer
    static public function string(____:P,  _p:stdgo.Pointer<P>):stdgo.GoString {
        return ("String(p)" : stdgo.GoString);
    }
}
class T_byteStringer_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byteStringer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T_byteStringer_asInterface) class T_byteStringer_static_extension {
    @:keep
    static public function string( _:T_byteStringer):stdgo.GoString {
        @:recv var _:T_byteStringer = _;
        return ("X" : stdgo.GoString);
    }
}
class T_byteFormatter_asInterface {
    @:keep
    public dynamic function format(_f:State, __3:stdgo.GoRune):Void __self__.value.format(_f, __3);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byteFormatter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T_byteFormatter_asInterface) class T_byteFormatter_static_extension {
    @:keep
    static public function format( _:T_byteFormatter, _f:State, __3:stdgo.GoRune):Void {
        @:recv var _:T_byteFormatter = _;
        fprint(_f, stdgo.Go.toInterface(("X" : stdgo.GoString)));
    }
}
class T_writeStringFormatter_asInterface {
    @:keep
    public dynamic function format(_f:State, _c:stdgo.GoRune):Void __self__.value.format(_f, _c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_writeStringFormatter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T_writeStringFormatter_asInterface) class T_writeStringFormatter_static_extension {
    @:keep
    static public function format( _sf:T_writeStringFormatter, _f:State, _c:stdgo.GoRune):Void {
        @:recv var _sf:T_writeStringFormatter = _sf;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f) : stdgo._internal.io.Io.StringWriter)) : stdgo._internal.io.Io.StringWriter), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io.StringWriter), _1 : false };
            }, _sw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _sw.writeString(((("***" : stdgo.GoString) + (_sf : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("***" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
    }
}
class Xs_asInterface {
    @:keep
    @:pointer
    public dynamic function scan(_state:ScanState, _verb:stdgo.GoRune):stdgo.Error return __self__.value.scan(__self__, _state, _verb);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Xs>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.Xs_asInterface) class Xs_static_extension {
    @:keep
    @:pointer
    static public function scan(____:Xs,  _x:stdgo.Pointer<Xs>, _state:ScanState, _verb:stdgo.GoRune):stdgo.Error {
        var __tmp__ = _state.token(true, function(_r:stdgo.GoRune):Bool {
            return _r == (_verb);
        }), _tok:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var _s:stdgo.GoString = (_tok : stdgo.GoString)?.__copy__();
        if (!stdgo._internal.regexp.Regexp.mustCompile(((("^" : stdgo.GoString) + (_verb : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("+$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()).matchString(_s?.__copy__())) {
            return stdgo._internal.errors.Errors.new_(("syntax error for xs" : stdgo.GoString));
        };
        _x.value = (_s : Xs);
        return (null : stdgo.Error);
    }
}
class TwoLines_asInterface {
    @:keep
    @:pointer
    public dynamic function scan(_state:ScanState, _verb:stdgo.GoRune):stdgo.Error return __self__.value.scan(__self__, _state, _verb);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TwoLines>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TwoLines_asInterface) class TwoLines_static_extension {
    @:keep
    @:pointer
    static public function scan(____:TwoLines,  _t:stdgo.Pointer<TwoLines>, _state:ScanState, _verb:stdgo.GoRune):stdgo.Error {
        var _chars = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), (100 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        {
            var _nlCount:stdgo.GoInt = (0 : stdgo.GoInt);
            while ((_nlCount < (2 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _state.readRune(), _c:stdgo.GoInt32 = __tmp__._0, __3:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    return _err;
                };
                _chars = (_chars.__append__(_c));
                if (_c == ((10 : stdgo.GoInt32))) {
                    _nlCount++;
                };
            };
        };
        _t.value = ((_chars : stdgo.GoString) : TwoLines);
        return (null : stdgo.Error);
    }
}
class T_hexBytes_asInterface {
    @:keep
    public dynamic function scan(_ss:ScanState, _verb:stdgo.GoRune):stdgo.Error return __self__.value.scan(_ss, _verb);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_hexBytes>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.T_hexBytes_asInterface) class T_hexBytes_static_extension {
    @:keep
    static public function scan( _h:stdgo.Ref<T_hexBytes>, _ss:ScanState, _verb:stdgo.GoRune):stdgo.Error {
        @:recv var _h:stdgo.Ref<T_hexBytes> = _h;
        var _b:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = fscanf(_ss, ("%4x" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo.Go.copySlice((((_h : stdgo._internal.fmt_test.Fmt_test.T_hexBytes)).__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _b);
        return _err;
    }
}
class TI_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TI>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TI_asInterface) class TI_static_extension {
    @:keep
    static public function string( _v:TI):stdgo.GoString {
        @:recv var _v:TI = _v;
        return sprintf(("I: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoInt)))?.__copy__();
    }
}
class TI8_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TI8>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TI8_asInterface) class TI8_static_extension {
    @:keep
    static public function string( _v:TI8):stdgo.GoString {
        @:recv var _v:TI8 = _v;
        return sprintf(("I8: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoInt8)))?.__copy__();
    }
}
class TI16_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TI16>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TI16_asInterface) class TI16_static_extension {
    @:keep
    static public function string( _v:TI16):stdgo.GoString {
        @:recv var _v:TI16 = _v;
        return sprintf(("I16: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoInt16)))?.__copy__();
    }
}
class TI32_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TI32>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TI32_asInterface) class TI32_static_extension {
    @:keep
    static public function string( _v:TI32):stdgo.GoString {
        @:recv var _v:TI32 = _v;
        return sprintf(("I32: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoInt32)))?.__copy__();
    }
}
class TI64_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TI64>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TI64_asInterface) class TI64_static_extension {
    @:keep
    static public function string( _v:TI64):stdgo.GoString {
        @:recv var _v:TI64 = _v;
        return sprintf(("I64: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoInt64)))?.__copy__();
    }
}
class TU_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TU>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TU_asInterface) class TU_static_extension {
    @:keep
    static public function string( _v:TU):stdgo.GoString {
        @:recv var _v:TU = _v;
        return sprintf(("U: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoUInt)))?.__copy__();
    }
}
class TU8_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TU8>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TU8_asInterface) class TU8_static_extension {
    @:keep
    static public function string( _v:TU8):stdgo.GoString {
        @:recv var _v:TU8 = _v;
        return sprintf(("U8: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoUInt8)))?.__copy__();
    }
}
class TU16_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TU16>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TU16_asInterface) class TU16_static_extension {
    @:keep
    static public function string( _v:TU16):stdgo.GoString {
        @:recv var _v:TU16 = _v;
        return sprintf(("U16: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoUInt16)))?.__copy__();
    }
}
class TU32_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TU32>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TU32_asInterface) class TU32_static_extension {
    @:keep
    static public function string( _v:TU32):stdgo.GoString {
        @:recv var _v:TU32 = _v;
        return sprintf(("U32: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoUInt32)))?.__copy__();
    }
}
class TU64_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TU64>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TU64_asInterface) class TU64_static_extension {
    @:keep
    static public function string( _v:TU64):stdgo.GoString {
        @:recv var _v:TU64 = _v;
        return sprintf(("U64: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoUInt64)))?.__copy__();
    }
}
class TUI_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TUI>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TUI_asInterface) class TUI_static_extension {
    @:keep
    static public function string( _v:TUI):stdgo.GoString {
        @:recv var _v:TUI = _v;
        return sprintf(("UI: %d" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoUIntptr)))?.__copy__();
    }
}
class TF_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TF>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TF_asInterface) class TF_static_extension {
    @:keep
    static public function string( _v:TF):stdgo.GoString {
        @:recv var _v:TF = _v;
        return sprintf(("F: %f" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoFloat64)))?.__copy__();
    }
}
class TF32_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TF32>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TF32_asInterface) class TF32_static_extension {
    @:keep
    static public function string( _v:TF32):stdgo.GoString {
        @:recv var _v:TF32 = _v;
        return sprintf(("F32: %f" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoFloat32)))?.__copy__();
    }
}
class TF64_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TF64>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TF64_asInterface) class TF64_static_extension {
    @:keep
    static public function string( _v:TF64):stdgo.GoString {
        @:recv var _v:TF64 = _v;
        return sprintf(("F64: %f" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoFloat64)))?.__copy__();
    }
}
class TB_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TB>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TB_asInterface) class TB_static_extension {
    @:keep
    static public function string( _v:TB):stdgo.GoString {
        @:recv var _v:TB = _v;
        return sprintf(("B: %t" : stdgo.GoString), stdgo.Go.toInterface((_v : Bool)))?.__copy__();
    }
}
class TS_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TS>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.fmt_test.Fmt_test.TS_asInterface) class TS_static_extension {
    @:keep
    static public function string( _v:TS):stdgo.GoString {
        @:recv var _v:TS = _v;
        return sprintf(("S: %q" : stdgo.GoString), stdgo.Go.toInterface((_v : stdgo.GoString)))?.__copy__();
    }
}
