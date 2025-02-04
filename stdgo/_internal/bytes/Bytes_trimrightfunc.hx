package stdgo._internal.bytes;
function trimRightFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoUInt8> {
        var _i = (stdgo._internal.bytes.Bytes__lastindexfunc._lastIndexFunc(_s, _f, false) : stdgo.GoInt);
        if (((_i >= (0 : stdgo.GoInt) : Bool) && (_s[(_i : stdgo.GoInt)] >= (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
            _i = (_i + (_wid) : stdgo.GoInt);
        } else {
            _i++;
        };
        return (_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>);
    }
