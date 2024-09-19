package _internal.crypto.internal.nistec;
function _p224Sqrt(_e:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>, _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>);
        _internal.crypto.internal.nistec.Nistec__p224SqrtCandidate._p224SqrtCandidate(_candidate, _x);
        var _square = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>).square(_candidate);
        if (_square.equal(_x) != ((1 : stdgo.GoInt))) {
            return false;
        };
        _e.set(_candidate);
        return true;
    }
