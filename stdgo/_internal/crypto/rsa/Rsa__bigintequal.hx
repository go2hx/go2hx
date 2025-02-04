package stdgo._internal.crypto.rsa;
function _bigIntEqual(_a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(@:check2r _a.bytes(), @:check2r _b.bytes()) == ((1 : stdgo.GoInt));
    }
