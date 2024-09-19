package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function _updateGeneric(_state:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macState.T_macState>, _msg:stdgo.Slice<stdgo.GoUInt8>):Void {
        var __0 = (_state._h[(0 : stdgo.GoInt)] : stdgo.GoUInt64), __1 = (_state._h[(1 : stdgo.GoInt)] : stdgo.GoUInt64), __2 = (_state._h[(2 : stdgo.GoInt)] : stdgo.GoUInt64);
var _h2 = __2, _h1 = __1, _h0 = __0;
        var __0 = (_state._r[(0 : stdgo.GoInt)] : stdgo.GoUInt64), __1 = (_state._r[(1 : stdgo.GoInt)] : stdgo.GoUInt64);
var _r1 = __1, _r0 = __0;
        while (((_msg.length) > (0 : stdgo.GoInt) : Bool)) {
            var _c:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            if (((_msg.length) >= (16 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_h0, stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_msg.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), (0i64 : stdgo.GoUInt64));
                    _h0 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_h1, stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_msg.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _c);
                    _h1 = __tmp__._0;
                    _c = __tmp__._1;
                };
                _h2 = (_h2 + ((_c + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _msg = (_msg.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
                stdgo.Go.copySlice((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _msg);
                _buf[(_msg.length : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_h0, stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_buf.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), (0i64 : stdgo.GoUInt64));
                    _h0 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_h1, stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_buf.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _c);
                    _h1 = __tmp__._0;
                    _c = __tmp__._1;
                };
                _h2 = (_h2 + (_c) : stdgo.GoUInt64);
                _msg = (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _h0r0 = (_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__mul64._mul64(_h0, _r0)?.__copy__() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128);
            var _h1r0 = (_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__mul64._mul64(_h1, _r0)?.__copy__() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128);
            var _h2r0 = (_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__mul64._mul64(_h2, _r0)?.__copy__() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128);
            var _h0r1 = (_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__mul64._mul64(_h0, _r1)?.__copy__() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128);
            var _h1r1 = (_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__mul64._mul64(_h1, _r1)?.__copy__() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128);
            var _h2r1 = (_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__mul64._mul64(_h2, _r1)?.__copy__() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128);
            if (_h2r0._hi != ((0i64 : stdgo.GoUInt64))) {
                throw stdgo.Go.toInterface(("poly1305: unexpected overflow" : stdgo.GoString));
            };
            if (_h2r1._hi != ((0i64 : stdgo.GoUInt64))) {
                throw stdgo.Go.toInterface(("poly1305: unexpected overflow" : stdgo.GoString));
            };
            var _m0 = (_h0r0?.__copy__() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128);
            var _m1 = (_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__add128._add128(_h1r0?.__copy__(), _h0r1?.__copy__())?.__copy__() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128);
            var _m2 = (_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__add128._add128(_h2r0?.__copy__(), _h1r1?.__copy__())?.__copy__() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128);
            var _m3 = (_h2r1?.__copy__() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128);
            var _t0 = (_m0._lo : stdgo.GoUInt64);
            var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_m1._lo, _m0._hi, (0i64 : stdgo.GoUInt64)), _t1:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_m2._lo, _m1._hi, _c), _t2:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_m3._lo, _m2._hi, _c), _t3:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.GoUInt64 = __tmp__._1;
            {
                final __tmp__0 = _t0;
                final __tmp__1 = _t1;
                final __tmp__2 = (_t2 & (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _h0 = __tmp__0;
                _h1 = __tmp__1;
                _h2 = __tmp__2;
            };
            var _cc = (new _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128((_t2 & (-4i64 : stdgo.GoUInt64) : stdgo.GoUInt64), _t3) : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_uint128.T_uint128);
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_h0, _cc._lo, (0i64 : stdgo.GoUInt64));
                _h0 = __tmp__._0;
                _c = __tmp__._1;
            };
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_h1, _cc._hi, _c);
                _h1 = __tmp__._0;
                _c = __tmp__._1;
            };
            _h2 = (_h2 + (_c) : stdgo.GoUInt64);
            _cc = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__shiftRightBy2._shiftRightBy2(_cc?.__copy__())?.__copy__();
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_h0, _cc._lo, (0i64 : stdgo.GoUInt64));
                _h0 = __tmp__._0;
                _c = __tmp__._1;
            };
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_h1, _cc._hi, _c);
                _h1 = __tmp__._0;
                _c = __tmp__._1;
            };
            _h2 = (_h2 + (_c) : stdgo.GoUInt64);
        };
        {
            final __tmp__0 = _h0;
            final __tmp__1 = _h1;
            final __tmp__2 = _h2;
            final __tmp__3 = _state._h;
            final __tmp__4 = (0 : stdgo.GoInt);
            final __tmp__5 = _state._h;
            final __tmp__6 = (1 : stdgo.GoInt);
            final __tmp__7 = _state._h;
            final __tmp__8 = (2 : stdgo.GoInt);
            __tmp__3[__tmp__4] = __tmp__0;
            __tmp__5[__tmp__6] = __tmp__1;
            __tmp__7[__tmp__8] = __tmp__2;
        };
    }
