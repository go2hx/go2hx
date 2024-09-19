package _internal.crypto.internal.edwards25519;
function _basepointNafTable():stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable8.T_nafLookupTable8> {
        _internal.crypto.internal.edwards25519.Edwards25519__basepointNafTablePrecomp._basepointNafTablePrecomp._initOnce.do_(function():Void {
            _internal.crypto.internal.edwards25519.Edwards25519__basepointNafTablePrecomp._basepointNafTablePrecomp._table.fromP3(_internal.crypto.internal.edwards25519.Edwards25519_newGeneratorPoint.newGeneratorPoint());
        });
        return (stdgo.Go.setRef(_internal.crypto.internal.edwards25519.Edwards25519__basepointNafTablePrecomp._basepointNafTablePrecomp._table) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable8.T_nafLookupTable8>);
    }
