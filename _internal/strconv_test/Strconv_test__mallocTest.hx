package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
var _mallocTest : stdgo.Slice<_internal.strconv_test.Strconv_test_T__struct_5.T__struct_5> = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T__struct_5.T__struct_5>(9, 9, ...[({ _count : (0 : stdgo.GoInt), _desc : ("AppendInt(localBuf[:0], 123, 10)" : stdgo.GoString), _fn : function():Void {
        var _localBuf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUInt8)]);
        stdgo._internal.strconv.Strconv_appendInt.appendInt((_localBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (123i64 : stdgo.GoInt64), (10 : stdgo.GoInt));
    } } : _internal.strconv_test.Strconv_test_T__struct_5.T__struct_5), ({ _count : (0 : stdgo.GoInt), _desc : ("AppendInt(globalBuf[:0], 123, 10)" : stdgo.GoString), _fn : function():Void {
        stdgo._internal.strconv.Strconv_appendInt.appendInt((_internal.strconv_test.Strconv_test__globalBuf._globalBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (123i64 : stdgo.GoInt64), (10 : stdgo.GoInt));
    } } : _internal.strconv_test.Strconv_test_T__struct_5.T__struct_5), ({ _count : (0 : stdgo.GoInt), _desc : ("AppendFloat(localBuf[:0], 1.23, \'g\', 5, 64)" : stdgo.GoString), _fn : function():Void {
        var _localBuf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUInt8)]);
        stdgo._internal.strconv.Strconv_appendFloat.appendFloat((_localBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (1.23 : stdgo.GoFloat64), (103 : stdgo.GoUInt8), (5 : stdgo.GoInt), (64 : stdgo.GoInt));
    } } : _internal.strconv_test.Strconv_test_T__struct_5.T__struct_5), ({ _count : (0 : stdgo.GoInt), _desc : ("AppendFloat(globalBuf[:0], 1.23, \'g\', 5, 64)" : stdgo.GoString), _fn : function():Void {
        stdgo._internal.strconv.Strconv_appendFloat.appendFloat((_internal.strconv_test.Strconv_test__globalBuf._globalBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (1.23 : stdgo.GoFloat64), (103 : stdgo.GoUInt8), (5 : stdgo.GoInt), (64 : stdgo.GoInt));
    } } : _internal.strconv_test.Strconv_test_T__struct_5.T__struct_5), ({ _count : (10 : stdgo.GoInt), _desc : ("AppendQuoteToASCII(nil, oneMB)" : stdgo.GoString), _fn : function():Void {
        stdgo._internal.strconv.Strconv_appendQuoteToASCII.appendQuoteToASCII((null : stdgo.Slice<stdgo.GoUInt8>), (_internal.strconv_test.Strconv_test__oneMB._oneMB : stdgo.GoString)?.__copy__());
    } } : _internal.strconv_test.Strconv_test_T__struct_5.T__struct_5), ({ _count : (0 : stdgo.GoInt), _desc : ("ParseFloat(\"123.45\", 64)" : stdgo.GoString), _fn : function():Void {
        stdgo._internal.strconv.Strconv_parseFloat.parseFloat(("123.45" : stdgo.GoString), (64 : stdgo.GoInt));
    } } : _internal.strconv_test.Strconv_test_T__struct_5.T__struct_5), ({ _count : (0 : stdgo.GoInt), _desc : ("ParseFloat(\"123.456789123456789\", 64)" : stdgo.GoString), _fn : function():Void {
        stdgo._internal.strconv.Strconv_parseFloat.parseFloat(("123.456789123456789" : stdgo.GoString), (64 : stdgo.GoInt));
    } } : _internal.strconv_test.Strconv_test_T__struct_5.T__struct_5), ({ _count : (0 : stdgo.GoInt), _desc : ("ParseFloat(\"1.000000000000000111022302462515654042363166809082031251\", 64)" : stdgo.GoString), _fn : function():Void {
        stdgo._internal.strconv.Strconv_parseFloat.parseFloat(("1.000000000000000111022302462515654042363166809082031251" : stdgo.GoString), (64 : stdgo.GoInt));
    } } : _internal.strconv_test.Strconv_test_T__struct_5.T__struct_5), ({ _count : (0 : stdgo.GoInt), _desc : ("ParseFloat(\"1.0000000000000001110223024625156540423631668090820312500...001\", 64)" : stdgo.GoString), _fn : function():Void {
        stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_internal.strconv_test.Strconv_test__nextToOne._nextToOne?.__copy__(), (64 : stdgo.GoInt));
    } } : _internal.strconv_test.Strconv_test_T__struct_5.T__struct_5)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _count : (0 : stdgo.GoInt), _desc : ("" : stdgo.GoString), _fn : null } : _internal.strconv_test.Strconv_test_T__struct_5.T__struct_5)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T__struct_5.T__struct_5>);
