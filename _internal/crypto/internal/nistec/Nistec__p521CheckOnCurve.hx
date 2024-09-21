package _internal.crypto.internal.nistec;
function _p521CheckOnCurve(_x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>, _y:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>):stdgo.Error {
        var _rhs = _internal.crypto.internal.nistec.Nistec__p521Polynomial._p521Polynomial((stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>), _x);
        var _lhs = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).square(_y);
        if (_rhs.equal(_lhs) != ((1 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("P521 point not on curve" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
