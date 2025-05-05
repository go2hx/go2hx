package stdgo._internal.crypto.internal.nistec;
function _p384Sqrt(_e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L446"
        stdgo._internal.crypto.internal.nistec.Nistec__p384sqrtcandidate._p384SqrtCandidate(_candidate, _x);
        var _square = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).square(_candidate);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L448"
        if (_square.equal(_x) != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L449"
            return _isSquare = false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L451"
        _e.set(_candidate);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L452"
        return _isSquare = true;
    }
