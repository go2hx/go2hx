package stdgo._internal.crypto.sha256;
function _blockGeneric(_dig:stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _w:stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(64, 64).__setNumber32__();
        var __0 = ((@:checkr _dig ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)] : stdgo.GoUInt32), __1 = ((@:checkr _dig ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)] : stdgo.GoUInt32), __2 = ((@:checkr _dig ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)] : stdgo.GoUInt32), __3 = ((@:checkr _dig ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)] : stdgo.GoUInt32), __4 = ((@:checkr _dig ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)] : stdgo.GoUInt32), __5 = ((@:checkr _dig ?? throw "null pointer dereference")._h[(5 : stdgo.GoInt)] : stdgo.GoUInt32), __6 = ((@:checkr _dig ?? throw "null pointer dereference")._h[(6 : stdgo.GoInt)] : stdgo.GoUInt32), __7 = ((@:checkr _dig ?? throw "null pointer dereference")._h[(7 : stdgo.GoInt)] : stdgo.GoUInt32);
var _h7 = __7, _h6 = __6, _h5 = __5, _h4 = __4, _h3 = __3, _h2 = __2, _h1 = __1, _h0 = __0;
        while (((_p.length) >= (64 : stdgo.GoInt) : Bool)) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (16 : stdgo.GoInt) : Bool)) {
                    var _j = (_i * (4 : stdgo.GoInt) : stdgo.GoInt);
_w[(_i : stdgo.GoInt)] = (((((_p[(_j : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_p[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(_j + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_p[(_j + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _i++;
                };
            };
            {
                var _i = (16 : stdgo.GoInt);
                while ((_i < (64 : stdgo.GoInt) : Bool)) {
                    var _v1 = (_w[(_i - (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
var _t1 = (((stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_v1, (-17 : stdgo.GoInt))) ^ (stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_v1, (-19 : stdgo.GoInt))) : stdgo.GoUInt32) ^ ((_v1 >> (10i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
var _v2 = (_w[(_i - (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
var _t2 = (((stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_v2, (-7 : stdgo.GoInt))) ^ (stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_v2, (-18 : stdgo.GoInt))) : stdgo.GoUInt32) ^ ((_v2 >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
_w[(_i : stdgo.GoInt)] = (((_t1 + _w[(_i - (7 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) + _t2 : stdgo.GoUInt32) + _w[(_i - (16 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
                    _i++;
                };
            };
            var __0 = (_h0 : stdgo.GoUInt32), __1 = (_h1 : stdgo.GoUInt32), __2 = (_h2 : stdgo.GoUInt32), __3 = (_h3 : stdgo.GoUInt32), __4 = (_h4 : stdgo.GoUInt32), __5 = (_h5 : stdgo.GoUInt32), __6 = (_h6 : stdgo.GoUInt32), __7 = (_h7 : stdgo.GoUInt32);
var _h = __7, _g = __6, _f = __5, _e = __4, _d = __3, _c = __2, _b = __1, _a = __0;
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (64 : stdgo.GoInt) : Bool)) {
                    var _t1 = ((((_h + ((((stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_e, (-6 : stdgo.GoInt))) ^ (stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_e, (-11 : stdgo.GoInt))) : stdgo.GoUInt32) ^ (stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_e, (-25 : stdgo.GoInt))) : stdgo.GoUInt32)) : stdgo.GoUInt32) + ((((_e & _f : stdgo.GoUInt32)) ^ (((-1 ^ _e) & _g : stdgo.GoUInt32)) : stdgo.GoUInt32)) : stdgo.GoUInt32) + stdgo._internal.crypto.sha256.Sha256___k.__K[(_i : stdgo.GoInt)] : stdgo.GoUInt32) + _w[(_i : stdgo.GoInt)] : stdgo.GoUInt32);
var _t2 = (((((stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_a, (-2 : stdgo.GoInt))) ^ (stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_a, (-13 : stdgo.GoInt))) : stdgo.GoUInt32) ^ (stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_a, (-22 : stdgo.GoInt))) : stdgo.GoUInt32)) + (((((_a & _b : stdgo.GoUInt32)) ^ ((_a & _c : stdgo.GoUInt32)) : stdgo.GoUInt32) ^ ((_b & _c : stdgo.GoUInt32)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
_h = _g;
_g = _f;
_f = _e;
_e = (_d + _t1 : stdgo.GoUInt32);
_d = _c;
_c = _b;
_b = _a;
_a = (_t1 + _t2 : stdgo.GoUInt32);
                    _i++;
                };
            };
            _h0 = (_h0 + (_a) : stdgo.GoUInt32);
            _h1 = (_h1 + (_b) : stdgo.GoUInt32);
            _h2 = (_h2 + (_c) : stdgo.GoUInt32);
            _h3 = (_h3 + (_d) : stdgo.GoUInt32);
            _h4 = (_h4 + (_e) : stdgo.GoUInt32);
            _h5 = (_h5 + (_f) : stdgo.GoUInt32);
            _h6 = (_h6 + (_g) : stdgo.GoUInt32);
            _h7 = (_h7 + (_h) : stdgo.GoUInt32);
            _p = (_p.__slice__((64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            final __tmp__0 = _h0;
            final __tmp__1 = _h1;
            final __tmp__2 = _h2;
            final __tmp__3 = _h3;
            final __tmp__4 = _h4;
            final __tmp__5 = _h5;
            final __tmp__6 = _h6;
            final __tmp__7 = _h7;
            final __tmp__8 = (@:checkr _dig ?? throw "null pointer dereference")._h;
            final __tmp__9 = (0 : stdgo.GoInt);
            final __tmp__10 = (@:checkr _dig ?? throw "null pointer dereference")._h;
            final __tmp__11 = (1 : stdgo.GoInt);
            final __tmp__12 = (@:checkr _dig ?? throw "null pointer dereference")._h;
            final __tmp__13 = (2 : stdgo.GoInt);
            final __tmp__14 = (@:checkr _dig ?? throw "null pointer dereference")._h;
            final __tmp__15 = (3 : stdgo.GoInt);
            final __tmp__16 = (@:checkr _dig ?? throw "null pointer dereference")._h;
            final __tmp__17 = (4 : stdgo.GoInt);
            final __tmp__18 = (@:checkr _dig ?? throw "null pointer dereference")._h;
            final __tmp__19 = (5 : stdgo.GoInt);
            final __tmp__20 = (@:checkr _dig ?? throw "null pointer dereference")._h;
            final __tmp__21 = (6 : stdgo.GoInt);
            final __tmp__22 = (@:checkr _dig ?? throw "null pointer dereference")._h;
            final __tmp__23 = (7 : stdgo.GoInt);
            __tmp__8[__tmp__9] = __tmp__0;
            __tmp__10[__tmp__11] = __tmp__1;
            __tmp__12[__tmp__13] = __tmp__2;
            __tmp__14[__tmp__15] = __tmp__3;
            __tmp__16[__tmp__17] = __tmp__4;
            __tmp__18[__tmp__19] = __tmp__5;
            __tmp__20[__tmp__21] = __tmp__6;
            __tmp__22[__tmp__23] = __tmp__7;
        };
    }
