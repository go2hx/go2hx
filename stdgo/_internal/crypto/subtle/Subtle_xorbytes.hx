package stdgo._internal.crypto.subtle;
function xORBytes(_dst:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _n = (_x.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/subtle/xor.go#L13"
        if (((_y.length) < _n : Bool)) {
            _n = (_y.length);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/subtle/xor.go#L16"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/subtle/xor.go#L17"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/subtle/xor.go#L19"
        if ((_n > (_dst.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/subtle/xor.go#L20"
            throw stdgo.Go.toInterface(("subtle.XORBytes: dst too short" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/subtle/xor.go#L22"
        stdgo._internal.crypto.subtle.Subtle__xorbytes._xorBytes(stdgo.Go.pointer(_dst[(0 : stdgo.GoInt)]), stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]), stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]), _n);
        //"file:///home/runner/.go/go1.21.3/src/crypto/subtle/xor.go#L23"
        return _n;
    }
