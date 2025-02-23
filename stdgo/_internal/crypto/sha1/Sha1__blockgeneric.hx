package stdgo._internal.crypto.sha1;
function _blockGeneric(_dig:stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _w:stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(16, 16).__setNumber32__();
        var __0 = ((@:checkr _dig ?? throw "null pointer dereference")._h[(0 : stdgo.GoInt)] : stdgo.GoUInt32), __1 = ((@:checkr _dig ?? throw "null pointer dereference")._h[(1 : stdgo.GoInt)] : stdgo.GoUInt32), __2 = ((@:checkr _dig ?? throw "null pointer dereference")._h[(2 : stdgo.GoInt)] : stdgo.GoUInt32), __3 = ((@:checkr _dig ?? throw "null pointer dereference")._h[(3 : stdgo.GoInt)] : stdgo.GoUInt32), __4 = ((@:checkr _dig ?? throw "null pointer dereference")._h[(4 : stdgo.GoInt)] : stdgo.GoUInt32);
var _h4 = __4, _h3 = __3, _h2 = __2, _h1 = __1, _h0 = __0;
        while (((_p.length) >= (64 : stdgo.GoInt) : Bool)) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (16 : stdgo.GoInt) : Bool)) {
                    var _j = (_i * (4 : stdgo.GoInt) : stdgo.GoInt);
_w[(_i : stdgo.GoInt)] = (((((_p[(_j : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_p[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(_j + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_p[(_j + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _i++;
                };
            };
            var __0 = (_h0 : stdgo.GoUInt32), __1 = (_h1 : stdgo.GoUInt32), __2 = (_h2 : stdgo.GoUInt32), __3 = (_h3 : stdgo.GoUInt32), __4 = (_h4 : stdgo.GoUInt32);
var _e = __4, _d = __3, _c = __2, _b = __1, _a = __0;
            var _i = (0 : stdgo.GoInt);
            while ((_i < (16 : stdgo.GoInt) : Bool)) {
                var _f = ((_b & _c : stdgo.GoUInt32) | (((-1 ^ _b)) & _d : stdgo.GoUInt32) : stdgo.GoUInt32);
var _t = ((((stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_a, (5 : stdgo.GoInt)) + _f : stdgo.GoUInt32) + _e : stdgo.GoUInt32) + _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) + (1518500249u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
{
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_b, (30 : stdgo.GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
                _i++;
            };
            while ((_i < (20 : stdgo.GoInt) : Bool)) {
                var _tmp = (((_w[(((_i - (3 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] ^ _w[(((_i - (8 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[(((_i - (14 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[((_i) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
_w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_tmp, (1 : stdgo.GoInt));
var _f = ((_b & _c : stdgo.GoUInt32) | (((-1 ^ _b)) & _d : stdgo.GoUInt32) : stdgo.GoUInt32);
var _t = ((((stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_a, (5 : stdgo.GoInt)) + _f : stdgo.GoUInt32) + _e : stdgo.GoUInt32) + _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) + (1518500249u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
{
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_b, (30 : stdgo.GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
                _i++;
            };
            while ((_i < (40 : stdgo.GoInt) : Bool)) {
                var _tmp = (((_w[(((_i - (3 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] ^ _w[(((_i - (8 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[(((_i - (14 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[((_i) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
_w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_tmp, (1 : stdgo.GoInt));
var _f = ((_b ^ _c : stdgo.GoUInt32) ^ _d : stdgo.GoUInt32);
var _t = ((((stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_a, (5 : stdgo.GoInt)) + _f : stdgo.GoUInt32) + _e : stdgo.GoUInt32) + _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) + (1859775393u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
{
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_b, (30 : stdgo.GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
                _i++;
            };
            while ((_i < (60 : stdgo.GoInt) : Bool)) {
                var _tmp = (((_w[(((_i - (3 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] ^ _w[(((_i - (8 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[(((_i - (14 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[((_i) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
_w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_tmp, (1 : stdgo.GoInt));
var _f = (((((_b | _c : stdgo.GoUInt32)) & _d : stdgo.GoUInt32)) | ((_b & _c : stdgo.GoUInt32)) : stdgo.GoUInt32);
var _t = ((((stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_a, (5 : stdgo.GoInt)) + _f : stdgo.GoUInt32) + _e : stdgo.GoUInt32) + _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) + (-1894007588u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
{
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_b, (30 : stdgo.GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
                _i++;
            };
            while ((_i < (80 : stdgo.GoInt) : Bool)) {
                var _tmp = (((_w[(((_i - (3 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] ^ _w[(((_i - (8 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[(((_i - (14 : stdgo.GoInt) : stdgo.GoInt)) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _w[((_i) & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32);
_w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_tmp, (1 : stdgo.GoInt));
var _f = ((_b ^ _c : stdgo.GoUInt32) ^ _d : stdgo.GoUInt32);
var _t = ((((stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_a, (5 : stdgo.GoInt)) + _f : stdgo.GoUInt32) + _e : stdgo.GoUInt32) + _w[(_i & (15 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) + (-899497514u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
{
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(_b, (30 : stdgo.GoInt));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
                _i++;
            };
            _h0 = (_h0 + (_a) : stdgo.GoUInt32);
            _h1 = (_h1 + (_b) : stdgo.GoUInt32);
            _h2 = (_h2 + (_c) : stdgo.GoUInt32);
            _h3 = (_h3 + (_d) : stdgo.GoUInt32);
            _h4 = (_h4 + (_e) : stdgo.GoUInt32);
            _p = (_p.__slice__((64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            final __tmp__0 = _h0;
            final __tmp__1 = _h1;
            final __tmp__2 = _h2;
            final __tmp__3 = _h3;
            final __tmp__4 = _h4;
            final __tmp__5 = (@:checkr _dig ?? throw "null pointer dereference")._h;
            final __tmp__6 = (0 : stdgo.GoInt);
            final __tmp__7 = (@:checkr _dig ?? throw "null pointer dereference")._h;
            final __tmp__8 = (1 : stdgo.GoInt);
            final __tmp__9 = (@:checkr _dig ?? throw "null pointer dereference")._h;
            final __tmp__10 = (2 : stdgo.GoInt);
            final __tmp__11 = (@:checkr _dig ?? throw "null pointer dereference")._h;
            final __tmp__12 = (3 : stdgo.GoInt);
            final __tmp__13 = (@:checkr _dig ?? throw "null pointer dereference")._h;
            final __tmp__14 = (4 : stdgo.GoInt);
            __tmp__5[__tmp__6] = __tmp__0;
            __tmp__7[__tmp__8] = __tmp__1;
            __tmp__9[__tmp__10] = __tmp__2;
            __tmp__11[__tmp__12] = __tmp__3;
            __tmp__13[__tmp__14] = __tmp__4;
        };
    }
