package stdgo._internal.math.big;
function _checkBytes(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L393"
        while ((((_b.length) > (0 : stdgo.GoInt) : Bool) && (_b[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            _b = (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_b).bytes();
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L397"
        return stdgo._internal.bytes.Bytes_equal.equal(_b, _b2);
    }
