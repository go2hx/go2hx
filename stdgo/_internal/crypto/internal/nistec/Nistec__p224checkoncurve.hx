package stdgo._internal.crypto.internal.nistec;
function _p224CheckOnCurve(_x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>, _y:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>):stdgo.Error {
        var _rhs = stdgo._internal.crypto.internal.nistec.Nistec__p224polynomial._p224Polynomial((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>), _x);
        var _lhs = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>).square(_y);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L136"
        if (_rhs.equal(_lhs) != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L137"
            return stdgo._internal.errors.Errors_new_.new_(("P224 point not on curve" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p224.go#L139"
        return (null : stdgo.Error);
    }
