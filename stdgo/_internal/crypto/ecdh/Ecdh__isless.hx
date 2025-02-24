package stdgo._internal.crypto.ecdh;
function _isLess(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if ((_a.length) != ((_b.length))) {
            throw stdgo.Go.toInterface(("crypto/ecdh: internal error: mismatched isLess inputs" : stdgo.GoString));
        };
        if (((_a.length) > (72 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/ecdh: internal error: isLess input too large" : stdgo.GoString));
        };
        var __0 = (new stdgo.Slice<stdgo.GoUInt8>((72 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), __1 = (new stdgo.Slice<stdgo.GoUInt8>((72 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
var _bufB = __1, _bufA = __0;
        for (_i => _ in _a) {
            {
                final __tmp__0 = _a[(((_a.length) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                final __tmp__1 = _b[(((_b.length) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                final __tmp__2 = _bufA;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _bufB;
                final __tmp__5 = (_i : stdgo.GoInt);
                __tmp__2[__tmp__3] = __tmp__0;
                __tmp__4[__tmp__5] = __tmp__1;
            };
        };
        var _borrow:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_bufA.length) : Bool)) {
                var __0 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_bufA.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64), __1 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_bufB.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
var _limbB = __1, _limbA = __0;
{
                    var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_limbA, _limbB, _borrow);
                    _borrow = @:tmpset0 __tmp__._1;
                };
                _i = (_i + ((8 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        return _borrow == ((1i64 : stdgo.GoUInt64));
    }
