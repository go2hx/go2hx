package stdgo._internal.hash.adler32;
function _update(_d:stdgo._internal.hash.adler32.Adler32_t_digest.T_digest, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.adler32.Adler32_t_digest.T_digest {
        var __0 = ((_d & (65535u32 : stdgo._internal.hash.adler32.Adler32_t_digest.T_digest) : stdgo._internal.hash.adler32.Adler32_t_digest.T_digest) : stdgo.GoUInt32), __1 = ((_d >> (16i64 : stdgo.GoUInt64) : stdgo._internal.hash.adler32.Adler32_t_digest.T_digest) : stdgo.GoUInt32);
var _s2 = __1, _s1 = __0;
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            var _q:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (((_p.length) > (5552 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = (_p.__slice__(0, (5552 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    final __tmp__1 = (_p.__slice__((5552 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _p = __tmp__0;
                    _q = __tmp__1;
                };
            };
            while (((_p.length) >= (4 : stdgo.GoInt) : Bool)) {
                _s1 = (_s1 + ((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
                _s1 = (_s1 + ((_p[(1 : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
                _s1 = (_s1 + ((_p[(2 : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
                _s1 = (_s1 + ((_p[(3 : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
                _p = (_p.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            for (__0 => _x in _p) {
                _s1 = (_s1 + ((_x : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
            };
            _s1 = (_s1 % ((65521u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _s2 = (_s2 % ((65521u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _p = _q;
        };
        return (((_s2 << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | _s1 : stdgo.GoUInt32) : stdgo._internal.hash.adler32.Adler32_t_digest.T_digest);
    }
