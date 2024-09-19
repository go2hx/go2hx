package _internal.crypto.internal.nistec;
function _p384CheckOnCurve(_x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _y:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):stdgo.Error {
        var _rhs = _internal.crypto.internal.nistec.Nistec__p384Polynomial._p384Polynomial((stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>), _x);
        var _lhs = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>).square(_y);
        if (_rhs.equal(_lhs) != ((1 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("P384 point not on curve" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
