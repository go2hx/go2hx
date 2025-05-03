package stdgo._internal.encoding.asn1;
function _parseTagAndLength(_bytes:stdgo.Slice<stdgo.GoUInt8>, _initOffset:stdgo.GoInt):{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _ret = ({} : stdgo._internal.encoding.asn1.Asn1_t_tagandlength.T_tagAndLength), _offset = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _offset = _initOffset;
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L534"
        if ((_offset >= (_bytes.length) : Bool)) {
            _err = stdgo._internal.errors.Errors_new_.new_(("asn1: internal error in parseTagAndLength" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L536"
            return { _0 : _ret, _1 : _offset, _2 : _err };
        };
        var _b = (_bytes[(_offset : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L539"
        _offset++;
        _ret._class = ((_b >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt);
        _ret._isCompound = (_b & (32 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((32 : stdgo.GoUInt8));
        _ret._tag = ((_b & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L546"
        if (_ret._tag == ((31 : stdgo.GoInt))) {
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsebase128int._parseBase128Int(_bytes, _offset);
                _ret._tag = @:tmpset0 __tmp__._0;
                _offset = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L548"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L549"
                return { _0 : _ret, _1 : _offset, _2 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L552"
            if ((_ret._tag < (31 : stdgo.GoInt) : Bool)) {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("non-minimal tag" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L554"
                return { _0 : _ret, _1 : _offset, _2 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L557"
        if ((_offset >= (_bytes.length) : Bool)) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("truncated tag or length" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L559"
            return { _0 : _ret, _1 : _offset, _2 : _err };
        };
        _b = _bytes[(_offset : stdgo.GoInt)];
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L562"
        _offset++;
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L563"
        if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
            _ret._length = ((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
        } else {
            var _numBytes = ((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L569"
            if (_numBytes == ((0 : stdgo.GoInt))) {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("indefinite length found (not DER)" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L571"
                return { _0 : _ret, _1 : _offset, _2 : _err };
            };
            _ret._length = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L574"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _numBytes : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L575"
                    if ((_offset >= (_bytes.length) : Bool)) {
                        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("truncated tag or length" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L577"
                        return { _0 : _ret, _1 : _offset, _2 : _err };
                    };
_b = _bytes[(_offset : stdgo.GoInt)];
//"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L580"
                    _offset++;
//"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L581"
                    if ((_ret._length >= (8388608 : stdgo.GoInt) : Bool)) {
                        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("length too large" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L585"
                        return { _0 : _ret, _1 : _offset, _2 : _err };
                    };
_ret._length = (_ret._length << ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt);
_ret._length = (_ret._length | ((_b : stdgo.GoInt)) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L589"
                    if (_ret._length == ((0 : stdgo.GoInt))) {
                        _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("superfluous leading zeros in length" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L592"
                        return { _0 : _ret, _1 : _offset, _2 : _err };
                    };
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L596"
            if ((_ret._length < (128 : stdgo.GoInt) : Bool)) {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("non-minimal length" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L598"
                return { _0 : _ret, _1 : _offset, _2 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L602"
        return { _0 : _ret, _1 : _offset, _2 : _err };
    }
