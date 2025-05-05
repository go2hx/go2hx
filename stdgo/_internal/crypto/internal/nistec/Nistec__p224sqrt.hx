package stdgo._internal.crypto.internal.nistec;
function _p224Sqrt(_e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L446"
        stdgo._internal.crypto.internal.nistec.Nistec__p224sqrtcandidate._p224SqrtCandidate(_candidate, _x);
        var _square = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>).square(_candidate);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L448"
        if (_square.equal(_x) != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L449"
            return _isSquare = false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L451"
        _e.set(_candidate);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L452"
        return _isSquare = true;
    }
