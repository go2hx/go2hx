package stdgo._internal.crypto.internal.nistec;
function _p224Polynomial(_y2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element> {
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L122"
        _y2.square(_x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L123"
        _y2.mul(_y2, _x);
        var _threeX = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>).add(_x, _x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L126"
        _threeX.add(_threeX, _x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L127"
        _y2.sub(_y2, _threeX);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L129"
        return _y2.add(_y2, stdgo._internal.crypto.internal.nistec.Nistec__p224b._p224B());
    }
