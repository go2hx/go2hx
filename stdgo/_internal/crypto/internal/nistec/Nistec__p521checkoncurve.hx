package stdgo._internal.crypto.internal.nistec;
function _p521CheckOnCurve(_x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>, _y:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>):stdgo.Error {
        var _rhs = stdgo._internal.crypto.internal.nistec.Nistec__p521polynomial._p521Polynomial((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>), _x);
        var _lhs = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>).square(_y);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L136"
        if (_rhs.equal(_lhs) != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L137"
            return stdgo._internal.errors.Errors_new_.new_(("P521 point not on curve" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p521.go#L139"
        return (null : stdgo.Error);
    }
