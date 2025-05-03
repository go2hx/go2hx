package stdgo._internal.crypto.internal.nistec;
function _p256Sqrt(_e:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):Bool {
        var _isSquare = false;
        var _candidate = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L448"
        stdgo._internal.crypto.internal.nistec.Nistec__p256sqrtcandidate._p256SqrtCandidate(_candidate, _x);
        var _square = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).square(_candidate);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L450"
        if (_square.equal(_x) != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L451"
            return _isSquare = false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L453"
        _e.set(_candidate);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L454"
        return _isSquare = true;
    }
