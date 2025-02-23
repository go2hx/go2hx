package stdgo._internal.crypto.aes;
function _encryptBlockGo(_xk:stdgo.Slice<stdgo.GoUInt32>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        var __blank__ = _src[(15 : stdgo.GoInt)];
        var _s0 = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_src.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _s1 = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_src.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _s2 = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_src.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _s3 = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_src.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        _s0 = (_s0 ^ (_xk[((0 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt32);
        _s1 = (_s1 ^ (_xk[((1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt32);
        _s2 = (_s2 ^ (_xk[((2 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt32);
        _s3 = (_s3 ^ (_xk[((3 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt32);
        var _nr = (((_xk.length) / (4 : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt);
        var _k = (4 : stdgo.GoInt);
        var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __2:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __3:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _t3 = __3, _t2 = __2, _t1 = __1, _t0 = __0;
        {
            var _r = (0 : stdgo.GoInt);
            while ((_r < _nr : Bool)) {
                _t0 = ((((_xk[(_k + (0 : stdgo.GoInt) : stdgo.GoInt)] ^ stdgo._internal.crypto.aes.Aes__te0._te0[(((_s0 >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__te1._te1[(((_s1 >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__te2._te2[(((_s2 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__te3._te3[((_s3 : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32);
_t1 = ((((_xk[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)] ^ stdgo._internal.crypto.aes.Aes__te0._te0[(((_s1 >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__te1._te1[(((_s2 >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__te2._te2[(((_s3 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__te3._te3[((_s0 : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32);
_t2 = ((((_xk[(_k + (2 : stdgo.GoInt) : stdgo.GoInt)] ^ stdgo._internal.crypto.aes.Aes__te0._te0[(((_s2 >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__te1._te1[(((_s3 >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__te2._te2[(((_s0 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__te3._te3[((_s1 : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32);
_t3 = ((((_xk[(_k + (3 : stdgo.GoInt) : stdgo.GoInt)] ^ stdgo._internal.crypto.aes.Aes__te0._te0[(((_s3 >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__te1._te1[(((_s0 >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__te2._te2[(((_s1 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.aes.Aes__te3._te3[((_s2 : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt32);
_k = (_k + ((4 : stdgo.GoInt)) : stdgo.GoInt);
{
                    final __tmp__0 = _t0;
                    final __tmp__1 = _t1;
                    final __tmp__2 = _t2;
                    final __tmp__3 = _t3;
                    _s0 = __tmp__0;
                    _s1 = __tmp__1;
                    _s2 = __tmp__2;
                    _s3 = __tmp__3;
                };
                _r++;
            };
        };
        _s0 = (((((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[((_t0 >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(((_t1 >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(((_t2 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (stdgo._internal.crypto.aes.Aes__sbox0._sbox0[((_t3 & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        _s1 = (((((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[((_t1 >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(((_t2 >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(((_t3 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (stdgo._internal.crypto.aes.Aes__sbox0._sbox0[((_t0 & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        _s2 = (((((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[((_t2 >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(((_t3 >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(((_t0 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (stdgo._internal.crypto.aes.Aes__sbox0._sbox0[((_t1 & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        _s3 = (((((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[((_t3 >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(((_t0 >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(((_t1 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (stdgo._internal.crypto.aes.Aes__sbox0._sbox0[((_t2 & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        _s0 = (_s0 ^ (_xk[((_k + (0 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt32);
        _s1 = (_s1 ^ (_xk[((_k + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt32);
        _s2 = (_s2 ^ (_xk[((_k + (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt32);
        _s3 = (_s3 ^ (_xk[((_k + (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt32);
        var __blank__ = _dst[(15 : stdgo.GoInt)];
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_dst.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _s0);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_dst.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _s1);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_dst.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _s2);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_dst.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _s3);
    }
