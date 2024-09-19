package _internal.crypto.internal.nistec;
function _p384Polynomial(_y2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>, _x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element> {
        _y2.square(_x);
        _y2.mul(_y2, _x);
        var _threeX = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P384Element.P384Element>).add(_x, _x);
        _threeX.add(_threeX, _x);
        _y2.sub(_y2, _threeX);
        return _y2.add(_y2, _internal.crypto.internal.nistec.Nistec__p384B._p384B());
    }
