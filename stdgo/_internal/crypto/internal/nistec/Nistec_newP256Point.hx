package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function newP256Point():stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point> {
        return (stdgo.Go.setRef(({ _x : (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>), _y : @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>).one(), _z : (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>) } : stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
    }
