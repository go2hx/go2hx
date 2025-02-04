package stdgo._internal.math.big;
function _validateBinaryOperands(_x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>):Void {
        if (true) {
            throw stdgo.Go.toInterface(("validateBinaryOperands called but debugFloat is not set" : stdgo.GoString));
        };
        if (((@:checkr _x ?? throw "null pointer dereference")._mant.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("empty mantissa for x" : stdgo.GoString));
        };
        if (((@:checkr _y ?? throw "null pointer dereference")._mant.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("empty mantissa for y" : stdgo.GoString));
        };
    }
