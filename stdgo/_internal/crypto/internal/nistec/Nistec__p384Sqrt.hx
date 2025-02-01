package stdgo._internal.crypto.internal.nistec;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.subtle.Subtle;
function _p384Sqrt(_e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
        stdgo._internal.crypto.internal.nistec.Nistec__p384SqrtCandidate._p384SqrtCandidate(_candidate, _x);
        var _square = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>).square(_candidate);
        if (@:check2r _square.equal(_x) != ((1 : stdgo.GoInt))) {
            return _isSquare = false;
        };
        @:check2r _e.set(_candidate);
        return _isSquare = true;
    }
