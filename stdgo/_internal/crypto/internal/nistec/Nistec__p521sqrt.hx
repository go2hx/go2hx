package stdgo._internal.crypto.internal.nistec;
function _p521Sqrt(_e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L446"
        stdgo._internal.crypto.internal.nistec.Nistec__p521sqrtcandidate._p521SqrtCandidate(_candidate, _x);
        var _square = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).square(_candidate);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L448"
        if (_square.equal(_x) != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L449"
            return _isSquare = false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L451"
        _e.set(_candidate);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L452"
        return _isSquare = true;
    }
