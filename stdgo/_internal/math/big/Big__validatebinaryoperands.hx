package stdgo._internal.math.big;
function _validateBinaryOperands(_x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1197"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1199"
            throw stdgo.Go.toInterface(("validateBinaryOperands called but debugFloat is not set" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1201"
        if (((@:checkr _x ?? throw "null pointer dereference")._mant.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1202"
            throw stdgo.Go.toInterface(("empty mantissa for x" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1204"
        if (((@:checkr _y ?? throw "null pointer dereference")._mant.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/float.go#L1205"
            throw stdgo.Go.toInterface(("empty mantissa for y" : stdgo.GoString));
        };
    }
