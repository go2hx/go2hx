package stdgo._internal.crypto.subtle;
function xORBytes(_dst:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _n = (_x.length : stdgo.GoInt);
        if (((_y.length) < _n : Bool)) {
            _n = (_y.length);
        };
        if (_n == ((0 : stdgo.GoInt))) {
            return (0 : stdgo.GoInt);
        };
        if ((_n > (_dst.length) : Bool)) {
            throw stdgo.Go.toInterface(("subtle.XORBytes: dst too short" : stdgo.GoString));
        };
        stdgo._internal.crypto.subtle.Subtle__xorbytes._xorBytes(stdgo.Go.pointer(_dst[(0 : stdgo.GoInt)]), stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]), stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]), _n);
        return _n;
    }
