package stdgo._internal.debug.buildinfo;
function _decodeString(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; } {
        var _s = ("" : stdgo.GoString), _rest = (null : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.encoding.binary.Binary_uvarint.uvarint(_data), _u:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        if (((_n <= (0 : stdgo.GoInt) : Bool) || (_u >= (((_data.length) - _n : stdgo.GoInt) : stdgo.GoUInt64) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>) };
                _s = __tmp__._0;
                _rest = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : ((_data.__slice__(_n, ((_n : stdgo.GoUInt64) + _u : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _1 : (_data.__slice__(((_n : stdgo.GoUInt64) + _u : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>) };
            _s = __tmp__._0;
            _rest = __tmp__._1;
            __tmp__;
        };
    }
