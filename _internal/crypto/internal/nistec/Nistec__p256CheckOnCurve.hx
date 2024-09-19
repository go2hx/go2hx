package _internal.crypto.internal.nistec;
function _p256CheckOnCurve(_x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>, _y:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>):stdgo.Error {
        var _rhs = _internal.crypto.internal.nistec.Nistec__p256Polynomial._p256Polynomial((stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>), _x);
        var _lhs = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>).square(_y);
        if (_rhs.equal(_lhs) != ((1 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("P256 point not on curve" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
