package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p256Sqrt(_e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>);
        stdgo._internal.crypto.internal.nistec.Nistec__p256SqrtCandidate._p256SqrtCandidate(_candidate, _x);
        var _square = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>).square(_candidate);
        if (@:check2r _square.equal(_x) != ((1 : stdgo.GoInt))) {
            return _isSquare = false;
        };
        @:check2r _e.set(_candidate);
        return _isSquare = true;
    }
