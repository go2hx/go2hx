package stdgo._internal.crypto.internal.edwards25519;
function _basepointNafTable():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8> {
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L128"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointnaftableprecomp._basepointNafTablePrecomp._initOnce.do_(function():Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L129"
            stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointnaftableprecomp._basepointNafTablePrecomp._table.fromP3(stdgo._internal.crypto.internal.edwards25519.Edwards25519_newgeneratorpoint.newGeneratorPoint());
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L131"
        return (stdgo.Go.setRef(stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointnaftableprecomp._basepointNafTablePrecomp._table) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_naflookuptable8.T_nafLookupTable8>);
    }
