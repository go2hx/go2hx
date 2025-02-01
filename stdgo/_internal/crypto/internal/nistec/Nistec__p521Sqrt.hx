package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p521Sqrt(_e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>);
        stdgo._internal.crypto.internal.nistec.Nistec__p521SqrtCandidate._p521SqrtCandidate(_candidate, _x);
        var _square = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).square(_candidate);
        if (@:check2r _square.equal(_x) != ((1 : stdgo.GoInt))) {
            return _isSquare = false;
        };
        @:check2r _e.set(_candidate);
        return _isSquare = true;
    }
