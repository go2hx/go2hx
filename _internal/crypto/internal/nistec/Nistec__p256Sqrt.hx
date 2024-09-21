package _internal.crypto.internal.nistec;
function _p256Sqrt(_e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>);
        _internal.crypto.internal.nistec.Nistec__p256SqrtCandidate._p256SqrtCandidate(_candidate, _x);
        var _square = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>).square(_candidate);
        if (_square.equal(_x) != ((1 : stdgo.GoInt))) {
            return false;
        };
        _e.set(_candidate);
        return true;
    }
