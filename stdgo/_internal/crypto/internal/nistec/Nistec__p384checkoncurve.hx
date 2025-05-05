package stdgo._internal.crypto.internal.nistec;
function _p384CheckOnCurve(_x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>, _y:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>):stdgo.Error {
        var _rhs = stdgo._internal.crypto.internal.nistec.Nistec__p384polynomial._p384Polynomial((stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>), _x);
        var _lhs = (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).square(_y);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L136"
        if (_rhs.equal(_lhs) != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L137"
            return stdgo._internal.errors.Errors_new_.new_(("P384 point not on curve" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/nistec/p384.go#L139"
        return (null : stdgo.Error);
    }
