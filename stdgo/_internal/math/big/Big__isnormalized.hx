package stdgo._internal.math.big;
function _isNormalized(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        if (((@:checkr _x ?? throw "null pointer dereference")._abs.length) == ((0 : stdgo.GoInt))) {
            return !(@:checkr _x ?? throw "null pointer dereference")._neg;
        };
        return (@:checkr _x ?? throw "null pointer dereference")._abs[(((@:checkr _x ?? throw "null pointer dereference")._abs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((0u32 : stdgo._internal.math.big.Big_word.Word));
    }
