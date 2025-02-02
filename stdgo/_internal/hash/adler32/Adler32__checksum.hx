package stdgo._internal.hash.adler32;
function _checksum(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        var __0 = ((1u32 : stdgo.GoUInt32) : stdgo.GoUInt32), __1 = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _s2 = __1, _s1 = __0;
        for (__0 => _x in _p) {
            _s1 = (((_s1 + (_x : stdgo.GoUInt32) : stdgo.GoUInt32)) % (65521u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _s2 = (((_s2 + _s1 : stdgo.GoUInt32)) % (65521u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        };
        return ((_s2 << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | _s1 : stdgo.GoUInt32);
    }
