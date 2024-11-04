package stdgo._internal.hash.maphash;
function _wyhash(_key:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.GoUInt64, _len:stdgo.GoUInt64):stdgo.GoUInt64 {
        var _p = _key;
        var _i = (_len : stdgo.GoUInt64);
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _b = __1, _a = __0;
        _seed = (_seed ^ ((-6884282663029611473i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if ((_i > (16i64 : stdgo.GoUInt64) : Bool)) {
            if ((_i > (48i64 : stdgo.GoUInt64) : Bool)) {
                var _seed1 = (_seed : stdgo.GoUInt64);
                var _seed2 = (_seed : stdgo.GoUInt64);
                while ((_i > (48i64 : stdgo.GoUInt64) : Bool)) {
                    _seed = stdgo._internal.hash.maphash.Maphash__mix._mix((stdgo._internal.hash.maphash.Maphash__r8._r8(_p) ^ (-1800455987208640293i64 : stdgo.GoUInt64) : stdgo.GoUInt64), (stdgo._internal.hash.maphash.Maphash__r8._r8((_p.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) ^ _seed : stdgo.GoUInt64));
_seed1 = stdgo._internal.hash.maphash.Maphash__mix._mix((stdgo._internal.hash.maphash.Maphash__r8._r8((_p.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) ^ (-8161530843051276573i64 : stdgo.GoUInt64) : stdgo.GoUInt64), (stdgo._internal.hash.maphash.Maphash__r8._r8((_p.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) ^ _seed1 : stdgo.GoUInt64));
_seed2 = stdgo._internal.hash.maphash.Maphash__mix._mix((stdgo._internal.hash.maphash.Maphash__r8._r8((_p.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) ^ (6384245875588680899i64 : stdgo.GoUInt64) : stdgo.GoUInt64), (stdgo._internal.hash.maphash.Maphash__r8._r8((_p.__slice__((40 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) ^ _seed2 : stdgo.GoUInt64));
_p = (_p.__slice__((48 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _i = (_i - ((48i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                };
                _seed = (_seed ^ ((_seed1 ^ _seed2 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
            while ((_i > (16i64 : stdgo.GoUInt64) : Bool)) {
                _seed = stdgo._internal.hash.maphash.Maphash__mix._mix((stdgo._internal.hash.maphash.Maphash__r8._r8(_p) ^ (-1800455987208640293i64 : stdgo.GoUInt64) : stdgo.GoUInt64), (stdgo._internal.hash.maphash.Maphash__r8._r8((_p.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) ^ _seed : stdgo.GoUInt64));
_p = (_p.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _i = (_i - ((16i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
        };
        if (_i == ((0i64 : stdgo.GoUInt64))) {
            return _seed;
        } else if ((_i < (4i64 : stdgo.GoUInt64) : Bool)) {
            _a = stdgo._internal.hash.maphash.Maphash__r3._r3(_p, _i);
        } else {
            var _n = (((_i >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) << (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _a = ((stdgo._internal.hash.maphash.Maphash__r4._r4(_p) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | stdgo._internal.hash.maphash.Maphash__r4._r4((_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
            _b = ((stdgo._internal.hash.maphash.Maphash__r4._r4((_p.__slice__((_i - (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>)) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | stdgo._internal.hash.maphash.Maphash__r4._r4((_p.__slice__(((_i - (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) - _n : stdgo.GoUInt64)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
        };
        return stdgo._internal.hash.maphash.Maphash__mix._mix(((2129725606500045391i64 : stdgo.GoUInt64) ^ _len : stdgo.GoUInt64), stdgo._internal.hash.maphash.Maphash__mix._mix((_a ^ (-1800455987208640293i64 : stdgo.GoUInt64) : stdgo.GoUInt64), (_b ^ _seed : stdgo.GoUInt64)));
    }
