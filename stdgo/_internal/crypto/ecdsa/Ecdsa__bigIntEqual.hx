package stdgo._internal.crypto.ecdsa;
function _bigIntEqual(_a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool {
        return stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(@:check2r _a.bytes(), @:check2r _b.bytes()) == ((1 : stdgo.GoInt));
    }
