package stdgo._internal.encoding.asn1;
function _parseTagAndLength(_bytes:stdgo.Slice<stdgo.GoUInt8>, _initOffset:stdgo.GoInt):{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _ret = ({} : stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength), _offset = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _offset = _initOffset;
        if ((_offset >= (_bytes.length) : Bool)) {
            _err = stdgo._internal.errors.Errors_new_.new_(("asn1: internal error in parseTagAndLength" : stdgo.GoString));
            return { _0 : _ret, _1 : _offset, _2 : _err };
        };
        var _b = (_bytes[(_offset : stdgo.GoInt)] : stdgo.GoUInt8);
        _offset++;
        _ret._class = ((_b >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt);
        _ret._isCompound = (_b & (32 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((32 : stdgo.GoUInt8));
        _ret._tag = ((_b & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
        if (_ret._tag == ((31 : stdgo.GoInt))) {
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsebase128int._parseBase128Int(_bytes, _offset);
                _ret._tag = @:tmpset0 __tmp__._0;
                _offset = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _offset, _2 : _err };
            };
            if ((_ret._tag < (31 : stdgo.GoInt) : Bool)) {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("non-minimal tag" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
                return { _0 : _ret, _1 : _offset, _2 : _err };
            };
        };
        if ((_offset >= (_bytes.length) : Bool)) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("truncated tag or length" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
            return { _0 : _ret, _1 : _offset, _2 : _err };
        };
        _b = _bytes[(_offset : stdgo.GoInt)];
        _offset++;
        if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
            _ret._length = ((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
        } else {
            var _numBytes = ((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
            if (_numBytes == ((0 : stdgo.GoInt))) {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("indefinite length found (not DER)" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
                return { _0 : _ret, _1 : _offset, _2 : _err };
            };
            _ret._length = (0 : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _numBytes : Bool)) {
                    if ((_offset >= (_bytes.length) : Bool)) {
                        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("truncated tag or length" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
                        return { _0 : _ret, _1 : _offset, _2 : _err };
                    };
_b = _bytes[(_offset : stdgo.GoInt)];
_offset++;
if ((_ret._length >= (8388608 : stdgo.GoInt) : Bool)) {
                        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("length too large" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
                        return { _0 : _ret, _1 : _offset, _2 : _err };
                    };
_ret._length = (_ret._length << ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt);
_ret._length = (_ret._length | ((_b : stdgo.GoInt)) : stdgo.GoInt);
if (_ret._length == ((0 : stdgo.GoInt))) {
                        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("superfluous leading zeros in length" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
                        return { _0 : _ret, _1 : _offset, _2 : _err };
                    };
                    _i++;
                };
            };
            if ((_ret._length < (128 : stdgo.GoInt) : Bool)) {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("non-minimal length" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
                return { _0 : _ret, _1 : _offset, _2 : _err };
            };
        };
        return { _0 : _ret, _1 : _offset, _2 : _err };
    }
