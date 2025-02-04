package stdgo._internal.bytes;
function title(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _prev = (32 : stdgo.GoInt32);
        return stdgo._internal.bytes.Bytes_map_.map_(function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            if (stdgo._internal.bytes.Bytes__isseparator._isSeparator(_prev)) {
                _prev = _r;
                return stdgo._internal.unicode.Unicode_totitle.toTitle(_r);
            };
            _prev = _r;
            return _r;
        }, _s);
    }
