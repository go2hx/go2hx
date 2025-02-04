package stdgo._internal.internal.bytealg;
function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var __tmp__ = stdgo._internal.internal.bytealg.Bytealg_hashstrbytes.hashStrBytes(_sep), _hashsep:stdgo.GoUInt32 = __tmp__._0, _pow:stdgo.GoUInt32 = __tmp__._1;
        var _n = (_sep.length : stdgo.GoInt);
        var _h:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _h = ((_h * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
                _i++;
            };
        };
        if (((_h == _hashsep) && stdgo._internal.internal.bytealg.Bytealg_equal.equal((_s.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        {
            var _i = (_n : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                _h = (_h * ((16777619u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h + ((_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h - ((_pow * (_s[(_i - _n : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _i++;
                if (((_h == _hashsep) && stdgo._internal.internal.bytealg.Bytealg_equal.equal((_s.__slice__((_i - _n : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
                    return (_i - _n : stdgo.GoInt);
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
