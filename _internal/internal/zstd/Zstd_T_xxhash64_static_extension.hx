package _internal.internal.zstd;
@:keep @:allow(_internal.internal.zstd.Zstd.T_xxhash64_asInterface) class T_xxhash64_static_extension {
    @:keep
    static public function _mergeRound( _xh:stdgo.Ref<_internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64>, _v:stdgo.GoUInt64, _n:stdgo.GoUInt64):stdgo.GoUInt64 {
        @:recv var _xh:stdgo.Ref<_internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64> = _xh;
        _n = _xh._round((0i64 : stdgo.GoUInt64), _n);
        _v = (_v ^ (_n) : stdgo.GoUInt64);
        _v = ((_v * (-7046029288634856825i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (-8796714831421723037i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        return _v;
    }
    @:keep
    static public function _round( _xh:stdgo.Ref<_internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64>, _v:stdgo.GoUInt64, _n:stdgo.GoUInt64):stdgo.GoUInt64 {
        @:recv var _xh:stdgo.Ref<_internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64> = _xh;
        _v = (_v + ((_n * (-4417276706812531889i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _v = stdgo._internal.math.bits.Bits_rotateLeft64.rotateLeft64(_v, (31 : stdgo.GoInt));
        _v = (_v * ((-7046029288634856825i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return _v;
    }
    @:keep
    static public function _digest( _xh:stdgo.Ref<_internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64>):stdgo.GoUInt64 {
        @:recv var _xh:stdgo.Ref<_internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64> = _xh;
        var _h64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        if ((_xh._len < (32i64 : stdgo.GoUInt64) : Bool)) {
            _h64 = (_xh._v[(2 : stdgo.GoInt)] + (2870177450012600261i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        } else {
            _h64 = (((stdgo._internal.math.bits.Bits_rotateLeft64.rotateLeft64(_xh._v[(0 : stdgo.GoInt)], (1 : stdgo.GoInt)) + stdgo._internal.math.bits.Bits_rotateLeft64.rotateLeft64(_xh._v[(1 : stdgo.GoInt)], (7 : stdgo.GoInt)) : stdgo.GoUInt64) + stdgo._internal.math.bits.Bits_rotateLeft64.rotateLeft64(_xh._v[(2 : stdgo.GoInt)], (12 : stdgo.GoInt)) : stdgo.GoUInt64) + stdgo._internal.math.bits.Bits_rotateLeft64.rotateLeft64(_xh._v[(3 : stdgo.GoInt)], (18 : stdgo.GoInt)) : stdgo.GoUInt64);
            _h64 = _xh._mergeRound(_h64, _xh._v[(0 : stdgo.GoInt)]);
            _h64 = _xh._mergeRound(_h64, _xh._v[(1 : stdgo.GoInt)]);
            _h64 = _xh._mergeRound(_h64, _xh._v[(2 : stdgo.GoInt)]);
            _h64 = _xh._mergeRound(_h64, _xh._v[(3 : stdgo.GoInt)]);
        };
        _h64 = (_h64 + (_xh._len) : stdgo.GoUInt64);
        var _len = (_xh._len : stdgo.GoUInt64);
        _len = (_len & ((31i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _buf = (_xh._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
        while ((_len >= (8i64 : stdgo.GoUInt64) : Bool)) {
            var _k1 = (_xh._round((0i64 : stdgo.GoUInt64), stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64(_buf)) : stdgo.GoUInt64);
            _buf = (_buf.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _h64 = (_h64 ^ (_k1) : stdgo.GoUInt64);
            _h64 = ((stdgo._internal.math.bits.Bits_rotateLeft64.rotateLeft64(_h64, (27 : stdgo.GoInt)) * (-7046029288634856825i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (-8796714831421723037i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _len = (_len - ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        if ((_len >= (4i64 : stdgo.GoUInt64) : Bool)) {
            _h64 = (_h64 ^ (((stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32(_buf) : stdgo.GoUInt64) * (-7046029288634856825i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _buf = (_buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _h64 = ((stdgo._internal.math.bits.Bits_rotateLeft64.rotateLeft64(_h64, (23 : stdgo.GoInt)) * (-4417276706812531889i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (1609587929392839161i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _len = (_len - ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        while ((_len > (0i64 : stdgo.GoUInt64) : Bool)) {
            _h64 = (_h64 ^ (((_buf[(0 : stdgo.GoInt)] : stdgo.GoUInt64) * (2870177450012600261i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _h64 = (stdgo._internal.math.bits.Bits_rotateLeft64.rotateLeft64(_h64, (11 : stdgo.GoInt)) * (-7046029288634856825i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _len--;
        };
        _h64 = (_h64 ^ ((_h64 >> (33i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _h64 = (_h64 * ((-4417276706812531889i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _h64 = (_h64 ^ ((_h64 >> (29i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _h64 = (_h64 * ((1609587929392839161i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _h64 = (_h64 ^ ((_h64 >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return _h64;
    }
    @:keep
    static public function _update( _xh:stdgo.Ref<_internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _xh:stdgo.Ref<_internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64> = _xh;
        _xh._len = (_xh._len + ((_b.length : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if (((_xh._cnt + (_b.length) : stdgo.GoInt) < (_xh._buf.length) : Bool)) {
            stdgo.Go.copySlice((_xh._buf.__slice__(_xh._cnt) : stdgo.Slice<stdgo.GoUInt8>), _b);
            _xh._cnt = (_xh._cnt + ((_b.length)) : stdgo.GoInt);
            return;
        };
        if ((_xh._cnt > (0 : stdgo.GoInt) : Bool)) {
            var _n = (stdgo.Go.copySlice((_xh._buf.__slice__(_xh._cnt) : stdgo.Slice<stdgo.GoUInt8>), _b) : stdgo.GoInt);
            _b = (_b.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _xh._v[(0 : stdgo.GoInt)] = _xh._round(_xh._v[(0 : stdgo.GoInt)], stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_xh._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)));
            _xh._v[(1 : stdgo.GoInt)] = _xh._round(_xh._v[(1 : stdgo.GoInt)], stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_xh._buf.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
            _xh._v[(2 : stdgo.GoInt)] = _xh._round(_xh._v[(2 : stdgo.GoInt)], stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_xh._buf.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
            _xh._v[(3 : stdgo.GoInt)] = _xh._round(_xh._v[(3 : stdgo.GoInt)], stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_xh._buf.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
            _xh._cnt = (0 : stdgo.GoInt);
        };
        while (((_b.length) >= (32 : stdgo.GoInt) : Bool)) {
            _xh._v[(0 : stdgo.GoInt)] = _xh._round(_xh._v[(0 : stdgo.GoInt)], stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64(_b));
            _xh._v[(1 : stdgo.GoInt)] = _xh._round(_xh._v[(1 : stdgo.GoInt)], stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_b.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
            _xh._v[(2 : stdgo.GoInt)] = _xh._round(_xh._v[(2 : stdgo.GoInt)], stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_b.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
            _xh._v[(3 : stdgo.GoInt)] = _xh._round(_xh._v[(3 : stdgo.GoInt)], stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_b.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
            _b = (_b.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            stdgo.Go.copySlice((_xh._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _b);
            _xh._cnt = (_b.length);
        };
    }
    @:keep
    static public function _reset( _xh:stdgo.Ref<_internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64>):Void {
        @:recv var _xh:stdgo.Ref<_internal.internal.zstd.Zstd_T_xxhash64.T_xxhash64> = _xh;
        _xh._len = (0i64 : stdgo.GoUInt64);
        _xh._v[(0 : stdgo.GoInt)] = (-7046029288634856825i64 : stdgo.GoUInt64);
        _xh._v[(0 : stdgo.GoInt)] = (_xh._v[(0 : stdgo.GoInt)] + ((-4417276706812531889i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _xh._v[(1 : stdgo.GoInt)] = (-4417276706812531889i64 : stdgo.GoUInt64);
        _xh._v[(2 : stdgo.GoInt)] = (0i64 : stdgo.GoUInt64);
        _xh._v[(3 : stdgo.GoInt)] = (-7046029288634856825i64 : stdgo.GoUInt64);
        _xh._v[(3 : stdgo.GoInt)] = -_xh._v[(3 : stdgo.GoInt)];
        for (_i => _ in _xh._buf) {
            _xh._buf[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        _xh._cnt = (0 : stdgo.GoInt);
    }
}
