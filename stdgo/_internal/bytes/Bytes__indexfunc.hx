package stdgo._internal.bytes;
function _indexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool, _truth:Bool):stdgo.GoInt {
        var _start = (0 : stdgo.GoInt);
        while ((_start < (_s.length) : Bool)) {
            var _wid = (1 : stdgo.GoInt);
            var _r = (_s[(_start : stdgo.GoInt)] : stdgo.GoInt32);
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = @:tmpset0 __tmp__._0;
                    _wid = @:tmpset0 __tmp__._1;
                };
            };
            if (_f(_r) == (_truth)) {
                return _start;
            };
            _start = (_start + (_wid) : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
