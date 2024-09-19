package _internal.crypto.internal.nistec;
function _p521Sqrt(_e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>, _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>);
        _internal.crypto.internal.nistec.Nistec__p521SqrtCandidate._p521SqrtCandidate(_candidate, _x);
        var _square = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).square(_candidate);
        if (_square.equal(_x) != ((1 : stdgo.GoInt))) {
            return false;
        };
        _e.set(_candidate);
        return true;
    }
