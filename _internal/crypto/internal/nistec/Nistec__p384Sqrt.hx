package _internal.crypto.internal.nistec;
function _p384Sqrt(_e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>);
        _internal.crypto.internal.nistec.Nistec__p384SqrtCandidate._p384SqrtCandidate(_candidate, _x);
        var _square = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>).square(_candidate);
        if (_square.equal(_x) != ((1 : stdgo.GoInt))) {
            return false;
        };
        _e.set(_candidate);
        return true;
    }
