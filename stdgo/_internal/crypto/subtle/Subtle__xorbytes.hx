package stdgo._internal.crypto.subtle;
function _xorBytes(_dstb:stdgo.Pointer<stdgo.GoUInt8>, _xb:stdgo.Pointer<stdgo.GoUInt8>, _yb:stdgo.Pointer<stdgo.GoUInt8>, _n:stdgo.GoInt):Void {
        var _dst = stdgo._internal.unsafe.Unsafe_slice.slice(_dstb, _n);
        var _x = stdgo._internal.unsafe.Unsafe_slice.slice(_xb, _n);
        var _y = stdgo._internal.unsafe.Unsafe_slice.slice(_yb, _n);
        if ((false || stdgo._internal.crypto.subtle.Subtle__aligned._aligned(_dstb, _xb, _yb) : Bool)) {
            stdgo._internal.crypto.subtle.Subtle__xorloop._xorLoop(stdgo._internal.crypto.subtle.Subtle__words._words(_dst), stdgo._internal.crypto.subtle.Subtle__words._words(_x), stdgo._internal.crypto.subtle.Subtle__words._words(_y));
            if (((new stdgo.GoUIntptr(_n) : stdgo.GoUIntptr) % (new stdgo.GoUIntptr(4) : stdgo.GoUIntptr) : stdgo.GoUIntptr) == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                return;
            };
            var _done = (_n & ((((new stdgo.GoUIntptr(3) : stdgo.GoUIntptr) : stdgo.GoInt) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt)) : stdgo.GoInt);
            _dst = (_dst.__slice__(_done) : stdgo.Slice<stdgo.GoUInt8>);
            _x = (_x.__slice__(_done) : stdgo.Slice<stdgo.GoUInt8>);
            _y = (_y.__slice__(_done) : stdgo.Slice<stdgo.GoUInt8>);
        };
        stdgo._internal.crypto.subtle.Subtle__xorloop._xorLoop(_dst, _x, _y);
    }
