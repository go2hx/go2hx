package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p224CheckOnCurve(_x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>, _y:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>):stdgo.Error {
        var _rhs = stdgo._internal.crypto.internal.nistec.Nistec__p224Polynomial._p224Polynomial((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>), _x);
        var _lhs = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>).square(_y);
        if (@:check2r _rhs.equal(_lhs) != ((1 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("P224 point not on curve" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
