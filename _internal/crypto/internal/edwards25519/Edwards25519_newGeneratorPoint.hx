package _internal.crypto.internal.edwards25519;
function newGeneratorPoint():stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> {
        return (stdgo.Go.setRef(({} : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>).set(_internal.crypto.internal.edwards25519.Edwards25519__generator._generator);
    }
