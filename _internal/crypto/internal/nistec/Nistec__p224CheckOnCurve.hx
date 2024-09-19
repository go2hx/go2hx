package _internal.crypto.internal.nistec;
function _p224CheckOnCurve(_x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>, _y:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>):stdgo.Error {
        var _rhs = _internal.crypto.internal.nistec.Nistec__p224Polynomial._p224Polynomial((stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>), _x);
        var _lhs = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>).square(_y);
        if (_rhs.equal(_lhs) != ((1 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("P224 point not on curve" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
