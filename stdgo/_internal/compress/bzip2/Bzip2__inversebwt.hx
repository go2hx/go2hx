package stdgo._internal.compress.bzip2;
function _inverseBWT(_tt:stdgo.Slice<stdgo.GoUInt32>, _origPtr:stdgo.GoUInt, _c:stdgo.Slice<stdgo.GoUInt>):stdgo.GoUInt32 {
        var _sum = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                _sum = (_sum + (_c[(_i : stdgo.GoInt)]) : stdgo.GoUInt);
_c[(_i : stdgo.GoInt)] = (_sum - _c[(_i : stdgo.GoInt)] : stdgo.GoUInt);
                _i++;
            };
        };
        for (_i => _ in _tt) {
            var _b = (_tt[(_i : stdgo.GoInt)] & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _tt[(_c[(_b : stdgo.GoInt)] : stdgo.GoInt)] = (_tt[(_c[(_b : stdgo.GoInt)] : stdgo.GoInt)] | (((_i : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _c[(_b : stdgo.GoInt)]++;
        };
        return (_tt[(_origPtr : stdgo.GoInt)] >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
