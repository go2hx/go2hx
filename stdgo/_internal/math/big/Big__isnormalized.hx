package stdgo._internal.math.big;
function _isNormalized(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L21"
        if (((@:checkr _x ?? throw "null pointer dereference")._abs.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L22"
            return !(@:checkr _x ?? throw "null pointer dereference")._neg;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L25"
        return (@:checkr _x ?? throw "null pointer dereference")._abs[(((@:checkr _x ?? throw "null pointer dereference")._abs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((0u32 : stdgo._internal.math.big.Big_word.Word));
    }
