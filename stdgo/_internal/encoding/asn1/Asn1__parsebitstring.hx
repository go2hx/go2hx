package stdgo._internal.encoding.asn1;
function _parseBitString(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString; var _1 : stdgo.Error; } {
        var _ret = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString), _err = (null : stdgo.Error);
        if ((_bytes.length) == ((0 : stdgo.GoInt))) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("zero length BIT STRING" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
            return { _0 : _ret, _1 : _err };
        };
        var _paddingBits = (_bytes[(0 : stdgo.GoInt)] : stdgo.GoInt);
        if ((((_paddingBits > (7 : stdgo.GoInt) : Bool) || ((_bytes.length) == ((1 : stdgo.GoInt)) && (_paddingBits > (0 : stdgo.GoInt) : Bool) : Bool) : Bool) || ((_bytes[((_bytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] & (((((1 : stdgo.GoUInt8) << _bytes[(0 : stdgo.GoInt)] : stdgo.GoUInt8)) - (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("invalid padding bits in BIT STRING" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
            return { _0 : _ret, _1 : _err };
        };
        _ret.bitLength = (((((_bytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) - _paddingBits : stdgo.GoInt);
        _ret.bytes = (_bytes.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : _ret, _1 : _err };
    }
