package stdgo._internal.crypto.internal.nistec;
function _p256Polynomial(_y2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> {
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L124"
        _y2.square(_x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L125"
        _y2.mul(_y2, _x);
        var _threeX = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>).add(_x, _x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L128"
        _threeX.add(_threeX, _x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L129"
        _y2.sub(_y2, _threeX);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p256.go#L131"
        return _y2.add(_y2, stdgo._internal.crypto.internal.nistec.Nistec__p256b._p256B());
    }
