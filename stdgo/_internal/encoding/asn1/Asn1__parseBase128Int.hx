package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
function _parseBase128Int(_bytes:stdgo.Slice<stdgo.GoUInt8>, _initOffset:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _ret = (0 : stdgo.GoInt), _offset = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _offset = _initOffset;
        var _ret64:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var _shifted = (0 : stdgo.GoInt);
            while ((_offset < (_bytes.length) : Bool)) {
                if (_shifted == ((5 : stdgo.GoInt))) {
                    _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("base 128 integer too large" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError));
                    return { _0 : _ret, _1 : _offset, _2 : _err };
                };
_ret64 = (_ret64 << ((7i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
var _b = (_bytes[(_offset : stdgo.GoInt)] : stdgo.GoUInt8);
if (((_shifted == (0 : stdgo.GoInt)) && (_b == (128 : stdgo.GoUInt8)) : Bool)) {
                    _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError(("integer is not minimally encoded" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError));
                    return { _0 : _ret, _1 : _offset, _2 : _err };
                };
_ret64 = (_ret64 | (((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt64)) : stdgo.GoInt64);
_offset++;
if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    _ret = (_ret64 : stdgo.GoInt);
                    if ((_ret64 > (2147483647i64 : stdgo.GoInt64) : Bool)) {
                        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("base 128 integer too large" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError));
                    };
                    return { _0 : _ret, _1 : _offset, _2 : _err };
                };
                _shifted++;
            };
        };
        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError(("truncated base 128 integer" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError));
        return { _0 : _ret, _1 : _offset, _2 : _err };
    }
