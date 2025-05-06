package stdgo._internal.go.constant;
function _smallInt(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L356"
        return (_x.bitLen() < (4096 : stdgo.GoInt) : Bool);
    }
