package stdgo._internal.time;
function _fmtInt(_buf:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64):stdgo.GoInt {
        var _w = (_buf.length : stdgo.GoInt);
        if (_v == ((0i64 : stdgo.GoUInt64))) {
            _w--;
            _buf[(_w : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        } else {
            while ((_v > (0i64 : stdgo.GoUInt64) : Bool)) {
                _w--;
                _buf[(_w : stdgo.GoInt)] = (((_v % (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                _v = (_v / ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
        };
        return _w;
    }
