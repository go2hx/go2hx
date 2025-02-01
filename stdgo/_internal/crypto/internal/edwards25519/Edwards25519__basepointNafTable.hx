package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _basepointNafTable():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable8.T_nafLookupTable8> {
        @:check2 stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointNafTablePrecomp._basepointNafTablePrecomp._initOnce.do_(function():Void {
            @:check2 stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointNafTablePrecomp._basepointNafTablePrecomp._table.fromP3(stdgo._internal.crypto.internal.edwards25519.Edwards25519_newGeneratorPoint.newGeneratorPoint());
        });
        return (stdgo.Go.setRef(stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointNafTablePrecomp._basepointNafTablePrecomp._table) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_nafLookupTable8.T_nafLookupTable8>);
    }
