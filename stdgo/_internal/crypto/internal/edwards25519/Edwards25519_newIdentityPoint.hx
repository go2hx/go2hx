package stdgo._internal.crypto.internal.edwards25519;
function newIdentityPoint():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point> {
        return @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>).set(stdgo._internal.crypto.internal.edwards25519.Edwards25519__identity._identity);
    }
