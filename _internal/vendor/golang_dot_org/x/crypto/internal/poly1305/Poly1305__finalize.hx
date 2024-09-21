package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function _finalize(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _h:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>, _s:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>):Void {
        var __0 = (_h[(0 : stdgo.GoInt)] : stdgo.GoUInt64), __1 = (_h[(1 : stdgo.GoInt)] : stdgo.GoUInt64), __2 = (_h[(2 : stdgo.GoInt)] : stdgo.GoUInt64);
var _h2 = __2, _h1 = __1, _h0 = __0;
        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsSub64._bitsSub64(_h0, (-5i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64)), _hMinusP0:stdgo.GoUInt64 = __tmp__._0, _b:stdgo.GoUInt64 = __tmp__._1;
        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsSub64._bitsSub64(_h1, (-1i64 : stdgo.GoUInt64), _b), _hMinusP1:stdgo.GoUInt64 = __tmp__._0, _b:stdgo.GoUInt64 = __tmp__._1;
        {
            var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsSub64._bitsSub64(_h2, (3i64 : stdgo.GoUInt64), _b);
            _b = __tmp__._1;
        };
        _h0 = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__select64._select64(_b, _h0, _hMinusP0);
        _h1 = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__select64._select64(_b, _h1, _hMinusP1);
        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_h0, _s[(0 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64)), _h0:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
        {
            var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__bitsAdd64._bitsAdd64(_h1, _s[(1 : stdgo.GoInt)], _c);
            _h1 = __tmp__._0;
        };
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint64((_out.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _h0);
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint64((_out.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _h1);
    }
