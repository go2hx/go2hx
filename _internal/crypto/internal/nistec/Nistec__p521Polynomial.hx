package _internal.crypto.internal.nistec;
function _p521Polynomial(_y2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>, _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element> {
        _y2.square(_x);
        _y2.mul(_y2, _x);
        var _threeX = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P521Element.P521Element>).add(_x, _x);
        _threeX.add(_threeX, _x);
        _y2.sub(_y2, _threeX);
        return _y2.add(_y2, _internal.crypto.internal.nistec.Nistec__p521B._p521B());
    }
