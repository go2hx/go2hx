package _internal.vendor.golang_dot_org.x.crypto.chacha20;
function _quarterRound(_a:stdgo.GoUInt32, _b:stdgo.GoUInt32, _c:stdgo.GoUInt32, _d:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } {
        _a = (_a + (_b) : stdgo.GoUInt32);
        _d = (_d ^ (_a) : stdgo.GoUInt32);
        _d = stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(_d, (16 : stdgo.GoInt));
        _c = (_c + (_d) : stdgo.GoUInt32);
        _b = (_b ^ (_c) : stdgo.GoUInt32);
        _b = stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(_b, (12 : stdgo.GoInt));
        _a = (_a + (_b) : stdgo.GoUInt32);
        _d = (_d ^ (_a) : stdgo.GoUInt32);
        _d = stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(_d, (8 : stdgo.GoInt));
        _c = (_c + (_d) : stdgo.GoUInt32);
        _b = (_b ^ (_c) : stdgo.GoUInt32);
        _b = stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(_b, (7 : stdgo.GoInt));
        return { _0 : _a, _1 : _b, _2 : _c, _3 : _d };
    }
