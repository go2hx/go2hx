package stdgo._internal.encoding.asn1;
function _parseBase128Int(_bytes:stdgo.Slice<stdgo.GoUInt8>, _initOffset:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _ret = (0 : stdgo.GoInt), _offset = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _offset = _initOffset;
        var _ret64:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var _shifted = (0 : stdgo.GoInt);
            while ((_offset < (_bytes.length) : Bool)) {
                if (_shifted == ((5 : stdgo.GoInt))) {
                    _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("base 128 integer too large" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
                    return { _0 : _ret, _1 : _offset, _2 : _err };
                };
_ret64 = (_ret64 << ((7i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
var _b = (_bytes[(_offset : stdgo.GoInt)] : stdgo.GoUInt8);
if (((_shifted == (0 : stdgo.GoInt)) && (_b == (128 : stdgo.GoUInt8)) : Bool)) {
                    _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("integer is not minimally encoded" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
                    return { _0 : _ret, _1 : _offset, _2 : _err };
                };
_ret64 = (_ret64 | (((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt64)) : stdgo.GoInt64);
_offset++;
if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    _ret = (_ret64 : stdgo.GoInt);
                    if ((_ret64 > (2147483647i64 : stdgo.GoInt64) : Bool)) {
                        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("base 128 integer too large" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
                    };
                    return { _0 : _ret, _1 : _offset, _2 : _err };
                };
                _shifted++;
            };
        };
        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("truncated base 128 integer" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
        return { _0 : _ret, _1 : _offset, _2 : _err };
    }
